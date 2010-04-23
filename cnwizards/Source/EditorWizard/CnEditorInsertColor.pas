{******************************************************************************}
{                       CnPack For Delphi/C++Builder                           }
{                     �й����Լ��Ŀ���Դ�������������                         }
{                   (C)Copyright 2001-2010 CnPack ������                       }
{                   ------------------------------------                       }
{                                                                              }
{            ���������ǿ�Դ���������������������� CnPack �ķ���Э������        }
{        �ĺ����·�����һ����                                                }
{                                                                              }
{            ������һ��������Ŀ����ϣ�������ã���û���κε���������û��        }
{        �ʺ��ض�Ŀ�Ķ������ĵ���������ϸ���������� CnPack ����Э�顣        }
{                                                                              }
{            ��Ӧ���Ѿ��Ϳ�����һ���յ�һ�� CnPack ����Э��ĸ��������        }
{        ��û�У��ɷ������ǵ���վ��                                            }
{                                                                              }
{            ��վ��ַ��http://www.cnpack.org                                   }
{            �����ʼ���master@cnpack.org                                       }
{                                                                              }
{******************************************************************************}

unit CnEditorInsertColor;
{* |<PRE>
================================================================================
* �������ƣ�CnPack IDE ר�Ұ�
* ��Ԫ���ƣ�������ɫ����
* ��Ԫ���ߣ��ܾ��� (zjy@cnpack.org)
* ��    ע��
* ����ƽ̨��PWinXP SP2 + Delphi 5.01
* ���ݲ��ԣ�PWin9X/2000/XP + Delphi 5/6/7 + C++Builder 5/6
* �� �� �����ô����е��ַ��������ϱ��ػ�������ʽ
* ��Ԫ��ʶ��$Id$
* �޸ļ�¼��2005.07.30 V1.0
*               ������Ԫ��ʵ�ֹ���
================================================================================
|</PRE>}

interface

{$I CnWizards.inc}

{$IFDEF CNWIZARDS_CNEDITORWIZARD}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, IniFiles, ToolsAPI, CnWizUtils, CnConsts, CnCommon, CnEditorWizard,
  CnWizConsts, CnEditorCodeTool, CnIni;

type

//==============================================================================
// ������ɫ������
//==============================================================================

{ TCnEditorInsertColor }

  TCnEditorInsertColor = class(TCnBaseEditorTool)
  private
    dlgColor: TColorDialog;
  public
    constructor Create(AOwner: TCnEditorWizard); override;
    destructor Destroy; override;
    procedure LoadSettings(Ini: TCustomIniFile); override;
    procedure SaveSettings(Ini: TCustomIniFile); override;
    function GetCaption: string; override;
    function GetHint: string; override;
    procedure GetEditorInfo(var Name, Author, Email: string); override;
    function GetState: TWizardState; override;
    procedure Execute; override;
  end;

{$ENDIF CNWIZARDS_CNEDITORWIZARD}

implementation

{$IFDEF CNWIZARDS_CNEDITORWIZARD}

const
  csColor = 'Color';
  csCustomColors = 'CustomColors';

{ TCnEditorInsertColor }

constructor TCnEditorInsertColor.Create(AOwner: TCnEditorWizard);
begin
  inherited;
  dlgColor := TColorDialog.Create(nil);
  dlgColor.Options := [cdFullOpen, cdAnyColor];
end;

destructor TCnEditorInsertColor.Destroy;
begin
  dlgColor.Free;
  inherited;
end;

function TCnEditorInsertColor.GetCaption: string;
begin
  Result := SCnEditorInsertColorMenuCaption;
end;

function TCnEditorInsertColor.GetHint: string;
begin
  Result := SCnEditorInsertColorMenuHint;
end;

procedure TCnEditorInsertColor.GetEditorInfo(var Name, Author, Email: string);
begin
  Name := SCnEditorInsertColorName;
  Author := SCnPack_Zjy;
  Email := SCnPack_ZjyEmail;
end;

procedure TCnEditorInsertColor.Execute;
var
  Text: string;
begin
  try
    Text := Trim(CnOtaGetCurrentSelection);
    if Text <> '' then
      dlgColor.Color := StringToColor(Text);
  except
    ;
  end;
            
  if dlgColor.Execute then
  begin
    CnOtaInsertTextToCurSource(ColorToString(dlgColor.Color), ipCur);
  end;  
end;

procedure TCnEditorInsertColor.LoadSettings(Ini: TCustomIniFile);
begin
  inherited;
  with TCnIniFile.Create(Ini) do
  try
    dlgColor.Color := ReadColor('', csColor, dlgColor.Color);
    ReadStrings('', csCustomColors, dlgColor.CustomColors);
  finally
    Free;
  end;
end;

procedure TCnEditorInsertColor.SaveSettings(Ini: TCustomIniFile);
begin
  inherited;
  with TCnIniFile.Create(Ini) do
  try
    WriteColor('', csColor, dlgColor.Color);
    WriteStrings('', csCustomColors, dlgColor.CustomColors);
  finally
    Free;
  end;
end;

function TCnEditorInsertColor.GetState: TWizardState;
begin
  Result := inherited GetState;
  if (wsEnabled in Result) and not CurrentIsSource then
    Result := [];
end;

initialization
  RegisterCnEditor(TCnEditorInsertColor);

{$ENDIF CNWIZARDS_CNEDITORWIZARD}  
end.