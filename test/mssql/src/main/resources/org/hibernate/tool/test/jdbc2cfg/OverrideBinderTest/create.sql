CREATE SCHEMA HTT
CREATE TABLE HTT.DUMMY (ID NUMERIC(10,0) NOT NULL, PRIMARY KEY (ID) )
CREATE TABLE HTT.DEFUNCT_TABLE ( ID NUMERIC(10,0) NOT NULL, NAME VARCHAR(20), SHORTNAME VARCHAR(5), FLAG VARCHAR(1), DUMID NUMERIC(10,0), PRIMARY KEY (ID), FOREIGN KEY (DUMID) REFERENCES HTT.DUMMY(ID))               
CREATE TABLE HTT.MISC_TYPES ( ID NUMERIC(10,0) NOT NULL, NAME VARCHAR(20), SHORTNAME VARCHAR(5), FLAG VARCHAR(1), PRIMARY KEY (ID) )
CREATE TABLE HTT.INTHEMIDDLE ( MISCID NUMERIC(10,0), DEFUNCTID NUMERIC(10,0), FOREIGN KEY (MISCID) REFERENCES HTT.MISC_TYPES(ID), FOREIGN KEY (DEFUNCTID) REFERENCES HTT.DEFUNCT_TABLE(ID) )
CREATE TABLE HTT.CUSTOMER ( CUSTID VARCHAR(10), NAME VARCHAR(20) )
CREATE TABLE HTT.ORDERS ( ORDERID VARCHAR(10), NAME VARCHAR(20),  CUSTID VARCHAR(10), COMPLETED NUMERIC(1,0) NOT NULL, VERIFIED NUMERIC(1) )
CREATE TABLE HTT.PARENT ( ID VARCHAR(10), NAME VARCHAR(20))
CREATE TABLE HTT.CHILDREN ( ID VARCHAR(10), PARENTID VARCHAR(10), NAME VARCHAR(20) )
CREATE TABLE HTT.EXCOLUMNS (ID VARCHAR(12), NAME VARCHAR(20), EXCOLUMN NUMERIC(10,0) )