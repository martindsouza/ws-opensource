set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>1810139293482497
,p_default_application_id=>121
,p_default_owner=>'AC01'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 121 - APEX ADMIN MONITORING
--
-- Application Export:
--   Application:     121
--   Name:            APEX ADMIN MONITORING
--   Date and Time:   00:46 Tuesday April 19, 2016
--   Exported By:     AC01
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.3.00.03
--   Instance ID:     103851088544797
--

-- Application Statistics:
--   Pages:                     34
--     Items:                   10
--     Processes:                6
--     Regions:                 81
--     Buttons:                 11
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:             32
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               8
--       Plug-ins:               2
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,121)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'HR')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'APEX ADMIN MONITORING')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_500')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'3ACD230D1F1E38C0C39651AD4442F5BF747B8B57778884F02888E3291F24BFD2'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(69454523306353637)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:APEX ADMIN MONITORING'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'AC01'
,p_last_upd_yyyymmddhh24miss=>'20160419004304'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(69412175992353454)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69455780693353651)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69475781688453678)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Database'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-database'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69490582340499441)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'SGA'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:::'
,p_parent_list_item_id=>wwv_flow_api.id(69475781688453678)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69490890723502004)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'PGA'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP,4:::'
,p_parent_list_item_id=>wwv_flow_api.id(69475781688453678)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69491794457516982)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'DB Parameter'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69475781688453678)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69500982092531362)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Buffer Pool Keep Candidates'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69475781688453678)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69611931834296628)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Version and Patches'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69475781688453678)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69631571455393365)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'RealTime Monitor'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-flash'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69639257387426126)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Locks'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_api.id(69631571455393365)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69639795995434152)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'DDL Locks'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(69639257387426126)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69647066441557155)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'DML Lock'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(69639257387426126)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69656741059576267)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Library Cache Lock'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(69639257387426126)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69663495695584989)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Library Cache Pin'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(69639257387426126)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69674989297598382)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Database Sessions'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69631571455393365)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69729713392654831)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'SQL Statements'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69631571455393365)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69769356930687788)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Temp Usage'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69631571455393365)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69775633597697988)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Bind Variables'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69631571455393365)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69785767360713595)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'SQL Statistics'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69631571455393365)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69805552721728719)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Segment Statistics'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69631571455393365)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69818172279752430)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Index Segment Statistic'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69631571455393365)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69854497997775914)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Session Long Operations'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69631571455393365)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69867504864782126)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'PGA Memory Usage'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69631571455393365)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'23'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69874193782789165)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Objects'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-file-text'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69874668394794523)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Tablespaces'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69874193782789165)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69880437254809303)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Segments'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69874193782789165)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69893994380844807)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'Objects'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69874193782789165)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69903360915872875)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'Indexes'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69874193782789165)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69929836401965206)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>'Extents'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69874193782789165)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'28'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69937090891995298)
,p_list_item_display_sequence=>290
,p_list_item_link_text=>'Total Table Space'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69874193782789165)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'29'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69941022750007969)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Waste Space'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69874193782789165)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69946786477025063)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>'APEX'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-send'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69947272319029818)
,p_list_item_display_sequence=>320
,p_list_item_link_text=>'APEX Activity'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69946786477025063)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'31'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69967055904087802)
,p_list_item_display_sequence=>330
,p_list_item_link_text=>'Mail Log'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69946786477025063)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'32'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69975637582094005)
,p_list_item_display_sequence=>340
,p_list_item_link_text=>'Apex Mail Queue'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69946786477025063)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69984202670096571)
,p_list_item_display_sequence=>350
,p_list_item_link_text=>'Jobs'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-stack-exchange'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69984631537101664)
,p_list_item_display_sequence=>360
,p_list_item_link_text=>'Scheduler Jobs'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69984202670096571)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(70012787234139038)
,p_list_item_display_sequence=>370
,p_list_item_link_text=>'Scheduler Job Log'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69984202670096571)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'35'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(70023848130173804)
,p_list_item_display_sequence=>380
,p_list_item_link_text=>'Scheduler Job Run Details'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(69984202670096571)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'36'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(70095225085288366)
,p_list_item_display_sequence=>390
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-gear'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(70095811086295467)
,p_list_item_display_sequence=>400
,p_list_item_link_text=>'Theme Style'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(70095225085288366)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'37'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(69454285153353629)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(69454476472353632)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(69411893767353454)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(69412013155353454)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(69412061981353454)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(70050821469694852)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.ORACLE.APEX.FLOT.PIE'
,p_attribute_01=>'1.333'
,p_attribute_02=>'1.5'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(70056255280749952)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.ORACLE.APEX.D3.BARCHART'
,p_attribute_01=>'3'
,p_attribute_02=>'1.333'
,p_attribute_03=>'480'
,p_attribute_04=>'REGION'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(69455667744353649)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69456100037353652)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69487656608489513)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'PGA'
,p_link=>'f?p=&APP_ID.:4:&SESSION.'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69492688426516984)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'DB Parameter'
,p_link=>'f?p=&APP_ID.:5:&SESSION.'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69501853330531372)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Buffer Pool Keep Candidates'
,p_link=>'f?p=&APP_ID.:6:&SESSION.'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69612749749296663)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Version and Patches'
,p_link=>'f?p=&APP_ID.:7:&SESSION.'
,p_page_id=>7
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69640678209434152)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'DDL Locks'
,p_link=>'f?p=&APP_ID.:9:&SESSION.'
,p_page_id=>9
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69647982606557159)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'DML Lock'
,p_link=>'f?p=&APP_ID.:10:&SESSION.'
,p_page_id=>10
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69657622200576267)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Library Cache Lock'
,p_link=>'f?p=&APP_ID.:11:&SESSION.'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69664356752584991)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Library Cache Pin'
,p_link=>'f?p=&APP_ID.:13:&SESSION.'
,p_page_id=>13
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69675814524598382)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Database Sessions'
,p_link=>'f?p=&APP_ID.:14:&SESSION.'
,p_page_id=>14
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69730564675654831)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'SQL Statements'
,p_link=>'f?p=&APP_ID.:15:&SESSION.'
,p_page_id=>15
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69770246068687789)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Temp Usage'
,p_link=>'f?p=&APP_ID.:16:&SESSION.'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69776528109697992)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Bind Variables'
,p_link=>'f?p=&APP_ID.:17:&SESSION.'
,p_page_id=>17
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69786669794713595)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'SQL Statistics'
,p_link=>'f?p=&APP_ID.:19:&SESSION.'
,p_page_id=>19
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69806491081728721)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Segment Statistics'
,p_link=>'f?p=&APP_ID.:20:&SESSION.'
,p_page_id=>20
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69819090312752430)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Index Segment Statistic'
,p_link=>'f?p=&APP_ID.:21:&SESSION.'
,p_page_id=>21
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69855314878775914)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Session Long Operations'
,p_link=>'f?p=&APP_ID.:22:&SESSION.'
,p_page_id=>22
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69868326864782126)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'PGA Memory Usage'
,p_link=>'f?p=&APP_ID.:23:&SESSION.'
,p_page_id=>23
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69875579568794525)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Tablespaces'
,p_link=>'f?p=&APP_ID.:24:&SESSION.'
,p_page_id=>24
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69881332968809305)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'All Segments'
,p_link=>'f?p=&APP_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69894857389844807)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Objects'
,p_link=>'f?p=&APP_ID.:26:&SESSION.'
,p_page_id=>26
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69904235324872877)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Indexes'
,p_link=>'f?p=&APP_ID.:27:&SESSION.'
,p_page_id=>27
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69930802446965206)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Extents'
,p_link=>'f?p=&APP_ID.:28:&SESSION.'
,p_page_id=>28
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69937937857995300)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Total Table Space Usage'
,p_link=>'f?p=&APP_ID.:29:&SESSION.'
,p_page_id=>29
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69941977058007969)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Waste Space'
,p_link=>'f?p=&APP_ID.:30:&SESSION.'
,p_page_id=>30
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69948167464029823)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'APEX Activity'
,p_link=>'f?p=&APP_ID.:31:&SESSION.'
,p_page_id=>31
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69967996494087804)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Apex Mail Log'
,p_link=>'f?p=&APP_ID.:32:&SESSION.'
,p_page_id=>32
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69976603343094005)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Apex Mail Queue'
,p_link=>'f?p=&APP_ID.:33:&SESSION.'
,p_page_id=>33
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69985531135101664)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Scheduler Jobs'
,p_link=>'f?p=&APP_ID.:34:&SESSION.'
,p_page_id=>34
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(70013629183139038)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Scheduler Job Log'
,p_link=>'f?p=&APP_ID.:35:&SESSION.'
,p_page_id=>35
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(70024726213173806)
,p_parent_id=>wwv_flow_api.id(69456100037353652)
,p_short_name=>'Scheduler Job Run Details'
,p_link=>'f?p=&APP_ID.:36:&SESSION.'
,p_page_id=>36
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(70096657459295489)
,p_short_name=>'Application Theme Style'
,p_link=>'f?p=&APP_ID.:37:&SESSION.'
,p_page_id=>37
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(69412311149353485)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69412386599353491)
,p_page_template_id=>wwv_flow_api.id(69412311149353485)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69412418326353491)
,p_page_template_id=>wwv_flow_api.id(69412311149353485)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69412551227353491)
,p_page_template_id=>wwv_flow_api.id(69412311149353485)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69412639441353491)
,p_page_template_id=>wwv_flow_api.id(69412311149353485)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69412724895353491)
,p_page_template_id=>wwv_flow_api.id(69412311149353485)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69412907335353491)
,p_page_template_id=>wwv_flow_api.id(69412311149353485)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69412953473353491)
,p_page_template_id=>wwv_flow_api.id(69412311149353485)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69413100865353491)
,p_page_template_id=>wwv_flow_api.id(69412311149353485)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(69413194981353523)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69413255518353524)
,p_page_template_id=>wwv_flow_api.id(69413194981353523)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69413392551353524)
,p_page_template_id=>wwv_flow_api.id(69413194981353523)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69413485976353524)
,p_page_template_id=>wwv_flow_api.id(69413194981353523)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69413555189353524)
,p_page_template_id=>wwv_flow_api.id(69413194981353523)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69413645048353524)
,p_page_template_id=>wwv_flow_api.id(69413194981353523)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69413764338353524)
,p_page_template_id=>wwv_flow_api.id(69413194981353523)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69413906230353524)
,p_page_template_id=>wwv_flow_api.id(69413194981353523)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69413915501353524)
,p_page_template_id=>wwv_flow_api.id(69413194981353523)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69414040054353524)
,p_page_template_id=>wwv_flow_api.id(69413194981353523)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(69414207950353526)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69414265662353526)
,p_page_template_id=>wwv_flow_api.id(69414207950353526)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69414358390353526)
,p_page_template_id=>wwv_flow_api.id(69414207950353526)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(69414478703353526)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69414522113353526)
,p_page_template_id=>wwv_flow_api.id(69414478703353526)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69414659065353526)
,p_page_template_id=>wwv_flow_api.id(69414478703353526)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69414748807353526)
,p_page_template_id=>wwv_flow_api.id(69414478703353526)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69414886240353526)
,p_page_template_id=>wwv_flow_api.id(69414478703353526)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69414963721353526)
,p_page_template_id=>wwv_flow_api.id(69414478703353526)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69415105607353526)
,p_page_template_id=>wwv_flow_api.id(69414478703353526)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69415199534353526)
,p_page_template_id=>wwv_flow_api.id(69414478703353526)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69415218839353526)
,p_page_template_id=>wwv_flow_api.id(69414478703353526)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69415323199353526)
,p_page_template_id=>wwv_flow_api.id(69414478703353526)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(69415488970353527)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69415517468353529)
,p_page_template_id=>wwv_flow_api.id(69415488970353527)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69415669339353529)
,p_page_template_id=>wwv_flow_api.id(69415488970353527)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69415797807353529)
,p_page_template_id=>wwv_flow_api.id(69415488970353527)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69415906579353529)
,p_page_template_id=>wwv_flow_api.id(69415488970353527)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69415925837353529)
,p_page_template_id=>wwv_flow_api.id(69415488970353527)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69416111828353529)
,p_page_template_id=>wwv_flow_api.id(69415488970353527)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69416148628353529)
,p_page_template_id=>wwv_flow_api.id(69415488970353527)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(69416310291353530)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69416327231353530)
,p_page_template_id=>wwv_flow_api.id(69416310291353530)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69416448259353530)
,p_page_template_id=>wwv_flow_api.id(69416310291353530)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69416556495353530)
,p_page_template_id=>wwv_flow_api.id(69416310291353530)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(69416631397353530)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69416807804353530)
,p_page_template_id=>wwv_flow_api.id(69416631397353530)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69416851559353530)
,p_page_template_id=>wwv_flow_api.id(69416631397353530)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69416943642353530)
,p_page_template_id=>wwv_flow_api.id(69416631397353530)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69417056370353530)
,p_page_template_id=>wwv_flow_api.id(69416631397353530)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69417211256353530)
,p_page_template_id=>wwv_flow_api.id(69416631397353530)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69417233814353530)
,p_page_template_id=>wwv_flow_api.id(69416631397353530)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69417368248353530)
,p_page_template_id=>wwv_flow_api.id(69416631397353530)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69417418613353530)
,p_page_template_id=>wwv_flow_api.id(69416631397353530)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(69417539591353530)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69417656011353532)
,p_page_template_id=>wwv_flow_api.id(69417539591353530)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69417726118353532)
,p_page_template_id=>wwv_flow_api.id(69417539591353530)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69417898124353532)
,p_page_template_id=>wwv_flow_api.id(69417539591353530)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69417965535353532)
,p_page_template_id=>wwv_flow_api.id(69417539591353530)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69418023319353532)
,p_page_template_id=>wwv_flow_api.id(69417539591353530)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69418212132353532)
,p_page_template_id=>wwv_flow_api.id(69417539591353530)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69418214325353532)
,p_page_template_id=>wwv_flow_api.id(69417539591353530)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(69418348815353535)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69418444586353535)
,p_page_template_id=>wwv_flow_api.id(69418348815353535)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69418577709353535)
,p_page_template_id=>wwv_flow_api.id(69418348815353535)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(69418638802353535)
,p_page_template_id=>wwv_flow_api.id(69418348815353535)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(69449107039353608)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(69449163663353608)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(69449230440353608)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(69418729928353538)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(69418851436353538)
,p_plug_template_id=>wwv_flow_api.id(69418729928353538)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(69420311280353554)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(69420358261353555)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(69420499569353555)
,p_plug_template_id=>wwv_flow_api.id(69420358261353555)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(69420595213353555)
,p_plug_template_id=>wwv_flow_api.id(69420358261353555)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(69421266095353555)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(69421384768353557)
,p_plug_template_id=>wwv_flow_api.id(69421266095353555)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(69421437074353557)
,p_plug_template_id=>wwv_flow_api.id(69421266095353555)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(69424654698353569)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(69424807537353569)
,p_plug_template_id=>wwv_flow_api.id(69424654698353569)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(69424818582353569)
,p_plug_template_id=>wwv_flow_api.id(69424654698353569)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(69426776061353573)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(69426903894353573)
,p_plug_template_id=>wwv_flow_api.id(69426776061353573)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(69426946266353573)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(69427028977353573)
,p_plug_template_id=>wwv_flow_api.id(69426946266353573)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(69427862829353573)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(69428153831353574)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(69428225077353574)
,p_plug_template_id=>wwv_flow_api.id(69428153831353574)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(69428332283353574)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(69428450657353574)
,p_plug_template_id=>wwv_flow_api.id(69428332283353574)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(69428569759353574)
,p_plug_template_id=>wwv_flow_api.id(69428332283353574)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(69430485663353577)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(69430569722353577)
,p_plug_template_id=>wwv_flow_api.id(69430485663353577)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(69430673488353577)
,p_plug_template_id=>wwv_flow_api.id(69430485663353577)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(69431688357353577)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(69432137049353577)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(69432250440353577)
,p_plug_template_id=>wwv_flow_api.id(69432137049353577)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(69440380925353590)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(69442072319353591)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(69444168354353591)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-'
||'badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(69444977382353596)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(69445889487353596)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(69446396633353596)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(69446429672353596)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(69446564149353598)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav t-Body-nav--dark" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(69446666163353598)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(69447549006353601)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(69448081503353601)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(69432801424353579)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(69432865929353579)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(69434553809353580)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(69436627943353582)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(69437109546353582)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(69437154252353582)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(69437154252353582)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(69438505363353582)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(69439454586353585)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(69448530354353602)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(69448621962353607)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(69448789603353607)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(69448910183353607)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(69448930806353607)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(69449629290353608)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(69449899493353613)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(69449761373353612)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(69450308525353619)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(69417539591353530)
,p_default_dialog_template=>wwv_flow_api.id(69416310291353530)
,p_error_template=>wwv_flow_api.id(69414207950353526)
,p_printer_friendly_template=>wwv_flow_api.id(69417539591353530)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(69414207950353526)
,p_default_button_template=>wwv_flow_api.id(69449163663353608)
,p_default_region_template=>wwv_flow_api.id(69428332283353574)
,p_default_chart_template=>wwv_flow_api.id(69428332283353574)
,p_default_form_template=>wwv_flow_api.id(69428332283353574)
,p_default_reportr_template=>wwv_flow_api.id(69428332283353574)
,p_default_tabform_template=>wwv_flow_api.id(69428332283353574)
,p_default_wizard_template=>wwv_flow_api.id(69428332283353574)
,p_default_menur_template=>wwv_flow_api.id(69431688357353577)
,p_default_listr_template=>wwv_flow_api.id(69428332283353574)
,p_default_irr_template=>wwv_flow_api.id(69427862829353573)
,p_default_report_template=>wwv_flow_api.id(69437154252353582)
,p_default_label_template=>wwv_flow_api.id(69448621962353607)
,p_default_menu_template=>wwv_flow_api.id(69449629290353608)
,p_default_calendar_template=>wwv_flow_api.id(69449761373353612)
,p_default_list_template=>wwv_flow_api.id(69444168354353591)
,p_default_nav_list_template=>wwv_flow_api.id(69447549006353601)
,p_default_top_nav_list_temp=>wwv_flow_api.id(69447549006353601)
,p_default_side_nav_list_temp=>wwv_flow_api.id(69446564149353598)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(69420358261353555)
,p_default_dialogr_template=>wwv_flow_api.id(69420311280353554)
,p_default_option_label=>wwv_flow_api.id(69448621962353607)
,p_default_required_label=>wwv_flow_api.id(69448910183353607)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(69446429672353596)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(69449927405353615)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(69450041240353618)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(69450204995353618)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69419071381353548)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69419217237353552)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69419429504353552)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69420669769353555)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69420862851353555)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69421591832353557)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69421994542353557)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69422568725353557)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69423202959353557)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69423410004353568)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69424268697353569)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69425850697353571)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69427264131353573)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69430743971353577)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69430918669353577)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69431367224353577)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69431798757353577)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69432339904353577)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69432916178353580)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69433192008353580)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69434801406353580)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69435510881353580)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69435716397353580)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69436452666353582)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69436757003353582)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69437268853353582)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69437612269353582)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69437781949353582)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69438592852353585)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69440453011353590)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69441302835353590)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69442264320353591)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69442941832353591)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69443313254353591)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69443997581353591)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69444616818353594)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69447076031353598)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69448155876353602)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69449341899353608)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69450377081353624)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69450539352353624)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69450741178353624)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69450928476353624)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69451115664353624)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69451606366353626)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69452312605353627)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69452629181353627)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69452867127353627)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69453084398353627)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69453246654353627)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69453568940353627)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(69453873460353627)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69418988308353546)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(69418729928353538)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69419186967353551)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69418729928353538)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(69419071381353548)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69419332552353552)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69418729928353538)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(69419217237353552)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69419566568353554)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69418729928353538)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(69419429504353552)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69419614236353554)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(69418729928353538)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(69419071381353548)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69419776173353554)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(69418729928353538)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(69419217237353552)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69419837178353554)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(69418729928353538)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(69419071381353548)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69419955462353554)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69418729928353538)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(69419217237353552)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69420061427353554)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69418729928353538)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(69419071381353548)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69420146571353554)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69418729928353538)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(69419429504353552)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69420796656353555)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(69420358261353555)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(69420669769353555)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69420939015353555)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(69420358261353555)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(69420862851353555)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69421113036353555)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(69420358261353555)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(69420669769353555)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69421180421353555)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(69420358261353555)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(69420862851353555)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69421698718353557)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(69421591832353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69421804067353557)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(69421591832353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69421905769353557)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(69421591832353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69422030376353557)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(69421994542353557)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69422126160353557)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(69421994542353557)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69422298613353557)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(69421994542353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69422315703353557)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(69421591832353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69422420941353557)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(69421994542353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69422705379353557)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(69422568725353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69422812799353557)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(69422568725353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69422892094353557)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(69422568725353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69422990868353557)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(69422568725353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69423097362353557)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(69422568725353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69423217099353557)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(69423202959353557)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69423472307353568)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(69423410004353568)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69423556409353569)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(69423202959353557)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69423703897353569)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69423757338353569)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(69420669769353555)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69423836846353569)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69423928546353569)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(69423410004353568)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69424101114353569)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69424153484353569)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69424394373353569)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(69424268697353569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69424418783353569)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(69424268697353569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69424563187353569)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69421266095353555)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(69420669769353555)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69424986639353569)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69424654698353569)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(69421994542353557)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69425092859353569)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69424654698353569)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(69421994542353557)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69425175810353569)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(69424654698353569)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(69421994542353557)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69425216165353569)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(69424654698353569)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(69421994542353557)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69425328761353569)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69424654698353569)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(69422568725353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69425439367353569)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69424654698353569)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(69422568725353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69425602773353569)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(69424654698353569)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(69422568725353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69425665947353569)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(69424654698353569)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(69422568725353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69425776336353571)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(69424654698353569)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(69422568725353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69425998828353571)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69424654698353569)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(69425850697353571)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69426063390353573)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69424654698353569)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(69425850697353571)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69426163635353573)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69424654698353569)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(69423410004353568)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69426254657353573)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69424654698353569)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69426358038353573)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69424654698353569)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(69420669769353555)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69426509062353573)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(69424654698353569)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(69420669769353555)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69426527182353573)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69424654698353569)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(69423410004353568)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69426660090353573)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69424654698353569)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(69420669769353555)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69427152220353573)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69426946266353573)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69427394650353573)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(69426946266353573)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(69427264131353573)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69427444884353573)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69426946266353573)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(69427264131353573)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69427520546353573)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69426946266353573)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69427684643353573)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(69426946266353573)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69427800583353573)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69426946266353573)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(69427264131353573)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69427917470353574)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69427862829353573)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69428089271353574)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69427862829353573)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69428678297353574)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69428332283353574)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(69421994542353557)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69428786988353574)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69428332283353574)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(69421994542353557)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69428854476353574)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(69428332283353574)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(69421994542353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69428972069353574)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(69428332283353574)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(69421994542353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69429018353353574)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69428332283353574)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(69422568725353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69429182871353574)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69428332283353574)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(69422568725353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69429251128353574)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(69428332283353574)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(69422568725353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69429353533353574)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(69428332283353574)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(69422568725353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69429476613353574)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(69428332283353574)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(69422568725353557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69429540864353574)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69428332283353574)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(69423202959353557)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69429627972353576)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69428332283353574)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(69423410004353568)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69429740967353576)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69428332283353574)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(69423202959353557)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69429880249353576)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69428332283353574)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69429918541353576)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69428332283353574)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(69420669769353555)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69430053105353576)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(69428332283353574)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(69420669769353555)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69430165390353576)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69428332283353574)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(69423410004353568)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69430267113353576)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69428332283353574)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69430359618353577)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69428332283353574)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(69420669769353555)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69430873820353577)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69430485663353577)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(69430743971353577)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69431080235353577)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69430485663353577)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(69430918669353577)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69431132170353577)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69430485663353577)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69431288792353577)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69430485663353577)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(69430918669353577)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69431420219353577)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69430485663353577)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(69431367224353577)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69431564330353577)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69430485663353577)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(69431367224353577)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69431878542353577)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(69431688357353577)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(69431798757353577)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69431973032353577)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(69431688357353577)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69432111544353577)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(69431688357353577)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(69431798757353577)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69432493285353577)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(69432137049353577)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(69432339904353577)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69432563529353577)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69432137049353577)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(69432339904353577)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69432673719353577)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(69432137049353577)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69433045545353580)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(69432865929353579)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(69432916178353580)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69433294934353580)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(69432865929353579)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(69433192008353580)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69433326646353580)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(69432865929353579)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(69432916178353580)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69433432703353580)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(69432865929353579)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(69433192008353580)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69433568906353580)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(69432865929353579)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(69432916178353580)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69433632931353580)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(69432865929353579)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(69433192008353580)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69433748442353580)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(69432865929353579)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(69433192008353580)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69433843704353580)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(69432865929353579)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(69432916178353580)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69433922657353580)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(69432865929353579)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(69432916178353580)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69434089295353580)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(69432865929353579)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(69433192008353580)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69434120012353580)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(69432865929353579)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(69433192008353580)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69434305168353580)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(69432865929353579)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(69433192008353580)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69434385785353580)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(69432865929353579)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69434452550353580)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(69432865929353579)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(69433192008353580)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69434637681353580)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(69434553809353580)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(69433192008353580)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69434863158353580)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(69434553809353580)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(69434801406353580)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69434990429353580)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(69434553809353580)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(69433192008353580)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69435074796353580)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(69434553809353580)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(69434801406353580)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69435118880353580)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(69434553809353580)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(69433192008353580)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69435250142353580)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(69434553809353580)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(69434801406353580)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69435410879353580)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(69434553809353580)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(69433192008353580)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69435586790353580)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(69434553809353580)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(69435510881353580)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69435683072353580)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(69434553809353580)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(69435510881353580)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69435898111353580)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(69434553809353580)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(69435716397353580)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69435998777353580)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(69434553809353580)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(69435716397353580)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69436099580353580)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(69434553809353580)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(69435510881353580)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69436139196353582)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(69434553809353580)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(69433192008353580)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69436303976353582)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(69434553809353580)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(69434801406353580)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69436371760353582)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(69434553809353580)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(69433192008353580)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69436545811353582)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(69434553809353580)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(69436452666353582)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69436880701353582)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(69436627943353582)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(69436757003353582)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69436959106353582)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(69436627943353582)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(69436757003353582)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69437354957353582)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(69437154252353582)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(69437268853353582)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69437482098353582)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(69437154252353582)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(69437268853353582)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69437621467353582)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(69437154252353582)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(69437612269353582)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69437830078353582)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(69437154252353582)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(69437781949353582)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69437979506353582)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(69437154252353582)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(69437781949353582)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69438023227353582)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(69437154252353582)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(69437781949353582)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69438124628353582)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(69437154252353582)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(69437612269353582)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69438273377353582)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(69437154252353582)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69438379959353582)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(69437154252353582)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(69437781949353582)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69438703441353585)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(69438505363353582)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(69438592852353585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69438763495353585)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(69438505363353582)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(69438592852353585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69438867088353585)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(69438505363353582)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(69438592852353585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69439007177353585)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(69438505363353582)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(69433192008353580)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69439028265353585)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(69438505363353582)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(69433192008353580)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69439144087353585)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(69438505363353582)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(69438592852353585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69439275849353585)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(69438505363353582)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(69438592852353585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69439350704353585)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(69438505363353582)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(69438592852353585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69439572250353585)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(69439454586353585)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(69438592852353585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69439655318353585)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(69439454586353585)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(69438592852353585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69439758047353585)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(69439454586353585)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(69438592852353585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69439833816353585)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(69439454586353585)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(69433192008353580)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69440002692353585)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(69439454586353585)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(69433192008353580)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69440024107353585)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(69439454586353585)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(69438592852353585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69440175081353585)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(69439454586353585)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(69438592852353585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69440278265353585)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(69439454586353585)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(69438592852353585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69440592321353590)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(69440380925353590)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69440693701353590)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(69440380925353590)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69440744314353590)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(69440380925353590)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69440861501353590)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(69440380925353590)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69440930584353590)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(69440380925353590)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69441104250353590)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(69440380925353590)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69441193970353590)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(69440380925353590)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69441393175353590)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(69440380925353590)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(69441302835353590)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69441425734353590)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(69440380925353590)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(69441302835353590)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69441542474353590)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(69440380925353590)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69441622944353590)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(69440380925353590)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(69441302835353590)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69441785590353590)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(69440380925353590)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69441857663353590)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(69440380925353590)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(69441302835353590)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69441981642353591)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(69440380925353590)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(69441302835353590)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69442122184353591)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(69442072319353591)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69442344382353591)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(69442072319353591)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(69442264320353591)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69442501505353591)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(69442072319353591)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69442562878353591)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(69442072319353591)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(69442264320353591)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69442635326353591)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(69442072319353591)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69442808246353591)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(69442072319353591)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(69442264320353591)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69442896044353591)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(69442072319353591)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69443070212353591)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(69442072319353591)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(69442941832353591)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69443168233353591)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(69442072319353591)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(69442941832353591)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69443317871353591)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(69442072319353591)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(69443313254353591)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69443512717353591)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(69442072319353591)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(69443313254353591)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69443535177353591)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(69442072319353591)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(69442941832353591)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69443619132353591)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(69442072319353591)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69443738247353591)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(69442072319353591)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(69442264320353591)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69443851546353591)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(69442072319353591)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69444083547353591)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(69442072319353591)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(69443997581353591)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69444290551353594)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(69444168354353591)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(69442941832353591)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69444339473353594)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(69444168354353591)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69444438892353594)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(69444168354353591)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69444541795353594)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(69444168354353591)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69444800068353594)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(69444168354353591)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(69444616818353594)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69444852241353596)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(69444168354353591)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(69444616818353594)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69445061736353596)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(69444977382353596)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69445117586353596)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(69444977382353596)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69445302307353596)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(69444977382353596)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69445384820353596)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(69444977382353596)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69445503542353596)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(69444977382353596)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69445608540353596)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(69444977382353596)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69445682290353596)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(69444977382353596)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69445801577353596)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(69444977382353596)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69445943145353596)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(69445889487353596)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69446059673353596)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(69445889487353596)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69446125939353596)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(69445889487353596)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69446233802353596)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(69445889487353596)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69446763489353598)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(69446666163353598)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(69443313254353591)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69446816005353598)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(69446666163353598)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(69440453011353590)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69446995912353598)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(69446666163353598)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(69443313254353591)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69447160527353598)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(69446666163353598)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(69447076031353598)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69447247401353598)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(69446666163353598)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(69442941832353591)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69447326285353598)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(69446666163353598)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(69442941832353591)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69447504738353598)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(69446666163353598)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(69447076031353598)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69447630296353601)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(69447549006353601)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69447775657353601)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(69447549006353601)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69447864519353601)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(69447549006353601)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69447995449353601)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(69447549006353601)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69448221286353602)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(69448081503353601)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(69448155876353602)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69448361255353602)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(69448081503353601)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(69448155876353602)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69448417278353602)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(69448081503353601)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(69448155876353602)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69449440454353608)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(69449230440353608)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(69449341899353608)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69449580584353608)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(69449230440353608)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(69449341899353608)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69450486451353624)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(69450377081353624)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69450625500353624)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(69450539352353624)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69450817845353624)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(69450741178353624)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69451105709353624)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(69450928476353624)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69451230449353624)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(69451115664353624)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69451342620353626)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(69450539352353624)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69451453072353626)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(69450741178353624)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69451689585353626)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(69451606366353626)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69451779197353627)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(69451606366353626)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69451850673353627)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(69451606366353626)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69451997416353627)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(69450377081353624)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69452105369353627)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(69451115664353624)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69452190073353627)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(69450928476353624)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69452364916353627)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(69452312605353627)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69452413699353627)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(69450377081353624)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69452593689353627)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(69450377081353624)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69452718447353627)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(69452629181353627)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69452990009353627)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(69452867127353627)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69453125834353627)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(69453084398353627)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69453323212353627)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(69453246654353627)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69453494027353627)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(69453246654353627)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69453678016353627)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(69453568940353627)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69453806637353627)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(69452867127353627)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69453946328353627)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(69453873460353627)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69454102705353627)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(69454143451353627)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(69453873460353627)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(69454523306353637)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_d3_barchart
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(2230803241743914816)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.D3.BARCHART'
,p_display_name=>'D3 Bar Chart'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.D3.BARCHART'),'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.barchart/')
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/d3/3.5.5/d3.min.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3/d3.oracle.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3/oracle.jql.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3/jquery.getScrollbarWidth.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.tooltip/d3.oracle.tooltip.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.ary/d3.oracle.ary.js',
'#PLUGIN_FILES#d3.oracle.barchart.js',
'#PLUGIN_FILES#d3.oracle.barchart.apex.js',
'#PLUGIN_FILES#com.oracle.apex.d3.barchart.js'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.tooltip/d3.oracle.tooltip.css',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.ary/d3.oracle.ary.css',
'#PLUGIN_FILES#d3.oracle.barchart.css'))
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render ',
'(',
'    p_region                in  apex_plugin.t_region,',
'    p_plugin                in  apex_plugin.t_plugin,',
'    p_is_printer_friendly   in  boolean ',
')',
'return apex_plugin.t_region_render_result',
'is',
'    c_region_static_id      constant varchar2(255)  := apex_escape.html_attribute( p_region.static_id );',
'',
'-- Assign readable names to plugin attributes. Omit data attributes, they''ll be handled in ajax function.',
'    -- Dimensions',
'    c_height_mode           constant varchar2(200)  := p_region.attribute_21;',
'    c_min_height            constant number         := nvl(p_region.attribute_18, 100);',
'    c_max_height            constant number         := nvl(p_region.attribute_19, 500);',
'    c_spacing               constant number         := nvl(p_region.attribute_16, 20);',
'    c_inner_spacing         constant number         := nvl(p_region.attribute_17, 20);',
'',
'    -- Axis titles',
'    c_x_axis_title          constant varchar2(200)  := p_region.attribute_08;',
'    c_y_axis_title          constant varchar2(200)  := p_region.attribute_09;',
'',
'    -- Axis grid',
'    c_x_axis_grid           constant boolean        := instr('':'' || p_region.attribute_22 || '':'', '':X:'') > 0;',
'    c_y_axis_grid           constant boolean        := instr('':'' || p_region.attribute_22 || '':'', '':Y:'') > 0;',
'',
'    -- Tooltip configuration',
'    c_show_tooltip          constant boolean        := p_region.attribute_10 is not null;',
'    c_series_tooltip        constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':SERIES:'') > 0;',
'    c_x_tooltip             constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':X:'') > 0;',
'    c_y_tooltip             constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':Y:'') > 0;',
'    c_custom_tooltip        constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':CUSTOM:'') > 0;',
'',
'    -- Legend',
'    c_show_legend           constant boolean        := p_region.attribute_12 is not null;',
'    c_legend_position       constant varchar2(200)  := p_region.attribute_12;',
'',
'    -- Display modes',
'    c_value_template        constant varchar2(200)  := nvl(p_region.attribute_15, p_region.attribute_25);',
'    c_horizontal            constant boolean        := substr(p_region.attribute_06, 1, instr(p_region.attribute_06, '','') - 1) = ''HORIZONTAL'';',
'    c_display               constant varchar2(200)  := substr(p_region.attribute_06, instr(p_region.attribute_06, '','') + 1);',
'    c_responsive            constant boolean        := p_plugin.attribute_06 = ''Y'';',
'    c_transitions           constant boolean        := p_plugin.attribute_05 = ''Y'';',
'',
'    -- Colors',
'    c_color_scheme          constant varchar2(200)  := p_region.attribute_13;',
'    l_colors                varchar2(200)           := p_region.attribute_14;',
'    c_multiple_colors       constant boolean        := p_region.attribute_24 = ''Y'';',
'',
'    -- Aspect ratios',
'    c_min_ar                constant number         := nvl( apex_plugin_util.get_attribute_as_number( p_plugin.attribute_02, ''Min Aspect Radio'' ), 1.333);',
'    c_max_ar                constant number         := nvl( apex_plugin_util.get_attribute_as_number( p_plugin.attribute_01, ''Max Aspect Radio'' ), 3);',
'    c_threshold             constant number         := p_plugin.attribute_03;',
'    c_threshold_of          constant varchar2(200)  := p_plugin.attribute_04;',
'',
'    -- Function constants',
'    c_rgb_list_regex        constant varchar2(200)  := ''^#[0-9a-fA-F]{6}(,#[0-9a-fA-F]{6})*$'';',
'begin',
'    -- Add placeholder div',
'    sys.htp.p (',
'        ''<div class="a-D3BarChart" id="'' || c_region_static_id || ''_region">'' ||',
'            ''<div class="a-D3BarChart-container" id="'' || c_region_static_id || ''_chart"></div>'' ||',
'        ''</div>'' );',
'',
'',
'    -- Color scheme',
'    case c_color_scheme',
'        when ''MODERN'' then',
'            l_colors := ''#FF3B30:#FF9500:#FFCC00:#4CD964:#34AADC:#007AFF:#5856D6:#FF2D55:#8E8E93:#C7C7CC'';',
'        when ''MODERN2'' then',
'            l_colors := ''#1ABC9C:#2ECC71:#4AA3DF:#9B59B6:#3D566E:#F1C40F:#E67E22:#E74C3C'';',
'        when ''SOLAR'' then',
'            l_colors := ''#B58900:#CB4B16:#DC322F:#D33682:#6C71C4:#268BD2:#2AA198:#859900'';',
'        when ''METRO'' then',
'            l_colors := ''#E61400:#19A2DE:#319A31:#EF9608:#8CBE29:#A500FF:#00AAAD:#FF0094:#9C5100:#E671B5'';',
'        else',
'            null;',
'    end case;',
'',
'    -- Build the initial chart. Data will be loaded with ajax.',
'    apex_javascript.add_onload_code (',
'        p_code => ''(function(){ var a = com_oracle_apex_d3_barchart('' ||',
'            apex_javascript.add_value(p_region.static_id) ||',
'            ''{'' ||',
'                apex_javascript.add_attribute(''chartRegionId'',  p_region.static_id || ''_chart'') ||',
'                apex_javascript.add_attribute(''xAxisTitle'',     c_x_axis_title) || ',
'                apex_javascript.add_attribute(''yAxisTitle'',     c_y_axis_title) || ',
'                apex_javascript.add_attribute(''showTooltip'',    c_show_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipSeries'',  c_series_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipX'',       c_x_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipY'',       c_y_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipCustom'',  c_custom_tooltip) || ',
'                apex_javascript.add_attribute(''spacing'',        c_spacing) || ',
'                apex_javascript.add_attribute(''innerSpacing'',   c_inner_spacing) || ',
'                apex_javascript.add_attribute(''horizontal'',     c_horizontal) || ',
'                apex_javascript.add_attribute(''display'',        c_display) || ',
'                apex_javascript.add_attribute(''responsive'',     c_responsive) || ',
'                apex_javascript.add_attribute(''transitions'',    c_transitions) || ',
'                apex_javascript.add_attribute(''valueTemplate'',  c_value_template) || ',
'                apex_javascript.add_attribute(''showLegend'',     c_show_legend) || ',
'                apex_javascript.add_attribute(''legendPosition'', c_legend_position) || ',
'                apex_javascript.add_attribute(''colors'',         l_colors) || ',
'                apex_javascript.add_attribute(''xGrid'',          c_x_axis_grid) || ',
'                apex_javascript.add_attribute(''yGrid'',          c_y_axis_grid) || ',
'                apex_javascript.add_attribute(''multipleColors'', c_multiple_colors) || ',
'                apex_javascript.add_attribute(''heightMode'',     c_height_mode) || ',
'                apex_javascript.add_attribute(''minHeight'',      c_min_height) || ',
'                apex_javascript.add_attribute(''maxHeight'',      c_max_height) || ',
'                apex_javascript.add_attribute(''threshold'',      c_threshold) || ',
'                apex_javascript.add_attribute(''thresholdOf'',    c_threshold_of) || ',
'                apex_javascript.add_attribute(''minAR'',          c_min_ar) || ',
'                apex_javascript.add_attribute(''maxAR'',          c_max_ar) || ',
'                apex_javascript.add_attribute(''noDataFoundMessage'', p_region.no_data_found_message) || ',
'                apex_javascript.add_attribute(''pageItems'',      apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)) ||',
'                apex_javascript.add_attribute(''ajaxIdentifier'', apex_plugin.get_ajax_identifier, false, false) ||',
'            ''},'' || apex_javascript.add_value( p_region.name, false ) || '');})()'' );',
'    return null;',
'end;',
'',
'function ajax',
'(',
'    p_region    in  apex_plugin.t_region,',
'    p_plugin    in  apex_plugin.t_plugin ',
')',
'return apex_plugin.t_region_ajax_result',
'is',
'    -- It''s better to have named variables instead of using the generic ones, ',
'    -- makes the code more readable. ',
'',
'    c_has_multiple_series   constant boolean := p_region.attribute_03 is not null;',
'',
'    -- Column names',
'    c_x_column              constant varchar2(255) := p_region.attribute_01;',
'    c_y_column              constant varchar2(255) := p_region.attribute_02;',
'    c_series_column         constant varchar2(255) := case when c_has_multiple_series then p_region.attribute_04 end;',
'    c_tooltip_column        constant varchar2(255) := p_region.attribute_11;',
'    c_link_target           constant varchar2(255) := p_region.attribute_20;',
'',
'    -- Series name, for single series configuration',
'    c_series_name           constant varchar2(200) := case when not c_has_multiple_series then p_region.attribute_05 end;',
'    c_use_sql_color         constant boolean       := p_region.attribute_13 = ''COLUMN'';',
'',
'    -- Column numbers for fetching',
'    l_x_column_no           pls_integer;',
'    l_y_column_no           pls_integer;',
'    l_series_column_no      pls_integer;',
'    l_tooltip_column_no     pls_integer;',
'    l_column_value_list     apex_plugin_util.t_column_value_list2;',
'',
'    -- Holders for row data',
'    l_x                     varchar2(200);',
'    l_y                     number;',
'    l_series                varchar2(4000);',
'    l_color                 varchar2(4000);',
'    l_tooltip               varchar2(4000);',
'    l_link                  varchar2(4000);',
'',
'begin',
'',
'    apex_json.initialize_output (',
'        p_http_cache => false );',
'',
'    apex_json.open_object;',
'',
'    -- First, we must get the color mapping if the color scheme requires it.',
'    if c_use_sql_color then',
'        l_column_value_list := apex_plugin_util.get_data2 (',
'            p_sql_statement     => p_region.attribute_23,',
'            p_min_columns       => 2,',
'            p_max_columns       => 2,',
'            p_component_name    => p_region.name );',
'',
'        apex_json.open_array(''colors'');',
'        for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'            -- Series, optional',
'            l_series := apex_plugin_util.get_value_as_varchar2 (',
'                p_data_type => l_column_value_list(1).data_type,',
'                p_value     => l_column_value_list(1).value_list(l_row_num) );',
'            l_color := apex_plugin_util.get_value_as_varchar2 (',
'                p_data_type => l_column_value_list(2).data_type,',
'                p_value     => l_column_value_list(2).value_list(l_row_num) );',
'            ',
'            apex_json.open_object;',
'            apex_json.write(''series'', l_series);',
'            apex_json.write(''color'',  l_color);',
'            apex_json.close_object;',
'',
'        end loop;',
'        apex_json.close_array;',
'',
'        l_series := null;',
'    end if;',
'',
'    -- Then, we get the actual data points.',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'        p_sql_statement  => p_region.source,',
'        p_min_columns    => 2,',
'        p_max_columns    => 5,',
'        p_component_name => p_region.name );',
'',
'    -- Get the actual column # for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_x_column_no := apex_plugin_util.get_column_no (',
'                p_attribute_label       => ''x column'',',
'                p_column_alias          => c_x_column,',
'                p_column_value_list     => l_column_value_list,',
'                p_is_required           => true,',
'                p_data_type             => apex_plugin_util.c_data_type_varchar2 );',
'',
'    l_y_column_no := apex_plugin_util.get_column_no (',
'        p_attribute_label       => ''y column'',',
'        p_column_alias          => c_y_column,',
'        p_column_value_list     => l_column_value_list,',
'        p_is_required           => true,',
'        p_data_type             => apex_plugin_util.c_data_type_number );',
'',
'    l_series_column_no := apex_plugin_util.get_column_no (',
'        p_attribute_label       => ''series column'',',
'        p_column_alias          => c_series_column,',
'        p_column_value_list     => l_column_value_list,',
'        p_is_required           => false,',
'        p_data_type             => apex_plugin_util.c_data_type_varchar2 );',
'',
'    l_tooltip_column_no := apex_plugin_util.get_column_no (',
'        p_attribute_label       => ''tooltip column'',',
'        p_column_alias          => c_tooltip_column,',
'        p_column_value_list     => l_column_value_list,',
'        p_is_required           => false,',
'        p_data_type             => apex_plugin_util.c_data_type_varchar2 );',
'',
'    apex_json.open_array(''data'');',
'',
'    -- Fetch data',
'    for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'        begin',
'            apex_plugin_util.set_component_values (',
'                p_column_value_list => l_column_value_list,',
'                p_row_num => l_row_num ',
'            );',
'',
'            -- X is a string, required',
'            if l_x_column_no is not null then',
'                l_x := apex_plugin_util.get_value_as_varchar2 (',
'                    p_data_type => l_column_value_list(l_x_column_no).data_type,',
'                    p_value     => l_column_value_list(l_x_column_no).value_list(l_row_num) );',
'            end if;',
'',
'            -- Y is a number, required',
'            l_y := l_column_value_list(l_y_column_no).value_list(l_row_num).number_value;',
'',
'            -- Series, optional',
'            if l_series_column_no is not null then',
'                l_series := apex_plugin_util.get_value_as_varchar2 (',
'                    p_data_type => l_column_value_list(l_series_column_no).data_type,',
'                    p_value     => l_column_value_list(l_series_column_no).value_list(l_row_num) );',
'            end if;',
'',
'            -- Tooltip, optional',
'            if l_tooltip_column_no is not null then',
'                l_tooltip := apex_plugin_util.get_value_as_varchar2 (',
'                    p_data_type => l_column_value_list(l_tooltip_column_no).data_type,',
'                    p_value     => l_column_value_list(l_tooltip_column_no).value_list(l_row_num) );',
'            end if;',
'',
'            -- Link, optional',
'            if c_link_target is not null then',
'                l_link := wwv_flow_utilities.prepare_url (',
'                    apex_plugin_util.replace_substitutions (',
'                        p_value  => c_link_target,',
'                        p_escape => false ) );',
'            end if;',
'',
'            apex_json.open_object;',
'            apex_json.write(''series'',  nvl(l_series, c_series_name));',
'            apex_json.write(''tooltip'', l_tooltip);',
'            apex_json.write(''link'',    l_link);',
'            apex_json.write(''x'',       l_x);',
'            apex_json.write(''y'',       l_y);',
'            apex_json.close_object;',
'',
'            apex_plugin_util.clear_component_values;',
'        exception when others then',
'            apex_plugin_util.clear_component_values;',
'            raise;',
'        end;',
'    end loop;',
'    apex_json.close_array;',
'    apex_json.close_object;',
'',
'    return null;',
'end;'))
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:SOURCE_REQUIRED:AJAX_ITEMS_TO_SUBMIT:NO_DATA_FOUND_MESSAGE'
,p_sql_min_column_count=>2
,p_sql_max_column_count=>5
,p_substitute_attributes=>false
,p_subscribe_plugin_settings=>true
,p_help_text=>'Data Driven Documents (D3) Bar Chart provides dynamic and interactive bar charts for data visualization, using Scalable Vector Graphics (SVG), JavaScript, HTML5, and Cascading Style Sheets (CSS3) standards.'
,p_version_identifier=>'5.0.1'
,p_about_url=>'http://apex.oracle.com/plugins'
,p_files_version=>58
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647520925527936089)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>510
,p_prompt=>'Maximum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'3'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the maximum aspect ratio that charts use to recommend a height. A maximum aspect ratio of 3 means that the chart''s width should be no greater than 3 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Maximum Height'' setting on the region.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647521312449936090)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>500
,p_prompt=>'Minimum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'1.333'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the minimum aspect ratio that charts use to recommend a height. A minimum aspect ratio of 1.333 means that the chart''s width should be no less than 1.333 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Minimum Height'' setting on the region.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647521726501936090)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>3
,p_display_sequence=>540
,p_prompt=>'Responsive Behavior Threshold'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'480'
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Enter the threshold (in pixels) at which the responsive behavior will be activated.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647522088072936090)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>4
,p_display_sequence=>530
,p_prompt=>'Responsive Behavior Measure'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'WINDOW'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select whether the responsive behavior threshold will be compared to the window or the region width.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647522495502936090)
,p_plugin_attribute_id=>wwv_flow_api.id(2647522088072936090)
,p_display_sequence=>10
,p_display_value=>'Window'
,p_return_value=>'WINDOW'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647523015073936090)
,p_plugin_attribute_id=>wwv_flow_api.id(2647522088072936090)
,p_display_sequence=>20
,p_display_value=>'Region'
,p_return_value=>'REGION'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647523487370936090)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>5
,p_display_sequence=>550
,p_prompt=>'Enable Transitions'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Select whether transitions are enabled for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647523918305936091)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>6
,p_display_sequence=>520
,p_prompt=>'Responsive Behavior'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Select whether responsive behavior is enabled for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647524258330936091)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'X Values Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which holds the X-axis values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647524726379936091)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Y Values Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which holds the Y-axis values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647525080301936092)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>50
,p_prompt=>'Multiple Series'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Check multiple series if you want the chart displaying more than one series of data. The different series must be specified by a column from the region SQL Query.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647525481994936092)
,p_plugin_attribute_id=>wwv_flow_api.id(2647525080301936092)
,p_display_sequence=>10
,p_display_value=>' '
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647525959073936092)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>60
,p_prompt=>'Series Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2647525080301936092)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Select the column from the region SQL Query that defines the multiple series for the chart. The values from this column will become the labels for the series.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647526400737936092)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>70
,p_prompt=>'Series Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(2647525080301936092)
,p_depending_on_condition_type=>'NULL'
,p_help_text=>'Enter the name of the single data series which is shown on the legend.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647526810005936092)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>40
,p_prompt=>'Display'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'VERTICAL,SIDE-BY-SIDE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select how the bar chart data is displayed.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647527147932936092)
,p_plugin_attribute_id=>wwv_flow_api.id(2647526810005936092)
,p_display_sequence=>10
,p_display_value=>'Vertical, Side by Side'
,p_return_value=>'VERTICAL,SIDE-BY-SIDE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647527732065936093)
,p_plugin_attribute_id=>wwv_flow_api.id(2647526810005936092)
,p_display_sequence=>20
,p_display_value=>'Horizontal, Side by Side'
,p_return_value=>'HORIZONTAL,SIDE-BY-SIDE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647528138333936093)
,p_plugin_attribute_id=>wwv_flow_api.id(2647526810005936092)
,p_display_sequence=>30
,p_display_value=>'Vertical, Stacked'
,p_return_value=>'VERTICAL,STACKED'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647528682112936093)
,p_plugin_attribute_id=>wwv_flow_api.id(2647526810005936092)
,p_display_sequence=>40
,p_display_value=>'Horizontal, Stacked'
,p_return_value=>'HORIZONTAL,STACKED'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647529186270936093)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>90
,p_prompt=>'X-Axis Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>20
,p_is_translatable=>true
,p_help_text=>'Enter the label for the X-axis.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647529578872936093)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>100
,p_prompt=>'Y-Axis Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>20
,p_is_translatable=>true
,p_help_text=>'The label for the Y-axis.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647530021366936094)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>130
,p_prompt=>'Tooltips'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Check which attributes are shown on the tooltip for each data point. The ''Custom column'' option allows you to specify text for each individual data point as an additional column in the region SQL Query.</p>',
'<p>Note: Leave all options unchecked to disable the tooltip.</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647530353882936094)
,p_plugin_attribute_id=>wwv_flow_api.id(2647530021366936094)
,p_display_sequence=>0
,p_display_value=>'Show series name'
,p_return_value=>'SERIES'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647530842858936094)
,p_plugin_attribute_id=>wwv_flow_api.id(2647530021366936094)
,p_display_sequence=>10
,p_display_value=>'Show X value'
,p_return_value=>'X'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647531413553936094)
,p_plugin_attribute_id=>wwv_flow_api.id(2647530021366936094)
,p_display_sequence=>20
,p_display_value=>'Show Y value'
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647531872910936096)
,p_plugin_attribute_id=>wwv_flow_api.id(2647530021366936094)
,p_display_sequence=>30
,p_display_value=>'Custom column'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647532362097936096)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>140
,p_prompt=>'Tooltip Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2647530021366936094)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'SERIES:X:Y:CUSTOM,SERIES:X:CUSTOM,SERIES:Y:CUSTOM,X:Y:CUSTOM,SERIES:CUSTOM,X:CUSTOM,Y:CUSTOM,CUSTOM'
,p_help_text=>'Enter the column from the region SQL Query that holds the custom tooltip values.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647532776969936096)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>150
,p_prompt=>'Legend'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'No Legend'
,p_help_text=>'Select where the legend is displayed on the chart.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647533168740936096)
,p_plugin_attribute_id=>wwv_flow_api.id(2647532776969936096)
,p_display_sequence=>10
,p_display_value=>'Above chart'
,p_return_value=>'TOP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647533686703936096)
,p_plugin_attribute_id=>wwv_flow_api.id(2647532776969936096)
,p_display_sequence=>20
,p_display_value=>'Below chart'
,p_return_value=>'BOTTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647534228408936097)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>250
,p_prompt=>'Color Scheme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'MODERN'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Theme Default'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Select the color scheme used to render the chart.</p>',
'<p>Note: For multiple series charts, each series will be assigned a different color depending on the setting for ''Multiple Colors''.</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647534586317936097)
,p_plugin_attribute_id=>wwv_flow_api.id(2647534228408936097)
,p_display_sequence=>10
,p_display_value=>'Modern'
,p_return_value=>'MODERN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647535124319936097)
,p_plugin_attribute_id=>wwv_flow_api.id(2647534228408936097)
,p_display_sequence=>20
,p_display_value=>'Modern 2'
,p_return_value=>'MODERN2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647535631210936097)
,p_plugin_attribute_id=>wwv_flow_api.id(2647534228408936097)
,p_display_sequence=>30
,p_display_value=>'Solar'
,p_return_value=>'SOLAR'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647536094585936098)
,p_plugin_attribute_id=>wwv_flow_api.id(2647534228408936097)
,p_display_sequence=>40
,p_display_value=>'Metro'
,p_return_value=>'METRO'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647537132091936098)
,p_plugin_attribute_id=>wwv_flow_api.id(2647534228408936097)
,p_display_sequence=>50
,p_display_value=>'SQL Query'
,p_return_value=>'COLUMN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647536552146936098)
,p_plugin_attribute_id=>wwv_flow_api.id(2647534228408936097)
,p_display_sequence=>60
,p_display_value=>'Custom'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647537538310936098)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>260
,p_prompt=>'Colors'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2647534228408936097)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CUSTOM'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>Hexadecimal (hex) notation</dt><dd><pre>#FF3377</pre>;</dd>',
'  <dt>RGB color notation  (red,green,blue)</dt><dd><pre>rgba(0,25,47,0.5)</pre>; or </dd>',
'  <dt>RGBA color notation (red,green,blue,alpha)</dt><dd><pre>rgba(0,25,47,0.5)</pre>; or </dd>',
'  <dt>HTML colors</dt><dd><pre>blue</pre>.</dd>',
'</dl>'))
,p_help_text=>'<p>Enter a colon-separated list of color strings for the custom colors to be used in the chart.</p>'
);
end;
/
begin
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647538024758936098)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>120
,p_prompt=>'Custom Value Formatting'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'FRIENDLY'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2647543992039936102)
,p_depending_on_condition_type=>'NULL'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul>',
'<li><b>,d</b> = 14,435</li>',
'<li><b>d</b> = 14435</li>',
'<li><b>,.2f</b> = 14,435.49</li>',
'<li><b>.2f</b> = 14435.49</li>',
'<li><b>.3s</b> = 14.4k</li>',
'<li><b>$,d</b> = $14,435</li>',
'<li><b>$d</b> = $14435</li>',
'<li><b>$,.2f</b> = $14,435.49</li>',
'<li><b>$.2f</b> = $14435.49</li>',
'<li><b>$.3s</b> = $14.4k</li>',
'<li><b>n" ft."</b> = 14435.49 ft. **</li>',
'<li><b>"[["$.3s"]]"</b> = [[$14.4k]] **</li>',
'<li>Refer to https://github.com/mbostock/d3/wiki/Formatting#d3_format for the full syntax specification</li>',
'</ul>',
'<br/>',
'** You may use leading and trailing double-quoted literals, but this feature is not part of the standard D3 specification'))
,p_help_text=>'Enter the D3 format string used to format the Y-axis values on axes, tooltips and legends. Use <pre>FRIENDLY</pre> to utilize sensible formatting defaults for your data.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647538353673936098)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>200
,p_prompt=>'Spacing Between Categories'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'10'
,p_display_length=>5
,p_max_length=>3
,p_unit=>'%'
,p_is_translatable=>false
,p_help_text=>'Enter the spacing between categories, expressed as an integer percentage (1-100).'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647538762627936099)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>210
,p_prompt=>'Spacing Between Series'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'10'
,p_display_length=>5
,p_max_length=>3
,p_unit=>'%'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2647525080301936092)
,p_depending_on_condition_type=>'NOT_NULL'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the spacing between series on the same category (X-axis value). It is represented as an integer percentage (0-100).</p>',
'<p>Note: This setting only affects charts using the "Side by Side" display modes.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647539223309936100)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_prompt=>'Minimum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_display_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Enter the minimum height, in pixels, of the chart. Chart width will adapt to the size of the region. Defaults to 100px.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647539542211936100)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_prompt=>'Maximum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_display_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'The maximum height, in pixels, of the chart. Chart width will adapt to the size of the region. Defaults to 500px.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647539967464936100)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>30
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_reference_scope=>'ROW'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a chart entry.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647540431709936100)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>21
,p_display_sequence=>170
,p_prompt=>'Height Measure'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'BARS'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select how the minimum and maximum height of the chart is calculated.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647541322846936100)
,p_plugin_attribute_id=>wwv_flow_api.id(2647540431709936100)
,p_display_sequence=>10
,p_display_value=>'Bars Area'
,p_return_value=>'BARS'
,p_help_text=>'Minimum and maximum height for the area is determined by the height of the the bars drawn. Axis labels may take additional space.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647540795596936100)
,p_plugin_attribute_id=>wwv_flow_api.id(2647540431709936100)
,p_display_sequence=>20
,p_display_value=>'Chart Area'
,p_return_value=>'CHART'
,p_help_text=>'Minimum and maximum height will include the axes dimensions.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647541787167936102)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>22
,p_display_sequence=>160
,p_prompt=>'Show Grid Lines'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Check the axes to display grid lines for that axis.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647542138464936102)
,p_plugin_attribute_id=>wwv_flow_api.id(2647541787167936102)
,p_display_sequence=>10
,p_display_value=>'X-Axis'
,p_return_value=>'X'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647542649661936102)
,p_plugin_attribute_id=>wwv_flow_api.id(2647541787167936102)
,p_display_sequence=>20
,p_display_value=>'Y-Axis'
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647543172700936102)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>23
,p_display_sequence=>270
,p_prompt=>'Color SQL Query'
,p_attribute_type=>'SQL'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_sql_min_column_count=>2
,p_sql_max_column_count=>2
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2647534228408936097)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'COLUMN'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre>select ''SALES'', rgb(0,255,0)',
'from dual',
'UNION',
'select ''RESEARCH'', rgba(0,25,47,0.5)',
'from dual;</pre>'))
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Enter a SQL Query that maps a series name to an RGB color. The first column must contain the series names (and those values must match the ones returned from the region SQL) and the second column must have the RGB or RGBA color notation for the serie'
||'s. ',
'Both columns must be VARCHAR2.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647543575386936102)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>24
,p_display_sequence=>80
,p_prompt=>'Multiple Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2647525080301936092)
,p_depending_on_condition_type=>'NULL'
,p_help_text=>'Select whether each series is displayed in a different color.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2647543992039936102)
,p_plugin_id=>wwv_flow_api.id(2230803241743914816)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>25
,p_display_sequence=>110
,p_prompt=>'Value Format Mask'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Custom'
,p_help_text=>'Select the format mask to apply to the displayed values.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647545434368936104)
,p_plugin_attribute_id=>wwv_flow_api.id(2647543992039936102)
,p_display_sequence=>30
,p_display_value=>'14,435'
,p_return_value=>',.0f'
,p_help_text=>'Comma-separated thousands, integers'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647545880306936104)
,p_plugin_attribute_id=>wwv_flow_api.id(2647543992039936102)
,p_display_sequence=>40
,p_display_value=>'14435'
,p_return_value=>'.0f'
,p_help_text=>'Integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647546878198936104)
,p_plugin_attribute_id=>wwv_flow_api.id(2647543992039936102)
,p_display_sequence=>60
,p_display_value=>'14,435.49'
,p_return_value=>',.2f'
,p_help_text=>'Comma-separated thousands, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647547380172936105)
,p_plugin_attribute_id=>wwv_flow_api.id(2647543992039936102)
,p_display_sequence=>70
,p_display_value=>'14435.49'
,p_return_value=>'.2f'
,p_help_text=>'2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647546422761936104)
,p_plugin_attribute_id=>wwv_flow_api.id(2647543992039936102)
,p_display_sequence=>71
,p_display_value=>'14.4k'
,p_return_value=>'.3s'
,p_help_text=>'Precision 3, SI suffixes'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647547882183936106)
,p_plugin_attribute_id=>wwv_flow_api.id(2647543992039936102)
,p_display_sequence=>80
,p_display_value=>'$14,435'
,p_return_value=>'$,.0f'
,p_help_text=>'Currency, comma-separated thousands, integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647548380919936106)
,p_plugin_attribute_id=>wwv_flow_api.id(2647543992039936102)
,p_display_sequence=>90
,p_display_value=>'$14435'
,p_return_value=>'$.0f'
,p_help_text=>'Currency, integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647544361729936103)
,p_plugin_attribute_id=>wwv_flow_api.id(2647543992039936102)
,p_display_sequence=>99
,p_display_value=>'$14,435.49'
,p_return_value=>'$,.2f'
,p_help_text=>'Currency, comma-separated thousands, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647548901097936106)
,p_plugin_attribute_id=>wwv_flow_api.id(2647543992039936102)
,p_display_sequence=>100
,p_display_value=>'$14435.49'
,p_return_value=>'$.2f'
,p_help_text=>'Currency, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2647544861300936103)
,p_plugin_attribute_id=>wwv_flow_api.id(2647543992039936102)
,p_display_sequence=>120
,p_display_value=>'$14.4k'
,p_return_value=>'$.3s'
,p_help_text=>'Currency, precison 3, SI suffixes'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_flot_pie
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(4392441599280945814)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.FLOT.PIE'
,p_display_name=>'Flot Pie Chart'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.FLOT.PIE'),'#IMAGE_PREFIX#plugins/com.oracle.apex.flot_pie/')
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/jquery-flot/0.8.3/excanvas#MIN#.js',
'#IMAGE_PREFIX#libraries/jquery-flot/0.8.3/jquery.flot#MIN#.js',
'#IMAGE_PREFIX#libraries/jquery-flot/0.8.3/jquery.flot.resize#MIN#.js',
'#PLUGIN_FILES#jquery.flot.pie.js',
'#PLUGIN_FILES#com_oracle_apex_flot_pie.js'))
,p_css_file_urls=>'#PLUGIN_FILES#com_oracle_apex_flot_pie.css'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    -- NOTE: THIS IS THE VALUE FOR PLUGIN FILE PREFIX #IMAGE_PREFIX#plugins/com.oracle.apex.flot_pie/',
'',
'function render (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result',
'is',
'    -- determine plugin attributes and assign readable names',
'    c_color_scheme         constant varchar2(255) := p_region.attribute_15;',
'    l_colors               varchar2(2000);',
'',
'    c_pie_type             constant apex_application_page_regions.attribute_05%type := nvl(p_region.attribute_05, ''STANDARD'');',
'',
'    c_inner_radius         constant number  := apex_plugin_util.get_attribute_as_number(apex_plugin_util.replace_substitutions(nvl(p_region.attribute_14,''-1'')), ''Inner Radius'');',
'',
'    c_show_tooltip         constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':TOOLTIP:'') > 0);',
'    c_show_legend          constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':LEGEND:'') > 0);',
'    c_show_label           constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':LABEL:'')  > 0);',
'    c_show_value           constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':VALUE:'')  > 0);',
'    c_pie_width            constant number  := to_number(apex_plugin_util.replace_substitutions(p_region.attribute_06));',
'',
'    c_min_height           constant number  := to_number(nvl(p_region.attribute_17, ''100''));',
'    c_max_height           constant number  := to_number(nvl(p_region.attribute_18, ''400''));',
'',
'    c_min_ar               constant number  := greatest(apex_plugin_util.get_attribute_as_number(p_plugin.attribute_01, ''Min Aspect Ratio''), 0.25);',
'    c_max_ar               constant number  := least(apex_plugin_util.get_attribute_as_number(p_plugin.attribute_02, ''Max Aspect Ratio''), 4);',
'',
'    c_combine_slices       constant boolean := (nvl(p_region.attribute_09, ''N'') = ''Y'');',
'    c_combine_threshold    constant number  := nvl(to_number(p_region.attribute_10), 10);',
'    c_combined_slice_label constant apex_application_page_regions.attribute_11%type := nvl(p_region.attribute_11, ''Other'');',
'    c_combined_slice_link  constant apex_application_page_regions.attribute_12%type := p_region.attribute_12;',
'    c_combined_slice_color constant apex_application_page_regions.attribute_13%type := p_region.attribute_13;',
'begin',
'    -- add placeholder div for chart',
'    sys.htp.p(',
'        ''<div class="flotPieContainer"><div id="'' || apex_escape.html_attribute(p_region.static_id || ''_chart'') || ''" style="width:'' ||',
'        case when c_pie_width is null then ''auto'' else c_pie_width || ''px'' end ||',
'        ''" class="flotPieContainerInner"></div></div>'' );',
'',
'    -- Set the colors to be used, if a non-SQL scheme was selected',
'    case c_color_scheme',
'      when ''MODERN'' then',
'        l_colors := ''#FF3B30,#FF9500,#FFCC00,#4CD964,#34AADC,#007AFF,#5856D6,#FF2D55,#8E8E93,#C7C7CC'';',
'      when ''MODERN2'' then',
'        l_colors := ''#1ABC9C,#2ECC71,#4AA3DF,#9B59B6,#3D566E,#F1C40F,#E67E22,#E74C3C'';',
'      when ''SOLAR'' then',
'        l_colors := ''#B58900,#CB4B16,#DC322F,#D33682,#6C71C4,#268BD2,#2AA198,#859900'';',
'      when ''METRO'' then',
'        l_colors := ''#E61400,#19A2DE,#319A31,#EF9608,#8CBE29,#A500FF,#00AAAD,#FF0094,#9C5100,#E671B5'';',
'      when ''CUSTOM'' then',
'        l_colors := p_region.attribute_16;',
'      when ''SQL'' then',
'        l_colors := null;',
'    end case;',
'',
'    -- Initialize the Flot pie chart when the page has been rendered.',
'    -- apex_javascript.add_attribute are used to make sure that',
'    -- the values are properly escaped.   ',
'    apex_javascript.add_onload_code (',
'        p_code => ''com_oracle_apex_flot_pie('' ||',
'                  apex_javascript.add_value(p_region.static_id) ||',
'                  ''{'' ||',
'                      apex_javascript.add_attribute(''colors'',           l_colors) || ',
'                      apex_javascript.add_attribute(''type'',             c_pie_type) || ',
'                      apex_javascript.add_attribute(''innerRadius'',      c_inner_radius)||',
'                      apex_javascript.add_attribute(''minAR'',            c_min_ar)||',
'                      apex_javascript.add_attribute(''maxAR'',            c_max_ar)||',
'                      apex_javascript.add_attribute(''minHeight'',        c_min_height) || ',
'                      apex_javascript.add_attribute(''maxHeight'',        c_max_height) || ',
'                      apex_javascript.add_attribute(''showLabel'',        c_show_label) || ',
'                      apex_javascript.add_attribute(''showLegend'',       c_show_legend) ||',
'                      apex_javascript.add_attribute(''showTooltip'',      c_show_tooltip) || ',
'                      apex_javascript.add_attribute(''showValue'',        c_show_value) || ',
'                      apex_javascript.add_attribute(''combineSlices'',    c_combine_slices) || ',
'                      apex_javascript.add_attribute(''combineThreshold'', c_combine_threshold) || ',
'                      apex_javascript.add_attribute(''combineLabel'',     apex_plugin_util.escape(',
'                                                                            apex_plugin_util.replace_substitutions (',
'                                                                                p_value  => c_combined_slice_label,',
'                                                                                p_escape => false ),',
'                                                                            p_region.escape_output )) || ',
'                      apex_javascript.add_attribute(''combineUrl'',       wwv_flow_utilities.prepare_url(',
'                                                                            apex_plugin_util.replace_substitutions (',
'                                                                                p_value  => c_combined_slice_link,',
'                                                                                p_escape => false ))) ||',
'                      apex_javascript.add_attribute(''combineColor'',     apex_plugin_util.escape(',
'                                                                            apex_plugin_util.replace_substitutions (',
'                                                                                p_value  => c_combined_slice_color,',
'                                                                                p_escape => false ),',
'                                                                            true )) || ',
'                      apex_javascript.add_attribute(''noDataFoundMessage'', p_region.no_data_found_message) || ',
'                      apex_javascript.add_attribute(''pageItems'',        apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)) ||',
'                      apex_javascript.add_attribute(''ajaxIdentifier'',   apex_plugin.get_ajax_identifier, false, false) ||',
'                  ''});'' );',
'    apex_javascript.add_onload_code (',
'        p_code => ''setTimeout(function(){$("span.pieLabel").removeAttr("id");},1000);'' );',
'',
'    return null;',
'',
'end render;',
'',
'',
'function ajax (',
'     p_region in apex_plugin.t_region,',
'     p_plugin in apex_plugin.t_plugin )',
'     return apex_plugin.t_region_ajax_result',
'is',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable. We are using the same defaults for the',
'    -- required attributes as in the plug-in attribute configuration, because',
'    -- they can still be null. Keep them in sync!',
'    c_label_column constant varchar2(255) := p_region.attribute_01;',
'    c_value_column constant varchar2(255) := p_region.attribute_02;',
'    c_color_column constant varchar2(255) := p_region.attribute_03;',
'    c_link_target  constant varchar2(255) := p_region.attribute_04;',
'',
'    l_label_column_no   pls_integer;',
'    l_value_column_no   pls_integer;',
'    l_color_column_no   pls_integer;',
'    l_column_value_list apex_plugin_util.t_column_value_list2;',
'    ',
'    l_label             varchar2(4000);',
'    l_value             number;',
'    l_color             varchar2(20);',
'    l_url               varchar2(4000);',
'begin',
'    apex_plugin_util.print_json_http_header;',
'',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => p_region.source,',
'                               p_min_columns    => 2,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name );',
'',
'    -- Get the actual column# for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_label_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Label Column'',',
'                             p_column_alias      => c_label_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => true,',
'                             p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'                                      ',
'    l_value_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Value Column'',',
'                             p_column_alias      => c_value_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => true,',
'                             p_data_type         => apex_plugin_util.c_data_type_number );',
'',
'    l_color_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Color Column'',',
'                             p_column_alias      => c_color_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => false,',
'                             p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'',
'    sys.htp.prn(''['');',
'',
'    -- It''s time to emit the selected rows',
'    for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'        begin',
'            apex_plugin_util.set_component_values (',
'                p_column_value_list => l_column_value_list,',
'                p_row_num           => l_row_num );',
'',
'            -- get the label',
'            l_label := apex_plugin_util.escape (',
'                           apex_plugin_util.get_value_as_varchar2 (',
'                               p_data_type => l_column_value_list(l_label_column_no).data_type,',
'                               p_value     => l_column_value_list(l_label_column_no).value_list(l_row_num) ),',
'                           p_region.escape_output );',
'',
'            -- get the value',
'            l_value := l_column_value_list(l_value_column_no).value_list(l_row_num).number_value;',
'',
'            -- get the color if specified',
'            if l_color_column_no is not null then',
'                l_color := apex_plugin_util.escape (',
'                               apex_plugin_util.get_value_as_varchar2 (',
'                                   p_data_type => l_column_value_list(l_color_column_no).data_type,',
'                                   p_value     => l_column_value_list(l_color_column_no).value_list(l_row_num) ),',
'                               true );',
'            end if;',
'',
'            -- get the link target if it does exist',
'            if c_link_target is not null then',
'                l_url := wwv_flow_utilities.prepare_url (',
'                             apex_plugin_util.replace_substitutions (',
'                                 p_value  => c_link_target,',
'                                 p_escape => false ));',
'            end if;',
'',
'            -- write the data to our output buffer',
'            sys.htp.p (',
'                case when l_row_num > 1 then '','' end ||',
'                ''{'' ||',
'                apex_javascript.add_attribute(''label'', l_label) ||',
'                apex_javascript.add_attribute(''color'', l_color) ||',
'                apex_javascript.add_attribute(''url'',   l_url) ||',
'                apex_javascript.add_attribute(''data'',  l_value, false, false ) ||',
'                ''}'' );',
'',
'            apex_plugin_util.clear_component_values;',
'        exception when others then',
'            apex_plugin_util.clear_component_values;',
'            raise;',
'        end;',
'    end loop;',
'    sys.htp.prn('']'');',
'',
'    return null;',
'end ajax;'))
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:SOURCE_REQUIRED:AJAX_ITEMS_TO_SUBMIT:NO_DATA_FOUND_MESSAGE:ESCAPE_OUTPUT'
,p_sql_min_column_count=>1
,p_sql_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select *',
'  from emp',
' order by sal'))
,p_substitute_attributes=>false
,p_subscribe_plugin_settings=>true
,p_help_text=>'Flot Pie Chart is a pure JavaScript plotting library for jQuery, with a focus on simple usage, attractive looks and interactive features.'
,p_version_identifier=>'5.02'
,p_about_url=>'http://apex.oracle.com/plugins'
,p_files_version=>25
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648580579603893738)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>510
,p_prompt=>'Minimum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'1.333'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the minimum aspect ratio that charts use to recommend a height. A maximum aspect ratio of 3 means that the chart''s width should be no greater than 3 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Minimum Height'' setting on the region.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648580958920893738)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>520
,p_prompt=>'Maximum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'1.5'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the maximum aspect ratio that charts use to recommend a height. A maximum aspect ratio of 3 means that the chart''s width should be no greater than 3 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Maximum Height'' setting on the region.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648581317354893738)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Label Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the labels for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648581707632893738)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Value Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648582176540893738)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>170
,p_prompt=>'Colors Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2648593570303893746)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'SQL'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>Hexadecimal (hex) notation</dt><dd><pre>#FF3377</pre>;</dd>',
'  <dt>HTML colors</dt><dd><pre>blue</pre>.</dd>',
'</dl>'))
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Select the column from the region SQL Query that holds the color codes for the chart. The color can be set using hex values or as the name of the color.</p>',
'<p>Note: If no column is entered then the color will automatically be calculated.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648582505870893739)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>30
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a chart entry.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648582937263893739)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>40
,p_prompt=>'Pie Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'STANDARD'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the type of pie chart that should be displayed.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648583352966893740)
,p_plugin_attribute_id=>wwv_flow_api.id(2648582937263893739)
,p_display_sequence=>10
,p_display_value=>'Standard'
,p_return_value=>'STANDARD'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648583819288893740)
,p_plugin_attribute_id=>wwv_flow_api.id(2648582937263893739)
,p_display_sequence=>20
,p_display_value=>'Donut'
,p_return_value=>'DONUT'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648584331841893740)
,p_plugin_attribute_id=>wwv_flow_api.id(2648582937263893739)
,p_display_sequence=>30
,p_display_value=>'Tilted'
,p_return_value=>'TILTED'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648584805147893740)
,p_plugin_attribute_id=>wwv_flow_api.id(2648582937263893739)
,p_display_sequence=>40
,p_display_value=>'Rectangular'
,p_return_value=>'RECT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648585306554893740)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>70
,p_prompt=>'Width'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the width of the pie chart you want to create. For example, setting the width to 100 will create a pie chart that is a maximum of 100 pixels wide and 100 pixels in height.</p>',
'<p>Note: If no value is specified, the pie chart will consume all the space of the containing region. </p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648585707785893740)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>60
,p_prompt=>'Display Options'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>true
,p_default_value=>'LABEL:VALUE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Check which attributes are shown on the pie chart.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648586171270893741)
,p_plugin_attribute_id=>wwv_flow_api.id(2648585707785893740)
,p_display_sequence=>5
,p_display_value=>'Legend'
,p_return_value=>'LEGEND'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648586621134893741)
,p_plugin_attribute_id=>wwv_flow_api.id(2648585707785893740)
,p_display_sequence=>10
,p_display_value=>'Tooltip'
,p_return_value=>'TOOLTIP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648587087550893741)
,p_plugin_attribute_id=>wwv_flow_api.id(2648585707785893740)
,p_display_sequence=>30
,p_display_value=>'Label'
,p_return_value=>'LABEL'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648587596980893742)
,p_plugin_attribute_id=>wwv_flow_api.id(2648585707785893740)
,p_display_sequence=>40
,p_display_value=>'Value'
,p_return_value=>'VALUE'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648588083908893742)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Combine Slices'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'Select whether slices that are below a given percentage threshold can be combined into a single "other" slice.  For example, if the threshold is set to 10%, then any slice that is below 10% will be grouped into the "other" slice.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648588570571893742)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Combined Slice Threshold'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'10'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2648588083908893742)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_help_text=>'Enter the threshold percentage which determines which slices to group together in an "other" slice.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648588885501893743)
,p_plugin_attribute_id=>wwv_flow_api.id(2648588570571893742)
,p_display_sequence=>10
,p_display_value=>'1%'
,p_return_value=>'1'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648589393944893744)
,p_plugin_attribute_id=>wwv_flow_api.id(2648588570571893742)
,p_display_sequence=>20
,p_display_value=>'2%'
,p_return_value=>'2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648589979379893744)
,p_plugin_attribute_id=>wwv_flow_api.id(2648588570571893742)
,p_display_sequence=>30
,p_display_value=>'5%'
,p_return_value=>'5'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648590415529893744)
,p_plugin_attribute_id=>wwv_flow_api.id(2648588570571893742)
,p_display_sequence=>40
,p_display_value=>'10%'
,p_return_value=>'10'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648590898223893744)
,p_plugin_attribute_id=>wwv_flow_api.id(2648588570571893742)
,p_display_sequence=>50
,p_display_value=>'15%'
,p_return_value=>'15'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648591449806893744)
,p_plugin_attribute_id=>wwv_flow_api.id(2648588570571893742)
,p_display_sequence=>60
,p_display_value=>'20%'
,p_return_value=>'20'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648591932488893745)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Combined Slice Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'Other'
,p_display_length=>20
,p_max_length=>20
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(2648588083908893742)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Enter the label for the combined slice.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648592348723893745)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_prompt=>'Combined Slice Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2648588083908893742)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter a target page to be called when the user clicks the combined slice. </p>',
'<p>Note: Leave the link blank if you do not want to make this clickable. </p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648592742069893745)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_prompt=>'Combined Slice Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>Hexadecimal (hex) notation</dt><dd><pre>#FF3377</pre>;</dd>',
'  <dt>HTML colors</dt><dd><pre>blue</pre>.</dd>',
'</dl>'))
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the color which should be used for the combined slice. The color can be entered as hex value or as the name of the color.</p>',
'<p>Note: If no color is specified then it will be defaulted to gray.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648593092805893746)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>50
,p_prompt=>'Inner Radius'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_display_length=>5
,p_max_length=>5
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2648582937263893739)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'DONUT'
,p_help_text=>'Enter the radius of the hole inside the donut. Numbers between 0 and 1 are treated as percentages and numbers greater than 1 are treated as pixels'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648593570303893746)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_prompt=>'Color Scheme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'MODERN'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Select the color scheme used to render the chart.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648596399916893748)
,p_plugin_attribute_id=>wwv_flow_api.id(2648593570303893746)
,p_display_sequence=>10
,p_display_value=>'Modern'
,p_return_value=>'MODERN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648593927718893746)
,p_plugin_attribute_id=>wwv_flow_api.id(2648593570303893746)
,p_display_sequence=>20
,p_display_value=>'Modern 2'
,p_return_value=>'MODERN2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648594406023893747)
,p_plugin_attribute_id=>wwv_flow_api.id(2648593570303893746)
,p_display_sequence=>30
,p_display_value=>'Solar'
,p_return_value=>'SOLAR'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648594911867893747)
,p_plugin_attribute_id=>wwv_flow_api.id(2648593570303893746)
,p_display_sequence=>40
,p_display_value=>'Metro'
,p_return_value=>'METRO'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648595394032893748)
,p_plugin_attribute_id=>wwv_flow_api.id(2648593570303893746)
,p_display_sequence=>50
,p_display_value=>'SQL Column'
,p_return_value=>'SQL'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2648595948014893748)
,p_plugin_attribute_id=>wwv_flow_api.id(2648593570303893746)
,p_display_sequence=>60
,p_display_value=>'Custom'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648596908591893748)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_prompt=>'Custom Colors'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2648593570303893746)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CUSTOM'
,p_help_text=>'<p>Enter a list of CSS supported colors separated by colons.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648597331767893749)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>180
,p_prompt=>'Minimum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Enter the minimum height, in pixels, of the chart. Chart width will adapt to the size of the region.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648597749314893749)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>190
,p_prompt=>'Maximum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>'Enter the maximum height, in pixels, of the chart. Chart width will adapt to the size of the region.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2648598151287893749)
,p_plugin_id=>wwv_flow_api.id(4392441599280945814)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>80
,p_prompt=>'Value Format Mask'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Enter the data format mask for the pie slices.'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(69454319524353630)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(69412175992353454)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(69446564149353598)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(69454285153353629)
,p_nav_bar_list_template_id=>wwv_flow_api.id(69446429672353596)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_44/gauge.min.js',
'#IMAGE_PREFIX#themes/theme_44/countUp.js'))
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'/*var options = {',
'  useEasing : true, ',
'  useGrouping : true, ',
'  separator : '','', ',
'  decimal : ''.'', ',
'  prefix : ''% '', ',
'  suffix : '' CPU Usage'' ',
'};',
'',
'var c0 = new countUp("cputext", 0, 21, 0, 4, options);',
'',
'/**********************************************************/',
'',
'var option = {',
'  useEasing : true, ',
'  useGrouping : true, ',
'  separator : '','', ',
'  decimal : ''.'', ',
'  prefix : ''% '', ',
'  suffix : '' RAM Usage'' ',
'};',
'',
'var c1 = new countUp("ramtext", 0, 43, 0, 4, option);',
'',
'/**********************************************************/',
'',
'var option1 = {',
'  useEasing : true, ',
'  useGrouping : true, ',
'  separator : '','', ',
'  decimal : ''.'', ',
'  prefix : ''% '', ',
'  suffix : '' HARD Usage'' ',
'};',
'',
'var c2 = new countUp("hardtext", 0, 76, 0, 4, option1);*/'))
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'/*c0.start();',
'c1.start();',
'c2.start();*/',
'/************ CPU Usage ******************/',
'',
'var optst = {',
'  lines: 12, // The number of lines to draw',
'  angle: 0, // The length of each line',
'  lineWidth: 0.44, // The line thickness',
'  pointer: {',
'    length: 0.9, // The radius of the inner circle',
'    strokeWidth: 0.035, // The rotation offset',
'    color: ''#000000'' // Fill color',
'  },',
'  colorStart: ''#01FF70'',   // Colors',
'  colorStop: ''#2ECC40'',    // just experiment with them',
'  strokeColor: ''#E0E0E0'',   // to see which ones work best for you',
'  generateGradient: true',
'};',
'var target1 = document.getElementById(''cpu''); // your canvas element',
'var gauge = new Gauge(target1);',
'gauge.setOptions(optst); // create sexy gauge!',
'gauge.maxValue = 100; // set max gauge value',
'gauge.animationSpeed = 32; // set animation speed (32 is default value)',
'gauge.set(21); // set actual value',
'',
'',
'/************ RAM Usage ******************/',
'',
'var optst2 = {',
'  lines: 12, // The number of lines to draw',
'  angle: 0, // The length of each line',
'  lineWidth: 0.44, // The line thickness',
'  pointer: {',
'    length: 0.9, // The radius of the inner circle',
'    strokeWidth: 0.035, // The rotation offset',
'    color: ''#000000'' // Fill color',
'  },',
'  colorStart: ''#FFDC00'',   // Colors',
'  colorStop: ''#FF851B'',    // just experiment with them',
'  strokeColor: ''#E0E0E0'',   // to see which ones work best for you',
'  generateGradient: true',
'};',
'var target2 = document.getElementById(''ram''); // your canvas element',
'var gauge = new Gauge(target2);',
'gauge.setOptions(optst2); // create sexy gauge!',
'gauge.maxValue = 100; // set max gauge value',
'gauge.animationSpeed = 32; // set animation speed (32 is default value)',
'gauge.set(43); // set actual value',
'',
'',
'/************ HARD Usage ******************/',
'',
'var optst3 = {',
'  lines: 12, // The number of lines to draw',
'  angle: 0, // The length of each line',
'  lineWidth: 0.44, // The line thickness',
'  pointer: {',
'    length: 0.9, // The radius of the inner circle',
'    strokeWidth: 0.035, // The rotation offset',
'    color: ''#000000'' // Fill color',
'  },',
'  colorStart: ''#CF6304'',   // Colors',
'  colorStop: ''#DA3C1C'',    // just experiment with them',
'  strokeColor: ''#E0E0E0'',   // to see which ones work best for you',
'  generateGradient: true',
'};',
'var target3 = document.getElementById(''hard''); // your canvas element',
'var gauge = new Gauge(target3);',
'gauge.setOptions(optst3); // create sexy gauge!',
'gauge.maxValue = 100; // set max gauge value',
'gauge.animationSpeed = 32; // set animation speed (32 is default value)',
'gauge.set(76); // set actual value'))
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.preview-textfield {',
'    margin: auto;',
'    text-align: center;',
'    font-size: 20px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'AC01'
,p_last_upd_yyyymmddhh24miss=>'20160419004304'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69456213490353654)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(69457159942363985)
,p_name=>'Instance'
,p_template=>wwv_flow_api.id(69428332283353574)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'  instance_name AS "Instance Name"',
'  ,  (SELECT   VALUE',
'            FROM   v$parameter',
'           WHERE   name = ''cpu_count'')',
'            "CPU Count",',
'         (SELECT   ROUND (bytes / POWER (2, 30), 2)',
'            FROM   V$SGAINFO',
'           WHERE   name = ''Maximum SGA Size'')',
'            "SGA in GBytes",',
'         (SELECT   ROUND (SUM (bytes) / POWER (2, 30), 0)',
'            FROM   (SELECT   (bytes) bytes FROM dba_data_files',
'                    UNION ALL',
'                    SELECT   (bytes) bytes FROM dba_temp_files ))',
'            "Filesize in GByte"',
'  , host_name',
'  , Version',
'  , startup_time',
'  , status, archiver, log_switch_wait, logins , shutdown_pending, database_status, instance_role, active_state, blocked',
'  from v$instance'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(69438505363353582)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69457291019363986)
,p_query_column_id=>1
,p_column_alias=>'Instance Name'
,p_column_display_sequence=>1
,p_column_heading=>'Instance name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69457324414363987)
,p_query_column_id=>2
,p_column_alias=>'CPU Count'
,p_column_display_sequence=>2
,p_column_heading=>'Cpu count'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69457495789363988)
,p_query_column_id=>3
,p_column_alias=>'SGA in GBytes'
,p_column_display_sequence=>3
,p_column_heading=>'Sga in gbytes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69457595449363989)
,p_query_column_id=>4
,p_column_alias=>'Filesize in GByte'
,p_column_display_sequence=>4
,p_column_heading=>'Filesize in gbyte'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69457698552363990)
,p_query_column_id=>5
,p_column_alias=>'HOST_NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Host name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69457786610363991)
,p_query_column_id=>6
,p_column_alias=>'VERSION'
,p_column_display_sequence=>6
,p_column_heading=>'Version'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69457838242363992)
,p_query_column_id=>7
,p_column_alias=>'STARTUP_TIME'
,p_column_display_sequence=>7
,p_column_heading=>'Startup time'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69458009085363993)
,p_query_column_id=>8
,p_column_alias=>'STATUS'
,p_column_display_sequence=>8
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69458050299363994)
,p_query_column_id=>9
,p_column_alias=>'ARCHIVER'
,p_column_display_sequence=>9
,p_column_heading=>'Archiver'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69458174152363995)
,p_query_column_id=>10
,p_column_alias=>'LOG_SWITCH_WAIT'
,p_column_display_sequence=>10
,p_column_heading=>'Log switch wait'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69458248408363996)
,p_query_column_id=>11
,p_column_alias=>'LOGINS'
,p_column_display_sequence=>11
,p_column_heading=>'Logins'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69458372619363997)
,p_query_column_id=>12
,p_column_alias=>'SHUTDOWN_PENDING'
,p_column_display_sequence=>12
,p_column_heading=>'Shutdown pending'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69458512330363998)
,p_query_column_id=>13
,p_column_alias=>'DATABASE_STATUS'
,p_column_display_sequence=>13
,p_column_heading=>'Database status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69458553275363999)
,p_query_column_id=>14
,p_column_alias=>'INSTANCE_ROLE'
,p_column_display_sequence=>14
,p_column_heading=>'Instance role'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69458619031364000)
,p_query_column_id=>15
,p_column_alias=>'ACTIVE_STATE'
,p_column_display_sequence=>15
,p_column_heading=>'Active state'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69458772013364001)
,p_query_column_id=>16
,p_column_alias=>'BLOCKED'
,p_column_display_sequence=>16
,p_column_heading=>'Blocked'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69458854235364002)
,p_plug_name=>' Active Session'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(69428332283353574)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'  null "link" ',
'  , nvl( Module, schemaname ) "Module"',
'  , count(*) "Session"',
' from v$session',
'where status = ''ACTIVE''',
'  and type = ''USER''',
'group by nvl( Module, schemaname )'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.FLOT.PIE'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'Module'
,p_attribute_02=>'Session'
,p_attribute_04=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RP::'
,p_attribute_05=>'DONUT'
,p_attribute_08=>'TOOLTIP:LABEL:VALUE'
,p_attribute_09=>'N'
,p_attribute_14=>'40'
,p_attribute_15=>'MODERN2'
,p_attribute_17=>'220'
,p_attribute_18=>'220'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69459192043364005)
,p_plug_name=>'SGA'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--noPadding'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(69428332283353574)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  ''f?p=&APP_ID.:2:''||:APP_SESSION||'':::'' "link", component, current_size / 1024/1024 MByte',
'  from v$sga_dynamic_components',
'where current_size <> 0 '))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.FLOT.PIE'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'COMPONENT'
,p_attribute_02=>'MBYTE'
,p_attribute_04=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::'
,p_attribute_05=>'STANDARD'
,p_attribute_08=>'TOOLTIP:LABEL:VALUE'
,p_attribute_09=>'N'
,p_attribute_15=>'MODERN2'
,p_attribute_17=>'340'
,p_attribute_18=>'340'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69459429032364008)
,p_plug_name=>'Redo Log Swithes per Day'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(69428332283353574)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT null link,',
'       A.day Day,',
'       A.Count# Redo_Switches',
'FROM',
'  (SELECT TO_CHAR(First_Time,''YYYY-MM-DD'') DAY,',
'          Count(1) Count#',
'  FROM v$log_history',
'  where sysdate - 30 <= first_time',
'  GROUP BY TO_CHAR(First_Time,''YYYY-MM-DD'')',
'  ) A ',
'  where rownum < 10',
'order by 2 ;'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.D3.BARCHART'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'DAY'
,p_attribute_02=>'REDO_SWITCHES'
,p_attribute_05=>'Redo Logs'
,p_attribute_06=>'VERTICAL,SIDE-BY-SIDE'
,p_attribute_10=>'Y'
,p_attribute_13=>'MODERN2'
,p_attribute_15=>'FRIENDLY'
,p_attribute_16=>'10'
,p_attribute_18=>'200'
,p_attribute_19=>'200'
,p_attribute_21=>'BARS'
,p_attribute_24=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69717419567607407)
,p_plug_name=>'CPU Usage'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(69428332283353574)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h1 class="preview-textfield" id="cputext">75</h1>',
'<canvas id="cpu"  style="text-align: center; margin:0 auto;display: table;">guage</canvas>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69717529605607408)
,p_plug_name=>'RAM Usage'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(69428332283353574)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h1 class="preview-textfield" id="ramtext">43</h1>',
'<canvas id="ram" style="text-align: center; margin:0 auto;display: table;">guage</canvas>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69717614101607409)
,p_plug_name=>'HARD Usage'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(69428332283353574)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h1 class="preview-textfield" id="hardtext">75</h1>',
'<canvas id="hard"  style="text-align: center; margin:0 auto;display: table;">guage</canvas>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'SGA'
,p_page_mode=>'NORMAL'
,p_step_title=>'SGA'
,p_step_sub_title=>'SGA'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715031121'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69476215676459942)
,p_plug_name=>'SGA DYNAMIC COMPONENTS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * ',
'from v$sga_dynamic_components'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69476371790459942)
,p_name=>'SGA'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67635158167582558
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69459759818364011)
,p_db_column_name=>'COMPONENT'
,p_display_order=>10
,p_column_identifier=>'D'
,p_column_label=>'Component'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69459853731364012)
,p_db_column_name=>'CURRENT_SIZE'
,p_display_order=>20
,p_column_identifier=>'E'
,p_column_label=>'Current size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69459964246364013)
,p_db_column_name=>'MIN_SIZE'
,p_display_order=>30
,p_column_identifier=>'F'
,p_column_label=>'Min size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69460044052364014)
,p_db_column_name=>'MAX_SIZE'
,p_display_order=>40
,p_column_identifier=>'G'
,p_column_label=>'Max size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69460183195364015)
,p_db_column_name=>'USER_SPECIFIED_SIZE'
,p_display_order=>50
,p_column_identifier=>'H'
,p_column_label=>'User specified size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69460302078364016)
,p_db_column_name=>'OPER_COUNT'
,p_display_order=>60
,p_column_identifier=>'I'
,p_column_label=>'Oper count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69460406077364017)
,p_db_column_name=>'LAST_OPER_TYPE'
,p_display_order=>70
,p_column_identifier=>'J'
,p_column_label=>'Last oper type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69460487467364018)
,p_db_column_name=>'LAST_OPER_MODE'
,p_display_order=>80
,p_column_identifier=>'K'
,p_column_label=>'Last oper mode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69460581622364019)
,p_db_column_name=>'LAST_OPER_TIME'
,p_display_order=>90
,p_column_identifier=>'L'
,p_column_label=>'Last oper time'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69460661171364020)
,p_db_column_name=>'GRANULE_SIZE'
,p_display_order=>100
,p_column_identifier=>'M'
,p_column_label=>'Granule size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69477895331460255)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'676367'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'COMPONENT:CURRENT_SIZE:MIN_SIZE:MAX_SIZE:USER_SPECIFIED_SIZE:OPER_COUNT:LAST_OPER_TYPE:LAST_OPER_MODE:LAST_OPER_TIME:GRANULE_SIZE'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'PGA'
,p_page_mode=>'NORMAL'
,p_step_title=>'PGA'
,p_step_sub_title=>'PGA'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150720203911'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69487259636489512)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69487905290489517)
,p_plug_name=>'PGA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from V$PGASTAT'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69487966519489517)
,p_name=>'PGA'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67646752896612133
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69488351892489520)
,p_db_column_name=>'NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69488769319489520)
,p_db_column_name=>'VALUE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69489137515489521)
,p_db_column_name=>'UNIT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69489602642489755)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'676484'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'NAME:VALUE:UNIT'
,p_sort_column_1=>'VALUE'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69717729780607410)
,p_plug_name=>'PGA Chart'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(69428332283353574)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'',
'select name, round( value/1024/1024) as MByte',
' from v$PGASTAT',
'where round( value/1024/1024) <> 0 ',
''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.FLOT.PIE'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'NAME'
,p_attribute_02=>'MBYTE'
,p_attribute_05=>'DONUT'
,p_attribute_08=>'LEGEND:TOOLTIP'
,p_attribute_09=>'N'
,p_attribute_14=>'80'
,p_attribute_15=>'MODERN2'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'DB Parameter'
,p_page_mode=>'NORMAL'
,p_step_title=>'DB Parameter'
,p_step_sub_title=>'DB Parameter'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715031939'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69492290076516984)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69492861668516984)
,p_plug_name=>'DB Parameter'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from v$parameter'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69492933895516984)
,p_name=>'DB Parameter'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67651720272639600
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69493356994516985)
,p_db_column_name=>'NUM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Num'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69493732825516985)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69494172951516985)
,p_db_column_name=>'TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Type'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69494519326516987)
,p_db_column_name=>'VALUE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Value'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69495002252516988)
,p_db_column_name=>'DISPLAY_VALUE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Display Value'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69495395104516988)
,p_db_column_name=>'ISDEFAULT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Isdefault'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69495755505516988)
,p_db_column_name=>'ISSES_MODIFIABLE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Isses Modifiable'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69496150276516988)
,p_db_column_name=>'ISSYS_MODIFIABLE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Issys Modifiable'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69496590152516988)
,p_db_column_name=>'ISINSTANCE_MODIFIABLE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Isinstance Modifiable'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69497003129516990)
,p_db_column_name=>'ISMODIFIED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Ismodified'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69497409233516990)
,p_db_column_name=>'ISADJUSTED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Isadjusted'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69497805661516990)
,p_db_column_name=>'ISDEPRECATED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Isdeprecated'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69498198166516990)
,p_db_column_name=>'ISBASIC'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Isbasic'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69498526077516990)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69498946955516990)
,p_db_column_name=>'UPDATE_COMMENT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Update Comment'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69499347169516990)
,p_db_column_name=>'HASH'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Hash'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69499736064517612)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'676586'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'NUM:NAME:TYPE:VALUE:DISPLAY_VALUE:ISDEFAULT:ISSES_MODIFIABLE:ISSYS_MODIFIABLE:ISINSTANCE_MODIFIABLE:ISMODIFIED:ISADJUSTED:ISDEPRECATED:ISBASIC:DESCRIPTION:UPDATE_COMMENT:HASH'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Buffer Pool Keep Candidates'
,p_page_mode=>'NORMAL'
,p_step_title=>'Buffer Pool Keep Candidates'
,p_step_sub_title=>'Buffer Pool Keep Candidates'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715032457'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69501437249531372)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69502037580531375)
,p_plug_name=>'Buffer Pool Keep Candidates'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select t1.owner,t1.subobject_name , sum ( s.bytes) bytes , ',
'   ''alter ''||s.segment_type||'' ''||t1.owner||''.''||s.segment_name||'' storage (buffer_pool keep);'' sql_statement, ',
' (sum(num_blocks)/greatest(sum(blocks), .001))*100 memory_blocks_pct',
'from',
'   ( select',
'   o.owner          owner,',
'   o.object_name    object_name,',
'   o.subobject_name subobject_name,',
'   o.object_type    object_type,',
'   count(distinct file# || block#)         num_blocks',
'from',
'   dba_objects  o,',
'   v$bh         bh',
'where',
'   o.data_object_id  = bh.objd',
'and',
'   o.owner not in (''SYS'',''SYSTEM'') ',
'and',
'   bh.status != ''free''',
'group by',
'   o.owner,',
'   o.object_name,',
'   o.subobject_name,',
'   o.object_type',
' ) t1 ,',
'   dba_segments s',
'where',
'   s.segment_name = t1.object_name',
'and',
'   s.owner = t1.owner',
'and',
'   s.segment_type = t1.object_type',
'and',
'   nvl(s.partition_name,''-'') = nvl(t1.subobject_name,''-'')',
'and',
'   buffer_pool <> ''KEEP''',
'and',
'   object_type in (''TABLE'',''INDEX'') ',
'group by',
'   t1.owner,',
'   s.segment_name,',
'   t1.subobject_name,',
'   s.segment_type'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69502191414531375)
,p_name=>'Buffer Pool Keep Candidates'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67660977791653991
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69502574415531375)
,p_db_column_name=>'OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69502944285531375)
,p_db_column_name=>'SUBOBJECT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Subobject Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69503347967531378)
,p_db_column_name=>'BYTES'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69503734675531378)
,p_db_column_name=>'SQL_STATEMENT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Sql Statement'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69504148427531379)
,p_db_column_name=>'MEMORY_BLOCKS_PCT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Memory Blocks Pct'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69504533523531623)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'676634'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OWNER:SUBOBJECT_NAME:BYTES:SQL_STATEMENT:MEMORY_BLOCKS_PCT'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(69505666367549330)
,p_report_id=>wwv_flow_api.id(69504533523531623)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'MEMORY_BLOCKS_PCT'
,p_operator=>'>'
,p_expr=>'80'
,p_condition_sql=>'"MEMORY_BLOCKS_PCT" > to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Version and Patches'
,p_page_mode=>'NORMAL'
,p_step_title=>'Version and Patches'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150719153251'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(69460733129364021)
,p_name=>'Version'
,p_template=>wwv_flow_api.id(69428332283353574)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>'select * from v$version'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(69437154252353582)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69460855202364022)
,p_query_column_id=>1
,p_column_alias=>'BANNER'
,p_column_display_sequence=>1
,p_column_heading=>'Banner'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(69460979085364023)
,p_name=>'Patches'
,p_template=>wwv_flow_api.id(69428332283353574)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source=>'select * from sys.registry$history'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(69437154252353582)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Patches'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69461029853364024)
,p_query_column_id=>1
,p_column_alias=>'ACTION_TIME'
,p_column_display_sequence=>1
,p_column_heading=>'Action time'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69461175301364025)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69461222464364026)
,p_query_column_id=>3
,p_column_alias=>'NAMESPACE'
,p_column_display_sequence=>3
,p_column_heading=>'Namespace'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69461387124364027)
,p_query_column_id=>4
,p_column_alias=>'VERSION'
,p_column_display_sequence=>4
,p_column_heading=>'Version'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69461482199364028)
,p_query_column_id=>5
,p_column_alias=>'ID'
,p_column_display_sequence=>5
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69461597806364029)
,p_query_column_id=>6
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>6
,p_column_heading=>'Comments'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(69461679290364030)
,p_name=>'Options'
,p_template=>wwv_flow_api.id(69428332283353574)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select parameter, value,',
'case value',
'when ''TRUE'' then ''#2ECC40''',
'when ''FALSE'' then ''#FF4136''',
'end color',
'from v$option'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(69437154252353582)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69461745305364031)
,p_query_column_id=>1
,p_column_alias=>'PARAMETER'
,p_column_display_sequence=>1
,p_column_heading=>'Parameter'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69461906684364032)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="color:#COLOR#;font-weight: bold;">#VALUE#</span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69718532289607418)
,p_query_column_id=>3
,p_column_alias=>'COLOR'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(69461994024364033)
,p_name=>'Registry'
,p_template=>wwv_flow_api.id(69428332283353574)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>'select * from dba_registry'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(69437154252353582)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69462108887364034)
,p_query_column_id=>1
,p_column_alias=>'COMP_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Comp id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69618059969313385)
,p_query_column_id=>2
,p_column_alias=>'COMP_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Comp name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69618128165313386)
,p_query_column_id=>3
,p_column_alias=>'VERSION'
,p_column_display_sequence=>3
,p_column_heading=>'Version'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69618250967313387)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69618350899313388)
,p_query_column_id=>5
,p_column_alias=>'MODIFIED'
,p_column_display_sequence=>5
,p_column_heading=>'Modified'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69618453465313389)
,p_query_column_id=>6
,p_column_alias=>'NAMESPACE'
,p_column_display_sequence=>6
,p_column_heading=>'Namespace'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69618584558313390)
,p_query_column_id=>7
,p_column_alias=>'CONTROL'
,p_column_display_sequence=>7
,p_column_heading=>'Control'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69618664738313391)
,p_query_column_id=>8
,p_column_alias=>'SCHEMA'
,p_column_display_sequence=>8
,p_column_heading=>'Schema'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69618757046313392)
,p_query_column_id=>9
,p_column_alias=>'PROCEDURE'
,p_column_display_sequence=>9
,p_column_heading=>'Procedure'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69618882293313393)
,p_query_column_id=>10
,p_column_alias=>'STARTUP'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69618939583313394)
,p_query_column_id=>11
,p_column_alias=>'PARENT_ID'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69619035858313395)
,p_query_column_id=>12
,p_column_alias=>'OTHER_SCHEMAS'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69612318561296656)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'DDL Locks'
,p_page_mode=>'NORMAL'
,p_step_title=>'DDL Locks'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715231335'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69620666183313411)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select distinct',
'l.owner, l.name, l.type lock_type, l.mode_held , ',
'S.sid , S.serial# , S.username, S.osuser, S.module, s.action, ',
's.sql_id  , s.type session_type, s.machine',
'  from dba_ddl_locks l',
'     , v$session s',
'where l.session_id = s.sId',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69620738578313412)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67779524955436028
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69620819571313413)
,p_db_column_name=>'OWNER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69620941067313414)
,p_db_column_name=>'NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69621050150313415)
,p_db_column_name=>'LOCK_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Lock type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69621144572313416)
,p_db_column_name=>'MODE_HELD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Mode held'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69621292822313417)
,p_db_column_name=>'SID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69621325092313418)
,p_db_column_name=>'SERIAL#'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Serial#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69621448249313419)
,p_db_column_name=>'USERNAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Username'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69621542479313420)
,p_db_column_name=>'OSUSER'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Osuser'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69621692861313421)
,p_db_column_name=>'MODULE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Module'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69621805624313422)
,p_db_column_name=>'ACTION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Action'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69621870471313423)
,p_db_column_name=>'SQL_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Sql id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69622002530313424)
,p_db_column_name=>'SESSION_TYPE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Session type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69622075577313425)
,p_db_column_name=>'MACHINE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Machine'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69645177294436166)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'678040'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SID:SERIAL#:OWNER:NAME:LOCK_TYPE:MODE_HELD:USERNAME:OSUSER:MODULE:ACTION:SQL_ID:SESSION_TYPE:MACHINE:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69640281955434152)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'DML Lock'
,p_page_mode=>'NORMAL'
,p_step_title=>'DML Lock'
,p_step_sub_title=>'DML Lock'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715231636'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69647568813557157)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69648172820557165)
,p_plug_name=>'DML Lock'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select distinct',
'l.SESSION_ID    ',
', l.OWNER  ',
', l.NAME   ',
', l.MODE_HELD  ',
', l.MODE_REQUESTED  ',
', l.LAST_CONVERT   ',
', l.BLOCKING_OTHERS   ',
', S.sid , S.serial# serial, S.username, S.osuser, S.module, s.action, ',
's.sql_id , s.sql_child_number , s.type session_type, s.machine',
'  from dba_DML_locks l',
'     , v$session s',
'where l.session_id = s.sId'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69648269660557165)
,p_name=>'DML Lock'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67807056037679781
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69648689472557193)
,p_db_column_name=>'SESSION_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Session Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69649092001557196)
,p_db_column_name=>'OWNER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69649451049557196)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69649817206557196)
,p_db_column_name=>'MODE_HELD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mode Held'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69650308166557198)
,p_db_column_name=>'MODE_REQUESTED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mode Requested'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69650632683557199)
,p_db_column_name=>'LAST_CONVERT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Last Convert'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69651018599557199)
,p_db_column_name=>'BLOCKING_OTHERS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Blocking Others'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69651435294557199)
,p_db_column_name=>'SID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Sid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69651831522557199)
,p_db_column_name=>'SERIAL'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Serial'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69652276341557201)
,p_db_column_name=>'USERNAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69652679068557201)
,p_db_column_name=>'OSUSER'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Osuser'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69653075268557201)
,p_db_column_name=>'MODULE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Module'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69653416149557201)
,p_db_column_name=>'ACTION'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69653881719557204)
,p_db_column_name=>'SQL_ID'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Sql Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69654233953557205)
,p_db_column_name=>'SQL_CHILD_NUMBER'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Sql Child Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69654677023557205)
,p_db_column_name=>'SESSION_TYPE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Session Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69655112342557207)
,p_db_column_name=>'MACHINE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Machine'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69655504539557467)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'678143'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SESSION_ID:OWNER:NAME:MODE_HELD:MODE_REQUESTED:LAST_CONVERT:BLOCKING_OTHERS:SID:SERIAL:USERNAME:OSUSER:MODULE:ACTION:SQL_ID:SQL_CHILD_NUMBER:SESSION_TYPE:MACHINE'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Library Cache Lock'
,p_page_mode=>'NORMAL'
,p_step_title=>'Library Cache Lock'
,p_step_sub_title=>'Library Cache Lock'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715231947'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69657261928576267)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69657855835576269)
,p_plug_name=>'Library Cache Lock'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select username, sid || '','' || serial#  sid_serial ,osuser,machine, terminal',
'      , program,event, blocking_session,wait_class ',
'from v$session ',
'where username is not null ',
'and wait_class <> ''Idle'' ',
'and state =''WAITING'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69657988814576269)
,p_name=>'Library Cache Lock'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67816775191698885
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69658337924576269)
,p_db_column_name=>'USERNAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69658732216576269)
,p_db_column_name=>'SID_SERIAL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sid Serial'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69659122458576270)
,p_db_column_name=>'OSUSER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Osuser'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69659532854576272)
,p_db_column_name=>'MACHINE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Machine'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69659987362576272)
,p_db_column_name=>'TERMINAL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Terminal'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69660347158576272)
,p_db_column_name=>'PROGRAM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Program'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69660760076576272)
,p_db_column_name=>'EVENT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Event'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69661144920576272)
,p_db_column_name=>'BLOCKING_SESSION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Blocking Session'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69661571182576272)
,p_db_column_name=>'WAIT_CLASS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Wait Class'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69661955215576595)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'678208'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'USERNAME:SID_SERIAL:OSUSER:MACHINE:TERMINAL:PROGRAM:EVENT:BLOCKING_SESSION:WAIT_CLASS'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Library Cache Pin'
,p_page_mode=>'NORMAL'
,p_step_title=>'Library Cache Pin'
,p_step_sub_title=>'Library Cache Pin'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715232113'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69663949252584989)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69664591028584992)
,p_plug_name=>'Library Cache Pin'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT *',
'  FROM sys.v_$session_wait  ',
' WHERE event = ''library cache pin''',
'   AND state = ''WAITING'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69664630904584994)
,p_name=>'Library Cache Pin'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67823417281707610
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69665022769584995)
,p_db_column_name=>'SID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69665446609584995)
,p_db_column_name=>'SEQ#'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Seq#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69665898910584995)
,p_db_column_name=>'EVENT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Event'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69666264296584997)
,p_db_column_name=>'P1TEXT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'P1text'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69666713277585002)
,p_db_column_name=>'P1'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'P1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69667090324585002)
,p_db_column_name=>'P1RAW'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'P1raw'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69667500165585003)
,p_db_column_name=>'P2TEXT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'P2text'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69667872647585003)
,p_db_column_name=>'P2'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'P2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69668250712585005)
,p_db_column_name=>'P2RAW'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'P2raw'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69668632668585005)
,p_db_column_name=>'P3TEXT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'P3text'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69669074732585005)
,p_db_column_name=>'P3'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'P3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69669435331585006)
,p_db_column_name=>'P3RAW'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'P3raw'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69669886537585006)
,p_db_column_name=>'WAIT_CLASS_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Wait Class Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69670307821585006)
,p_db_column_name=>'WAIT_CLASS#'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Wait Class#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69670643235585008)
,p_db_column_name=>'WAIT_CLASS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Wait Class'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69671015767585008)
,p_db_column_name=>'WAIT_TIME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69671448233585008)
,p_db_column_name=>'SECONDS_IN_WAIT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Seconds In Wait'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69671886672585008)
,p_db_column_name=>'STATE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'State'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69672288785585009)
,p_db_column_name=>'WAIT_TIME_MICRO'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Wait Time Micro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69672706427585009)
,p_db_column_name=>'TIME_REMAINING_MICRO'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Time Remaining Micro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69673105050585009)
,p_db_column_name=>'TIME_SINCE_LAST_WAIT_MICRO'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Time Since Last Wait Micro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69673468167585211)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'678323'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SID:SEQ#:EVENT:P1TEXT:P1:P1RAW:P2TEXT:P2:P2RAW:P3TEXT:P3:P3RAW:WAIT_CLASS_ID:WAIT_CLASS#:WAIT_CLASS:WAIT_TIME:SECONDS_IN_WAIT:STATE:WAIT_TIME_MICRO:TIME_REMAINING_MICRO:TIME_SINCE_LAST_WAIT_MICRO'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Database Sessions'
,p_page_mode=>'NORMAL'
,p_step_title=>'Database Sessions'
,p_step_sub_title=>'Database Sessions'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715234702'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69675485929598382)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69676102814598383)
,p_plug_name=>'Database Sessions'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * from v$session',
'where sid = nvl ( :P14_SID, SID) ',
'  and serial#  = nvl ( :P14_SERIAL, serial#)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69676139341598383)
,p_name=>'Database Sessions'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67834925718720999
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69676953261598387)
,p_db_column_name=>'SID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69677364783598387)
,p_db_column_name=>'SERIAL#'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Serial#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69677736538598387)
,p_db_column_name=>'AUDSID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Audsid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69678534079598388)
,p_db_column_name=>'USER#'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'User#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69678955117598388)
,p_db_column_name=>'USERNAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69679367502598388)
,p_db_column_name=>'COMMAND'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Command'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69679740905598388)
,p_db_column_name=>'OWNERID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ownerid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69680133021598390)
,p_db_column_name=>'TADDR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Taddr'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69680610855598390)
,p_db_column_name=>'LOCKWAIT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Lockwait'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69681007625598390)
,p_db_column_name=>'STATUS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69681366240598390)
,p_db_column_name=>'SERVER'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Server'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69681765287598391)
,p_db_column_name=>'SCHEMA#'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Schema#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69682164532598391)
,p_db_column_name=>'SCHEMANAME'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Schemaname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69682607817598393)
,p_db_column_name=>'OSUSER'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Osuser'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69683012680598393)
,p_db_column_name=>'PROCESS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Process'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69683344575598393)
,p_db_column_name=>'MACHINE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Machine'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69683806391598393)
,p_db_column_name=>'PORT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Port'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69684163582598393)
,p_db_column_name=>'TERMINAL'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Terminal'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69684578465598393)
,p_db_column_name=>'PROGRAM'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Program'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69684946528598394)
,p_db_column_name=>'TYPE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69685755425598396)
,p_db_column_name=>'SQL_HASH_VALUE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Sql Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69686197726598396)
,p_db_column_name=>'SQL_ID'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Sql Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69686602737598396)
,p_db_column_name=>'SQL_CHILD_NUMBER'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Sql Child Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69686990584598396)
,p_db_column_name=>'SQL_EXEC_START'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Sql Exec Start'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69687368730598397)
,p_db_column_name=>'SQL_EXEC_ID'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Sql Exec Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69688142629598397)
,p_db_column_name=>'PREV_HASH_VALUE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Prev Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69688546347598397)
,p_db_column_name=>'PREV_SQL_ID'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Prev Sql Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69688965913598399)
,p_db_column_name=>'PREV_CHILD_NUMBER'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Prev Child Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69689391463598399)
,p_db_column_name=>'PREV_EXEC_START'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Prev Exec Start'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69689755647598399)
,p_db_column_name=>'PREV_EXEC_ID'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Prev Exec Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69690169863598399)
,p_db_column_name=>'PLSQL_ENTRY_OBJECT_ID'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Plsql Entry Object Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69690603596598399)
,p_db_column_name=>'PLSQL_ENTRY_SUBPROGRAM_ID'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Plsql Entry Subprogram Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69690913720598399)
,p_db_column_name=>'PLSQL_OBJECT_ID'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Plsql Object Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69691372088598399)
,p_db_column_name=>'PLSQL_SUBPROGRAM_ID'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Plsql Subprogram Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69691770096598401)
,p_db_column_name=>'MODULE'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Module'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69692178540598401)
,p_db_column_name=>'MODULE_HASH'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Module Hash'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69692558420598401)
,p_db_column_name=>'ACTION'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69693012195598401)
,p_db_column_name=>'ACTION_HASH'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Action Hash'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69693347783598401)
,p_db_column_name=>'CLIENT_INFO'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Client Info'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69693804246598404)
,p_db_column_name=>'FIXED_TABLE_SEQUENCE'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Fixed Table Sequence'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69694174774598404)
,p_db_column_name=>'ROW_WAIT_OBJ#'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Row Wait Obj#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69694521972598404)
,p_db_column_name=>'ROW_WAIT_FILE#'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Row Wait File#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69694914399598407)
,p_db_column_name=>'ROW_WAIT_BLOCK#'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Row Wait Block#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69695324760598407)
,p_db_column_name=>'ROW_WAIT_ROW#'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Row Wait Row#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69695762105598407)
,p_db_column_name=>'TOP_LEVEL_CALL#'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Top Level Call#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69696139668598410)
,p_db_column_name=>'LOGON_TIME'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Logon Time'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69696558176598410)
,p_db_column_name=>'LAST_CALL_ET'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Last Call Et'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69696957410598410)
,p_db_column_name=>'PDML_ENABLED'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Pdml Enabled'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69697373242598410)
,p_db_column_name=>'FAILOVER_TYPE'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Failover Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69697760235598411)
,p_db_column_name=>'FAILOVER_METHOD'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Failover Method'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69698170513598411)
,p_db_column_name=>'FAILED_OVER'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Failed Over'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69698549930598411)
,p_db_column_name=>'RESOURCE_CONSUMER_GROUP'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Resource Consumer Group'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69698953363598413)
,p_db_column_name=>'PDML_STATUS'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Pdml Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69699396397598413)
,p_db_column_name=>'PDDL_STATUS'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Pddl Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69699715549598415)
,p_db_column_name=>'PQ_STATUS'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Pq Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69700132496598416)
,p_db_column_name=>'CURRENT_QUEUE_DURATION'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Current Queue Duration'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69700578647598418)
,p_db_column_name=>'CLIENT_IDENTIFIER'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Client Identifier'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69700950612598418)
,p_db_column_name=>'BLOCKING_SESSION_STATUS'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Blocking Session Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69701334144598418)
,p_db_column_name=>'BLOCKING_INSTANCE'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Blocking Instance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69701778839598418)
,p_db_column_name=>'BLOCKING_SESSION'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Blocking Session'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69702123959598418)
,p_db_column_name=>'FINAL_BLOCKING_SESSION_STATUS'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Final Blocking Session Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69702556481598418)
,p_db_column_name=>'FINAL_BLOCKING_INSTANCE'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Final Blocking Instance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69702941171598419)
,p_db_column_name=>'FINAL_BLOCKING_SESSION'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Final Blocking Session'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69703365397598419)
,p_db_column_name=>'SEQ#'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Seq#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69703813419598419)
,p_db_column_name=>'EVENT#'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Event#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69704208696598419)
,p_db_column_name=>'EVENT'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'Event'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69704531773598421)
,p_db_column_name=>'P1TEXT'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'P1text'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69704981208598421)
,p_db_column_name=>'P1'
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'P1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69705734350598421)
,p_db_column_name=>'P2TEXT'
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'P2text'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69706189128598421)
,p_db_column_name=>'P2'
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'P2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69707012634598422)
,p_db_column_name=>'P3TEXT'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'P3text'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69707350549598422)
,p_db_column_name=>'P3'
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'P3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69708163642598422)
,p_db_column_name=>'WAIT_CLASS_ID'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Wait Class Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69708531135598424)
,p_db_column_name=>'WAIT_CLASS#'
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'Wait Class#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69708979308598424)
,p_db_column_name=>'WAIT_CLASS'
,p_display_order=>82
,p_column_identifier=>'CD'
,p_column_label=>'Wait Class'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69709349605598424)
,p_db_column_name=>'WAIT_TIME'
,p_display_order=>83
,p_column_identifier=>'CE'
,p_column_label=>'Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69709783879598424)
,p_db_column_name=>'SECONDS_IN_WAIT'
,p_display_order=>84
,p_column_identifier=>'CF'
,p_column_label=>'Seconds In Wait'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69710142146598424)
,p_db_column_name=>'STATE'
,p_display_order=>85
,p_column_identifier=>'CG'
,p_column_label=>'State'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69710537860598424)
,p_db_column_name=>'WAIT_TIME_MICRO'
,p_display_order=>86
,p_column_identifier=>'CH'
,p_column_label=>'Wait Time Micro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69711011408598424)
,p_db_column_name=>'TIME_REMAINING_MICRO'
,p_display_order=>87
,p_column_identifier=>'CI'
,p_column_label=>'Time Remaining Micro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69711394555598426)
,p_db_column_name=>'TIME_SINCE_LAST_WAIT_MICRO'
,p_display_order=>88
,p_column_identifier=>'CJ'
,p_column_label=>'Time Since Last Wait Micro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69711780679598426)
,p_db_column_name=>'SERVICE_NAME'
,p_display_order=>89
,p_column_identifier=>'CK'
,p_column_label=>'Service Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69712161321598426)
,p_db_column_name=>'SQL_TRACE'
,p_display_order=>90
,p_column_identifier=>'CL'
,p_column_label=>'Sql Trace'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69712532559598426)
,p_db_column_name=>'SQL_TRACE_WAITS'
,p_display_order=>91
,p_column_identifier=>'CM'
,p_column_label=>'Sql Trace Waits'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69712955417598426)
,p_db_column_name=>'SQL_TRACE_BINDS'
,p_display_order=>92
,p_column_identifier=>'CN'
,p_column_label=>'Sql Trace Binds'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69713313651598426)
,p_db_column_name=>'SQL_TRACE_PLAN_STATS'
,p_display_order=>93
,p_column_identifier=>'CO'
,p_column_label=>'Sql Trace Plan Stats'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69713782456598426)
,p_db_column_name=>'SESSION_EDITION_ID'
,p_display_order=>94
,p_column_identifier=>'CP'
,p_column_label=>'Session Edition Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69714430528598427)
,p_db_column_name=>'CREATOR_SERIAL#'
,p_display_order=>96
,p_column_identifier=>'CR'
,p_column_label=>'Creator Serial#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69714832627598427)
,p_db_column_name=>'ECID'
,p_display_order=>97
,p_column_identifier=>'CS'
,p_column_label=>'Ecid'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69622148182313426)
,p_db_column_name=>'SADDR'
,p_display_order=>107
,p_column_identifier=>'CT'
,p_column_label=>'Saddr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69622217461313427)
,p_db_column_name=>'PADDR'
,p_display_order=>117
,p_column_identifier=>'CU'
,p_column_label=>'Paddr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69622357161313428)
,p_db_column_name=>'SQL_ADDRESS'
,p_display_order=>127
,p_column_identifier=>'CV'
,p_column_label=>'Sql address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69622439159313429)
,p_db_column_name=>'PREV_SQL_ADDR'
,p_display_order=>137
,p_column_identifier=>'CW'
,p_column_label=>'Prev sql addr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69622556669313430)
,p_db_column_name=>'P1RAW'
,p_display_order=>147
,p_column_identifier=>'CX'
,p_column_label=>'P1raw'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69622639209313431)
,p_db_column_name=>'P2RAW'
,p_display_order=>157
,p_column_identifier=>'CY'
,p_column_label=>'P2raw'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69622808488313432)
,p_db_column_name=>'P3RAW'
,p_display_order=>167
,p_column_identifier=>'CZ'
,p_column_label=>'P3raw'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69622860751313433)
,p_db_column_name=>'CREATOR_ADDR'
,p_display_order=>177
,p_column_identifier=>'DA'
,p_column_label=>'Creator addr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69725830310609197)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'678847'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SID:SERIAL#:AUDSID:USER#:USERNAME:COMMAND:OWNERID:TADDR:LOCKWAIT:STATUS:SERVER:SCHEMA#:SCHEMANAME:OSUSER:PROCESS:MACHINE:PORT:TERMINAL:PROGRAM:TYPE:SQL_HASH_VALUE:SQL_ID:SQL_CHILD_NUMBER:SQL_EXEC_START:SQL_EXEC_ID:PREV_HASH_VALUE:PREV_SQL_ID:PREV_CHI'
||'LD_NUMBER:PREV_EXEC_START:PREV_EXEC_ID:PLSQL_ENTRY_OBJECT_ID:PLSQL_ENTRY_SUBPROGRAM_ID:PLSQL_OBJECT_ID:PLSQL_SUBPROGRAM_ID:MODULE:MODULE_HASH:ACTION:ACTION_HASH:CLIENT_INFO:FIXED_TABLE_SEQUENCE:ROW_WAIT_OBJ#:ROW_WAIT_FILE#:ROW_WAIT_BLOCK#:ROW_WAIT_RO'
||'W#:TOP_LEVEL_CALL#:LOGON_TIME:LAST_CALL_ET:PDML_ENABLED:FAILOVER_TYPE:FAILOVER_METHOD:FAILED_OVER:RESOURCE_CONSUMER_GROUP:PDML_STATUS:PDDL_STATUS:PQ_STATUS:CURRENT_QUEUE_DURATION:CLIENT_IDENTIFIER:BLOCKING_SESSION_STATUS:BLOCKING_INSTANCE:BLOCKING_SE'
||'SSION:FINAL_BLOCKING_SESSION_STATUS:FINAL_BLOCKING_INSTANCE:FINAL_BLOCKING_SESSION:SEQ#:EVENT#:EVENT:P1TEXT:P1:P2TEXT:P2:P3TEXT:P3:WAIT_CLASS_ID:WAIT_CLASS#:WAIT_CLASS:WAIT_TIME:SECONDS_IN_WAIT:STATE:WAIT_TIME_MICRO:TIME_REMAINING_MICRO:TIME_SINCE_LA'
||'ST_WAIT_MICRO:SERVICE_NAME:SQL_TRACE:SQL_TRACE_WAITS:SQL_TRACE_BINDS:SQL_TRACE_PLAN_STATS:SESSION_EDITION_ID:CREATOR_SERIAL#:ECID:SADDR:PADDR:SQL_ADDRESS:PREV_SQL_ADDR:P1RAW:P2RAW:P3RAW:CREATOR_ADDR'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69816461046740051)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Active Sessions'
,p_report_seq=>10
,p_report_alias=>'679753'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SID:SERIAL#:AUDSID:USER#:USERNAME:COMMAND:OWNERID:TADDR:LOCKWAIT:STATUS:SERVER:SCHEMA#:SCHEMANAME:OSUSER:PROCESS:MACHINE:PORT:TERMINAL:PROGRAM:TYPE:SQL_HASH_VALUE:SQL_ID:SQL_CHILD_NUMBER:SQL_EXEC_START:SQL_EXEC_ID:PREV_HASH_VALUE:PREV_SQL_ID:PREV_CHI'
||'LD_NUMBER:PREV_EXEC_START:PREV_EXEC_ID:PLSQL_ENTRY_OBJECT_ID:PLSQL_ENTRY_SUBPROGRAM_ID:PLSQL_OBJECT_ID:PLSQL_SUBPROGRAM_ID:MODULE:MODULE_HASH:ACTION:ACTION_HASH:CLIENT_INFO:FIXED_TABLE_SEQUENCE:ROW_WAIT_OBJ#:ROW_WAIT_FILE#:ROW_WAIT_BLOCK#:ROW_WAIT_RO'
||'W#:TOP_LEVEL_CALL#:LOGON_TIME:LAST_CALL_ET:PDML_ENABLED:FAILOVER_TYPE:FAILOVER_METHOD:FAILED_OVER:RESOURCE_CONSUMER_GROUP:PDML_STATUS:PDDL_STATUS:PQ_STATUS:CURRENT_QUEUE_DURATION:CLIENT_IDENTIFIER:BLOCKING_SESSION_STATUS:BLOCKING_INSTANCE:BLOCKING_SE'
||'SSION:FINAL_BLOCKING_SESSION_STATUS:FINAL_BLOCKING_INSTANCE:FINAL_BLOCKING_SESSION:SEQ#:EVENT#:EVENT:P1TEXT:P1:P2TEXT:P2:P3TEXT:P3:WAIT_CLASS_ID:WAIT_CLASS#:WAIT_CLASS:WAIT_TIME:SECONDS_IN_WAIT:STATE:WAIT_TIME_MICRO:TIME_REMAINING_MICRO:TIME_SINCE_LA'
||'ST_WAIT_MICRO:SERVICE_NAME:SQL_TRACE:SQL_TRACE_WAITS:SQL_TRACE_BINDS:SQL_TRACE_PLAN_STATS:SESSION_EDITION_ID:CREATOR_SERIAL#:ECID:SADDR:PADDR:SQL_ADDRESS:PREV_SQL_ADDR:P1RAW:P2RAW:P3RAW:CREATOR_ADDR'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(69816907139740053)
,p_report_id=>wwv_flow_api.id(69816461046740051)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'STATUS'
,p_operator=>'='
,p_expr=>'ACTIVE'
,p_condition_sql=>'"STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''ACTIVE''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69715396685607386)
,p_plug_name=>'Edit'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(69428332283353574)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P14_SID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69715557164607388)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(69715396685607386)
,p_button_name=>'P14_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(69449163663353608)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69715507643607387)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(69715396685607386)
,p_button_name=>'P14_OK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(69449163663353608)
,p_button_image_alt=>'OK'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69622935031313434)
,p_name=>'P14_SID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(69715396685607386)
,p_prompt=>'Sid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(69448621962353607)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69715294906607385)
,p_name=>'P14_SERIAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(69715396685607386)
,p_prompt=>'Serial'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(69448621962353607)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
null;
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'SQL Statements'
,p_page_mode=>'NORMAL'
,p_step_title=>'SQL Statements'
,p_step_sub_title=>'SQL Statements'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715233645'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69715704572607389)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(69428332283353574)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P15_SQL_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69730118516654831)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69730764053654831)
,p_plug_name=>'SQL Statements'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * from v$sql',
'where sql_id       = nvl ( :P15_SQL_ID           , SQL_ID )',
'  and child_number = nvl ( :P15_SQL_CHILD_NUMBER , CHILD_NUMBER )'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69730833672654831)
,p_name=>'SQL Statements'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67889620049777447
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69731221882654832)
,p_db_column_name=>'SQL_TEXT'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sql Text'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69731686375654832)
,p_db_column_name=>'SQL_FULLTEXT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sql Fulltext'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69732048525654832)
,p_db_column_name=>'SQL_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Sql Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69732510158654834)
,p_db_column_name=>'SHARABLE_MEM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Sharable Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69732856782654834)
,p_db_column_name=>'PERSISTENT_MEM'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Persistent Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69733288403654835)
,p_db_column_name=>'RUNTIME_MEM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Runtime Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69733688349654835)
,p_db_column_name=>'SORTS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Sorts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69734056751654835)
,p_db_column_name=>'LOADED_VERSIONS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Loaded Versions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69734428914654835)
,p_db_column_name=>'OPEN_VERSIONS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Open Versions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69734818949654837)
,p_db_column_name=>'USERS_OPENING'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Users Opening'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69735255171654837)
,p_db_column_name=>'FETCHES'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Fetches'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69735705815654839)
,p_db_column_name=>'EXECUTIONS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Executions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69736053974654839)
,p_db_column_name=>'PX_SERVERS_EXECUTIONS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Px Servers Executions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69736462852654839)
,p_db_column_name=>'END_OF_FETCH_COUNT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'End Of Fetch Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69736881809654839)
,p_db_column_name=>'USERS_EXECUTING'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Users Executing'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69737243484654839)
,p_db_column_name=>'LOADS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Loads'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69737627567654839)
,p_db_column_name=>'FIRST_LOAD_TIME'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'First Load Time'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69738048110654839)
,p_db_column_name=>'INVALIDATIONS'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Invalidations'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69738473062654839)
,p_db_column_name=>'PARSE_CALLS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Parse Calls'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69738819713654840)
,p_db_column_name=>'DISK_READS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Disk Reads'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69739262935654840)
,p_db_column_name=>'DIRECT_WRITES'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Direct Writes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69739710299654840)
,p_db_column_name=>'BUFFER_GETS'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Buffer Gets'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69740070440654840)
,p_db_column_name=>'APPLICATION_WAIT_TIME'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Application Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69740452919654840)
,p_db_column_name=>'CONCURRENCY_WAIT_TIME'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Concurrency Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69740868647654840)
,p_db_column_name=>'CLUSTER_WAIT_TIME'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Cluster Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69741273224654840)
,p_db_column_name=>'USER_IO_WAIT_TIME'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'User Io Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69741677476654845)
,p_db_column_name=>'PLSQL_EXEC_TIME'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Plsql Exec Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69742085108654848)
,p_db_column_name=>'JAVA_EXEC_TIME'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Java Exec Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69742454131654848)
,p_db_column_name=>'ROWS_PROCESSED'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Rows Processed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69742887311654848)
,p_db_column_name=>'COMMAND_TYPE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Command Type'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69743229563654848)
,p_db_column_name=>'OPTIMIZER_MODE'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Optimizer Mode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69743673774654850)
,p_db_column_name=>'OPTIMIZER_COST'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Optimizer Cost'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69744014071654850)
,p_db_column_name=>'OPTIMIZER_ENV'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Optimizer Env'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69744503159654850)
,p_db_column_name=>'OPTIMIZER_ENV_HASH_VALUE'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Optimizer Env Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69744892174654850)
,p_db_column_name=>'PARSING_USER_ID'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Parsing User Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69745261264654850)
,p_db_column_name=>'PARSING_SCHEMA_ID'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Parsing Schema Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69745697756654850)
,p_db_column_name=>'PARSING_SCHEMA_NAME'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Parsing Schema Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69746099303654851)
,p_db_column_name=>'KEPT_VERSIONS'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Kept Versions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69746451673654851)
,p_db_column_name=>'ADDRESS'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Address'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69746850791654853)
,p_db_column_name=>'TYPE_CHK_HEAP'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Type Chk Heap'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69747255651654853)
,p_db_column_name=>'HASH_VALUE'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69747684740654854)
,p_db_column_name=>'OLD_HASH_VALUE'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Old Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69748090386654856)
,p_db_column_name=>'PLAN_HASH_VALUE'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Plan Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69748431367654856)
,p_db_column_name=>'CHILD_NUMBER'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Child Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69748893651654856)
,p_db_column_name=>'SERVICE'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Service'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69749252392654856)
,p_db_column_name=>'SERVICE_HASH'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Service Hash'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69749705499654857)
,p_db_column_name=>'MODULE'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Module'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69750085428654857)
,p_db_column_name=>'MODULE_HASH'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Module Hash'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69750467648654857)
,p_db_column_name=>'ACTION'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69750837719654857)
,p_db_column_name=>'ACTION_HASH'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Action Hash'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69751229327654857)
,p_db_column_name=>'SERIALIZABLE_ABORTS'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Serializable Aborts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69751662748654857)
,p_db_column_name=>'OUTLINE_CATEGORY'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Outline Category'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69752069749654859)
,p_db_column_name=>'CPU_TIME'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Cpu Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69752469031654867)
,p_db_column_name=>'ELAPSED_TIME'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Elapsed Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69752846213654867)
,p_db_column_name=>'OUTLINE_SID'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Outline Sid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69753216815654876)
,p_db_column_name=>'CHILD_ADDRESS'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Child Address'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69753615671654878)
,p_db_column_name=>'SQLTYPE'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Sqltype'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69754074011654878)
,p_db_column_name=>'REMOTE'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Remote'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69754510573654878)
,p_db_column_name=>'OBJECT_STATUS'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Object Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69754852220654878)
,p_db_column_name=>'LITERAL_HASH_VALUE'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Literal Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69755294031654879)
,p_db_column_name=>'LAST_LOAD_TIME'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Last Load Time'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69755632597654879)
,p_db_column_name=>'IS_OBSOLETE'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Is Obsolete'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69756108919654882)
,p_db_column_name=>'IS_BIND_SENSITIVE'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Is Bind Sensitive'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69756499984654884)
,p_db_column_name=>'IS_BIND_AWARE'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Is Bind Aware'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69756895063654884)
,p_db_column_name=>'IS_SHAREABLE'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Is Shareable'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69757216849654884)
,p_db_column_name=>'CHILD_LATCH'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Child Latch'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69757696024654884)
,p_db_column_name=>'SQL_PROFILE'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Sql Profile'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69758104919654884)
,p_db_column_name=>'SQL_PATCH'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Sql Patch'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69758506505654884)
,p_db_column_name=>'SQL_PLAN_BASELINE'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Sql Plan Baseline'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69758817164654885)
,p_db_column_name=>'PROGRAM_ID'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'Program Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69759255773654887)
,p_db_column_name=>'PROGRAM_LINE#'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'Program Line#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69759616362654887)
,p_db_column_name=>'EXACT_MATCHING_SIGNATURE'
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'Exact Matching Signature'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69760055869654887)
,p_db_column_name=>'FORCE_MATCHING_SIGNATURE'
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'Force Matching Signature'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69760475713654887)
,p_db_column_name=>'LAST_ACTIVE_TIME'
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'Last Active Time'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69760826001654887)
,p_db_column_name=>'BIND_DATA'
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'Bind Data'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69761276934654892)
,p_db_column_name=>'TYPECHECK_MEM'
,p_display_order=>76
,p_column_identifier=>'BX'
,p_column_label=>'Typecheck Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69761643961654892)
,p_db_column_name=>'IO_CELL_OFFLOAD_ELIGIBLE_BYTES'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'Io Cell Offload Eligible Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69762112014654892)
,p_db_column_name=>'IO_INTERCONNECT_BYTES'
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'Io Interconnect Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69762436492654892)
,p_db_column_name=>'PHYSICAL_READ_REQUESTS'
,p_display_order=>79
,p_column_identifier=>'CA'
,p_column_label=>'Physical Read Requests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69762865284654892)
,p_db_column_name=>'PHYSICAL_READ_BYTES'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Physical Read Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69763268452654892)
,p_db_column_name=>'PHYSICAL_WRITE_REQUESTS'
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'Physical Write Requests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69763686878654893)
,p_db_column_name=>'PHYSICAL_WRITE_BYTES'
,p_display_order=>82
,p_column_identifier=>'CD'
,p_column_label=>'Physical Write Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69764017730654893)
,p_db_column_name=>'OPTIMIZED_PHY_READ_REQUESTS'
,p_display_order=>83
,p_column_identifier=>'CE'
,p_column_label=>'Optimized Phy Read Requests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69764476854654893)
,p_db_column_name=>'LOCKED_TOTAL'
,p_display_order=>84
,p_column_identifier=>'CF'
,p_column_label=>'Locked Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69764886997654893)
,p_db_column_name=>'PINNED_TOTAL'
,p_display_order=>85
,p_column_identifier=>'CG'
,p_column_label=>'Pinned Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69765295898654895)
,p_db_column_name=>'IO_CELL_UNCOMPRESSED_BYTES'
,p_display_order=>86
,p_column_identifier=>'CH'
,p_column_label=>'Io Cell Uncompressed Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69765639298654895)
,p_db_column_name=>'IO_CELL_OFFLOAD_RETURNED_BYTES'
,p_display_order=>87
,p_column_identifier=>'CI'
,p_column_label=>'Io Cell Offload Returned Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69766076554655099)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'679249'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SQL_TEXT:SQL_FULLTEXT:SQL_ID:SHARABLE_MEM:PERSISTENT_MEM:RUNTIME_MEM:SORTS:LOADED_VERSIONS:OPEN_VERSIONS:USERS_OPENING:FETCHES:EXECUTIONS:PX_SERVERS_EXECUTIONS:END_OF_FETCH_COUNT:USERS_EXECUTING:LOADS:FIRST_LOAD_TIME:INVALIDATIONS:PARSE_CALLS:DISK_RE'
||'ADS:DIRECT_WRITES:BUFFER_GETS:APPLICATION_WAIT_TIME:CONCURRENCY_WAIT_TIME:CLUSTER_WAIT_TIME:USER_IO_WAIT_TIME:PLSQL_EXEC_TIME:JAVA_EXEC_TIME:ROWS_PROCESSED:COMMAND_TYPE:OPTIMIZER_MODE:OPTIMIZER_COST:OPTIMIZER_ENV:OPTIMIZER_ENV_HASH_VALUE:PARSING_USER'
||'_ID:PARSING_SCHEMA_ID:PARSING_SCHEMA_NAME:KEPT_VERSIONS:ADDRESS:TYPE_CHK_HEAP:HASH_VALUE:OLD_HASH_VALUE:PLAN_HASH_VALUE:CHILD_NUMBER:SERVICE:SERVICE_HASH:MODULE:MODULE_HASH:ACTION:ACTION_HASH:SERIALIZABLE_ABORTS:OUTLINE_CATEGORY:CPU_TIME:ELAPSED_TIME'
||':OUTLINE_SID:CHILD_ADDRESS:SQLTYPE:REMOTE:OBJECT_STATUS:LITERAL_HASH_VALUE:LAST_LOAD_TIME:IS_OBSOLETE:IS_BIND_SENSITIVE:IS_BIND_AWARE:IS_SHAREABLE:CHILD_LATCH:SQL_PROFILE:SQL_PATCH:SQL_PLAN_BASELINE:PROGRAM_ID:PROGRAM_LINE#:EXACT_MATCHING_SIGNATURE:F'
||'ORCE_MATCHING_SIGNATURE:LAST_ACTIVE_TIME:BIND_DATA:TYPECHECK_MEM:IO_CELL_OFFLOAD_ELIGIBLE_BYTES:IO_INTERCONNECT_BYTES:PHYSICAL_READ_REQUESTS:PHYSICAL_READ_BYTES:PHYSICAL_WRITE_REQUESTS:PHYSICAL_WRITE_BYTES:OPTIMIZED_PHY_READ_REQUESTS:LOCKED_TOTAL:PIN'
||'NED_TOTAL:IO_CELL_UNCOMPRESSED_BYTES:IO_CELL_OFFLOAD_RETURNED_BYTES'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69716097657607393)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(69715704572607389)
,p_button_name=>'RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(69449163663353608)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69715953842607392)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(69715704572607389)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(69449163663353608)
,p_button_image_alt=>'OK'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69715728087607390)
,p_name=>'P15_SQL_CHILD_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(69715704572607389)
,p_prompt=>'Sql child number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(69448621962353607)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69715881019607391)
,p_name=>'P15_SQL_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(69715704572607389)
,p_prompt=>'SQL ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(69448621962353607)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Temp Usage'
,p_page_mode=>'NORMAL'
,p_step_title=>'Temp Usage'
,p_step_sub_title=>'Temp Usage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715233822'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69769866919687789)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69770421087687789)
,p_plug_name=>'Temp Usage'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT S.sid || '','' || S.serial# sid_serial, S.username, S.osuser, P.spid, S.module,',
'       P.program, SUM (T.blocks) * TBS.block_size / 1024 / 1024 mb_used, T.tablespace,',
'COUNT(*) statements',
'FROM v$sort_usage T, v$session S, dba_tablespaces TBS, v$process P',
'WHERE T.session_addr = S.saddr',
'AND S.paddr = P.addr',
'AND T.tablespace = TBS.tablespace_name',
'GROUP BY S.sid, S.serial#, S.username, S.osuser, P.spid, S.module,',
'P.program, TBS.block_size, T.tablespace'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69770528232687789)
,p_name=>'Temp Usage'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67929314609810405
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69770962004687789)
,p_db_column_name=>'SID_SERIAL'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sid Serial'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69771341334687789)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69771782686687791)
,p_db_column_name=>'OSUSER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Osuser'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69772115613687792)
,p_db_column_name=>'SPID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Spid'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69772555055687792)
,p_db_column_name=>'MODULE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Module'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69772960793687792)
,p_db_column_name=>'PROGRAM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Program'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69773398632687792)
,p_db_column_name=>'MB_USED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Mb Used'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69773802981687792)
,p_db_column_name=>'TABLESPACE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Tablespace'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69774161106687792)
,p_db_column_name=>'STATEMENTS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Statements'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69774523202688026)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'679334'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SID_SERIAL:USERNAME:OSUSER:SPID:MODULE:PROGRAM:MB_USED:TABLESPACE:STATEMENTS'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Bind Variables'
,p_page_mode=>'NORMAL'
,p_step_title=>'Bind Variables'
,p_step_sub_title=>'Bind Variables'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715234134'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69776175637697990)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69776767208697992)
,p_plug_name=>'Bind Variables'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select *',
'from v$sql_bind_capture',
'--where sql_id=&SQL_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69776827110697992)
,p_name=>'Bind Variables'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67935613487820608
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69777269074697992)
,p_db_column_name=>'ADDRESS'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Address'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69777705739697995)
,p_db_column_name=>'HASH_VALUE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69778066790697995)
,p_db_column_name=>'SQL_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Sql Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69778510251697995)
,p_db_column_name=>'CHILD_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Child Address'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69778912992697995)
,p_db_column_name=>'CHILD_NUMBER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Child Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69779237649697998)
,p_db_column_name=>'NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69779706070697998)
,p_db_column_name=>'POSITION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69780050286697998)
,p_db_column_name=>'DUP_POSITION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Dup Position'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69780495620697998)
,p_db_column_name=>'DATATYPE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Datatype'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69780848333697998)
,p_db_column_name=>'DATATYPE_STRING'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Datatype String'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69781281168697998)
,p_db_column_name=>'CHARACTER_SID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Character Sid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69781707031697998)
,p_db_column_name=>'PRECISION'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Precision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69782064917697999)
,p_db_column_name=>'SCALE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Scale'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69782424598697999)
,p_db_column_name=>'MAX_LENGTH'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Max Length'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69782898554697999)
,p_db_column_name=>'WAS_CAPTURED'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Was Captured'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69783278763697999)
,p_db_column_name=>'LAST_CAPTURED'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Last Captured'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69783629804697999)
,p_db_column_name=>'VALUE_STRING'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Value String'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69784076581697999)
,p_db_column_name=>'VALUE_ANYDATA'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Value Anydata'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69784493204698251)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'679433'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ADDRESS:SQL_ID:NAME:POSITION:DATATYPE_STRING:CHARACTER_SID:WAS_CAPTURED:LAST_CAPTURED:VALUE_STRING:VALUE_ANYDATA'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'SQL Statistics'
,p_page_mode=>'NORMAL'
,p_step_title=>'SQL Statistics'
,p_step_sub_title=>'SQL Statistics'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715234405'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69786259501713595)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69786819796713595)
,p_plug_name=>'SQL Statistics'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select *',
'from v$sqlstats'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69786940889713595)
,p_name=>'SQL Statistics'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67945727266836211
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69787321405713596)
,p_db_column_name=>'SQL_TEXT'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sql Text'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69787715240713596)
,p_db_column_name=>'SQL_FULLTEXT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sql Fulltext'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69788173582713596)
,p_db_column_name=>'SQL_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Sql Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69788587914713596)
,p_db_column_name=>'LAST_ACTIVE_TIME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Last Active Time'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69788961711713598)
,p_db_column_name=>'LAST_ACTIVE_CHILD_ADDRESS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Active Child Address'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69789401386713598)
,p_db_column_name=>'PLAN_HASH_VALUE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Plan Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69789720438713598)
,p_db_column_name=>'PARSE_CALLS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Parse Calls'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69790174799713598)
,p_db_column_name=>'DISK_READS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Disk Reads'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69790554323713598)
,p_db_column_name=>'DIRECT_WRITES'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Direct Writes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69790964493713598)
,p_db_column_name=>'BUFFER_GETS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Buffer Gets'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69791337014713598)
,p_db_column_name=>'ROWS_PROCESSED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Rows Processed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69791796143713600)
,p_db_column_name=>'SERIALIZABLE_ABORTS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Serializable Aborts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69792141827713600)
,p_db_column_name=>'FETCHES'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Fetches'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69792566185713600)
,p_db_column_name=>'EXECUTIONS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Executions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69792958796713603)
,p_db_column_name=>'END_OF_FETCH_COUNT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'End Of Fetch Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69793341163713604)
,p_db_column_name=>'LOADS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Loads'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69793719434713604)
,p_db_column_name=>'VERSION_COUNT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Version Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69794132457713604)
,p_db_column_name=>'INVALIDATIONS'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Invalidations'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69794585767713606)
,p_db_column_name=>'PX_SERVERS_EXECUTIONS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Px Servers Executions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69794936809713606)
,p_db_column_name=>'CPU_TIME'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Cpu Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69795324315713606)
,p_db_column_name=>'ELAPSED_TIME'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Elapsed Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69795750139713606)
,p_db_column_name=>'AVG_HARD_PARSE_TIME'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Avg Hard Parse Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69796114002713607)
,p_db_column_name=>'APPLICATION_WAIT_TIME'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Application Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69796535603713607)
,p_db_column_name=>'CONCURRENCY_WAIT_TIME'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Concurrency Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69796923561713607)
,p_db_column_name=>'CLUSTER_WAIT_TIME'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Cluster Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69797390417713607)
,p_db_column_name=>'USER_IO_WAIT_TIME'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'User Io Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69797728789713607)
,p_db_column_name=>'PLSQL_EXEC_TIME'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Plsql Exec Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69798189588713607)
,p_db_column_name=>'JAVA_EXEC_TIME'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Java Exec Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69798594474713609)
,p_db_column_name=>'SORTS'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Sorts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69798996232713609)
,p_db_column_name=>'SHARABLE_MEM'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Sharable Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69799408216713609)
,p_db_column_name=>'TOTAL_SHARABLE_MEM'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Total Sharable Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69799714268713609)
,p_db_column_name=>'TYPECHECK_MEM'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Typecheck Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69800160122713609)
,p_db_column_name=>'IO_CELL_OFFLOAD_ELIGIBLE_BYTES'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Io Cell Offload Eligible Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69800578661713609)
,p_db_column_name=>'IO_INTERCONNECT_BYTES'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Io Interconnect Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69800988900713609)
,p_db_column_name=>'PHYSICAL_READ_REQUESTS'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Physical Read Requests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69801323377713610)
,p_db_column_name=>'PHYSICAL_READ_BYTES'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Physical Read Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69801747679713610)
,p_db_column_name=>'PHYSICAL_WRITE_REQUESTS'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Physical Write Requests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69802126423713610)
,p_db_column_name=>'PHYSICAL_WRITE_BYTES'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Physical Write Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69802611045713610)
,p_db_column_name=>'EXACT_MATCHING_SIGNATURE'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Exact Matching Signature'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69802933899713610)
,p_db_column_name=>'FORCE_MATCHING_SIGNATURE'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Force Matching Signature'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69803406828713610)
,p_db_column_name=>'IO_CELL_UNCOMPRESSED_BYTES'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Io Cell Uncompressed Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69803737019713610)
,p_db_column_name=>'IO_CELL_OFFLOAD_RETURNED_BYTES'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Io Cell Offload Returned Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69804196873713858)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'679630'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SQL_ID:LAST_ACTIVE_TIME:LAST_ACTIVE_CHILD_ADDRESS:PLAN_HASH_VALUE:PARSE_CALLS:DISK_READS:DIRECT_WRITES:BUFFER_GETS:ROWS_PROCESSED:SERIALIZABLE_ABORTS:FETCHES:EXECUTIONS:END_OF_FETCH_COUNT:LOADS:VERSION_COUNT:INVALIDATIONS:PX_SERVERS_EXECUTIONS:CPU_TI'
||'ME:ELAPSED_TIME:AVG_HARD_PARSE_TIME:APPLICATION_WAIT_TIME:CONCURRENCY_WAIT_TIME:CLUSTER_WAIT_TIME:USER_IO_WAIT_TIME:PLSQL_EXEC_TIME:JAVA_EXEC_TIME:SORTS:SHARABLE_MEM:TOTAL_SHARABLE_MEM:TYPECHECK_MEM:IO_CELL_OFFLOAD_ELIGIBLE_BYTES:IO_INTERCONNECT_BYTE'
||'S:PHYSICAL_READ_REQUESTS:PHYSICAL_READ_BYTES:PHYSICAL_WRITE_REQUESTS:PHYSICAL_WRITE_BYTES:EXACT_MATCHING_SIGNATURE:FORCE_MATCHING_SIGNATURE:IO_CELL_UNCOMPRESSED_BYTES:IO_CELL_OFFLOAD_RETURNED_BYTES'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Segment Statistics'
,p_page_mode=>'NORMAL'
,p_step_title=>'Segment Statistics'
,p_step_sub_title=>'Segment Statistics'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715234618'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69806099227728719)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69806632431728721)
,p_plug_name=>'Segment Statistics'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with pivot_stats as (',
'select owner,object_name,statistic_name,value',
'from v$segment_statistics',
')',
'select * from pivot_stats',
'PIVOT',
'(sum(value) for statistic_name in ',
'  (''gc buffer busy''',
',''db block changes''',
',''optimized physical reads''',
',''space used''',
',''segment scans''',
',''gc cr blocks received''',
',''gc current blocks received''',
',''row lock waits''',
',''buffer busy waits''',
',''physical reads''',
',''physical reads direct''',
',''physical writes''',
',''physical write requests''',
',''space allocated''',
',''logical reads''',
',''physical read requests''',
',''physical writes direct''',
',''ITL waits''',
'))'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69806800891728721)
,p_name=>'Segment Statistics'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67965587268851337
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69807200102728722)
,p_db_column_name=>'OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69807546020728722)
,p_db_column_name=>'OBJECT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Object Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69808005421728722)
,p_db_column_name=>'''gc buffer busy'''
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'''Gc Buffer Busy'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69808372884728722)
,p_db_column_name=>'''db block changes'''
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'''Db Block Changes'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69808720792728724)
,p_db_column_name=>'''optimized physical reads'''
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'''Optimized Physical Reads'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69809210432728724)
,p_db_column_name=>'''space used'''
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'''Space Used'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69809608110728724)
,p_db_column_name=>'''segment scans'''
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'''Segment Scans'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69810012428728724)
,p_db_column_name=>'''gc cr blocks received'''
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'''Gc Cr Blocks Received'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69810334162728724)
,p_db_column_name=>'''gc current blocks received'''
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'''Gc Current Blocks Received'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69810751437728724)
,p_db_column_name=>'''row lock waits'''
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'''Row Lock Waits'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69811136939728725)
,p_db_column_name=>'''buffer busy waits'''
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'''Buffer Busy Waits'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69811548189728727)
,p_db_column_name=>'''physical reads'''
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'''Physical Reads'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69811910088728727)
,p_db_column_name=>'''physical reads direct'''
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'''Physical Reads Direct'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69812243634728727)
,p_db_column_name=>'''physical writes'''
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'''Physical Writes'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69812617092728727)
,p_db_column_name=>'''physical write requests'''
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'''Physical Write Requests'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69813024630728727)
,p_db_column_name=>'''space allocated'''
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'''Space Allocated'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69813466019728727)
,p_db_column_name=>'''logical reads'''
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'''Logical Reads'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69813867873728727)
,p_db_column_name=>'''physical read requests'''
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'''Physical Read Requests'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69814304756728728)
,p_db_column_name=>'''physical writes direct'''
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'''Physical Writes Direct'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69814640877728728)
,p_db_column_name=>'''ITL waits'''
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'''Itl Waits'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69815108778728953)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'679739'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OWNER:OBJECT_NAME:''gc buffer busy'':''db block changes'':''optimized physical reads'':''space used'':''segment scans'':''gc cr blocks received'':''gc current blocks received'':''row lock waits'':''buffer busy waits'':''physical reads'':''physical reads direct'':''physical'
||' writes'':''physical write requests'':''space allocated'':''logical reads'':''physical read requests'':''physical writes direct'':''ITL waits'''
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(69815976881735655)
,p_report_id=>wwv_flow_api.id(69815108778728953)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'OWNER'
,p_operator=>'='
,p_expr=>'HR'
,p_condition_sql=>'"OWNER" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''HR''  '
,p_enabled=>'Y'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Index Segment Statistic'
,p_page_mode=>'NORMAL'
,p_step_title=>'Index Segment Statistic'
,p_step_sub_title=>'Index Segment Statistic'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715235133'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69818630585752430)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69819299323752431)
,p_plug_name=>'Index Segment Statistic'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  ',
'i.*',
', ( select listagg ( column_name , '' '') WITHIN GROUP ( order by column_position)  from DBA_IND_COLUMNS ic where ic.index_owner = i.owner   and ic.index_name =  i.index_name ) index_columns',
', o.bytes ',
', o.blocks',
',s.*',
'    from DBA_INDEXES i',
'    , (with pivot_stats as (',
'select owner as seg_owner ,object_name as seg_object_name ,statistic_name,value',
'from v$segment_statistics',
')',
'select * from pivot_stats',
'PIVOT',
'(sum(value) for statistic_name in ',
'  (''gc buffer busy''',
',''db block changes''',
',''optimized physical reads''',
',''space used''',
',''segment scans''',
',''gc cr blocks received''',
',''gc current blocks received''',
',''row lock waits''',
',''buffer busy waits''',
',''physical reads''',
',''physical reads direct''',
',''physical writes''',
',''physical write requests''',
',''space allocated''',
',''logical reads''',
',''physical read requests''',
',''physical writes direct''',
',''ITL waits''',
'))) s',
', dba_segments o',
'    where 1=1 --i.owner = ''CLIC''',
'    and i.owner = s.seg_owner(+)',
'    and i.index_name = s.seg_object_name(+)',
'    and i.owner = o.owner',
'    and i.index_name = o.segment_name'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69819329505752431)
,p_name=>'Index Segment Statistic'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67978115882875047
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69819740661752434)
,p_db_column_name=>'OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69820186955752434)
,p_db_column_name=>'INDEX_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Index Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69820593335752434)
,p_db_column_name=>'INDEX_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Index Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69821003879752434)
,p_db_column_name=>'TABLE_OWNER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Table Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69821382490752436)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69821795689752436)
,p_db_column_name=>'TABLE_TYPE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Table Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69822142543752436)
,p_db_column_name=>'UNIQUENESS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Uniqueness'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69822608828752436)
,p_db_column_name=>'COMPRESSION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Compression'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69822964989752438)
,p_db_column_name=>'PREFIX_LENGTH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Prefix Length'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69823315162752438)
,p_db_column_name=>'TABLESPACE_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Tablespace Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69823752182752439)
,p_db_column_name=>'INI_TRANS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Ini Trans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69824117799752441)
,p_db_column_name=>'MAX_TRANS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Max Trans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69824567288752441)
,p_db_column_name=>'INITIAL_EXTENT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Initial Extent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69824976940752442)
,p_db_column_name=>'NEXT_EXTENT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Next Extent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69825361984752442)
,p_db_column_name=>'MIN_EXTENTS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Min Extents'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69825766731752442)
,p_db_column_name=>'MAX_EXTENTS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Max Extents'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69826163173752442)
,p_db_column_name=>'PCT_INCREASE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Pct Increase'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69826517488752442)
,p_db_column_name=>'PCT_THRESHOLD'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Pct Threshold'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69826956464752442)
,p_db_column_name=>'INCLUDE_COLUMN'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Include Column'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69827386445752442)
,p_db_column_name=>'FREELISTS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Freelists'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69827750016752444)
,p_db_column_name=>'FREELIST_GROUPS'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Freelist Groups'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69828115463752444)
,p_db_column_name=>'PCT_FREE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Pct Free'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69828520045752445)
,p_db_column_name=>'LOGGING'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Logging'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69828927396752445)
,p_db_column_name=>'BLEVEL'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Blevel'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69829407404752445)
,p_db_column_name=>'LEAF_BLOCKS'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Leaf Blocks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69829772177752445)
,p_db_column_name=>'DISTINCT_KEYS'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Distinct Keys'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69830193951752445)
,p_db_column_name=>'AVG_LEAF_BLOCKS_PER_KEY'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Avg Leaf Blocks Per Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69830590555752445)
,p_db_column_name=>'AVG_DATA_BLOCKS_PER_KEY'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Avg Data Blocks Per Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69830958587752447)
,p_db_column_name=>'CLUSTERING_FACTOR'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Clustering Factor'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69831367259752447)
,p_db_column_name=>'STATUS'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69831808408752447)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69832167866752447)
,p_db_column_name=>'SAMPLE_SIZE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Sample Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69832551555752447)
,p_db_column_name=>'LAST_ANALYZED'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Last Analyzed'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69833007639752447)
,p_db_column_name=>'DEGREE'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Degree'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69833340626752447)
,p_db_column_name=>'INSTANCES'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Instances'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69833727586752448)
,p_db_column_name=>'PARTITIONED'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Partitioned'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69834193850752448)
,p_db_column_name=>'TEMPORARY'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Temporary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69834587600752448)
,p_db_column_name=>'GENERATED'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Generated'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69834934265752448)
,p_db_column_name=>'SECONDARY'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Secondary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69835392780752450)
,p_db_column_name=>'BUFFER_POOL'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Buffer Pool'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69835739168752456)
,p_db_column_name=>'FLASH_CACHE'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Flash Cache'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69836195938752458)
,p_db_column_name=>'CELL_FLASH_CACHE'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Cell Flash Cache'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69836516023752458)
,p_db_column_name=>'USER_STATS'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'User Stats'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69836968562752458)
,p_db_column_name=>'DURATION'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Duration'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69837355254752458)
,p_db_column_name=>'PCT_DIRECT_ACCESS'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Pct Direct Access'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69837726975752459)
,p_db_column_name=>'ITYP_OWNER'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Ityp Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69838135702752459)
,p_db_column_name=>'ITYP_NAME'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Ityp Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69838552308752459)
,p_db_column_name=>'PARAMETERS'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Parameters'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69838948604752459)
,p_db_column_name=>'GLOBAL_STATS'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Global Stats'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69839348616752459)
,p_db_column_name=>'DOMIDX_STATUS'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Domidx Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69839745074752459)
,p_db_column_name=>'DOMIDX_OPSTATUS'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Domidx Opstatus'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69840176299752459)
,p_db_column_name=>'FUNCIDX_STATUS'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Funcidx Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69840591061752461)
,p_db_column_name=>'JOIN_INDEX'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Join Index'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69840969548752461)
,p_db_column_name=>'IOT_REDUNDANT_PKEY_ELIM'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Iot Redundant Pkey Elim'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69841408871752461)
,p_db_column_name=>'DROPPED'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Dropped'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69841807246752461)
,p_db_column_name=>'VISIBILITY'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Visibility'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69842191313752461)
,p_db_column_name=>'DOMIDX_MANAGEMENT'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Domidx Management'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69842525350752461)
,p_db_column_name=>'SEGMENT_CREATED'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Segment Created'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69843013531752462)
,p_db_column_name=>'INDEX_COLUMNS'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Index Columns'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69843404381752462)
,p_db_column_name=>'BYTES'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69843729921752462)
,p_db_column_name=>'BLOCKS'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Blocks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69844168450752462)
,p_db_column_name=>'SEG_OWNER'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Seg Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69844588433752462)
,p_db_column_name=>'SEG_OBJECT_NAME'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Seg Object Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69844942621752462)
,p_db_column_name=>'''gc buffer busy'''
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'''Gc Buffer Busy'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69845379648752462)
,p_db_column_name=>'''db block changes'''
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'''Db Block Changes'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69845716841752464)
,p_db_column_name=>'''optimized physical reads'''
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'''Optimized Physical Reads'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69846188114752464)
,p_db_column_name=>'''space used'''
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'''Space Used'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69846590019752464)
,p_db_column_name=>'''segment scans'''
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'''Segment Scans'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69846958230752464)
,p_db_column_name=>'''gc cr blocks received'''
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'''Gc Cr Blocks Received'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69847369068752464)
,p_db_column_name=>'''gc current blocks received'''
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'''Gc Current Blocks Received'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69847770987752464)
,p_db_column_name=>'''row lock waits'''
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'''Row Lock Waits'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69848156663752466)
,p_db_column_name=>'''buffer busy waits'''
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'''Buffer Busy Waits'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69848583548752466)
,p_db_column_name=>'''physical reads'''
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'''Physical Reads'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69848965943752466)
,p_db_column_name=>'''physical reads direct'''
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'''Physical Reads Direct'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69849350937752466)
,p_db_column_name=>'''physical writes'''
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'''Physical Writes'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69849762753752466)
,p_db_column_name=>'''physical write requests'''
,p_display_order=>76
,p_column_identifier=>'BX'
,p_column_label=>'''Physical Write Requests'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69850167427752466)
,p_db_column_name=>'''space allocated'''
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'''Space Allocated'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69850547517752467)
,p_db_column_name=>'''logical reads'''
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'''Logical Reads'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69850933970752467)
,p_db_column_name=>'''physical read requests'''
,p_display_order=>79
,p_column_identifier=>'CA'
,p_column_label=>'''Physical Read Requests'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69851326568752467)
,p_db_column_name=>'''physical writes direct'''
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'''Physical Writes Direct'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69851812566752467)
,p_db_column_name=>'''ITL waits'''
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'''Itl Waits'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69852135646752692)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'680110'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OWNER:INDEX_NAME:INDEX_TYPE:TABLE_OWNER:TABLE_NAME:TABLE_TYPE:UNIQUENESS:COMPRESSION:PREFIX_LENGTH:TABLESPACE_NAME:INI_TRANS:MAX_TRANS:INITIAL_EXTENT:NEXT_EXTENT:MIN_EXTENTS:MAX_EXTENTS:PCT_INCREASE:PCT_THRESHOLD:INCLUDE_COLUMN:FREELISTS:FREELIST_GRO'
||'UPS:PCT_FREE:LOGGING:BLEVEL:LEAF_BLOCKS:DISTINCT_KEYS:AVG_LEAF_BLOCKS_PER_KEY:AVG_DATA_BLOCKS_PER_KEY:CLUSTERING_FACTOR:STATUS:NUM_ROWS:SAMPLE_SIZE:LAST_ANALYZED:DEGREE:INSTANCES:PARTITIONED:TEMPORARY:GENERATED:SECONDARY:BUFFER_POOL:FLASH_CACHE:CELL_'
||'FLASH_CACHE:USER_STATS:DURATION:PCT_DIRECT_ACCESS:ITYP_OWNER:ITYP_NAME:PARAMETERS:GLOBAL_STATS:DOMIDX_STATUS:DOMIDX_OPSTATUS:FUNCIDX_STATUS:JOIN_INDEX:IOT_REDUNDANT_PKEY_ELIM:DROPPED:VISIBILITY:DOMIDX_MANAGEMENT:SEGMENT_CREATED:INDEX_COLUMNS:BYTES:BL'
||'OCKS:SEG_OWNER:SEG_OBJECT_NAME:''gc buffer busy'':''db block changes'':''optimized physical reads'':''space used'':''segment scans'':''gc cr blocks received'':''gc current blocks received'':''row lock waits'':''buffer busy waits'':''physical reads'':''physical reads dire'
||'ct'':''physical writes'':''physical write requests'':''space allocated'':''logical reads'':''physical read requests'':''physical writes direct'':''ITL waits'''
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(69853207203767181)
,p_report_id=>wwv_flow_api.id(69852135646752692)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'STATUS'
,p_operator=>'='
,p_expr=>'N/A'
,p_condition_sql=>' (case when ("STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''N/A''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FF7755'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(69853528197767181)
,p_report_id=>wwv_flow_api.id(69852135646752692)
,p_name=>'Valid Status'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'STATUS'
,p_operator=>'='
,p_expr=>'VALID'
,p_condition_sql=>' (case when ("STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''VALID''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#99FF99'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Session Long Operations'
,p_page_mode=>'NORMAL'
,p_step_title=>'Session Long Operations'
,p_step_sub_title=>'Session Long Operations'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715235303'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69854993623775914)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69855562484775914)
,p_plug_name=>'Session Long Operations'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * ',
'  from v$session_longops'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69855614210775914)
,p_name=>'Session Long Operations'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68014400587898530
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69856014662775914)
,p_db_column_name=>'SID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69856490977775917)
,p_db_column_name=>'SERIAL#'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Serial#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69856839258775917)
,p_db_column_name=>'OPNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Opname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69857269047775917)
,p_db_column_name=>'TARGET'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Target'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69857679103775917)
,p_db_column_name=>'TARGET_DESC'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Target Desc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69858058876775917)
,p_db_column_name=>'SOFAR'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Sofar'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69858462893775917)
,p_db_column_name=>'TOTALWORK'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Totalwork'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69858907826775917)
,p_db_column_name=>'UNITS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Units'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69859253687775919)
,p_db_column_name=>'START_TIME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Start Time'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69859646687775919)
,p_db_column_name=>'LAST_UPDATE_TIME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Last Update Time'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69860082928775919)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69860427180775920)
,p_db_column_name=>'TIME_REMAINING'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Time Remaining'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69860907589775920)
,p_db_column_name=>'ELAPSED_SECONDS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Elapsed Seconds'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69861226524775920)
,p_db_column_name=>'CONTEXT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Context'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69861680617775920)
,p_db_column_name=>'MESSAGE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Message'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69862060479775920)
,p_db_column_name=>'USERNAME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69862451982775920)
,p_db_column_name=>'SQL_ADDRESS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Sql Address'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69862898329775922)
,p_db_column_name=>'SQL_HASH_VALUE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Sql Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69863285953775922)
,p_db_column_name=>'SQL_ID'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Sql Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69863686022775922)
,p_db_column_name=>'SQL_PLAN_HASH_VALUE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Sql Plan Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69864080107775923)
,p_db_column_name=>'SQL_EXEC_START'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Sql Exec Start'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69864465652775925)
,p_db_column_name=>'SQL_EXEC_ID'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Sql Exec Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69864891662775925)
,p_db_column_name=>'SQL_PLAN_LINE_ID'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Sql Plan Line Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69865267630775925)
,p_db_column_name=>'SQL_PLAN_OPERATION'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Sql Plan Operation'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69865713070775925)
,p_db_column_name=>'SQL_PLAN_OPTIONS'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Sql Plan Options'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69866043851775925)
,p_db_column_name=>'QCSID'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Qcsid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69866481310776187)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'680253'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SID:SERIAL#:OPNAME:TARGET:TARGET_DESC:SOFAR:TOTALWORK:UNITS:START_TIME:LAST_UPDATE_TIME:TIMESTAMP:TIME_REMAINING:ELAPSED_SECONDS:CONTEXT:MESSAGE:USERNAME:SQL_ADDRESS:SQL_HASH_VALUE:SQL_ID:SQL_PLAN_HASH_VALUE:SQL_EXEC_START:SQL_EXEC_ID:SQL_PLAN_LINE_I'
||'D:SQL_PLAN_OPERATION:SQL_PLAN_OPTIONS:QCSID'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'PGA Memory Usage'
,p_page_mode=>'NORMAL'
,p_step_title=>'PGA Memory Usage'
,p_step_sub_title=>'PGA Memory Usage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715235405'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69867993542782126)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69868428544782126)
,p_plug_name=>'PGA Memory Usage'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select s.sid',
'    ,  s.serial# ',
'    ,  p.pga_alloc_mem',
'    ,  p.pga_used_mem',
'    ,  p.pga_freeable_mem',
'    ,  p.pga_Max_mem',
'    ,  p.addr',
'    ,  p.username',
'    ,  p.program',
'    ,  s.osuser',
'    ,  s.type ',
'from v$session  s, v$process  p',
'where paddr = addr'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69868559172782126)
,p_name=>'PGA Memory Usage'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68027345549904742
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69868916946782128)
,p_db_column_name=>'SID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69869374003782129)
,p_db_column_name=>'SERIAL#'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Serial#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69869754005782129)
,p_db_column_name=>'PGA_ALLOC_MEM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Pga Alloc Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69870203008782129)
,p_db_column_name=>'PGA_USED_MEM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Pga Used Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69870598421782131)
,p_db_column_name=>'PGA_FREEABLE_MEM'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Pga Freeable Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69870992348782131)
,p_db_column_name=>'PGA_MAX_MEM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Pga Max Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69871326091782131)
,p_db_column_name=>'ADDR'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Addr'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69871797978782131)
,p_db_column_name=>'USERNAME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69872167462782131)
,p_db_column_name=>'PROGRAM'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Program'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69872595760782131)
,p_db_column_name=>'OSUSER'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Osuser'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69872950746782131)
,p_db_column_name=>'TYPE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69873385410782349)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'680322'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SID:SERIAL#:PGA_ALLOC_MEM:PGA_USED_MEM:PGA_FREEABLE_MEM:PGA_MAX_MEM:ADDR:USERNAME:PROGRAM:OSUSER:TYPE'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Tablespaces'
,p_page_mode=>'NORMAL'
,p_step_title=>'Tablespaces'
,p_step_sub_title=>'Tablespaces'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150719154013'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69875178878794523)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69875781977794525)
,p_plug_name=>'Tablespaces'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  a.tablespace_name,',
'       round(a.bytes_alloc / 1024 / 1024) megs_alloc,',
'       round(nvl(b.bytes_free, 0) / 1024 / 1024) megs_free,',
'       round((a.bytes_alloc - nvl(b.bytes_free, 0)) / 1024 / 1024) megs_used,',
'       round((nvl(b.bytes_free, 0) / a.bytes_alloc) * 100) Pct_Free,',
'       100 - round((nvl(b.bytes_free, 0) / a.bytes_alloc) * 100) Pct_used,',
'       round(maxbytes/1048576) Max',
'from  ( select  f.tablespace_name,',
'               sum(f.bytes) bytes_alloc,',
'               sum(decode(f.autoextensible, ''YES'',f.maxbytes,''NO'', f.bytes)) maxbytes',
'        from dba_data_files f',
'        group by tablespace_name) a,',
'      ( select  f.tablespace_name,',
'               sum(f.bytes)  bytes_free',
'        from dba_free_space f',
'        group by tablespace_name) b',
'where a.tablespace_name = b.tablespace_name (+)',
'union all',
'select h.tablespace_name,',
'       round(sum(h.bytes_free + h.bytes_used) / 1048576) megs_alloc,',
'       round(sum((h.bytes_free + h.bytes_used) - nvl(p.bytes_used, 0)) / 1048576) megs_free,',
'       round(sum(nvl(p.bytes_used, 0))/ 1048576) megs_used,',
'       round((sum((h.bytes_free + h.bytes_used) - nvl(p.bytes_used, 0)) / sum(h.bytes_used + h.bytes_free)) * 100) Pct_Free,',
'       100 - round((sum((h.bytes_free + h.bytes_used) - nvl(p.bytes_used, 0)) / sum(h.bytes_used + h.bytes_free)) * 100) pct_used,',
'       round(sum(f.maxbytes) / 1048576) max',
'from   sys.v_$TEMP_SPACE_HEADER h, sys.v_$Temp_extent_pool p, dba_temp_files f',
'where  p.file_id(+) = h.file_id',
'and    p.tablespace_name(+) = h.tablespace_name',
'and    f.file_id = h.file_id',
'and    f.tablespace_name = h.tablespace_name',
'group by h.tablespace_name'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69875851661794525)
,p_name=>'Tablespaces'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68034638038917141
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69876230078794527)
,p_db_column_name=>'TABLESPACE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Tablespace Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69876590787794528)
,p_db_column_name=>'MEGS_ALLOC'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Megs Alloc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69876941791794528)
,p_db_column_name=>'MEGS_FREE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Megs Free'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69877375292794530)
,p_db_column_name=>'MEGS_USED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Megs Used'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69877715973794530)
,p_db_column_name=>'PCT_FREE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Pct Free'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69878122892794531)
,p_db_column_name=>'PCT_USED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Pct Used'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69878517968794531)
,p_db_column_name=>'MAX'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Max'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69878933295794742)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'680378'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'TABLESPACE_NAME:MEGS_ALLOC:MEGS_FREE:MEGS_USED:PCT_FREE:PCT_USED:MAX'
,p_sort_column_1=>'MEGS_ALLOC'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Segments'
,p_page_mode=>'NORMAL'
,p_step_title=>'Segments'
,p_step_sub_title=>'Segments'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150719154521'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69880960203809305)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69881587084809305)
,p_plug_name=>'Segments'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from dba_segments'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69881702583809305)
,p_name=>'Segments'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68040488960931921
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69882051242809308)
,p_db_column_name=>'OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69882461775809308)
,p_db_column_name=>'SEGMENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Segment Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69882841513809311)
,p_db_column_name=>'PARTITION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Partition Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69883290423809311)
,p_db_column_name=>'SEGMENT_TYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Segment Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69883634808809311)
,p_db_column_name=>'SEGMENT_SUBTYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Segment Subtype'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69884024317809312)
,p_db_column_name=>'TABLESPACE_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Tablespace Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69884422098809312)
,p_db_column_name=>'HEADER_FILE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Header File'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69884881975809312)
,p_db_column_name=>'HEADER_BLOCK'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Header Block'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69885302804809314)
,p_db_column_name=>'BYTES'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69885704770809314)
,p_db_column_name=>'BLOCKS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Blocks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69886043330809314)
,p_db_column_name=>'EXTENTS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Extents'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69886459702809314)
,p_db_column_name=>'INITIAL_EXTENT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Initial Extent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69886825787809314)
,p_db_column_name=>'NEXT_EXTENT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Next Extent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69887295910809314)
,p_db_column_name=>'MIN_EXTENTS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Min Extents'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69887658858809314)
,p_db_column_name=>'MAX_EXTENTS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Max Extents'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69888042202809315)
,p_db_column_name=>'MAX_SIZE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Max Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69888437473809315)
,p_db_column_name=>'RETENTION'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Retention'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69888890877809315)
,p_db_column_name=>'MINRETENTION'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Minretention'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69889223313809317)
,p_db_column_name=>'PCT_INCREASE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Pct Increase'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69889705458809317)
,p_db_column_name=>'FREELISTS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Freelists'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69890102188809317)
,p_db_column_name=>'FREELIST_GROUPS'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Freelist Groups'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69890485704809317)
,p_db_column_name=>'RELATIVE_FNO'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Relative Fno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69890887992809317)
,p_db_column_name=>'BUFFER_POOL'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Buffer Pool'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69891214381809317)
,p_db_column_name=>'FLASH_CACHE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Flash Cache'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69891710015809319)
,p_db_column_name=>'CELL_FLASH_CACHE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Cell Flash Cache'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69892087645809601)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'680509'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OWNER:SEGMENT_TYPE:SEGMENT_NAME:TABLESPACE_NAME:BYTES:'
,p_sort_column_1=>'BYTES'
,p_sort_direction_1=>'DESC'
,p_break_on=>'OWNER'
,p_break_enabled_on=>'OWNER'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(70113611821726496)
,p_report_id=>wwv_flow_api.id(69892087645809601)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'OWNER'
,p_operator=>'!='
,p_expr=>'APEX_030200'
,p_condition_sql=>'"OWNER" != #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# != ''APEX_030200''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(70113941611726498)
,p_report_id=>wwv_flow_api.id(69892087645809601)
,p_group_by_columns=>'OWNER:SEGMENT_TYPE'
,p_function_01=>'SUM'
,p_function_column_01=>'BYTES'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_sort_column_01=>'APXWS_GBFC_01'
,p_sort_direction_01=>'DESC'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Objects'
,p_page_mode=>'NORMAL'
,p_step_title=>'Objects'
,p_step_sub_title=>'Objects'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716000818'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69894463899844807)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69895107300844807)
,p_plug_name=>'Objects'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from dba_objects'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69895121304844807)
,p_name=>'Objects'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68053907681967423
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69895610323844810)
,p_db_column_name=>'OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69895938434844810)
,p_db_column_name=>'OBJECT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Object Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69896394745844812)
,p_db_column_name=>'SUBOBJECT_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Subobject Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69896726114844812)
,p_db_column_name=>'OBJECT_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Object Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69897125872844812)
,p_db_column_name=>'DATA_OBJECT_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Data Object Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69897574986844812)
,p_db_column_name=>'OBJECT_TYPE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Object Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69897919702844812)
,p_db_column_name=>'CREATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69898387110844814)
,p_db_column_name=>'LAST_DDL_TIME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Last Ddl Time'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69898748805844814)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Timestamp'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69899209472844814)
,p_db_column_name=>'STATUS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69899521094844815)
,p_db_column_name=>'TEMPORARY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Temporary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69899966499844815)
,p_db_column_name=>'GENERATED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Generated'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69900352193844815)
,p_db_column_name=>'SECONDARY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Secondary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69900802508844817)
,p_db_column_name=>'NAMESPACE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Namespace'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69901169156844817)
,p_db_column_name=>'EDITION_NAME'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Edition Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69901556865845021)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'680604'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OWNER:OBJECT_NAME:OBJECT_ID:DATA_OBJECT_ID:OBJECT_TYPE:CREATED:LAST_DDL_TIME:TIMESTAMP:STATUS:TEMPORARY:GENERATED:SECONDARY'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_api.create_page(
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Indexes'
,p_page_mode=>'NORMAL'
,p_step_title=>'Indexes'
,p_step_sub_title=>'Indexes'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716001046'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69903855835872877)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69904506115872877)
,p_plug_name=>'Indexes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from dba_indexes'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69904589556872877)
,p_name=>'Indexes'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68063375933995493
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69904933730872877)
,p_db_column_name=>'OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69905388240872877)
,p_db_column_name=>'INDEX_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Index Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69905749738872878)
,p_db_column_name=>'INDEX_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Index Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69906126385872878)
,p_db_column_name=>'TABLE_OWNER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Table Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69906601639872878)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69906984302872878)
,p_db_column_name=>'TABLE_TYPE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Table Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69907384492872878)
,p_db_column_name=>'UNIQUENESS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Uniqueness'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69907771340872878)
,p_db_column_name=>'COMPRESSION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Compression'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69908175054872878)
,p_db_column_name=>'PREFIX_LENGTH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Prefix Length'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69908571309872880)
,p_db_column_name=>'TABLESPACE_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Tablespace Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69909009216872880)
,p_db_column_name=>'INI_TRANS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Ini Trans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69909377733872881)
,p_db_column_name=>'MAX_TRANS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Max Trans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69909746152872881)
,p_db_column_name=>'INITIAL_EXTENT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Initial Extent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69910174727872883)
,p_db_column_name=>'NEXT_EXTENT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Next Extent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69910527519872883)
,p_db_column_name=>'MIN_EXTENTS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Min Extents'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69910992388872884)
,p_db_column_name=>'MAX_EXTENTS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Max Extents'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69911342714872884)
,p_db_column_name=>'PCT_INCREASE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Pct Increase'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69911781884872884)
,p_db_column_name=>'PCT_THRESHOLD'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Pct Threshold'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69912185821872884)
,p_db_column_name=>'INCLUDE_COLUMN'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Include Column'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69912569941872886)
,p_db_column_name=>'FREELISTS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Freelists'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69912975925872886)
,p_db_column_name=>'FREELIST_GROUPS'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Freelist Groups'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69913401453872886)
,p_db_column_name=>'PCT_FREE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Pct Free'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69913768514872886)
,p_db_column_name=>'LOGGING'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Logging'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69914143374872886)
,p_db_column_name=>'BLEVEL'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Blevel'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69914571907872886)
,p_db_column_name=>'LEAF_BLOCKS'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Leaf Blocks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69914916085872887)
,p_db_column_name=>'DISTINCT_KEYS'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Distinct Keys'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69915316322872889)
,p_db_column_name=>'AVG_LEAF_BLOCKS_PER_KEY'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Avg Leaf Blocks Per Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69915742663872889)
,p_db_column_name=>'AVG_DATA_BLOCKS_PER_KEY'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Avg Data Blocks Per Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69916181247872891)
,p_db_column_name=>'CLUSTERING_FACTOR'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Clustering Factor'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69916580542872891)
,p_db_column_name=>'STATUS'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69916930112872891)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69917344536872891)
,p_db_column_name=>'SAMPLE_SIZE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Sample Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69917776416872892)
,p_db_column_name=>'LAST_ANALYZED'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Last Analyzed'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69918157004872892)
,p_db_column_name=>'DEGREE'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Degree'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69918575319872892)
,p_db_column_name=>'INSTANCES'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Instances'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69918934532872892)
,p_db_column_name=>'PARTITIONED'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Partitioned'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69919351837872892)
,p_db_column_name=>'TEMPORARY'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Temporary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69919755191872894)
,p_db_column_name=>'GENERATED'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Generated'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69920192988872894)
,p_db_column_name=>'SECONDARY'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Secondary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69920514876872894)
,p_db_column_name=>'BUFFER_POOL'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Buffer Pool'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69920967376872894)
,p_db_column_name=>'FLASH_CACHE'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Flash Cache'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69921341987872894)
,p_db_column_name=>'CELL_FLASH_CACHE'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Cell Flash Cache'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69921730480872894)
,p_db_column_name=>'USER_STATS'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'User Stats'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69922145609872894)
,p_db_column_name=>'DURATION'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Duration'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69922580403872895)
,p_db_column_name=>'PCT_DIRECT_ACCESS'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Pct Direct Access'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69923010631872895)
,p_db_column_name=>'ITYP_OWNER'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Ityp Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69923381923872898)
,p_db_column_name=>'ITYP_NAME'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Ityp Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69923787663872898)
,p_db_column_name=>'PARAMETERS'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Parameters'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69924208838872901)
,p_db_column_name=>'GLOBAL_STATS'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Global Stats'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69924531168872901)
,p_db_column_name=>'DOMIDX_STATUS'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Domidx Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69924996905872901)
,p_db_column_name=>'DOMIDX_OPSTATUS'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Domidx Opstatus'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69925367593872901)
,p_db_column_name=>'FUNCIDX_STATUS'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Funcidx Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69925769184872901)
,p_db_column_name=>'JOIN_INDEX'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Join Index'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69926173197872901)
,p_db_column_name=>'IOT_REDUNDANT_PKEY_ELIM'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Iot Redundant Pkey Elim'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69926556056872903)
,p_db_column_name=>'DROPPED'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Dropped'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69926989436872903)
,p_db_column_name=>'VISIBILITY'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Visibility'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69927371323872903)
,p_db_column_name=>'DOMIDX_MANAGEMENT'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Domidx Management'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69927766776872903)
,p_db_column_name=>'SEGMENT_CREATED'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Segment Created'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69928139475873150)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'680870'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OWNER:INDEX_NAME:INDEX_TYPE:TABLE_OWNER:TABLE_NAME:TABLE_TYPE:UNIQUENESS:COMPRESSION:PREFIX_LENGTH:TABLESPACE_NAME:INI_TRANS:MAX_TRANS:INITIAL_EXTENT:NEXT_EXTENT:MIN_EXTENTS:MAX_EXTENTS:PCT_INCREASE:PCT_THRESHOLD:INCLUDE_COLUMN:FREELISTS:FREELIST_GRO'
||'UPS:PCT_FREE:LOGGING:BLEVEL:LEAF_BLOCKS:DISTINCT_KEYS:AVG_LEAF_BLOCKS_PER_KEY:AVG_DATA_BLOCKS_PER_KEY:CLUSTERING_FACTOR:STATUS:NUM_ROWS:SAMPLE_SIZE:LAST_ANALYZED:DEGREE:INSTANCES:PARTITIONED:TEMPORARY:GENERATED:SECONDARY:BUFFER_POOL:FLASH_CACHE:CELL_'
||'FLASH_CACHE:USER_STATS:DURATION:PCT_DIRECT_ACCESS:ITYP_OWNER:ITYP_NAME:PARAMETERS:GLOBAL_STATS:DOMIDX_STATUS:DOMIDX_OPSTATUS:FUNCIDX_STATUS:JOIN_INDEX:IOT_REDUNDANT_PKEY_ELIM:DROPPED:VISIBILITY:DOMIDX_MANAGEMENT:SEGMENT_CREATED'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(69929022193882510)
,p_report_id=>wwv_flow_api.id(69928139475873150)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'INDEX_TYPE'
,p_operator=>'='
,p_expr=>'NORMAL'
,p_condition_sql=>'"INDEX_TYPE" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''NORMAL''  '
,p_enabled=>'Y'
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_api.create_page(
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Extents'
,p_page_mode=>'NORMAL'
,p_step_title=>'Extents'
,p_step_sub_title=>'Extents'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716002726'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69930386119965206)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69930949597965206)
,p_plug_name=>'Extents'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from dba_extents'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69931035451965206)
,p_name=>'Extents'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68089821829087822
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69931469793965207)
,p_db_column_name=>'OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69931857115965209)
,p_db_column_name=>'SEGMENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Segment Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69932284059965209)
,p_db_column_name=>'PARTITION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Partition Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69932645037965210)
,p_db_column_name=>'SEGMENT_TYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Segment Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69933049699965210)
,p_db_column_name=>'TABLESPACE_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Tablespace Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69933483103965210)
,p_db_column_name=>'EXTENT_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Extent Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69933896478965212)
,p_db_column_name=>'FILE_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'File Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69934237386965212)
,p_db_column_name=>'BLOCK_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Block Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69934682633965212)
,p_db_column_name=>'BYTES'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69935062313965214)
,p_db_column_name=>'BLOCKS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Blocks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69935426735965214)
,p_db_column_name=>'RELATIVE_FNO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Relative Fno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69935859458965480)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'680947'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OWNER:SEGMENT_NAME:PARTITION_NAME:SEGMENT_TYPE:TABLESPACE_NAME:EXTENT_ID:FILE_ID:BLOCK_ID:BYTES:BLOCKS:RELATIVE_FNO'
,p_sort_column_1=>'BLOCK_ID'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Total Table Space'
,p_page_mode=>'NORMAL'
,p_step_title=>'Total Table Space'
,p_step_sub_title=>'Total Table Space'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716231757'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69937561157995300)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69938127619995300)
,p_plug_name=>'Total Table Space'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT owner, segment_name, sum(size_mb) size_mb',
'FROM (',
'SELECT x.owner,',
'CASE WHEN x.segment_type in (''LOBSEGMENT'',''LOB PARTITION'') THEN   (SELECT table_name FROM dba_lobs y WHERE y.segment_name= x.segment_name and y.owner = x.owner )',
'     WHEN x.segment_type=''LOBINDEX'' THEN                          (SELECT table_name FROM dba_lobs y WHERE y.index_name = x.segment_name and y.owner = x.owner)',
'     WHEN x.segment_type in(''INDEX'',''INDEX PARTITION'',''INDEX SUBPARTITION'') THEN ',
'                                                                  (SELECT y.table_name FROM dba_indexes y WHERE y.index_name = x.segment_name and y.owner = x.owner)',
'     WHEN x.segment_type in (''TABLE SUBPARTITION'', ''TABLE PARTITION'',''TABLE'') THEN x.segment_name ',
'  END segment_name',
',round(sum(x.bytes)/(1024*1024),2) size_mb ',
'FROM dba_segments x ',
'where x.owner not in ( ''XDB'' , ''SYS'', ''SYSTEM'' ) ',
'GROUP BY   x.owner, x.segment_name, x.segment_type',
')',
'GROUP BY owner, segment_name'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69938281650995300)
,p_name=>'Total Table Space'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68097068028117916
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69938703410995301)
,p_db_column_name=>'OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69939073503995303)
,p_db_column_name=>'SEGMENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Segment Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69939465492995303)
,p_db_column_name=>'SIZE_MB'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Size Mb'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69939840790995601)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'680987'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OWNER:SEGMENT_NAME:SIZE_MB'
,p_sort_column_1=>'SIZE_MB'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Waste Space'
,p_page_mode=>'NORMAL'
,p_step_title=>'Waste Space'
,p_step_sub_title=>'Waste Space'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716003401'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69716115970607394)
,p_plug_name=>'Description'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(69424654698353569)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Just enable ''row movement'' and start shrinking tables:',
'<br>',
'SQL> ALTER TABLE MYTABLE ENABLE ROW MOVEMENT;',
'<br>',
'This enables row movement of the table. THis is necessary so that oracle is able to actually move the rows to other free extents in order to shrink the space needed.',
'<br>',
'SQL> ALTER TABLE MYTABLE SHRINK SPACE COMPACT;',
'<br>This shrinks the used space of the table, but does not update the HWM. This is usefull if you don''t want to have a table-level lock during business hours.',
'<br>',
'SQL> ALTER TABLE MYTABLE SHRINK SPACE;',
'<br>This command shrinks the contents of the table and subsequently updates the HWM. This statement can also be used after a shrink with ''compact'' option has been done, just to update the HWM.',
'<br>',
'SQL> ALTER TABLE MYTABLE SHRINK SPACE CASCADE;',
'<br>This command shrinks the contents of the table and all dependent objects like indexes.',
''))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69941580251007969)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69942165943007969)
,p_plug_name=>'Waste Space'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'a.owner,',
'a.segment_name,',
'a.segment_type,',
'round(a.bytes/1024/1024,0) MBS,',
'round((a.bytes-(b.num_rows*b.avg_row_len) )/1024/1024,0) WASTED',
'from dba_segments a, dba_tables b',
'where a.owner=b.owner',
'and a.owner not like ''SYS%''',
'and a.segment_name = b.table_name',
'and a.segment_type=''TABLE''',
'group by a.owner, a.segment_name, a.segment_type, round(a.bytes/1024/1024,0) ,round((a.bytes-(b.num_rows*b.avg_row_len) )/1024/1024,0)',
'having round(bytes/1024/1024,0) >100',
'order by round(bytes/1024/1024,0) desc ;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69942264458007969)
,p_name=>'Waste Space'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68101050835130585
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69942665338007973)
,p_db_column_name=>'OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69943033350007978)
,p_db_column_name=>'SEGMENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Segment Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69943498723007978)
,p_db_column_name=>'SEGMENT_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Segment Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69943874273007978)
,p_db_column_name=>'MBS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mbs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69944252558007978)
,p_db_column_name=>'WASTED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Wasted'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69944687846008337)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'681035'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OWNER:SEGMENT_NAME:SEGMENT_TYPE:MBS:WASTED'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'APEX Activity'
,p_page_mode=>'NORMAL'
,p_step_title=>'APEX Activity'
,p_step_sub_title=>'APEX Activity'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150719154905'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69947741787029823)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69948367003029823)
,p_plug_name=>'APEX Activity'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from APEX_WORKSPACE_ACTIVITY_LOG'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69948427465029823)
,p_name=>'APEX Activity'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68107213842152439
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69948909641029824)
,p_db_column_name=>'WORKSPACE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Workspace'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69949249768029824)
,p_db_column_name=>'WORKSPACE_DISPLAY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Workspace Display Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69949687136029824)
,p_db_column_name=>'APEX_USER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Apex User'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69950049812029824)
,p_db_column_name=>'APPLICATION_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Application Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69950483983029826)
,p_db_column_name=>'APPLICATION_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Application Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69950886636029826)
,p_db_column_name=>'APPLICATION_SCHEMA_OWNER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Application Schema Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69951223286029826)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Page Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69951670820029826)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69951999296029826)
,p_db_column_name=>'VIEW_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'View Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69952404875029826)
,p_db_column_name=>'THINK_TIME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Think Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69952806678029828)
,p_db_column_name=>'SECONDS_AGO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Seconds Ago'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69953210503029828)
,p_db_column_name=>'LOG_CONTEXT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Log Context'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69953609747029828)
,p_db_column_name=>'ELAPSED_TIME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Elapsed Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69953965374029828)
,p_db_column_name=>'ROWS_QUERIED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Rows Queried'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69954369853029829)
,p_db_column_name=>'IP_ADDRESS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Ip Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69954766362029829)
,p_db_column_name=>'AGENT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Agent'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69955191139029829)
,p_db_column_name=>'APEX_SESSION_ID'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Apex Session Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69955603001029829)
,p_db_column_name=>'ERROR_MESSAGE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Error Message'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69955989492029832)
,p_db_column_name=>'ERROR_ON_COMPONENT_TYPE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Error On Component Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69956364955029832)
,p_db_column_name=>'ERROR_ON_COMPONENT_NAME'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Error On Component Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69956714615029832)
,p_db_column_name=>'PAGE_VIEW_MODE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Page View Mode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69957209248029832)
,p_db_column_name=>'APPLICATION_INFO'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Application Info'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69957588579029834)
,p_db_column_name=>'INTERACTIVE_REPORT_ID'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Interactive Report Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69957981967029834)
,p_db_column_name=>'IR_SAVED_REPORT_ID'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Ir Saved Report Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69958355662029837)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Ir Search'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69958787793029837)
,p_db_column_name=>'WS_APPLICATION_ID'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Ws Application Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69959207218029837)
,p_db_column_name=>'WS_PAGE_ID'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Ws Page Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69959565952029837)
,p_db_column_name=>'WS_DATAGRID_ID'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Ws Datagrid Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69959913841029837)
,p_db_column_name=>'CONTENT_LENGTH'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Content Length'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69960373546029838)
,p_db_column_name=>'REGIONS_FROM_CACHE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Regions From Cache'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69960787405029840)
,p_db_column_name=>'WORKSPACE_ID'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Workspace Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69961210080029842)
,p_db_column_name=>'PAGE_VIEW_TYPE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Page View Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69961530798029842)
,p_db_column_name=>'REQUEST_VALUE'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Request Value'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69961934688029842)
,p_db_column_name=>'DEBUG_PAGE_VIEW_ID'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Debug Page View Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69962384102030101)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'681212'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'WORKSPACE:WORKSPACE_DISPLAY_NAME:APEX_USER:APPLICATION_ID:APPLICATION_NAME:APPLICATION_SCHEMA_OWNER:PAGE_ID:PAGE_NAME:VIEW_DATE:THINK_TIME:SECONDS_AGO:LOG_CONTEXT:ELAPSED_TIME:ROWS_QUERIED:IP_ADDRESS:AGENT:APEX_SESSION_ID:ERROR_MESSAGE:ERROR_ON_COMPO'
||'NENT_TYPE:ERROR_ON_COMPONENT_NAME:PAGE_VIEW_MODE:APPLICATION_INFO:INTERACTIVE_REPORT_ID:IR_SAVED_REPORT_ID:IR_SEARCH:WS_APPLICATION_ID:WS_PAGE_ID:WS_DATAGRID_ID:CONTENT_LENGTH:REGIONS_FROM_CACHE:WORKSPACE_ID:PAGE_VIEW_TYPE:REQUEST_VALUE:DEBUG_PAGE_VI'
||'EW_ID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(70116174448748963)
,p_report_id=>wwv_flow_api.id(69962384102030101)
,p_group_by_columns=>'WORKSPACE:APEX_USER:APPLICATION_ID'
,p_function_01=>'COUNT'
,p_function_column_01=>'APEX_SESSION_ID'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_function_02=>'COUNT'
,p_function_column_02=>'PAGE_ID'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'N'
,p_function_03=>'SUM'
,p_function_column_03=>'ROWS_QUERIED'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_format_mask_03=>'999G999G999G999G990'
,p_function_sum_03=>'N'
,p_sort_column_01=>'APXWS_GBFC_02'
,p_sort_direction_01=>'DESC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69965693947079948)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Page Count per Apps'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'681245'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'WORKSPACE:WORKSPACE_DISPLAY_NAME:APEX_USER:APPLICATION_ID:APPLICATION_NAME:APPLICATION_SCHEMA_OWNER:PAGE_ID:PAGE_NAME:VIEW_DATE:THINK_TIME:SECONDS_AGO:LOG_CONTEXT:ELAPSED_TIME:ROWS_QUERIED:IP_ADDRESS:AGENT:APEX_SESSION_ID:ERROR_MESSAGE:ERROR_ON_COMPO'
||'NENT_TYPE:ERROR_ON_COMPONENT_NAME:PAGE_VIEW_MODE:APPLICATION_INFO:INTERACTIVE_REPORT_ID:IR_SAVED_REPORT_ID:IR_SEARCH:WS_APPLICATION_ID:WS_PAGE_ID:WS_DATAGRID_ID:CONTENT_LENGTH:REGIONS_FROM_CACHE:WORKSPACE_ID:PAGE_VIEW_TYPE:REQUEST_VALUE:DEBUG_PAGE_VI'
||'EW_ID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(69966047067079948)
,p_report_id=>wwv_flow_api.id(69965693947079948)
,p_group_by_columns=>'WORKSPACE:APEX_USER:APPLICATION_ID'
,p_function_01=>'COUNT'
,p_function_column_01=>'APEX_SESSION_ID'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_function_02=>'COUNT'
,p_function_column_02=>'PAGE_ID'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'N'
,p_function_03=>'SUM'
,p_function_column_03=>'ROWS_QUERIED'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_format_mask_03=>'999G999G999G999G990'
,p_function_sum_03=>'N'
,p_sort_column_01=>'APXWS_GBFC_02'
,p_sort_direction_01=>'DESC'
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_api.create_page(
 p_id=>32
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Mail Log'
,p_page_mode=>'NORMAL'
,p_step_title=>'Mail Log'
,p_step_sub_title=>'Mail Log'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716004501'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69967531535087802)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69968200280087804)
,p_plug_name=>'Mail Log'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * from APEX_MAIL_LOG',
'',
'--SELECT ID, WORKSHEET_ID, WEBSHEET_ID, REPORT_ID, EMAIL_SUBJECT, EMAIL_FROM, --EMAIL_ADDRESS, NOTIFY_INTERVAL, START_DATE, END_DATE, OFFSET_DATE, LANGUAGE, --CREATED_BY, SECURITY_GROUP_ID FROM WWV_FLOW_WORKSHEET_NOTIFY WHERE SYSTIMESTAMP --BETWEEN N'
||'VL(START_DATE,SYSTIMESTAMP) AND NVL(END_DATE,SYSTIMESTAMP) AND --EMAIL_ADDRESS IS NOT NULL'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69968249546087804)
,p_name=>'Mail Log'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68127035923210420
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69968636658087805)
,p_db_column_name=>'MAIL_TO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Mail To'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69969081050087805)
,p_db_column_name=>'MAIL_FROM'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Mail From'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69969418182087805)
,p_db_column_name=>'MAIL_REPLYTO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Mail Replyto'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69969886260087808)
,p_db_column_name=>'MAIL_SUBJ'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mail Subj'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69970264778087808)
,p_db_column_name=>'MAIL_CC'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mail Cc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69970645493087810)
,p_db_column_name=>'MAIL_BCC'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mail Bcc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69971040356087810)
,p_db_column_name=>'MAIL_MESSAGE_CREATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Mail Message Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69971469145087819)
,p_db_column_name=>'MAIL_MESSAGE_SEND_BEGIN'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Mail Message Send Begin'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69971880609087819)
,p_db_column_name=>'MAIL_MESSAGE_SEND_END'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Mail Message Send End'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69972261203087821)
,p_db_column_name=>'MAIL_BODY_SIZE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Mail Body Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69972629669087821)
,p_db_column_name=>'MAIL_BODY_HTML_SIZE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Mail Body Html Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69973094745087821)
,p_db_column_name=>'MAIL_ATTACHMENT_COUNT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Mail Attachment Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69973449611087821)
,p_db_column_name=>'MAIL_ATTACHMENT_SIZE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Mail Attachment Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69973901507087824)
,p_db_column_name=>'MAIL_SEND_ERROR'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Mail Send Error'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69974271680087824)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Last Updated On'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69974663917088008)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'681335'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'MAIL_TO:MAIL_FROM:MAIL_REPLYTO:MAIL_SUBJ:MAIL_CC:MAIL_BCC:MAIL_MESSAGE_CREATED:MAIL_MESSAGE_SEND_BEGIN:MAIL_MESSAGE_SEND_END:MAIL_BODY_SIZE:MAIL_BODY_HTML_SIZE:MAIL_ATTACHMENT_COUNT:MAIL_ATTACHMENT_SIZE:MAIL_SEND_ERROR:LAST_UPDATED_ON'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_api.create_page(
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Apex Mail Queue'
,p_page_mode=>'NORMAL'
,p_step_title=>'Apex Mail Queue'
,p_step_sub_title=>'Apex Mail Queue'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716004604'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69976147311094005)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69976770339094006)
,p_plug_name=>'Apex Mail Queue'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from APEX_MAIL_QUEUE'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69976833955094006)
,p_name=>'Apex Mail Queue'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68135620332216622
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69977272377094006)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69977634157094006)
,p_db_column_name=>'MAIL_TO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Mail To'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69978034950094006)
,p_db_column_name=>'MAIL_FROM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Mail From'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69978498164094006)
,p_db_column_name=>'MAIL_REPLYTO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mail Replyto'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69978842468094006)
,p_db_column_name=>'MAIL_SUBJ'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mail Subj'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69979275520094008)
,p_db_column_name=>'MAIL_CC'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mail Cc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69979633441094008)
,p_db_column_name=>'MAIL_BCC'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Mail Bcc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69980050965094008)
,p_db_column_name=>'MAIL_BODY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Mail Body'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69980505462094008)
,p_db_column_name=>'MAIL_BODY_HTML'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Mail Body Html'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69980895054094010)
,p_db_column_name=>'MAIL_SEND_COUNT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Mail Send Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69981258493094010)
,p_db_column_name=>'MAIL_SEND_ERROR'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Mail Send Error'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69981660001094010)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69982051779094011)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Last Updated On'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69982470775094011)
,p_db_column_name=>'MAIL_MESSAGE_CREATED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Mail Message Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69982821348094011)
,p_db_column_name=>'MAIL_MESSAGE_CREATED_BY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Mail Message Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69983269194094226)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'681421'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID:MAIL_TO:MAIL_FROM:MAIL_REPLYTO:MAIL_SUBJ:MAIL_CC:MAIL_BCC:MAIL_BODY:MAIL_BODY_HTML:MAIL_SEND_COUNT:MAIL_SEND_ERROR:LAST_UPDATED_BY:LAST_UPDATED_ON:MAIL_MESSAGE_CREATED:MAIL_MESSAGE_CREATED_BY'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_api.create_page(
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Scheduler Jobs'
,p_page_mode=>'NORMAL'
,p_step_title=>'Scheduler Jobs'
,p_step_sub_title=>'Scheduler Jobs'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716005138'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69985116450101664)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69985775239101664)
,p_plug_name=>'Scheduler Jobs'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ',
'D.OWNER JOB_OWNER, D.JOB_NAME, D.JOB_SUBNAME, ',
'   D.JOB_STYLE, D.JOB_CREATOR, D.CLIENT_ID, ',
'   D.GLOBAL_UID, D.PROGRAM_OWNER, D.PROGRAM_NAME, ',
'   D.JOB_TYPE, D.JOB_ACTION, D.NUMBER_OF_ARGUMENTS, ',
'   D.SCHEDULE_OWNER, D.SCHEDULE_NAME, D.SCHEDULE_TYPE, ',
'   D.START_DATE, D.REPEAT_INTERVAL, D.EVENT_QUEUE_OWNER, ',
'   D.EVENT_QUEUE_NAME, D.EVENT_QUEUE_AGENT, D.EVENT_CONDITION, ',
'   D.EVENT_RULE, D.FILE_WATCHER_OWNER, D.FILE_WATCHER_NAME, ',
'   D.END_DATE, D.JOB_CLASS, D.ENABLED, ',
'   D.AUTO_DROP, D.RESTARTABLE, D.STATE, ',
'   D.JOB_PRIORITY, D.RUN_COUNT, D.MAX_RUNS, ',
'   D.FAILURE_COUNT, D.MAX_FAILURES, D.RETRY_COUNT, ',
'   D.LAST_START_DATE, D.LAST_RUN_DURATION, D.NEXT_RUN_DATE, ',
'   D.SCHEDULE_LIMIT, D.MAX_RUN_DURATION, D.LOGGING_LEVEL, ',
'   D.STOP_ON_WINDOW_CLOSE, D.INSTANCE_STICKINESS, D.RAISE_EVENTS, ',
'   D.SYSTEM, D.JOB_WEIGHT, D.NLS_ENV, ',
'   D.SOURCE, D.NUMBER_OF_DESTINATIONS, D.DESTINATION_OWNER, ',
'   D.DESTINATION, D.CREDENTIAL_OWNER, D.CREDENTIAL_NAME, ',
'   D.INSTANCE_ID, D.DEFERRED_DROP, D.ALLOW_RUNS_IN_RESTRICTED_MODE, ',
'   D.COMMENTS, D.FLAGS',
'FROM DBA_SCHEDULER_JOBS D'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69985848236101664)
,p_name=>'Scheduler Jobs'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68144634613224280
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69986276593101666)
,p_db_column_name=>'JOB_OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Job Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69986619733101666)
,p_db_column_name=>'JOB_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Job Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69987075998101666)
,p_db_column_name=>'JOB_SUBNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Job Subname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69987481049101666)
,p_db_column_name=>'JOB_STYLE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Job Style'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69987909086101666)
,p_db_column_name=>'JOB_CREATOR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Job Creator'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69988276686101666)
,p_db_column_name=>'CLIENT_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Client Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69988662667101668)
,p_db_column_name=>'GLOBAL_UID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Global Uid'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69989037145101668)
,p_db_column_name=>'PROGRAM_OWNER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Program Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69989457089101668)
,p_db_column_name=>'PROGRAM_NAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Program Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69989877408101668)
,p_db_column_name=>'JOB_TYPE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Job Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69990248045101668)
,p_db_column_name=>'JOB_ACTION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Job Action'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69990687595101669)
,p_db_column_name=>'NUMBER_OF_ARGUMENTS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Number Of Arguments'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69991053702101669)
,p_db_column_name=>'SCHEDULE_OWNER'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Schedule Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69991417577101669)
,p_db_column_name=>'SCHEDULE_NAME'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Schedule Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69991823733101672)
,p_db_column_name=>'SCHEDULE_TYPE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Schedule Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69992234228101674)
,p_db_column_name=>'START_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69992679540101674)
,p_db_column_name=>'REPEAT_INTERVAL'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Repeat Interval'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69993037877101675)
,p_db_column_name=>'EVENT_QUEUE_OWNER'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Event Queue Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69993482308101675)
,p_db_column_name=>'EVENT_QUEUE_NAME'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Event Queue Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69993900956101675)
,p_db_column_name=>'EVENT_QUEUE_AGENT'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Event Queue Agent'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69994298703101677)
,p_db_column_name=>'EVENT_CONDITION'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Event Condition'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69994686742101677)
,p_db_column_name=>'EVENT_RULE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Event Rule'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69995108586101677)
,p_db_column_name=>'FILE_WATCHER_OWNER'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'File Watcher Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69995457829101677)
,p_db_column_name=>'FILE_WATCHER_NAME'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'File Watcher Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69995829769101677)
,p_db_column_name=>'END_DATE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69996286863101679)
,p_db_column_name=>'JOB_CLASS'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Job Class'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69996623446101679)
,p_db_column_name=>'ENABLED'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Enabled'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69997033422101679)
,p_db_column_name=>'AUTO_DROP'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Auto Drop'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69997461890101679)
,p_db_column_name=>'RESTARTABLE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Restartable'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69997816271101680)
,p_db_column_name=>'STATE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'State'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69998292286101680)
,p_db_column_name=>'JOB_PRIORITY'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Job Priority'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69998662730101682)
,p_db_column_name=>'RUN_COUNT'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Run Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69999065041101683)
,p_db_column_name=>'MAX_RUNS'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Max Runs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69999466314101683)
,p_db_column_name=>'FAILURE_COUNT'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Failure Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69999863009101688)
,p_db_column_name=>'MAX_FAILURES'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Max Failures'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70000309337101693)
,p_db_column_name=>'RETRY_COUNT'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Retry Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70000658449101693)
,p_db_column_name=>'LAST_START_DATE'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Last Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70001093849101693)
,p_db_column_name=>'LAST_RUN_DURATION'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Last Run Duration'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70001498977101696)
,p_db_column_name=>'NEXT_RUN_DATE'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Next Run Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70001850930101696)
,p_db_column_name=>'SCHEDULE_LIMIT'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Schedule Limit'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70002564140101696)
,p_db_column_name=>'MAX_RUN_DURATION'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Max Run Duration'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70002931704101697)
,p_db_column_name=>'LOGGING_LEVEL'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Logging Level'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70003368470101699)
,p_db_column_name=>'STOP_ON_WINDOW_CLOSE'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Stop On Window Close'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70003723474101700)
,p_db_column_name=>'INSTANCE_STICKINESS'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Instance Stickiness'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70004190728101700)
,p_db_column_name=>'RAISE_EVENTS'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Raise Events'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70004574164101700)
,p_db_column_name=>'SYSTEM'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'System'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70004937797101702)
,p_db_column_name=>'JOB_WEIGHT'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Job Weight'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70005331868101702)
,p_db_column_name=>'NLS_ENV'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Nls Env'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70005790238101702)
,p_db_column_name=>'SOURCE'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Source'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70006193392101702)
,p_db_column_name=>'NUMBER_OF_DESTINATIONS'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Number Of Destinations'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70006582652101702)
,p_db_column_name=>'DESTINATION_OWNER'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Destination Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70006936501101702)
,p_db_column_name=>'DESTINATION'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Destination'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70007330823101702)
,p_db_column_name=>'CREDENTIAL_OWNER'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Credential Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70007740349101703)
,p_db_column_name=>'CREDENTIAL_NAME'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Credential Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70008152659101703)
,p_db_column_name=>'INSTANCE_ID'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Instance Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70008578050101703)
,p_db_column_name=>'DEFERRED_DROP'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Deferred Drop'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70008932493101703)
,p_db_column_name=>'ALLOW_RUNS_IN_RESTRICTED_MODE'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Allow Runs In Restricted Mode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70009371439101703)
,p_db_column_name=>'COMMENTS'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70009786462101703)
,p_db_column_name=>'FLAGS'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Flags'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(70010204937101939)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'681690'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'JOB_OWNER:JOB_NAME:NUMBER_OF_ARGUMENTS:START_DATE:REPEAT_INTERVAL:END_DATE:JOB_CLASS:ENABLED:AUTO_DROP:RESTARTABLE:STATE:JOB_PRIORITY:RUN_COUNT:MAX_RUNS:FAILURE_COUNT:MAX_FAILURES:RETRY_COUNT:LAST_START_DATE:LAST_RUN_DURATION:NEXT_RUN_DATE:SCHEDULE_L'
||'IMIT:MAX_RUN_DURATION:LOGGING_LEVEL:STOP_ON_WINDOW_CLOSE:INSTANCE_STICKINESS:RAISE_EVENTS:SYSTEM:JOB_WEIGHT:SOURCE:NUMBER_OF_DESTINATIONS:DESTINATION_OWNER:DESTINATION:CREDENTIAL_OWNER:CREDENTIAL_NAME:INSTANCE_ID:DEFERRED_DROP:ALLOW_RUNS_IN_RESTRICTE'
||'D_MODE:COMMENTS:FLAGS'
,p_sort_column_1=>'START_DATE'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(70011679693127709)
,p_report_id=>wwv_flow_api.id(70010204937101939)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'JOB_OWNER'
,p_operator=>'not in'
,p_expr=>'ORACLE_OCM,SYS'
,p_condition_sql=>'"JOB_OWNER" not in (#APXWS_EXPR_VAL1#, #APXWS_EXPR_VAL2#)'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''ORACLE_OCM, SYS''  '
,p_enabled=>'Y'
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_api.create_page(
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Scheduler Job Log'
,p_page_mode=>'NORMAL'
,p_step_title=>'Scheduler Job Log'
,p_step_sub_title=>'Scheduler Job Log'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716010337'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69716265193607395)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(69428332283353574)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70013272896139038)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70013863944139039)
,p_plug_name=>'Scheduler Job Log'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT * ',
'FROM DBA_SCHEDULER_JOB_LOG',
'where owner = nvl ( :P35_OWNER, OWNER) ',
'  and job_name = nvl ( :P35_JOB_NAME, JOB_NAME)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(70014010210139039)
,p_name=>'Scheduler Job Log'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68172796587261655
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70014384770139041)
,p_db_column_name=>'LOG_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Log Id'
,p_column_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP:P36_LOG_ID:#LOG_ID#'
,p_column_linktext=>'#LOG_ID#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70014725452139041)
,p_db_column_name=>'LOG_DATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Log Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70015210454139042)
,p_db_column_name=>'OWNER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70015586907139042)
,p_db_column_name=>'JOB_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Job Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70015969446139042)
,p_db_column_name=>'JOB_SUBNAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Job Subname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70016353902139042)
,p_db_column_name=>'JOB_CLASS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Job Class'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70016726134139042)
,p_db_column_name=>'OPERATION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Operation'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70017176185139044)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70017548241139044)
,p_db_column_name=>'USER_NAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'User Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70017993544139044)
,p_db_column_name=>'CLIENT_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Client Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70018406531139044)
,p_db_column_name=>'GLOBAL_UID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Global Uid'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70018764173139044)
,p_db_column_name=>'CREDENTIAL_OWNER'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Credential Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70019134880139044)
,p_db_column_name=>'CREDENTIAL_NAME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Credential Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70019527541139044)
,p_db_column_name=>'DESTINATION_OWNER'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Destination Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70019921101139049)
,p_db_column_name=>'DESTINATION'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Destination'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70020362613139049)
,p_db_column_name=>'ADDITIONAL_INFO'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Additional Info'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(70022728099152942)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'681816'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'LOG_ID:LOG_DATE:OWNER:JOB_NAME:JOB_SUBNAME:JOB_CLASS:OPERATION:STATUS:ADDITIONAL_INFO'
,p_sort_column_1=>'LOG_ID'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69716688985607399)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(69716265193607395)
,p_button_name=>'P34_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(69449163663353608)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69716605578607398)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(69716265193607395)
,p_button_name=>'P35_OK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(69449163663353608)
,p_button_image_alt=>'Ok'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69716378037607396)
,p_name=>'P35_JOB_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(69716265193607395)
,p_prompt=>'Job name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(69448621962353607)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69716508128607397)
,p_name=>'P35_OWNER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(69716265193607395)
,p_prompt=>'OWNER'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(69448621962353607)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_api.create_page(
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Scheduler Job Run Details'
,p_page_mode=>'NORMAL'
,p_step_title=>'Scheduler Job Run Details'
,p_step_sub_title=>'Scheduler Job Run Details'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716010857'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69716770535607400)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody:t-Form--noPadding:t-Form--large:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(69424654698353569)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70024362824173804)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70024951968173806)
,p_plug_name=>'Scheduler Job Run Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69427862829353573)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT * ',
'FROM dba_scheduler_job_run_details',
'where nvl( :P36_LOG_ID , log_id ) = log_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(70025075863173806)
,p_name=>'Scheduler Job Run Details'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68183862240296422
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70025441586173806)
,p_db_column_name=>'LOG_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Log Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70025853708173807)
,p_db_column_name=>'LOG_DATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Log Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70026307018173807)
,p_db_column_name=>'OWNER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70026644806173807)
,p_db_column_name=>'JOB_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Job Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70027061752173807)
,p_db_column_name=>'JOB_SUBNAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Job Subname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70027489539173812)
,p_db_column_name=>'STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70027853169173812)
,p_db_column_name=>'ERROR#'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Error#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70028242167173813)
,p_db_column_name=>'REQ_START_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Req Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70028706065173813)
,p_db_column_name=>'ACTUAL_START_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Actual Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70029064520173813)
,p_db_column_name=>'RUN_DURATION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Run Duration'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70029504812173815)
,p_db_column_name=>'INSTANCE_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Instance Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70029893261173820)
,p_db_column_name=>'SESSION_ID'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Session Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70030305610173820)
,p_db_column_name=>'SLAVE_PID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Slave Pid'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70030638422173820)
,p_db_column_name=>'CPU_USED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Cpu Used'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70031020578173821)
,p_db_column_name=>'CREDENTIAL_OWNER'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Credential Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70031451082173821)
,p_db_column_name=>'CREDENTIAL_NAME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Credential Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70031900993173821)
,p_db_column_name=>'DESTINATION_OWNER'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Destination Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70032283251173821)
,p_db_column_name=>'DESTINATION'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Destination'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70032706115173823)
,p_db_column_name=>'ADDITIONAL_INFO'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Additional Info'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(70034769852182395)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'681936'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'LOG_ID:LOG_DATE:OWNER:JOB_NAME:JOB_SUBNAME:STATUS:ERROR#:REQ_START_DATE:ACTUAL_START_DATE:RUN_DURATION:INSTANCE_ID:SESSION_ID:SLAVE_PID:CPU_USED:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69717101052607403)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(69716770535607400)
,p_button_name=>'P36_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(69449163663353608)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69716962253607402)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(69716770535607400)
,p_button_name=>'P36_OK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(69449163663353608)
,p_button_image_alt=>'OK'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(69717382184607406)
,p_branch_action=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(69717101052607403)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69716901908607401)
,p_name=>'P36_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(69716770535607400)
,p_prompt=>'Log id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(69448621962353607)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69717312409607405)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset'
,p_process_sql_clob=>':P36_LOG_ID := NULL;'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(69717101052607403)
);
end;
/
prompt --application/pages/page_00037
begin
wwv_flow_api.create_page(
 p_id=>37
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Theme Style'
,p_page_mode=>'NORMAL'
,p_step_title=>'Theme Style'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150719144838'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69717827467607411)
,p_plug_name=>'Theme Style'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(69428332283353574)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70096286796295478)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(69431688357353577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(69455667744353649)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(69449629290353608)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69718291772607415)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(70096286796295478)
,p_button_name=>'Cancle'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(69449163663353608)
,p_button_image_alt=>'Cancle'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69718174224607414)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(70096286796295478)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(69449163663353608)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(69718469706607417)
,p_branch_action=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69717959966607412)
,p_name=>'P37_DESKTOP_THEME_STYLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(69717827467607411)
,p_prompt=>'Desktop Theme Style'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select s.name d,',
'          s.theme_style_id r',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'and s.theme_number = t.theme_number',
'and s.application_id = :app_id',
'and t.ui_type_name   = ''DESKTOP''',
'and t.is_current = ''Yes''',
'order by 1'))
,p_cHeight=>1
,p_display_when=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select 1',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'and s.theme_number = t.theme_number',
'and s.application_id = :app_id',
'and t.ui_type_name   = ''DESKTOP''',
'and t.is_current = ''Yes'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(69448910183353607)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69718390452607416)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Theme Style'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'if :P37_DESKTOP_THEME_STYLE is not null then',
'    for c1 in (select theme_number',
'               from apex_application_themes',
'               where application_id = :app_id',
'               and ui_type_name   = ''DESKTOP''',
'               and is_current = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => c1.theme_number,',
'            p_theme_style_id => :P37_DESKTOP_THEME_STYLE',
'            );',
'    end loop;',
'end if;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(69454319524353630)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'APEX ADMIN MONITORING - Log In'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(69414207950353526)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20150715025220'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69454820566353641)
,p_plug_name=>'Log In'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(69428332283353574)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69455211163353644)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(69454820566353641)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(69449163663353608)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69454952508353644)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(69454820566353641)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(69448621962353607)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69455111667353644)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(69454820566353641)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(69448621962353607)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69455386186353649)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69455252266353646)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69455577308353649)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69455457452353649)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
