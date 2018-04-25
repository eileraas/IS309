/*Tablespace for UIAALUMNI */
CREATE TABLESPACE UIAALUMNI4M ONLINE
datafile autoextend on
extent management local uniform size 4m
SEGMENT SPACE MANAGEMENT AUTO;

ALTER USER UIAALUMNI quota 50M on UIAALUMNI4M;

ALTER TABLE I_ACCOUNT MOVE
PCTFREE 15
STORAGE (INITIAL 4M NEXT 4M)
TABLESPACE UIAALUMNI4M;

ALTER INDEX ACCOUNT_PK REBUILD
TABLESPACE INDX;

ALTER TABLE I_DONATION MOVE
PCTFREE 15
STORAGE (INITIAL 4M NEXT 4M)
TABLESPACE UIAALUMNI4M;

ALTER INDEX DONATION_PK REBUILD
TABLESPACE INDX;

ALTER TABLE I_WEBSITE MOVE
PCTFREE 15
STORAGE (INITIAL 4M NEXT 4M)
TABLESPACE UIAALUMNI4M;

ALTER INDEX WEBSITE_PK REBUILD
TABLESPACE INDX;

/*Tablespace for UIAALUMNI02*/
CREATE TABLESPACE UIAALUMNI2MB ONLINE
datafile autoextend on
extent management local uniform size 8m
SEGMENT SPACE MANAGEMENT AUTO;

ALTER USER UIAALUMNI quota 50M on UIAALUMNI2MB;

ALTER TABLE I_DONATION_DETAIL MOVE
PCTFREE 5
STORAGE (INITIAL 2M NEXT 2M)
TABLESPACE UIAALUMNI2MB;

ALTER INDEX DONATION_DETAIL_PK REBUILD
TABLESPACE INDX;

/*Tablespace for UIAALUMNI03*/
/*Tablespace for UIAALUMNI03 is calculated to
8M, but maximum allowed size is 4M according to the task.*/
CREATE TABLESPACE UIAALUMNI8MB ONLINE
datafile autoextend on
extent management local uniform size 8m
SEGMENT SPACE MANAGEMENT AUTO;

ALTER USER UIAALUMNI quota 50M on UIAALUMNI8MB;

ALTER TABLE I_PROJECT MOVE
PCTFREE 10
STORAGE (INITIAL 4M NEXT 4M)
TABLESPACE UIAALUMNI8MB;

ALTER INDEX PROJECT_PK REBUILD
TABLESPACE INDX;

ALTER TABLE I_BILLING MOVE
PCTFREE 5
STORAGE (INITIAL 4M NEXT 4M)
TABLESPACE UIAALUMNI8MB;

ALTER INDEX BILLING_PK REBUILD
TABLESPACE INDX;

/*Tablespace for UIAALUMNI04*/
CREATE TABLESPACE UIAALUMNI64K ONLINE
datafile autoextend on
extent management local uniform size 8m
SEGMENT SPACE MANAGEMENT AUTO;

ALTER USER UIAALUMNI quota 50M on UIAALUMNI64K;

ALTER TABLE I_BUDGET MOVE
PCTFREE 5
STORAGE (INITIAL 64K NEXT 64K)
TABLESPACE UIAALUMNI64K;

ALTER INDEX BUDGET_PK REBUILD
TABLESPACE INDX;

ALTER TABLE I_FOCUS_AREA MOVE
PCTFREE 0
STORAGE (INITIAL 64K NEXT 64K)
TABLESPACE UIAALUMNI64K;

ALTER INDEX FOCUS_AREA_PK REBUILD
TABLESPACE INDX;

ALTER TABLE I_GIVING_LEVEL MOVE
PCTFREE 25
STORAGE (INITIAL 64K NEXT 64K)
TABLESPACE UIAALUMNI64K;

ALTER INDEX GIVING_LEVEL_PK REBUILD
TABLESPACE INDX;

ALTER TABLE I_PROJECT_TYPE MOVE
PCTFREE 0
STORAGE (INITIAL 64K NEXT 64K)
TABLESPACE UIAALUMNI64K;

ALTER INDEX PROJECT_TYPE_PK REBUILD
TABLESPACE INDX;


ALTER TABLE I_PROJ_PROJTYPE MOVE
PCTFREE 30
STORAGE (INITIAL 64K NEXT 64K)
TABLESPACE UIAALUMNI64K;

ALTER INDEX RELATION_5_PK REBUILD
TABLESPACE INDX;


ALTER TABLE I_PROJ_FOCUSAREA MOVE
PCTFREE 20
STORAGE (INITIAL 64K NEXT 64K)
TABLESPACE UIAALUMNI64K;

ALTER INDEX RELATION_3_PK REBUILD
TABLESPACE INDX;


-- We have created several tablespaces, make sure you are lookin at the following tablespaces that are in use.
-- tablespaces: UIAALUMNI4M, UIAALUMNI2MB, UIAALUMNI8MB and UIAALUMNI64K.


SELECT * FROM DBA_Tablespaces;
SELECT * FROM USER_Indexes;
select * from user_tables;
