{*******************************************************}
{                                                       }
{       Pascal Script Source File                       }
{       Run by RemObjects Pascal Script in CnWizards    }
{                                                       }
{       Generated by CnPack IDE Wizards                 }
{                                                       }
{*******************************************************}

program FieldToProperty;

uses
  Windows, SysUtils, Classes, CnCommon, CnWizIdeUtils;

var
  Lines: TStringList;
  ALine, ASpc, AName, AType: string;
  i, j, idx1, idx2: Integer;
  UseWriteMethod: Boolean;
begin
  Lines := TStringList.Create;
  try
    if IdeGetEditorSelectedLines(Lines) then
    begin
      UseWriteMethod := QueryDlg('Do you want to use write method?', False);
      for i := 0 to Lines.Count - 1 do
      begin
        ALine := Lines[i];
        idx1 := Pos(':', ALine);
        idx2 := Pos(';', ALine);
        if (idx1 > 0) and (idx2 > 0) and (idx1 < idx2) then
        begin
          ASpc := '    ';
          AName := Trim(Copy(ALine, 1, idx1 - 1));
          AType := Trim(Copy(ALine, idx1 + 1, idx2 - idx1 - 1));
          if (AName <> '') and (AType <> '') then
          begin
            if UseWriteMethod then
              Lines[i] := Format('%sproperty %s: %s read F%s write Set%s;', [ASpc, AName, AType, AName, AName])
            else
              Lines[i] := Format('%sproperty %s: %s read F%s write F%s;', [ASpc, AName, AType, AName, AName]);
          end;
        end;
      end;
      IdeSetEditorSelectedLines(Lines);
    end;
  finally
    Lines.Free;
  end;
end.