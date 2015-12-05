/*
   FileName: dropdb.sql
   Name: Saurabh Mishra
   USC ID: 9541758252
*/

DROP INDEX region_spatial_idx;
DROP INDEX pond_spatial_idx;
DROP INDEX lion_spatial_idx;
DROP INDEX ambulance_area_spatial_idx;

DELETE FROM "USER_SDO_GEOM_METADATA" where TABLE_NAME='REGION';
DELETE FROM "USER_SDO_GEOM_METADATA" where TABLE_NAME='POND';
DELETE FROM "USER_SDO_GEOM_METADATA" where TABLE_NAME='LION';
DELETE FROM "USER_SDO_GEOM_METADATA" where TABLE_NAME='AMBULANCE_AREA';

DROP TABLE region;
DROP TABLE pond;
DROP TABLE lion;
DROP TABLE ambulance_area;
