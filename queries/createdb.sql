/*
   FileName: createdb.sql
   Name: Saurabh Mishra
   USC ID: 9541758252
*/
CREATE TABLE region (
region_id VARCHAR2(32) PRIMARY KEY,
num_vertices NUMBER,
shape SDO_GEOMETRY
);

CREATE TABLE pond (
pond_id VARCHAR2(32) PRIMARY KEY,
shape SDO_GEOMETRY
);

CREATE TABLE lion (
lion_id VARCHAR2(32) PRIMARY KEY,
shape SDO_GEOMETRY
);

CREATE TABLE ambulance_area (
ambulance_id VARCHAR2(32) PRIMARY KEY,
shape SDO_GEOMETRY
);

INSERT INTO region VALUES (
'R4',
4,
SDO_GEOMETRY(
2003,
NULL,
NULL,
SDO_ELEM_INFO_ARRAY(1,1003,1),
SDO_ORDINATE_ARRAY(400,0, 500,0, 500,100, 400,100, 400,0)
)
);

INSERT INTO region VALUES (
'R5',
4,
SDO_GEOMETRY(
2003,
NULL,
NULL,
SDO_ELEM_INFO_ARRAY(1,1003,1),
SDO_ORDINATE_ARRAY(400,100, 500,100, 500,250, 400,200, 400,100)
)
);

INSERT INTO region VALUES (
'R6',
4,
SDO_GEOMETRY(
2003,
NULL,
NULL,
SDO_ELEM_INFO_ARRAY(1,1003,1),
SDO_ORDINATE_ARRAY(300,150, 400,100, 400,200, 250,250, 300,150)
)
);

INSERT INTO region VALUES (
'R7',
4,
SDO_GEOMETRY(
2003,
NULL,
NULL,
SDO_ELEM_INFO_ARRAY(1,1003,1),
SDO_ORDINATE_ARRAY(100,100, 300,150, 250,250, 150,250, 100,100)
)
);

INSERT INTO region VALUES (
'R12',
4,
SDO_GEOMETRY(
2003,
NULL,
NULL,
SDO_ELEM_INFO_ARRAY(1,1003,1),
SDO_ORDINATE_ARRAY(400,200, 500,250, 500,350, 400,350, 400,200)
)
);

INSERT INTO region VALUES (
'R1',
4,
SDO_GEOMETRY(
2003,
NULL,
NULL,
SDO_ELEM_INFO_ARRAY(1,1003,1),
SDO_ORDINATE_ARRAY(0,0, 150,0, 100,100, 0,100, 0,0)
)
);

INSERT INTO region VALUES (
'R2',
4,
SDO_GEOMETRY(
2003,
NULL,
NULL,
SDO_ELEM_INFO_ARRAY(1,1003,1),
SDO_ORDINATE_ARRAY(150,0, 250,0, 300,150, 100,100, 150,0)
)
);

INSERT INTO region VALUES (
'R3',
4,
SDO_GEOMETRY(
2003,
NULL,
NULL,
SDO_ELEM_INFO_ARRAY(1,1003,1),
SDO_ORDINATE_ARRAY(250,0, 400,0, 400,100, 300,150, 250,0)
)
);

INSERT INTO region VALUES (
'R11',
4,
SDO_GEOMETRY(
2003,
NULL,
NULL,
SDO_ELEM_INFO_ARRAY(1,1003,1),
SDO_ORDINATE_ARRAY(250,250, 400,200, 400,350, 300,350, 250,250)
)
);

INSERT INTO region VALUES (
'R8',
4,
SDO_GEOMETRY(
2003,
NULL,
NULL,
SDO_ELEM_INFO_ARRAY(1,1003,1),
SDO_ORDINATE_ARRAY(0,100, 100,100, 150,250, 0,250, 0,100)
)
);

INSERT INTO region VALUES (
'R9',
4,
SDO_GEOMETRY(
2003,
NULL,
NULL,
SDO_ELEM_INFO_ARRAY(1,1003,1),
SDO_ORDINATE_ARRAY(0,250,150,250,150,400,0,350, 0,250)
)
);

INSERT INTO region VALUES (
'R10',
4,
SDO_GEOMETRY(
2003,
NULL,
NULL,
SDO_ELEM_INFO_ARRAY(1,1003,1),
SDO_ORDINATE_ARRAY(150,250,250,250,300,350,150,400, 150,250)
)
);

INSERT INTO region VALUES (
'R15',
4,
SDO_GEOMETRY(
2003,
NULL,
NULL,
SDO_ELEM_INFO_ARRAY(1,1003,1),
SDO_ORDINATE_ARRAY(150,400,300,350,300,500,150,500, 150,400)
)
);

INSERT INTO region VALUES (
'R14',
4,
SDO_GEOMETRY(
2003,
NULL,
NULL,
SDO_ELEM_INFO_ARRAY(1,1003,1),
SDO_ORDINATE_ARRAY(300,350,400,350,400,500,300,500, 300,350)
)
);

INSERT INTO region VALUES (
'R16',
4,
SDO_GEOMETRY(
2003,
NULL,
NULL,
SDO_ELEM_INFO_ARRAY(1,1003,1),
SDO_ORDINATE_ARRAY(0,350,150,400,150,500,0,500, 0,350)
)
);

INSERT INTO region VALUES (
'R13',
4,
SDO_GEOMETRY(
2003,
NULL,
NULL,
SDO_ELEM_INFO_ARRAY(1,1003,1),
SDO_ORDINATE_ARRAY(400,350,500,350,500,500,400,500, 400,350)
)
);

INSERT INTO pond VALUES(
'P2',
 SDO_GEOMETRY(
 2003,
 NULL,
 NULL,
 SDO_ELEM_INFO_ARRAY(1,1003,4),
 SDO_ORDINATE_ARRAY(205,430, 220,445, 235,430)
 )
 );

INSERT INTO pond VALUES(
'P3',
 SDO_GEOMETRY(
 2003,
 NULL,
 NULL,
 SDO_ELEM_INFO_ARRAY(1,1003,4),
 SDO_ORDINATE_ARRAY(355,435, 370,450, 385,435)
 )
 );

INSERT INTO pond VALUES(
'P1',
 SDO_GEOMETRY(
 2003,
 NULL,
 NULL,
 SDO_ELEM_INFO_ARRAY(1,1003,4),
 SDO_ORDINATE_ARRAY(60,430, 75,445, 90,430)
 )
 );

INSERT INTO pond VALUES(
'P6',
 SDO_GEOMETRY(
 2003,
 NULL,
 NULL,
 SDO_ELEM_INFO_ARRAY(1,1003,4),
 SDO_ORDINATE_ARRAY(205,320, 220,335, 235,320)
 )
 );

INSERT INTO pond VALUES(
'P7',
 SDO_GEOMETRY(
 2003,
 NULL,
 NULL,
 SDO_ELEM_INFO_ARRAY(1,1003,4),
 SDO_ORDINATE_ARRAY(455,280, 470,295, 485,280)
 )
 );

INSERT INTO pond VALUES(
'P4',
 SDO_GEOMETRY(
 2003,
 NULL,
 NULL,
 SDO_ELEM_INFO_ARRAY(1,1003,4),
 SDO_ORDINATE_ARRAY(60,330, 75,345, 90,330)
 )
 );

INSERT INTO pond VALUES(
'P5',
 SDO_GEOMETRY(
 2003,
 NULL,
 NULL,
 SDO_ELEM_INFO_ARRAY(1,1003,4),
 SDO_ORDINATE_ARRAY(305,280, 320,295, 335,280)
 )
 );

INSERT INTO pond VALUES(
'P8',
 SDO_GEOMETRY(
 2003,
 NULL,
 NULL,
 SDO_ELEM_INFO_ARRAY(1,1003,4),
 SDO_ORDINATE_ARRAY(360,175, 375,190, 390,175)
 )
 );

INSERT INTO lion VALUES(
'L14',
 SDO_GEOMETRY(
 2001,
 NULL,
 SDO_POINT_TYPE(350,50, NULL),
 NULL,
 NULL
 )
 );

INSERT INTO lion VALUES(
'L10',
 SDO_GEOMETRY(
 2001,
 NULL,
 SDO_POINT_TYPE(355,190, NULL),
 NULL,
 NULL
 )
 );

INSERT INTO lion VALUES(
'L11',
 SDO_GEOMETRY(
 2001,
 NULL,
 SDO_POINT_TYPE(30,210, NULL),
 NULL,
 NULL
 )
 );

INSERT INTO lion VALUES(
'L12',
 SDO_GEOMETRY(
 2001,
 NULL,
 SDO_POINT_TYPE(50,200, NULL),
 NULL,
 NULL
 )
 );

INSERT INTO lion VALUES(
'L13',
 SDO_GEOMETRY(
 2001,
 NULL,
 SDO_POINT_TYPE(170,230, NULL),
 NULL,
 NULL
 )
 );

INSERT INTO lion VALUES(
'L6',
 SDO_GEOMETRY(
 2001,
 NULL,
 SDO_POINT_TYPE(350,300, NULL),
 NULL,
 NULL
 )
 );

INSERT INTO lion VALUES(
'L7',
 SDO_GEOMETRY(
 2001,
 NULL,
 SDO_POINT_TYPE(35,10, NULL),
 NULL,
 NULL
 )
 );

INSERT INTO lion VALUES(
'L4',
 SDO_GEOMETRY(
 2001,
 NULL,
 SDO_POINT_TYPE(450,300, NULL),
 NULL,
 NULL
 )
 );

INSERT INTO lion VALUES(
'L5',
 SDO_GEOMETRY(
 2001,
 NULL,
 SDO_POINT_TYPE(20,20, NULL),
 NULL,
 NULL
 )
 );

INSERT INTO lion VALUES(
'L2',
 SDO_GEOMETRY(
 2001,
 NULL,
 SDO_POINT_TYPE(230,475, NULL),
 NULL,
 NULL
 )
 );

INSERT INTO lion VALUES(
'L3',
 SDO_GEOMETRY(
 2001,
 NULL,
 SDO_POINT_TYPE(370,455, NULL),
 NULL,
 NULL
 )
 );

INSERT INTO lion VALUES(
'L1',
 SDO_GEOMETRY(
 2001,
 NULL,
 SDO_POINT_TYPE(50,450, NULL),
 NULL,
 NULL
 )
 );

INSERT INTO lion VALUES(
'L8',
 SDO_GEOMETRY(
 2001,
 NULL,
 SDO_POINT_TYPE(115,350, NULL),
 NULL,
 NULL
 )
 );

INSERT INTO lion VALUES(
'L9',
 SDO_GEOMETRY(
 2001,
 NULL,
 SDO_POINT_TYPE(240,335, NULL),
 NULL,
 NULL
 )
 );

INSERT INTO ambulance_area VALUES(
'A1',
 SDO_GEOMETRY(
 2003,
 NULL,
 NULL,
 SDO_ELEM_INFO_ARRAY(1,1003,4),
 SDO_ORDINATE_ARRAY(10,400, 100,490, 190,400)
 )
 );

INSERT INTO ambulance_area VALUES(
'A3',
 SDO_GEOMETRY(
 2003,
 NULL,
 NULL,
 SDO_ELEM_INFO_ARRAY(1,1003,4),
 SDO_ORDINATE_ARRAY(310,400, 400,490, 490,400)
 )
 );

INSERT INTO ambulance_area VALUES(
'A2',
 SDO_GEOMETRY(
 2003,
 NULL,
 NULL,
 SDO_ELEM_INFO_ARRAY(1,1003,4),
 SDO_ORDINATE_ARRAY(160,400, 250,490, 340,400)
 )
 );

INSERT INTO ambulance_area VALUES(
'A5',
 SDO_GEOMETRY(
 2003,
 NULL,
 NULL,
 SDO_ELEM_INFO_ARRAY(1,1003,4),
 SDO_ORDINATE_ARRAY(210,100, 300,190, 390,100)
 )
 );

INSERT INTO ambulance_area VALUES(
'A4',
 SDO_GEOMETRY(
 2003,
 NULL,
 NULL,
 SDO_ELEM_INFO_ARRAY(1,1003,4),
 SDO_ORDINATE_ARRAY(310,250, 400,340, 490,250)
 )
 );

INSERT INTO user_sdo_geom_metadata
	(TABLE_NAME,
	COLUMN_NAME,
	DIMINFO,
	SRID)
VALUES (
'region',
'shape',
SDO_DIM_ARRAY(
	SDO_DIM_ELEMENT('X',0, 600, 0.005),
	SDO_DIM_ELEMENT('Y',0, 600, 0.005)
	),
NULL
);

INSERT INTO user_sdo_geom_metadata
	(TABLE_NAME,
	COLUMN_NAME,
	DIMINFO,
	SRID)
VALUES (
'pond',
'shape',
SDO_DIM_ARRAY(
	SDO_DIM_ELEMENT('X',0, 600, 0.005),
	SDO_DIM_ELEMENT('Y',0, 600, 0.005)
	),
NULL
);

INSERT INTO user_sdo_geom_metadata
	(TABLE_NAME,
	COLUMN_NAME,
	DIMINFO,
	SRID)
VALUES (
'lion',
'shape',
SDO_DIM_ARRAY(
	SDO_DIM_ELEMENT('X',0, 600, 0.005),
	SDO_DIM_ELEMENT('Y',0, 600, 0.005)
	),
NULL
);

INSERT INTO user_sdo_geom_metadata
	(TABLE_NAME,
	COLUMN_NAME,
	DIMINFO,
	SRID)
VALUES (
'ambulance_area',
'shape',
SDO_DIM_ARRAY(
	SDO_DIM_ELEMENT('X',0, 600, 0.005),
	SDO_DIM_ELEMENT('Y',0, 600, 0.005)
	),
NULL
);

CREATE INDEX region_spatial_idx
	ON region(shape)
	INDEXTYPE IS MDSYS.SPATIAL_INDEX;

CREATE INDEX pond_spatial_idx
	ON pond(shape)
	INDEXTYPE IS MDSYS.SPATIAL_INDEX;

CREATE INDEX lion_spatial_idx
	ON lion(shape)
	INDEXTYPE IS MDSYS.SPATIAL_INDEX;

CREATE INDEX ambulance_area_spatial_idx
	ON ambulance_area(shape)
	INDEXTYPE IS MDSYS.SPATIAL_INDEX;
