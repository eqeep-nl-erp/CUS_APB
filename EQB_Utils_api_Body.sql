create or replace package body EQB_Utils_api is

/*******************************************************************************
 Description: Setting background job status

 Date        Author            Description
 -------------------------------------------------------------------------------
 28-04-2017  Steve Alink       Initial create
*******************************************************************************/
procedure add_audit_info(log_text_ in varchar2) is
  text_ varchar2(2000) := NULL;
begin
  if substr(log_text_, 1, 1) <> ' ' then
    text_ := ' ';
  end if;
  text_ := text_ || log_text_;
  Transaction_Sys.Set_Status_Info(TO_CHAR(sysdate, 'yyyy/mm/dd HH24:MI:SS') || text_, 'INFO');
  commit;
end add_audit_info;

  -----------------------------------------------------------------------------
  -------------------- FOUNDATION1 METHODS ------------------------------------
  -----------------------------------------------------------------------------
  -- Init
  --   Dummy procedure that can be called at database startup to ensure that
  --   this package is loaded into memory for performance reasons only.
  -----------------------------------------------------------------------------

  PROCEDURE Init IS
  BEGIN
    NULL;
  END Init;

end EQB_Utils_api;
