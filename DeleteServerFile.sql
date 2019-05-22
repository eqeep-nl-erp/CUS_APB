declare
begin
  ifsapp.intface_server_file_api.delete_server_file('&Directory_name', '&File_name');
end;