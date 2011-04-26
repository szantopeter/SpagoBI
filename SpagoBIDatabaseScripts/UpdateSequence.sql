update hibernate_sequences set next_val=(select ifnull(max(BIOBJ_ID),0)+1 from SBI_OBJECTS) where sequence_name='SBI_OBJECTS';
update hibernate_sequences set next_val=(select ifnull(max(OBJ_NOTE_ID),0)+1 from SBI_OBJECT_NOTES) where sequence_name='SBI_OBJECT_NOTES';
update hibernate_sequences set next_val=(select ifnull(max(OBJ_PAR_ID),0)+1 from SBI_OBJ_PAR) where sequence_name='SBI_OBJ_PAR';
update hibernate_sequences set next_val=(select ifnull(max(OBJ_TEMP_ID),0)+1 from SBI_OBJECT_TEMPLATES) where sequence_name='SBI_OBJECT_TEMPLATES';
update hibernate_sequences set next_val=(select ifnull(max(SNAP_ID),0)+1 from SBI_SNAPSHOTS) where sequence_name='SBI_SNAPSHOTS';
update hibernate_sequences set next_val=(select ifnull(max(SUBOBJ_ID),0)+1 from SBI_SUBOBJECTS) where sequence_name='SBI_SUBOBJECTS';
update hibernate_sequences set next_val=(select ifnull(max(VP_ID),0)+1 from SBI_VIEWPOINTS) where sequence_name='SBI_VIEWPOINTS';
update hibernate_sequences set next_val=(select ifnull(max(FUNCT_ID),0)+1 from SBI_FUNCTIONS) where sequence_name='SBI_FUNCTIONS';
update hibernate_sequences set next_val=(select ifnull(max(PAR_ID),0)+1 from SBI_PARAMETERS) where sequence_name='SBI_PARAMETERS';
update hibernate_sequences set next_val=(select ifnull(max(USE_ID),0)+1 from SBI_PARUSE) where sequence_name='SBI_PARUSE';
update hibernate_sequences set next_val=(select ifnull(max(CHECK_ID),0)+1 from SBI_CHECKS) where sequence_name='SBI_CHECKS';
update hibernate_sequences set next_val=(select ifnull(max(LOV_ID),0)+1 from SBI_LOV) where sequence_name='SBI_LOV';
update hibernate_sequences set next_val=(select ifnull(max(ID),0)+1 from SBI_CONFIG) where sequence_name='SBI_CONFIG';
update hibernate_sequences set next_val=(select ifnull(max(BIN_ID),0)+1 from SBI_BINARY_CONTENTS) where sequence_name='SBI_BINARY_CONTENTS';
update hibernate_sequences set next_val=(select ifnull(max(VALUE_ID),0)+1 from SBI_DOMAINS) where sequence_name='SBI_DOMAINS';
update hibernate_sequences set next_val=(select ifnull(max(EXT_ROLE_ID),0)+1 from SBI_EXT_ROLES) where sequence_name='SBI_EXT_ROLES';
update hibernate_sequences set next_val=(select ifnull(max(USER_FUNCT_ID),0)+1 from SBI_USER_FUNC) where sequence_name='SBI_USER_FUNC';
update hibernate_sequences set next_val=(select ifnull(max(ENGINE_ID),0)+1 from SBI_ENGINES) where sequence_name='SBI_ENGINES';
update hibernate_sequences set next_val=(select ifnull(max(BIN_ID),0)+1 from SBI_DOSSIER_BIN_TEMP) where sequence_name='SBI_DOSSIER_BIN_TEMP';
update hibernate_sequences set next_val=(select ifnull(max(PART_ID),0)+1 from SBI_DOSSIER_TEMP) where sequence_name='SBI_DOSSIER_TEMP';
update hibernate_sequences set next_val=(select ifnull(max(PRESENTATION_ID),0)+1 from SBI_DOSSIER_PRES) where sequence_name='SBI_DOSSIER_PRES';
update hibernate_sequences set next_val=(select ifnull(max(ID),0)+1 from SBI_EVENTS) where sequence_name='SBI_EVENTS';
update hibernate_sequences set next_val=(select ifnull(max(ID),0)+1 from SBI_EVENTS_LOG) where sequence_name='SBI_EVENTS_LOG';
update hibernate_sequences set next_val=(select ifnull(max(ID),0)+1 from SBI_REMEMBER_ME) where sequence_name='SBI_REMEMBER_ME';
update hibernate_sequences set next_val=(select ifnull(max(ALARM_ID),0)+1 from SBI_ALARM) where sequence_name='SBI_ALARM';
update hibernate_sequences set next_val=(select ifnull(max(ALARM_CONTACT_ID),0)+1 from SBI_ALARM_CONTACT) where sequence_name='SBI_ALARM_CONTACT';
update hibernate_sequences set next_val=(select ifnull(max(ALARM_EVENT_ID),0)+1 from SBI_ALARM_EVENT) where sequence_name='SBI_ALARM_EVENT';
update hibernate_sequences set next_val=(select ifnull(max(KPI_ID),0)+1 from SBI_KPI) where sequence_name='SBI_KPI';
update hibernate_sequences set next_val=(select ifnull(max(ID_KPI_DOC),0)+1 from SBI_KPI_DOCUMENTS) where sequence_name='SBI_KPI_DOCUMENTS';
update hibernate_sequences set next_val=(select ifnull(max(KPI_ERROR_ID),0)+1 from SBI_KPI_ERROR) where sequence_name='SBI_KPI_ERROR';
update hibernate_sequences set next_val=(select ifnull(max(id_kpi_instance),0)+1 from SBI_KPI_INSTANCE) where sequence_name='SBI_KPI_INSTANCE';
update hibernate_sequences set next_val=(select ifnull(max(id_kpi_instance_history),0)+1 from SBI_KPI_INSTANCE_HISTORY) where sequence_name='SBI_KPI_INSTANCE_HISTORY';
update hibernate_sequences set next_val=(select ifnull(max(KPI_INST_PERIOD_ID),0)+1 from SBI_KPI_INST_PERIOD) where sequence_name='SBI_KPI_INST_PERIOD';
update hibernate_sequences set next_val=(select ifnull(max(id_kpi_periodicity),0)+1 from SBI_KPI_PERIODICITY) where sequence_name='SBI_KPI_PERIODICITY';
update hibernate_sequences set next_val=(select ifnull(max(id_kpi_role),0)+1 from SBI_KPI_ROLE) where sequence_name='SBI_KPI_ROLE';
update hibernate_sequences set next_val=(select ifnull(max(id_kpi_instance_value),0)+1 from SBI_KPI_VALUE) where sequence_name='SBI_KPI_VALUE';
update hibernate_sequences set next_val=(select ifnull(max(id_measure_unit),0)+1 from SBI_MEASURE_UNIT) where sequence_name='SBI_MEASURE_UNIT';
update hibernate_sequences set next_val=(select ifnull(max(GOAL_ID),0)+1 from SBI_GOAL) where sequence_name='SBI_GOAL';
update hibernate_sequences set next_val=(select ifnull(max(GOAL_HIERARCHY_ID),0)+1 from SBI_GOAL_HIERARCHY) where sequence_name='SBI_GOAL_HIERARCHY';
update hibernate_sequences set next_val=(select ifnull(max(GOAL_KPI_ID),0)+1 from SBI_GOAL_KPI) where sequence_name='SBI_GOAL_KPI';
update hibernate_sequences set next_val=(select ifnull(max(KPI_MODEL_ID),0)+1 from SBI_KPI_MODEL) where sequence_name='SBI_KPI_MODEL';
update hibernate_sequences set next_val=(select ifnull(max(KPI_MODEL_INST),0)+1 from SBI_KPI_MODEL_INST) where sequence_name='SBI_KPI_MODEL_INST';
update hibernate_sequences set next_val=(select ifnull(max(KPI_MODEL_RESOURCES_ID),0)+1 from SBI_KPI_MODEL_RESOURCES) where sequence_name='SBI_KPI_MODEL_RESOURCES';
update hibernate_sequences set next_val=(select ifnull(max(RESOURCE_ID),0)+1 from SBI_RESOURCES) where sequence_name='SBI_RESOURCES';
update hibernate_sequences set next_val=(select ifnull(max(ID),0)+1 from SBI_ORG_UNIT) where sequence_name='SBI_ORG_UNIT';
update hibernate_sequences set next_val=(select ifnull(max(ID),0)+1 from SBI_ORG_UNIT_GRANT) where sequence_name='SBI_ORG_UNIT_GRANT';
update hibernate_sequences set next_val=(select ifnull(max(ID),0)+1 from SBI_ORG_UNIT_HIERARCHIES) where sequence_name='SBI_ORG_UNIT_HIERARCHIES';
update hibernate_sequences set next_val=(select ifnull(max(NODE_ID),0)+1 from SBI_ORG_UNIT_NODES) where sequence_name='SBI_ORG_UNIT_NODES';
update hibernate_sequences set next_val=(select ifnull(max(THRESHOLD_ID),0)+1 from SBI_THRESHOLD) where sequence_name='SBI_THRESHOLD';
update hibernate_sequences set next_val=(select ifnull(max(id_threshold_value),0)+1 from SBI_THRESHOLD_VALUE) where sequence_name='SBI_THRESHOLD_VALUE';
update hibernate_sequences set next_val=(select ifnull(max(FEATURE_ID),0)+1 from SBI_GEO_FEATURES) where sequence_name='SBI_GEO_FEATURES';
update hibernate_sequences set next_val=(select ifnull(max(MAP_ID),0)+1 from SBI_GEO_MAPS) where sequence_name='SBI_GEO_MAPS';
update hibernate_sequences set next_val=(select ifnull(max(ID),0)+1 from SBI_AUDIT) where sequence_name='SBI_AUDIT';
update hibernate_sequences set next_val=(select ifnull(max(ATTRIBUTE_ID),0)+1 from SBI_ATTRIBUTE) where sequence_name='SBI_ATTRIBUTE';
update hibernate_sequences set next_val=(select ifnull(max(ID),0)+1 from SBI_USER) where sequence_name='SBI_USER';
update hibernate_sequences set next_val=(select ifnull(max(DS_ID),0)+1 from SBI_DATA_SET) where sequence_name='SBI_DATA_SET';
update hibernate_sequences set next_val=(select ifnull(max(DS_H_ID),0)+1 from SBI_DATA_SET_HISTORY) where sequence_name='SBI_DATA_SET_HISTORY';
update hibernate_sequences set next_val=(select ifnull(max(DS_ID),0)+1 from SBI_DATA_SOURCE) where sequence_name='SBI_DATA_SOURCE';
update hibernate_sequences set next_val=(select ifnull(max(DL_ID),0)+1 from SBI_DIST_LIST) where sequence_name='SBI_DIST_LIST';
update hibernate_sequences set next_val=(select ifnull(max(REL_ID),0)+1 from SBI_DIST_LIST_OBJECTS) where sequence_name='SBI_DIST_LIST_OBJECTS';
update hibernate_sequences set next_val=(select ifnull(max(DLU_ID),0)+1 from SBI_DIST_LIST_USER) where sequence_name='SBI_DIST_LIST_USER';
update hibernate_sequences set next_val=(select ifnull(max(OBJ_METACONTENT_ID),0)+1 from SBI_OBJ_METACONTENTS) where sequence_name='SBI_OBJ_METACONTENTS';
update hibernate_sequences set next_val=(select ifnull(max(OBJ_META_ID),0)+1 from SBI_OBJ_METADATA) where sequence_name='SBI_OBJ_METADATA';
update hibernate_sequences set next_val=(select ifnull(max(MENU_ID),0)+1 from SBI_MENU) where sequence_name='SBI_MENU';
