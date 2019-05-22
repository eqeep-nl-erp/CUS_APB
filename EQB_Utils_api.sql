create or replace package EQB_Utils_api is

module_  constant varchar2(25) := 'CMOD';
lu_name_ constant varchar2(25) := 'Eqeep';
lu_type_ constant varchar2(25) := 'Utility';

-- 28-04-2017 S. Alink Add audit info to background job
procedure add_audit_info(log_text_ in varchar2);

-----------------------------------------------------------------------------
-------------------- FOUNDATION1 METHODS ------------------------------------
-----------------------------------------------------------------------------

procedure Init;

end EQB_Utils_api;