--
-- Call: sqlplus sys/oracle as sysdba @apex_install_app.sql
--
-- parameters
-- 1: Workspace Name
-- 2: Schema name
-- 3: file_name

whenever sqlerror exit sql.sqlcode

begin
  if upper(user) != 'SYS' then
    raise_application_error(-20000, 'User must be SYS');
  end if;
end;
/

define workspace_name = '&1'
define workspace_schema = '&2'
define file_name = '&3'

declare
    l_workspace_id number;
begin
    select workspace_id into l_workspace_id
      from apex_workspaces
     where workspace = upper('&workspace_name');
    --
    apex_application_install.set_workspace_id( l_workspace_id );
    apex_application_install.generate_application_id;
    apex_application_install.generate_offset;
    apex_application_install.set_schema( upper('&workspace_schema' ));
    apex_application_install.set_application_alias( 'F' || apex_application_install.get_application_id );
end;
/

@&file_name.
