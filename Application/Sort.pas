unit sort;

interface

uses
  IBQuery, DBGrids, DB;

procedure DBSort(Query:TIBQuery; DBGrid:TDBGrid; Column:TColumn);

implementation

procedure DBSort(Query:TIBQuery; DBGrid:TDBGrid; Column:TColumn);
begin
  Query.Close;
  if DBGrid.Tag = 0 then
  begin
    if pos('order' ,Query.SQL.Text) <> 0 then
      Query.SQL.Text:=copy(Query.SQL.Text, 1, pos('order' ,Query.SQL.Text)-1);
    Query.SQL.Add('order by '+Column.FieldName+' DESC');
    DBGrid.Tag:=1;
  end
  else
  begin
    if pos('order' ,Query.SQL.Text) <> 0 then
      Query.SQL.Text:=copy(Query.SQL.Text, 1, pos('order' ,Query.SQL.Text)-1);
    Query.SQL.Add('order by '+Column.FieldName+' ASC');
    DBGrid.Tag:=0;
  end;
  Query.Open;
end;

end.
 