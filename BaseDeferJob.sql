declare
  key_id_ varchar2(1);
  attr_   varchar2(32000);
begin
  Client_SYS.Clear_Attr(attr_);
  Client_SYS.Add_To_Attr('ID', key_id_, attr_);
  Transaction_SYS.Deferred_Call('_API.ProcedureInAPI', attr_, 'Job description shown in background job'));
end;
