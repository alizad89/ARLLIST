-- Generated by Oracle SQL Developer Data Modeler 4.0.3.853
--   at:        2015-04-25 14:06:05 CDT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




CREATE
  TABLE nl_documents
  (
    document_id   INTEGER NOT NULL ,
    filename      VARCHAR2 (4000) ,
    file_nametype VARCHAR2 (512) ,
    file_charset  VARCHAR2 (512) ,
    file_data BLOB ,
    file_comments VARCHAR2 (4000) ,
    tags          VARCHAR2 (4000)
  ) ;
ALTER TABLE nl_documents ADD CONSTRAINT nl_documents_PK PRIMARY KEY (
document_id ) ;

CREATE
  TABLE nl_members
  (
    member_id INTEGER NOT NULL ,
    name      VARCHAR2 (255) ,
    type      VARCHAR2 (255)
  ) ;
ALTER TABLE nl_members ADD CONSTRAINT nl_members_PK PRIMARY KEY ( member_id ) ;

CREATE
  TABLE nl_notification_list
  (
    notification_list_id    INTEGER NOT NULL ,
    status                  VARCHAR2 (4000) ,
    name                    VARCHAR2 (4000) ,
    description             VARCHAR2 (4000) ,
    ownership_division_code INTEGER ,
    external_view_name      VARCHAR2 (4000) ,
    status_effective_date   DATE
  ) ;
ALTER TABLE nl_notification_list ADD CONSTRAINT nl_notification_list_PK PRIMARY
KEY ( notification_list_id ) ;

CREATE
  TABLE r1
  (
    r1_pid    INTEGER NOT NULL ,
    member_id INTEGER ,
    list_id   INTEGER
  ) ;
ALTER TABLE r1 ADD CONSTRAINT r1_PK PRIMARY KEY ( r1_pid ) ;

CREATE
  TABLE r2
  (
    r2_pid   INTEGER NOT NULL ,
    list_id1 INTEGER ,
    list_id2 INTEGER
  ) ;
ALTER TABLE r2 ADD CONSTRAINT r2_PK PRIMARY KEY ( r2_pid ) ;

ALTER TABLE r1 ADD CONSTRAINT r1_nl_members_FK FOREIGN KEY ( member_id )
REFERENCES nl_members ( member_id ) ;

ALTER TABLE r1 ADD CONSTRAINT r1_nl_notification_list_FK FOREIGN KEY ( list_id
) REFERENCES nl_notification_list ( notification_list_id ) ;

ALTER TABLE r2 ADD CONSTRAINT r2_nl_notification_list_FK FOREIGN KEY ( list_id1
) REFERENCES nl_notification_list ( notification_list_id ) ;

ALTER TABLE r2 ADD CONSTRAINT r2_nl_notification_list_FKv1 FOREIGN KEY (
list_id2 ) REFERENCES nl_notification_list ( notification_list_id ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                              9
-- CREATE VIEW                              0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
