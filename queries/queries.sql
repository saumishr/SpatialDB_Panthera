/*
   FileName: queries.sql
   Name: Saurabh Mishra
   USC ID: 9541758252
*/

/* Query a */
SELECT 	L.lion_id 
	FROM lion L
	WHERE sdo_filter(L.shape, 
			SDO_GEOMETRY(	2003, 
					NULL, 
					NULL,
 					SDO_ELEM_INFO_ARRAY(1,1003,3),   
					SDO_ORDINATE_ARRAY(150,200, 400,350)), 'querytype=window') = 'TRUE';

/* Query b */
SELECT 	L.lion_id 
	FROM lion L, pond P
	WHERE P.pond_id = 'P1' AND
	SDO_WITHIN_DISTANCE(L.shape, P.shape, 'distance=150') = 'TRUE';

/* Query d */
SELECT P.pond_id, SDO_NN_DISTANCE (1) distance 
	FROM pond P, lion L
	WHERE L.lion_id = 'L2' AND
	SDO_NN(P.shape, L.shape, 'SDO_NUM_RES=3', 1) = 'TRUE'
	ORDER BY distance;

/* Query f */
SELECT L.lion_id, P.pond_id
	FROM TABLE(SDO_JOIN('LION', 'SHAPE', 'POND', 'SHAPE','mask=INSIDE')) LP, lion L, pond P
	WHERE LP.rowid1 = L.rowid AND LP.rowid2 = P.rowid;

/* Query h */
SELECT region_id
FROM(
	SELECT L.lion_id, R.region_id
		FROM TABLE(SDO_JOIN('LION', 'SHAPE', 'REGION', 'SHAPE','mask=INSIDE')) LP, lion L, region R
		WHERE LP.rowid1 = L.rowid AND LP.rowid2 = R.rowid
)
WHERE region_id NOT IN (
	SELECT R.region_id
		FROM TABLE(SDO_JOIN('POND', 'SHAPE', 'REGION', 'SHAPE','mask=INSIDE')) PR, pond P, region R
		WHERE PR.rowid1 = P.rowid AND PR.rowid2 = R.rowid
)
GROUP BY region_id;

/* Query i */
SELECT lion_id FROM lion
	WHERE lion_id NOT IN(
		SELECT L.lion_id
			FROM TABLE(SDO_JOIN('LION', 'SHAPE', 'AMBULANCE_AREA', 'SHAPE','mask=INSIDE')) LA, lion L, ambulance_area A
			WHERE LA.rowid1 = L.rowid AND LA.rowid2 = A.rowid
	);
