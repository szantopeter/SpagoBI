CREATE TABLE SBI_CHECKS (
       CHECK_ID             INTEGER NOT NULL AUTO_INCREMENT,
       DESCR                VARCHAR(160) NULL,
       LABEL                VARCHAR(20) NOT NULL,
       VALUE_TYPE_CD        VARCHAR(20) NOT NULL,
       VALUE_TYPE_ID        INTEGER NOT NULL,
       VALUE_1              VARCHAR(400) NULL,
       VALUE_2              VARCHAR(400) NULL,
       NAME                 VARCHAR(40) NOT NULL,
              PRIMARY KEY (CHECK_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_CHECKS ON SBI_CHECKS
(
       LABEL                          ASC
);


CREATE TABLE SBI_DOMAINS (
       VALUE_ID             INTEGER NOT NULL AUTO_INCREMENT,
       VALUE_CD             VARCHAR(100) NULL,
       VALUE_NM             VARCHAR(40) NULL,
       DOMAIN_CD            VARCHAR(20) NULL,
       DOMAIN_NM            VARCHAR(40) NULL,
       VALUE_DS             VARCHAR(160) NULL,
              PRIMARY KEY (VALUE_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_DOMAINS ON SBI_DOMAINS
(
       VALUE_CD                       ASC,
       DOMAIN_CD                      ASC
);


CREATE TABLE SBI_ENGINES (
       ENGINE_ID            INTEGER NOT NULL AUTO_INCREMENT,
       ENCRYPT              SMALLINT NULL,
       NAME                 VARCHAR(40) NOT NULL,
       DESCR                VARCHAR(160) NULL,
       MAIN_URL             VARCHAR(400) NULL,
       SECN_URL             VARCHAR(400) NULL,
       OBJ_UPL_DIR          VARCHAR(400) NULL,
       OBJ_USE_DIR          VARCHAR(400) NULL,
       DRIVER_NM            VARCHAR(400) NULL,
       LABEL                VARCHAR(40) NOT NULL,
       ENGINE_TYPE          INTEGER NOT NULL,
       CLASS_NM             VARCHAR(400) NULL,
       BIOBJ_TYPE           INTEGER NOT NULL,
 	      DEFAULT_DS_ID 		INTEGER,
 	      USE_DATASET        BOOLEAN DEFAULT FALSE,
 	      USE_DATASOURCE     BOOLEAN  DEFAULT FALSE,
              PRIMARY KEY (ENGINE_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_ENGINES ON SBI_ENGINES
(
       LABEL                          
);


CREATE TABLE SBI_EXT_ROLES (
       EXT_ROLE_ID          				INTEGER NOT NULL AUTO_INCREMENT,
       NAME                 				VARCHAR(100) NULL,
       DESCR                				VARCHAR(160) NULL,
       CODE                 				VARCHAR(20) NULL,
       ROLE_TYPE_CD         				VARCHAR(20) NOT NULL,
       ROLE_TYPE_ID         				INTEGER NOT NULL,
       SAVE_SUBOBJECTS				BOOLEAN DEFAULT TRUE,
       SEE_SUBOBJECTS				BOOLEAN DEFAULT TRUE,
       SEE_VIEWPOINTS				BOOLEAN DEFAULT TRUE,
       SEE_SNAPSHOTS				BOOLEAN DEFAULT TRUE,
       SEE_NOTES					BOOLEAN DEFAULT TRUE,
       SEND_MAIL					BOOLEAN DEFAULT TRUE,
       SAVE_INTO_FOLDER				BOOLEAN DEFAULT TRUE,
       SAVE_REMEMBER_ME				BOOLEAN DEFAULT TRUE,
       SEE_METADATA 				BOOLEAN DEFAULT TRUE,
       SAVE_METADATA 				BOOLEAN DEFAULT TRUE,
       BUILD_QBE_QUERY 				BOOLEAN DEFAULT TRUE,
              PRIMARY KEY (EXT_ROLE_ID)
)TYPE=INNODB;


CREATE TABLE SBI_FUNC_ROLE (
       ROLE_ID              INTEGER NOT NULL,
       FUNCT_ID             INTEGER NOT NULL,
       STATE_CD             VARCHAR(20) NULL,
       STATE_ID             INTEGER NOT NULL,
              PRIMARY KEY (FUNCT_ID, STATE_ID, ROLE_ID)
)TYPE=INNODB;


CREATE TABLE SBI_FUNCTIONS (
       FUNCT_ID             INTEGER NOT NULL AUTO_INCREMENT,
       FUNCT_TYPE_CD        VARCHAR(20) NOT NULL,
       PARENT_FUNCT_ID      INTEGER NULL,
       NAME                 VARCHAR(40) NULL,
       DESCR                VARCHAR(160) NULL,
       PATH                 VARCHAR(400) NULL,
       CODE                 VARCHAR(40) NOT NULL,
       PROG 				INTEGER NOT NULL,
       FUNCT_TYPE_ID        INTEGER NOT NULL,
              PRIMARY KEY (FUNCT_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_FUNCTIONS ON SBI_FUNCTIONS
(
       CODE                           ASC
);


CREATE TABLE SBI_LOV (
       LOV_ID               INTEGER NOT NULL AUTO_INCREMENT,
       DESCR                VARCHAR(160) NULL,
       LABEL                VARCHAR(20) NOT NULL,
       INPUT_TYPE_CD        VARCHAR(20) NOT NULL,
       DEFAULT_VAL          VARCHAR(40) NULL,
       LOV_PROVIDER         TEXT NULL,
       INPUT_TYPE_ID        INTEGER NOT NULL,
       PROFILE_ATTR         VARCHAR(20) NULL,
       NAME                 VARCHAR(40) NOT NULL,
              PRIMARY KEY (LOV_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_LOV ON SBI_LOV
(
       LABEL                          ASC
);


CREATE TABLE SBI_OBJ_FUNC (
       BIOBJ_ID             INTEGER NOT NULL,
       FUNCT_ID             INTEGER NOT NULL,
       PROG                 INTEGER NULL,
              PRIMARY KEY (BIOBJ_ID, FUNCT_ID)
)TYPE=INNODB;


CREATE TABLE SBI_OBJ_PAR (
       OBJ_PAR_ID           INTEGER NOT NULL AUTO_INCREMENT,
       PAR_ID               INTEGER NOT NULL,
       BIOBJ_ID             INTEGER NOT NULL,
       LABEL                VARCHAR(40) NOT NULL,
       REQ_FL               SMALLINT NULL,
       MOD_FL               SMALLINT NULL,
       VIEW_FL              SMALLINT NULL,
       MULT_FL              SMALLINT NULL,
       PROG                 INTEGER NOT NULL,
       PARURL_NM            VARCHAR(20) NULL,
       PRIORITY             INTEGER NULL,
              PRIMARY KEY (OBJ_PAR_ID)
)TYPE=INNODB;


CREATE TABLE SBI_OBJ_STATE (
       BIOBJ_ID             INTEGER NOT NULL,
       STATE_ID             INTEGER NOT NULL,
       END_DT               DATE NULL,
       START_DT             DATE NOT NULL,
       NOTE                 VARCHAR(300) NULL,
              PRIMARY KEY (BIOBJ_ID, STATE_ID, START_DT)
)TYPE=INNODB;


CREATE TABLE SBI_OBJECTS (
       BIOBJ_ID             INTEGER NOT NULL AUTO_INCREMENT,
       ENGINE_ID            INTEGER NOT NULL,
       DESCR                VARCHAR(400) NULL,
       LABEL                VARCHAR(20) NOT NULL,
       ENCRYPT              SMALLINT NULL,
       PATH                 VARCHAR(400) NULL,
       REL_NAME             VARCHAR(400) NULL,
       STATE_ID             INTEGER NOT NULL,
       STATE_CD             VARCHAR(20) NOT NULL,
       BIOBJ_TYPE_CD        VARCHAR(20) NOT NULL,
       BIOBJ_TYPE_ID        INTEGER NOT NULL,
       SCHED_FL             SMALLINT NULL,
       EXEC_MODE_ID         INTEGER NULL,
       STATE_CONS_ID        INTEGER NULL,
       EXEC_MODE_CD         VARCHAR(20) NULL,
       STATE_CONS_CD        VARCHAR(20) NULL,
       NAME                 VARCHAR(200) NOT NULL,
       VISIBLE              SMALLINT NOT NULL,
       UUID                 VARCHAR(40) NOT NULL,
       DATA_SOURCE_ID 		  INTEGER,
       DATA_SET_ID 		      INTEGER,
       DESCR_EXT            TEXT,
       OBJECTIVE            TEXT,
       LANGUAGE             VARCHAR(45),
       CREATION_DATE        TIMESTAMP NOT NULL,
       CREATION_USER        VARCHAR(45) NOT NULL,
       KEYWORDS			  VARCHAR(250),
       REFRESH_SECONDS      INTEGER,
       PROF_VISIBILITY       VARCHAR(400) NULL,
              PRIMARY KEY (BIOBJ_ID)
)TYPE=INNODB;

CREATE TABLE SBI_OBJECTS_RATING (

	 USER_ID VARCHAR(127) NOT NULL,
	 OBJ_ID INTEGER NOT NULL,
	 RATING INTEGER NOT NULL,
	 PRIMARY KEY (USER_ID, OBJ_ID)

)TYPE = InnoDB; 

CREATE UNIQUE INDEX XAK1SBI_OBJECTS ON SBI_OBJECTS
(
       LABEL                          ASC
);


CREATE TABLE SBI_PARAMETERS (
       PAR_ID               INTEGER NOT NULL AUTO_INCREMENT,
       DESCR                VARCHAR(160) NULL,
       LENGTH               SMALLINT NOT NULL,
       LABEL                VARCHAR(20) NOT NULL,
       PAR_TYPE_CD          VARCHAR(20) NOT NULL,
       MASK                 VARCHAR(20) NULL,
       PAR_TYPE_ID          INTEGER NOT NULL,
       NAME                 VARCHAR(40) NOT NULL,
       FUNCTIONAL_FLAG		SMALLINT NOT NULL DEFAULT 1,
       TEMPORAL_FLAG		SMALLINT NOT NULL DEFAULT 0,
              PRIMARY KEY (PAR_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_PARAMETERS ON SBI_PARAMETERS
(
       LABEL                          ASC
);


CREATE TABLE SBI_PARUSE (
       USE_ID               INTEGER NOT NULL AUTO_INCREMENT,
       LOV_ID               INTEGER NULL,
       LABEL                VARCHAR(20) NOT NULL,
       DESCR                VARCHAR(160) NULL,
       PAR_ID               INTEGER NOT NULL,
       NAME                 VARCHAR(40) NOT NULL,
       MAN_IN               INTEGER NOT NULL,
       SELECTION_TYPE  VARCHAR(20) DEFAULT 'LIST',
       MULTIVALUE_FLAG  INTEGER DEFAULT 0,
              PRIMARY KEY (USE_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_PARUSE ON SBI_PARUSE
(
       PAR_ID                         ASC,
       LABEL                          ASC
);


CREATE TABLE SBI_PARUSE_CK (
       CHECK_ID             INTEGER NOT NULL,
       USE_ID               INTEGER NOT NULL,
       PROG                 INTEGER NULL,
              PRIMARY KEY (USE_ID, CHECK_ID)
)TYPE=INNODB;


CREATE TABLE SBI_PARUSE_DET (
       EXT_ROLE_ID          INTEGER NOT NULL,
       PROG                 INTEGER NULL,
       USE_ID               INTEGER NOT NULL,
       HIDDEN_FL            SMALLINT NULL,
       DEFAULT_VAL          VARCHAR(40) NULL,
              PRIMARY KEY (USE_ID, EXT_ROLE_ID)
)TYPE=INNODB;

CREATE TABLE SBI_SUBREPORTS (
       MASTER_RPT_ID        INTEGER NOT NULL,
       SUB_RPT_ID           INTEGER NOT NULL,
              PRIMARY KEY (MASTER_RPT_ID, SUB_RPT_ID)
)TYPE=INNODB;

CREATE TABLE SBI_OBJ_PARUSE (
	OBJ_PAR_ID          INTEGER NOT NULL,
	USE_ID              INTEGER NOT NULL,
	OBJ_PAR_FATHER_ID   INTEGER NOT NULL,
	FILTER_OPERATION    VARCHAR(20) NOT NULL,
	PROG INTEGER NOT NULL,
	FILTER_COLUMN       VARCHAR(30) NOT NULL,
	PRE_CONDITION VARCHAR(10),
    POST_CONDITION VARCHAR(10),
    LOGIC_OPERATOR VARCHAR(10),
	 PRIMARY KEY(OBJ_PAR_ID,USE_ID,OBJ_PAR_FATHER_ID,FILTER_OPERATION)
)TYPE=INNODB;


CREATE TABLE SBI_EVENTS (
	ID                  INTEGER NOT NULL AUTO_INCREMENT,
  USER_EVENT          VARCHAR(40) NOT NULL,
              PRIMARY KEY(ID)
)TYPE=INNODB;

CREATE TABLE SBI_EVENTS_LOG (
	ID                  INTEGER NOT NULL AUTO_INCREMENT,
	USER_EVENT                 VARCHAR(40) NOT NULL,
	EVENT_DATE          TIMESTAMP DEFAULT NOW() NOT NULL,
	DESCR                VARCHAR(4000) NOT NULL,
	PARAMS              VARCHAR(1000),
	HANDLER 	VARCHAR(400) NOT NULL DEFAULT 'it.eng.spagobi.events.handlers.DefaultEventPresentationHandler',
              PRIMARY KEY(ID)
)TYPE=INNODB;

CREATE TABLE SBI_EVENTS_ROLES (
       EVENT_ID            INTEGER NOT NULL,
       ROLE_ID             INTEGER NOT NULL,
              PRIMARY KEY (EVENT_ID, ROLE_ID)
)TYPE=INNODB;


CREATE TABLE SBI_AUDIT ( 
		ID 					INTEGER NOT NULL AUTO_INCREMENT,
		USERNAME 			VARCHAR(40) NOT NULL,
		USERGROUP 			VARCHAR(100),
		DOC_REF 			INTEGER,
		DOC_ID 				INTEGER,
		DOC_LABEL 			VARCHAR(20) NOT NULL,
		DOC_NAME 			VARCHAR(40) NOT NULL,
		DOC_TYPE 			VARCHAR(20) NOT NULL,
		DOC_STATE 			VARCHAR(20) NOT NULL,
		DOC_PARAMETERS 		TEXT,
		SUBOBJ_REF			INTEGER,
		SUBOBJ_ID			INTEGER,
		SUBOBJ_NAME         VARCHAR(50),
		SUBOBJ_OWNER 	    VARCHAR(50),
		SUBOBJ_ISPUBLIC 	SMALLINT NULL,
		ENGINE_REF 			INTEGER,
		ENGINE_ID 			INTEGER,
		ENGINE_LABEL 		VARCHAR(40) NOT NULL,
		ENGINE_NAME 		VARCHAR(40) NOT NULL,
		ENGINE_TYPE 		VARCHAR(20) NOT NULL,
		ENGINE_URL 			VARCHAR(400),
		ENGINE_DRIVER 		VARCHAR(400),
		ENGINE_CLASS 		VARCHAR(400),
		REQUEST_TIME 		TIMESTAMP NOT NULL,
		EXECUTION_START 	TIMESTAMP NULL DEFAULT NULL,
		EXECUTION_END 		TIMESTAMP NULL DEFAULT NULL,
		EXECUTION_TIME		INTEGER,
		EXECUTION_STATE 	VARCHAR(20),
		ERROR				SMALLINT,
		ERROR_MESSAGE 		VARCHAR(400),
		ERROR_CODE 			VARCHAR(20),
		EXECUTION_MODALITY 	VARCHAR(40),
		PRIMARY KEY (ID)
)TYPE=INNODB;

CREATE TABLE SBI_ACTIVITY_MONITORING (
  ID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  ACTION_TIME TIMESTAMP,
  USERNAME 	 	VARCHAR(40) NOT NULL,
  USERGROUP		VARCHAR(400),
  LOG_LEVEL 	VARCHAR(10) ,
  ACTION_CODE 	VARCHAR(45) NOT NULL,
  INFO 			VARCHAR(400),
  PRIMARY KEY (ID)
)TYPE=INNODB;

CREATE TABLE SBI_GEO_MAPS (
       MAP_ID               INTEGER NOT NULL AUTO_INCREMENT,       
       NAME                 VARCHAR(40) NOT NULL,
       DESCR                VARCHAR(160) NULL,
       URL					VARCHAR(400) NULL,
       FORMAT 				VARCHAR(40) NULL,       
	   BIN_ID               INTEGER NOT NULL,
       PRIMARY KEY (MAP_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_GEO_MAPS ON SBI_GEO_MAPS
(
       NAME                          ASC
);

CREATE TABLE SBI_GEO_FEATURES (
       FEATURE_ID           INTEGER NOT NULL AUTO_INCREMENT,       
       NAME                 VARCHAR(40) NOT NULL,
       DESCR                VARCHAR(160) NULL,
       TYPE					VARCHAR(40)  NULL,
       PRIMARY KEY (FEATURE_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_GEO_FEATURES ON SBI_GEO_FEATURES
(
       NAME                          ASC
);

CREATE TABLE SBI_GEO_MAP_FEATURES (
       MAP_ID             INTEGER NOT NULL,
       FEATURE_ID         INTEGER NOT NULL,
       SVG_GROUP          VARCHAR(40),
       VISIBLE_FLAG		  VARCHAR(1),
       PRIMARY KEY (MAP_ID, FEATURE_ID)
)TYPE=INNODB;

CREATE TABLE SBI_VIEWPOINTS (
		VP_ID 				INTEGER NOT NULL AUTO_INCREMENT,
		BIOBJ_ID 			INTEGER NOT NULL, 
		VP_NAME 			VARCHAR(40) NOT NULL,
    	VP_OWNER 			VARCHAR(40),
		VP_DESC 			VARCHAR(160),
		VP_SCOPE 			VARCHAR (20) NOT NULL, 
		VP_VALUE_PARAMS 	TEXT, 
		VP_CREATION_DATE 	TIMESTAMP NOT NULL,
        PRIMARY KEY (VP_ID)
)TYPE=INNODB;

CREATE TABLE SBI_DATA_SOURCE (
		DS_ID 				INTEGER NOT NULL AUTO_INCREMENT,
		DESCR 				VARCHAR(160), 
		LABEL	 			VARCHAR(50) NOT NULL,
    	JNDI	 			VARCHAR(50),
		URL_CONNECTION		VARCHAR(500),
		USERNAME 			VARCHAR(50), 
		PWD				 	VARCHAR(50), 
		DRIVER			 	VARCHAR(160),
		DIALECT_ID			INTEGER NOT NULL,
	    MULTI_SCHEMA  tinyint(1) NOT NULL default '0',
	    ATTR_SCHEMA    varchar(45) default NULL,
        PRIMARY KEY (DS_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_DATA_SOURCE ON SBI_DATA_SOURCE
(
       LABEL                          ASC
);

CREATE TABLE SBI_BINARY_CONTENTS (
		BIN_ID 				INTEGER NOT NULL AUTO_INCREMENT,
		BIN_CONTENT 	mediumblob NOT NULL,
        PRIMARY KEY (BIN_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_BINARY_CONTENTS ON SBI_BINARY_CONTENTS
(
       BIN_ID                          ASC
);

CREATE TABLE SBI_OBJECT_TEMPLATES (
		OBJ_TEMP_ID 				INTEGER NOT NULL AUTO_INCREMENT,
		BIOBJ_ID 	          INTEGER,
    BIN_ID 	            INTEGER,
    NAME 	              VARCHAR(50),  
    PROG 	              INTEGER, 
    DIMENSION           VARCHAR(20),  
		CREATION_DATE 		  DATETIME, 
    CREATION_USER         VARCHAR(45) NOT NULL, 
    ACTIVE 	            BOOLEAN,                  
        PRIMARY KEY (OBJ_TEMP_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_OBJECT_TEMPLATES ON SBI_OBJECT_TEMPLATES
(
       OBJ_TEMP_ID                          ASC
);

CREATE TABLE SBI_OBJECT_NOTES (
	OBJ_NOTE_ID 				INTEGER NOT NULL AUTO_INCREMENT,
	BIOBJ_ID 	          INTEGER,
    BIN_ID 	            INTEGER,
    EXEC_REQ 	          VARCHAR(500),
    OWNER 	            VARCHAR(50),
    ISPUBLIC 	        BOOLEAN,  
    CREATION_DATE 	    TIMESTAMP NOT NULL,  
    LAST_CHANGE_DATE    TIMESTAMP NOT NULL,  
    PRIMARY KEY (OBJ_NOTE_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_OBJECT_NOTES ON SBI_OBJECT_NOTES
(
       OBJ_NOTE_ID                          ASC
);

CREATE TABLE SBI_SUBOBJECTS (
	SUBOBJ_ID 			  INTEGER NOT NULL AUTO_INCREMENT,
	BIOBJ_ID 	          INTEGER,
    BIN_ID 	              INTEGER,
    NAME 	              VARCHAR(50) NOT NULL,
    DESCRIPTION 	      VARCHAR(100), 
    OWNER 	              VARCHAR(50),
    ISPUBLIC 	          BOOLEAN,  
    CREATION_DATE 	      TIMESTAMP NOT NULL,  
    LAST_CHANGE_DATE 	  TIMESTAMP NOT NULL,                                     
        PRIMARY KEY (SUBOBJ_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_SUBOBJECTS ON SBI_SUBOBJECTS
(
       SUBOBJ_ID                          ASC
);

CREATE TABLE SBI_SNAPSHOTS (
		SNAP_ID 				  INTEGER NOT NULL AUTO_INCREMENT,
		BIOBJ_ID 	          INTEGER,
    BIN_ID 	            INTEGER,
    NAME 	              VARCHAR(100),
    DESCRIPTION 	      VARCHAR(1000),
    CREATION_DATE 	    TIMESTAMP NOT NULL,                                    
        PRIMARY KEY (SNAP_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_SNAPSHOTS ON SBI_SNAPSHOTS
(
       SNAP_ID                          ASC
);

CREATE TABLE SBI_USER_FUNC (
		USER_FUNCT_ID 				INTEGER NOT NULL AUTO_INCREMENT,
		NAME 	                VARCHAR(50),  
    DESCRIPTION 	      VARCHAR(100),                               
        PRIMARY KEY (USER_FUNCT_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_USER_FUNC ON SBI_USER_FUNC
(
       USER_FUNCT_ID                          ASC       
);

CREATE TABLE SBI_ROLE_TYPE_USER_FUNC (
		ROLE_TYPE_ID 				INTEGER NOT NULL,
		USER_FUNCT_ID 	    INTEGER NOT NULL,                             
        PRIMARY KEY (ROLE_TYPE_ID,USER_FUNCT_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_ROLE_TYPE_USER_FUNC ON SBI_ROLE_TYPE_USER_FUNC
(
       ROLE_TYPE_ID                          ASC,
       USER_FUNCT_ID                          ASC       
);

CREATE TABLE SBI_DOSSIER_PRES (
        PRESENTATION_ID 			INTEGER NOT NULL AUTO_INCREMENT,
        WORKFLOW_PROCESS_ID 		BIGINT NOT NULL,
        BIOBJ_ID 					INTEGER NOT NULL,
        BIN_ID 						INTEGER NOT NULL,
        NAME 						VARCHAR(40) NOT NULL,
        PROG 						INTEGER NULL,
        CREATION_DATE 				TIMESTAMP,
        APPROVED 					SMALLINT NULL,
        PRIMARY KEY (PRESENTATION_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_DOSSIER_PRES ON SBI_DOSSIER_PRES
(
       PRESENTATION_ID				ASC
);

CREATE TABLE SBI_DOSSIER_TEMP (
        PART_ID 					INTEGER NOT NULL AUTO_INCREMENT,
        WORKFLOW_PROCESS_ID 		BIGINT NOT NULL,
        BIOBJ_ID 					INTEGER NOT NULL,
        PAGE_ID 					INTEGER NOT NULL,
        PRIMARY KEY (PART_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_DOSSIER_TEMP ON SBI_DOSSIER_TEMP
(
       PART_ID						ASC
);

CREATE TABLE SBI_DOSSIER_BIN_TEMP (
        BIN_ID 						INTEGER NOT NULL AUTO_INCREMENT,
        PART_ID 					INTEGER NOT NULL,
        NAME 						VARCHAR(20),
        BIN_CONTENT 				mediumblob NOT NULL,
        TYPE 						VARCHAR(20) NOT NULL,
        CREATION_DATE 				TIMESTAMP,
        PRIMARY KEY (BIN_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_DOSSIER_BIN_TEMP ON SBI_DOSSIER_BIN_TEMP
(
       BIN_ID						ASC
);

CREATE TABLE SBI_DIST_LIST (
        DL_ID 						INTEGER NOT NULL AUTO_INCREMENT,
        NAME 						VARCHAR(40) NOT NULL,
        DESCR						VARCHAR(160),
        PRIMARY KEY (DL_ID)
)TYPE=INNODB;


CREATE TABLE SBI_DIST_LIST_USER (
		DLU_ID						INTEGER NOT NULL AUTO_INCREMENT,
        LIST_ID 					INTEGER NOT NULL,
        USER_ID 					VARCHAR(40) NOT NULL,
        E_MAIL						VARCHAR(70) NOT NULL,
		PRIMARY KEY (DLU_ID),
        UNIQUE (LIST_ID, USER_ID)
)TYPE=INNODB;

CREATE TABLE SBI_DIST_LIST_OBJECTS (
		REL_ID						INTEGER NOT NULL AUTO_INCREMENT,
        DOC_ID 						INTEGER NOT NULL,
        DL_ID 						INTEGER NOT NULL,
        XML							VARCHAR(5000) NOT NULL,
		PRIMARY KEY (REL_ID)
)TYPE=INNODB;

CREATE TABLE SBI_REMEMBER_ME (
       ID               INTEGER NOT NULL AUTO_INCREMENT,
       NAME 			VARCHAR(50) NOT NULL,
       DESCRIPTION      TEXT,
       USERNAME			VARCHAR(40) NOT NULL,
       BIOBJ_ID         INTEGER NOT NULL,
       SUBOBJ_ID        INTEGER NULL,
       PARAMETERS       TEXT,
              PRIMARY KEY (ID)
)TYPE=INNODB;


CREATE UNIQUE INDEX XAK1SBI_REMEMBER_ME ON SBI_REMEMBER_ME
(
       ID                          ASC
);

CREATE TABLE SBI_DATA_SET (
	DS_ID 		   INTEGER NOT NULL AUTO_INCREMENT,
	DESCR 		   VARCHAR(160), 
	LABEL	 	   VARCHAR(50) NOT NULL,
	NAME	   	   VARCHAR(50) NOT NULL,
    FILE_NAME	   VARCHAR(300),
    QUERY   	   TEXT,
    ADRESS   	   VARCHAR(250),
    EXECUTOR_CLASS VARCHAR(250),
    PARAMS         VARCHAR(1000),
    DS_METADATA    VARCHAR(2000),
    DATA_SOURCE_ID INTEGER,
    OBJECT_TYPE    VARCHAR(50),
    OPERATION      VARCHAR(50),
    JCLASS_NAME    VARCHAR(100),
	SCRIPT   	   TEXT,
    TRANSFORMER_ID INTEGER,
    PIVOT_COLUMN   VARCHAR(50),
	PIVOT_ROW      VARCHAR(50),
	PIVOT_VALUE    VARCHAR(50),
	NUM_ROWS	   BOOLEAN DEFAULT FALSE,
	LANGUAGE_SCRIPT VARCHAR(50),
    PRIMARY KEY (DS_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_DATA_SET ON SBI_DATA_SET
(
       LABEL                          ASC
);

CREATE TABLE SBI_MENU (

		MENU_ID INTEGER  NOT NULL AUTO_INCREMENT,
		NAME VARCHAR(50), 
		DESCR VARCHAR(2000),
		PARENT_ID INTEGER DEFAULT 0, 
		BIOBJ_ID INTEGER,
		VIEW_ICONS BOOLEAN,
		HIDE_TOOLBAR BOOLEAN, 
		HIDE_SLIDERS BOOLEAN,
		STATIC_PAGE VARCHAR(45),
		BIOBJ_PARAMETERS TEXT NULL,
		SUBOBJ_NAME VARCHAR(50) NULL,
		SNAPSHOT_NAME VARCHAR(100) NULL,
		SNAPSHOT_HISTORY INTEGER NULL,
		FUNCTIONALITY VARCHAR(50) NULL,
		INITIAL_PATH VARCHAR(400) NULL,
		PROG INTEGER NOT NULL DEFAULT 1,
        PRIMARY KEY (MENU_ID)
)TYPE=INNODB;

CREATE TABLE SBI_MENU_ROLE (
       MENU_ID INTEGER NOT NULL, 
       EXT_ROLE_ID INTEGER NOT NULL,
       PRIMARY KEY (MENU_ID, EXT_ROLE_ID)
)TYPE=INNODB;

-- KPI DEFINITION

Create table `SBI_KPI_ROLE` (
	`id_kpi_role` Int NOT NULL AUTO_INCREMENT,
	`KPI_ID` Int NOT NULL,
	`EXT_ROLE_ID` Int NOT NULL,
	UNIQUE (`id_kpi_role`),
 Primary Key (`id_kpi_role`)) ENGINE = InnoDB;


Create table `SBI_KPI` (
	`KPI_ID` Int NOT NULL AUTO_INCREMENT,
	`id_measure_unit` Int,
	`DS_ID` Int,
	`THRESHOLD_ID` Int,
	`id_kpi_parent` Int,
	`name` Varchar(400) NOT NULL,
	`code` Varchar(40),
	`metric` Varchar(1000),
	`description` Varchar(1000),
	`weight` Double,
	`flg_is_father` Char(1),
	`kpi_type` Int,
	`metric_scale_type` Int,
	`measure_type` Int,
	`interpretation` Varchar(1000),
	`input_attributes` Varchar(1000),
	`model_reference` Varchar(255),
	`target_audience` Varchar(1000),
	UNIQUE (`code`),
 Primary Key (`KPI_ID`)) ENGINE = InnoDB;
 
Create table `SBI_KPI_DOCUMENTS` (
	`ID_KPI_DOC` Int NOT NULL AUTO_INCREMENT,
	`BIOBJ_ID` Int NOT NULL,
	`KPI_ID` Int NOT NULL,
 Primary Key (`ID_KPI_DOC`)) ENGINE = InnoDB;

Create table `SBI_MEASURE_UNIT` (
	`id_measure_unit` Int NOT NULL AUTO_INCREMENT,
	`name` Varchar(400),
	`SCALE_TYPE_ID` Int NOT NULL,
	`SCALE_CD` Varchar(40),
	`SCALE_NM` Varchar(400),
 Primary Key (`id_measure_unit`)) ENGINE = InnoDB;
 

Create table `SBI_THRESHOLD` (
	`THRESHOLD_ID` Int NOT NULL AUTO_INCREMENT,
	`THRESHOLD_TYPE_ID` Int NOT NULL,
	`name` Varchar(400),
	`description` Varchar(1000),
	`code` Varchar(45) NOT NULL,
	UNIQUE (`code`),
 Primary Key (`THRESHOLD_ID`)) ENGINE = InnoDB;

Create table `SBI_THRESHOLD_VALUE` (
	`id_threshold_value` Int NOT NULL AUTO_INCREMENT,
	`THRESHOLD_ID` Int NOT NULL,
	`SEVERITY_ID` Int,
	`position` Int,
	`min_value` Double,
	`max_value` Double,
	`label` Varchar(20) NOT NULL,
	`colour` Varchar(20),
	`min_closed` BOOLEAN,
	`max_closed` BOOLEAN,
	`th_value` DOUBLE,
	UNIQUE (`label`, `THRESHOLD_ID`),
 Primary Key (`id_threshold_value`)) ENGINE = InnoDB;

 Create table `SBI_KPI_MODEL` (
	`KPI_MODEL_ID` Int NOT NULL AUTO_INCREMENT,
	`KPI_ID` Int,
	`KPI_MODEL_TYPE_ID` Int NOT NULL,
	`KPI_PARENT_MODEL_ID` Int,
	`KPI_MODEL_CD` Varchar(40) NOT NULL,
	`KPI_MODEL_NM` Varchar(400),
	`KPI_MODEL_DESC` Varchar(1000),
	`KPI_MODEL_LBL` VARCHAR(100) NOT NULL,
	UNIQUE (`KPI_MODEL_LBL`),
 Primary Key (`KPI_MODEL_ID`)) ENGINE = InnoDB;
 
ALTER TABLE SBI_KPI_MODEL ADD UNIQUE INDEX UNIQUE_PAR_ID_CD(KPI_PARENT_MODEL_ID, KPI_MODEL_CD);

Create table `SBI_KPI_MODEL_ATTR` (
	`KPI_MODEL_ATTR_ID` Int NOT NULL AUTO_INCREMENT,
	`KPI_MODEL_ATTR_TYPE_ID` Int NOT NULL,
	`KPI_MODEL_ATTR_CD` Varchar(40),
	`KPI_MODEL_ATTR_NM` Varchar(400),
	`KPI_MODEL_ATTR_DESCR` Varchar(1000),
 Primary Key (`KPI_MODEL_ATTR_ID`)) ENGINE = InnoDB;

Create table `SBI_KPI_MODEL_ATTR_VAL` (
	`KPI_MODEL_ATTR_VAL_ID` Int NOT NULL AUTO_INCREMENT,
	`KPI_MODEL_ATTR_ID` Int NOT NULL,
	`KPI_MODEL_ID` Int NOT NULL,
	`VALUE` Varchar(2048),
	UNIQUE (`KPI_MODEL_ATTR_VAL_ID`),
 Primary Key (`KPI_MODEL_ATTR_VAL_ID`)) ENGINE = InnoDB;


-- INSTANCE

Create table `SBI_KPI_PERIODICITY` (
	`id_kpi_periodicity` Int NOT NULL AUTO_INCREMENT,
	`name` Varchar(200) NOT NULL,
	`months` Int,
	`days` Int,
	`hours` Int,
	`minutes` Int,
	`chron_string` Varchar(20),
	`start_date` TIMESTAMP,
	UNIQUE (`name`),
 Primary Key (`id_kpi_periodicity`)) ENGINE = InnoDB;

Create table `SBI_KPI_INSTANCE` (
	`id_kpi_instance` Int NOT NULL AUTO_INCREMENT,
	`KPI_ID` Int NOT NULL,
	`THRESHOLD_ID` Int,
	`CHART_TYPE_ID` Int,
	`id_measure_unit` Int,
	`weight` Double,
	`target` Double,
	`BEGIN_DT` Datetime,
 Primary Key (`id_kpi_instance`)) ENGINE = InnoDB;


Create table `SBI_KPI_INST_PERIOD` (
  `KPI_INST_PERIOD_ID` INTEGER NOT NULL AUTO_INCREMENT,
  `KPI_INSTANCE_ID` INTEGER NOT NULL,
  `PERIODICITY_ID` INTEGER NOT NULL,
  `DEFAULT_VALUE` BOOLEAN ,
  PRIMARY KEY (`KPI_INST_PERIOD_ID`)
)
ENGINE = InnoDB;


Create table `SBI_KPI_INSTANCE_HISTORY` (
	`id_kpi_instance_history` Int NOT NULL AUTO_INCREMENT,
	`id_kpi_instance` Int NOT NULL,
	`THRESHOLD_ID` Int,
	`CHART_TYPE_ID` Int,
	`id_measure_unit` Int,
	`weight` Double,
	`target` Double,
	`BEGIN_DT` Datetime,
	`END_DT` Datetime,
	UNIQUE (`id_kpi_instance_history`),
 Primary Key (`id_kpi_instance_history`)) ENGINE = InnoDB;

Create table `SBI_KPI_VALUE` (
	`id_kpi_instance_value` Int NOT NULL AUTO_INCREMENT,
	`id_kpi_instance` Int NOT NULL,
	`RESOURCE_ID` Int,
	`VALUE` Varchar(40),
	`BEGIN_DT` Datetime,
	`END_DT` Datetime,
	`DESCRIPTION` Varchar(100),
	`XML_DATA` TEXT,
	UNIQUE (`id_kpi_instance_value`),
 Primary Key (`id_kpi_instance_value`)) ENGINE = InnoDB;

Create table `SBI_KPI_MODEL_INST` (
	`KPI_MODEL_INST` Int NOT NULL AUTO_INCREMENT,
	`KPI_MODEL_INST_PARENT` Int,
	`KPI_MODEL_ID` Int,
	`id_kpi_instance` Int,
	`name` Varchar(400),
	`label` Varchar(100) NOT NULL,
	`description` Varchar(1000),
	`start_date` DATETIME,
	`end_date` DATETIME,
	`modelUUID` VARCHAR(400),
    UNIQUE (`label`),
 Primary Key (`KPI_MODEL_INST`)) ENGINE = InnoDB;

Create table `SBI_RESOURCES` (
	`RESOURCE_ID` Int NOT NULL AUTO_INCREMENT,
	`RESOURCE_TYPE_ID` Int NOT NULL,
	`TABLE_NAME` Varchar(40),
	`COLUMN_NAME` Varchar(40),
	`RESOURCE_NAME` Varchar(40) NOT NULL,
	`RESOURCE_DESCR` Varchar(400),
	`RESOURCE_CODE` VARCHAR(45) NOT NULL,
	UNIQUE (`RESOURCE_CODE`),
 Primary Key (`RESOURCE_ID`)) ENGINE = InnoDB;

Create table `SBI_KPI_MODEL_RESOURCES` (
	`KPI_MODEL_RESOURCES_ID` Int NOT NULL AUTO_INCREMENT,
	`RESOURCE_ID` Int NOT NULL,
	`KPI_MODEL_INST` Int NOT NULL,
 Primary Key (`KPI_MODEL_RESOURCES_ID`)) ENGINE = InnoDB;

-- ALARM

Create table `SBI_ALARM` (
	`ALARM_ID` Int NOT NULL AUTO_INCREMENT,
	`id_kpi_instance` Int ,
	`MODALITY_ID` Int NOT NULL COMMENT 'VIA MAIL, SMS,ETC...',
	`DOCUMENT_ID` Int COMMENT 'DOCUMENTO PER ALLEGARE ALL''ALLARME',
	`LABEL` Varchar(50) NOT NULL,
	`NAME` Varchar(50),
	`DESCR` Varchar(200),
	`TEXT` Varchar(1000) COMMENT 'TESTO STATICO DA ALLEGARE ALLA NOTIFICA DELL''ALLARME ',
	`URL` Varchar(20) COMMENT 'URL DA INSERIRE NELLA NOTIFICA',
	`SINGLE_EVENT` Char(1) COMMENT 'INDICA SE L''ALLARME DEVE ESSERE RIPETITIVO OPPURE NO, NEL PRIMO CASO L''UTENTE DOVRA'' SPEGNERE L''ALLARME',
	`AUTO_DISABLED` char(1) default NULL,
	`id_threshold_value` Int ,
	UNIQUE (`LABEL`),
 Primary Key (`ALARM_ID`)) ENGINE = InnoDB
COMMENT = 'TABELLA DI DEFINIZIONE DEGLI ALLARMI';

Create table `SBI_ALARM_EVENT` (
	`ALARM_EVENT_ID` Int NOT NULL AUTO_INCREMENT,
	`ALARM_ID` Int NOT NULL,
	`EVENT_TS` Datetime COMMENT 'TS IN CUI � STATO INSERITO L''ALLARME',
	`ACTIVE` Char(1) COMMENT 'INDICA IL FATTO CHE L''ALLARME E'' ATTIVO, CIOE'' IL MOTORE LO DEVE NOTIFICARE',
	`KPI_VALUE` Varchar(50) COMMENT 'VALORE DEL KPI CALCOLATO',
	`THRESHOLD_VALUE` Varchar(50),
	`KPI_NAME` Varchar(100) COMMENT 'NOME DEL KPI UTILIZZATO PER CALCOLARE L''ALLARME',
	`RESOURCES` varchar(200) default NULL,
	`KPI_DESCRIPTION` Varchar (100),
	`RESOURCE_ID` Int,
	`KPI_INSTANCE_ID` Int,
 Primary Key (`ALARM_EVENT_ID`)) ENGINE = InnoDB;

Create table `SBI_ALARM_CONTACT` (
	`ALARM_CONTACT_ID` Int NOT NULL AUTO_INCREMENT,
	`NAME` Varchar(100) NOT NULL,
	`EMAIL` Varchar(100),
	`MOBILE` Varchar(50),
	`RESOURCES` varchar(200) default NULL,
	UNIQUE (`NAME`),
 Primary Key (`ALARM_CONTACT_ID`)) ENGINE = InnoDB;

Create table SBI_ALARM_DISTRIBUTION (
	ALARM_CONTACT_ID Int NOT NULL,
	ALARM_ID Int NOT NULL,
 Primary Key (ALARM_CONTACT_ID,ALARM_ID)) ENGINE = InnoDB;


CREATE TABLE SBI_EXPORTERS (
  ENGINE_ID INTEGER NOT NULL,
  DOMAIN_ID INTEGER NOT NULL,
  DEFAULT_VALUE BOOLEAN,
  PRIMARY KEY (ENGINE_ID, DOMAIN_ID)) type = InnoDB;

CREATE UNIQUE INDEX XAK1SBI_EXPORTERS ON SBI_EXPORTERS
(
       ENGINE_ID                         ASC,
       DOMAIN_ID                          ASC
);

CREATE TABLE SBI_OBJ_METADATA (
	OBJ_META_ID 		INTEGER NOT NULL AUTO_INCREMENT,
    LABEL	 	        VARCHAR(20) NOT NULL,
    NAME 	            VARCHAR(40) NOT NULL,
    DESCRIPTION	        VARCHAR(100),  
    DATA_TYPE_ID			INTEGER NOT NULL,
    CREATION_DATE 	    TIMESTAMP NOT NULL,    
    PRIMARY KEY (OBJ_META_ID)
)TYPE=INNODB;

CREATE UNIQUE INDEX XAK1SBI_OBJ_METADATA ON SBI_OBJ_METADATA
(
       OBJ_META_ID                          ASC
);

CREATE TABLE SBI_OBJ_METACONTENTS (
  OBJ_METACONTENT_ID INTEGER  NOT NULL AUTO_INCREMENT,
  OBJMETA_ID 		 INTEGER  NOT NULL ,
  BIOBJ_ID 			 INTEGER  NOT NULL,
  SUBOBJ_ID 		 INTEGER,
  BIN_ID 			 INTEGER,
  CREATION_DATE 	 TIMESTAMP NOT NULL,   
  LAST_CHANGE_DATE   TIMESTAMP NOT NULL,   
    PRIMARY KEY (OBJ_METACONTENT_ID)
)TYPE=INNODB;


CREATE UNIQUE INDEX XAK1SBI_OBJ_METACONTENTS ON SBI_OBJ_METACONTENTS
(
        OBJMETA_ID                          ASC,
        BIOBJ_ID                            ASC,
        SUBOBJ_ID                           ASC
);


CREATE TABLE SBI_CONFIG (
	ID 				INTEGER  NOT NULL AUTO_INCREMENT,
	LABEL			VARCHAR(100) NOT NULL,
	NAME			VARCHAR(100) NULL,
	DESCRIPTION 	VARCHAR(500) NULL,
	IS_ACTIVE 		BOOLEAN DEFAULT TRUE,
	VALUE_CHECK 	VARCHAR(1000) NULL,
	VALUE_TYPE_ID 	INTEGER NULL,    
 PRIMARY KEY (ID))TYPE=INNODB;

 CREATE TABLE SBI_USER (
	USER_ID CHAR(100) NOT NULL,
	PASSWORD VARCHAR(150),
	FULL_NAME VARCHAR(255),
	ID INT NOT NULL,
	DT_PWD_BEGIN DATETIME,
	DT_PWD_END DATETIME,
	FLG_PWD_BLOCKED BOOLEAN,
	DT_LAST_ACCESS DATETIME,
 PRIMARY KEY (ID))TYPE=INNODB;

CREATE TABLE SBI_ATTRIBUTE (
	ATTRIBUTE_NAME VARCHAR(255) NOT NULL,
	DESCRIPTION VARCHAR(500) NOT NULL,
	ATTRIBUTE_ID INT NOT NULL,
 PRIMARY KEY (ATTRIBUTE_ID))TYPE=INNODB;

CREATE TABLE SBI_USER_ATTRIBUTES (
	ID INT NOT NULL,
	ATTRIBUTE_ID INT NOT NULL,
	ATTRIBUTE_VALUE VARCHAR(500),
 PRIMARY KEY (ID,ATTRIBUTE_ID))TYPE=INNODB;


CREATE TABLE SBI_EXT_USER_ROLES (
	ID INT NOT NULL,
	EXT_ROLE_ID INT NOT NULL,
 PRIMARY KEY (ID,EXT_ROLE_ID))TYPE=INNODB;



CREATE TABLE SBI_UDP (
	UDP_ID	        INTEGER  NOT NULL AUTO_INCREMENT,
	TYPE_ID			INTEGER NOT NULL,
	FAMILY_ID		INTEGER NOT NULL,
	LABEL           VARCHAR(20) NOT NULL,
	NAME            VARCHAR(40) NOT NULL,
	DESCRIPTION     VARCHAR(1000) NULL,
	IS_MULTIVALUE   BOOLEAN DEFAULT FALSE,    
 PRIMARY KEY (UDP_ID));
 
 
 
CREATE TABLE SBI_UDP_VALUE (
	UDP_VALUE_ID       INTEGER  NOT NULL AUTO_INCREMENT,
	UDP_ID			   INTEGER NOT NULL,
	VALUE              VARCHAR(1000) NOT NULL,
	PROG               INTEGER NULL,
	LABEL              VARCHAR(20) NOT NULL,
	NAME               VARCHAR(40) NULL,
	FAMILY			   VARCHAR(40) NULL,
    BEGIN_TS           TIMESTAMP NOT NULL,
    END_TS             TIMESTAMP NULL,
    REFERENCE_ID	   INTEGER NULL,	
 PRIMARY KEY (UDP_VALUE_ID));
 CREATE TABLE SBI_KPI_REL (
  KPI_REL_ID INT(11) NOT NULL AUTO_INCREMENT,
  KPI_FATHER_ID INT(11)  NOT NULL,
  KPI_CHILD_ID INT(11)  NOT NULL,
  PARAMETER VARCHAR(100),
  PRIMARY KEY (KPI_REL_ID)
);

 
 CREATE TABLE SBI_KPI_ERROR (
  KPI_ERROR_ID INTEGER NOT NULL AUTO_INCREMENT,
  KPI_MODEL_INST_ID INTEGER NOT NULL,
  USER_MSG VARCHAR(1000),
  FULL_MSG TEXT,
  TS_DATE TIMESTAMP ,
  LABEL_MOD_INST VARCHAR(100) ,
  PARAMETERS VARCHAR(1000),
  PRIMARY KEY (KPI_ERROR_ID)
);
