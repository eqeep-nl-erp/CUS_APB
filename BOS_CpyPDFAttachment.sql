declare
  pdf_created_  varchar2(20) := 'FALSE';
  ora_dir_cin_  varchar2(30) := 'FROM_3XP';
  rd_doc_no_    varchar2(30) := '1034483';
  rd_doc_sheet_ varchar2(20) := '1';
  rd_doc_rev_   varchar2(20) := 'A1';
  company_      varchar2(10) := '1301';
  invoice_no_   varchar2(30) := '1301120024';
  invoice_type_ varchar2(10) := '172';
  file_no_      number := 1;
begin
  pdf_created_ := bos_extfile_utils_api.Cpy_Invoice(ora_dir_cin_, rd_doc_no_, rd_doc_sheet_, rd_doc_rev_, company_, invoice_no_, invoice_type_, file_no_);
  DBMS_OUTPUT.PUT_LINE(pdf_created_);
end;