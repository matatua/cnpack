{******************************************************************************}
{                       CnPack For Delphi/C++Builder                           }
{                     �й����Լ��Ŀ���Դ�������������                         }
{                   (C)Copyright 2001-2009 CnPack ������                       }
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

unit CnAsciiChart;
{ |<PRE>
================================================================================
* �������ƣ�CnPack IDE ר�Ұ�
* ��Ԫ���ƣ�Ascii�ַ������ߵ�Ԫ
* ��Ԫ���ߣ���Х��LiuXiao�� liuxiao@cnpack.org
* ��    ע��
* ����ƽ̨��PWin2000Pro + Delphi 5
* ���ݲ��ԣ�δ����
* �� �� �����ô����е��ַ��������ϱ��ػ�������ʽ
* ��Ԫ��ʶ��$Id: CnAsciiChart.pas,v 1.24 2009/01/02 08:36:28 liuxiao Exp $
* �޸ļ�¼��2004-01-29
*               ״̬����������ʾ�ǿ��� ASCII �ַ�������
*           2004-01-13
*               ������Ԫ��ʵ�ֹ���
================================================================================
|</PRE>}

interface

{$I CnWizards.inc}

// ��������ʱӦ�ö����ʹ�ܵ�����
{$IFDEF STAND_ALONE}
{$DEFINE CNWIZARDS_CNEDITORWIZARD}
{$ENDIF}

{$IFDEF CNWIZARDS_CNEDITORWIZARD}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, CnConsts, ExtCtrls, StdCtrls, ComCtrls, Clipbrd, Buttons, ActnList,
{$IFNDEF STAND_ALONE}
  CnEditorWizard, CnWizIdeDock, CnWizUtils,
{$ENDIF}
  CnSpin, CnWizConsts, CnWizMultiLang;

type

{$IFNDEF STAND_ALONE}

  TCnAsciiChart = class(TCnBaseEditorTool)
  protected
    function GetCaption: string; override;
    function GetHint: string; override;
    procedure SetActive(Value: Boolean); override;
  public
    constructor Create(AOwner: TCnEditorWizard); override;
    destructor Destroy; override;

    procedure Execute; override;
    procedure GetEditorInfo(var Name, Author, Email: string); override;
    procedure ParentActiveChanged(ParentActive: Boolean); override;
  end;

{$ENDIF}

{$IFNDEF STAND_ALONE}
  TCnAsciiForm = class(TCnIdeDockForm)
{$ELSE}
  TCnAsciiForm = class(TCnTranslateForm)
{$ENDIF}
    Panel1: TPanel;
    Grid: TStringGrid;
    cbFont: TComboBox;
    StatusBar: TStatusBar;
    seFontSize: TCnSpinEdit;
    sbHex: TSpeedButton;
    ActionListHex: TActionList;
    PageAction: TAction;
    sbPage: TSpeedButton;
    Panel2: TPanel;
    pnlCanvas: TPanel;
    edtOut: TEdit;
    Image: TImage;
    imVirtual: TImage;
    edtSource: TEdit;
    ToHexAction: TAction;
    sbToHex: TSpeedButton;
    btnTop: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure GridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure cbFontChange(Sender: TObject);
    procedure GridClick(Sender: TObject);
    procedure seFontSizeChange(Sender: TObject);
    procedure sbHexClick(Sender: TObject);
    procedure PageActionExecute(Sender: TObject);
    procedure GridMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure ToHexActionExecute(Sender: TObject);
    procedure edtSourceKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnTopClick(Sender: TObject);
  private
    FHex: Boolean;
    FPage: Integer;
    FOldCol: Integer;
    FOldRow: Integer;
    FIsClick: Boolean;

    function GetChr(I: Integer): string;
    function GetChrSharp(I: Integer): string;
    function GetOrd(I: Integer; Hex: Boolean): string;
    function GetNonVisualDesc(I: Integer): string;
  protected
    function GetHelpTopic: string; override;
    procedure DoLanguageChanged(Sender: TObject); override;
  public
    { Public declarations }
    procedure DrawStretchedAscii;
    procedure UpdateChart;
    procedure UpdateStatusBar;
  end;

var
  CnAsciiForm: TCnAsciiForm = nil;

{$ENDIF CNWIZARDS_CNEDITORWIZARD}

implementation

{$IFDEF CNWIZARDS_CNEDITORWIZARD}

{$IFDEF DEBUG}
uses
  CnDebug;
{$ENDIF}

{$R *.DFM}

const
  SCnNonVisualAscii: array[0..32] of string = (
    'NUL', 'SOH', 'STX', 'ETX', 'EOT', 'ENQ', 'ACK', 'BEL',
    'BS', 'TAB', 'LF', 'VT', 'FF', 'CR', 'SO', 'SI',
    'DLE', 'DC1', 'DC2', 'DC3', 'DC4', 'NAK', 'SYN', 'ETB',
    'CAN', 'EM', 'SUB', 'ESC', 'FS', 'GS', 'RS', 'US', 'SPACE');

{$IFNDEF STAND_ALONE}

{ TCnAsciiChart }

constructor TCnAsciiChart.Create(AOwner: TCnEditorWizard);
begin
  inherited;
  IdeDockManager.RegisterDockableForm(TCnAsciiForm, CnAsciiForm,
    'CnAsciiForm');
end;

destructor TCnAsciiChart.Destroy;
begin
  IdeDockManager.UnRegisterDockableForm(CnAsciiForm, 'CnAsciiForm');
  if CnAsciiForm <> nil then
  begin
    CnAsciiForm.Free;
    CnAsciiForm := nil;
  end;
  inherited;
end;

procedure TCnAsciiChart.Execute;
begin
  if CnAsciiForm = nil then
  begin
    CnAsciiForm := TCnAsciiForm.Create(nil);
  end;
  IdeDockManager.ShowForm(CnAsciiForm);
end;

procedure TCnAsciiChart.SetActive(Value: Boolean);
begin
  if Value <> Active then
  begin
    inherited;
    if Value then
    begin
      IdeDockManager.RegisterDockableForm(TCnAsciiForm, CnAsciiForm,
        'CnAsciiForm');
    end
    else
    begin
      IdeDockManager.UnRegisterDockableForm(CnAsciiForm, 'CnAsciiForm');
      if CnAsciiForm <> nil then
      begin
        CnAsciiForm.Free;
        CnAsciiForm := nil;
      end;
    end;
  end;
end;

function TCnAsciiChart.GetCaption: string;
begin
  Result := SCnAsciiChartMenuCaption;
end;

procedure TCnAsciiChart.GetEditorInfo(var Name, Author, Email: string);
begin
  Name := SCnAsciiChartName;
  Author := SCnPack_LiuXiao;
  Email := SCnPack_LiuXiaoEmail;
end;

function TCnAsciiChart.GetHint: string;
begin
  Result := SCnAsciiChartMenuHint;
end;

procedure TCnAsciiChart.ParentActiveChanged(ParentActive: Boolean);
begin
  if ParentActive then
  begin
    IdeDockManager.RegisterDockableForm(TCnAsciiForm, CnAsciiForm,
      'CnAsciiForm');
  end
  else
  begin
    IdeDockManager.UnRegisterDockableForm(CnAsciiForm, 'CnAsciiForm');
    if CnAsciiForm <> nil then
    begin
      CnAsciiForm.Free;
      CnAsciiForm := nil;
    end;
  end;
end;

{$ENDIF}

{ TCnAsciiForm }

procedure TCnAsciiForm.FormCreate(Sender: TObject);
begin
{$IFDEF DEBUG}
  CnDebugger.LogMsg('TCnAsciiForm.FormCreate');
{$ENDIF}  
  inherited;

{$IFDEF STAND_ALONE}
  Application.Title := Caption;
  Position := poDesktopCenter;
  BorderStyle := bsToolWindow;
  BorderIcons := BorderIcons - [biMaximize];
  btnTop.Visible := True;
{$ENDIF}

  cbFont.Items.Assign(Screen.Fonts);
  cbFont.ItemIndex := cbFont.Items.IndexOf(Grid.Font.Name);
end;

procedure TCnAsciiForm.FormShow(Sender: TObject);
begin
{$IFDEF DEBUG}
  CnDebugger.LogMsg('TCnAsciiForm.FormShow');
{$ENDIF}
  inherited;
  UpdateChart;
  seFontSize.Value := Grid.Font.Size;
  UpdateStatusBar;
  cbFont.OnChange(cbFont);
  seFontSize.OnChange(seFontSize);
end;

procedure TCnAsciiForm.FormDestroy(Sender: TObject);
begin
  CnAsciiForm := nil;
  inherited;
{$IFDEF DEBUG}
  CnDebugger.LogMsg('TCnAsciiForm.FormDestroy');
{$ENDIF}
end;

procedure TCnAsciiForm.btnTopClick(Sender: TObject);
begin
  if btnTop.Down then
    FormStyle := fsStayOnTop
  else
    FormStyle := fsNormal;
end;

procedure TCnAsciiForm.GridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  OutStr: string;
begin
  with Sender as TStringGrid do
  begin
    OutStr := Cells[ACol, ARow];
    if (gdSelected in State) and not (gdFixed in State) then
      Canvas.Brush.Color := $00D2BDB6
    else if (FPage = 0) and (ARow in [1..4]) and (ACol > 0) then
      Canvas.Brush.Color := $00B5EBFF;

    Canvas.FillRect(Rect);
    Canvas.TextOut(Rect.Left + ((Rect.Right - Rect.Left -
      Canvas.TextWidth(OutStr)) shr 1), Rect.Top + ((Rect.Bottom - Rect.top
      - Canvas.TextHeight(OutStr)) shr 1), OutStr);
  end;
end;

function TCnAsciiForm.GetChr(I: Integer): string;
begin
  Result := Chr(I);
end;

function TCnAsciiForm.GetOrd(I: Integer; Hex: Boolean): string;
begin
  if not Hex then
    Result := IntToStr(I)
  else
    Result := IntToHex(I, 2);
end;

procedure TCnAsciiForm.cbFontChange(Sender: TObject);
begin
  Grid.Font.Name := cbFont.Text;
  StatusBar.Font.Name := cbFont.Text;
  imVirtual.Canvas.Font.Name := cbFont.Text;
end;

procedure TCnAsciiForm.GridClick(Sender: TObject);
begin
  if FIsClick then
  begin
    edtOut.Text := edtOut.Text +
      GetChrSharp((Grid.Row - 1) * 8 + Grid.Col - 1 + FPage * 128);
    edtOut.SelStart := Length(edtOut.Text) + 1;
  end;
end;

procedure TCnAsciiForm.UpdateChart;
var
  I, J: Integer;
begin
  for I := 0 to Grid.RowCount - 1 do
    Grid.Cells[0, I] := GetOrd(8 * (I - 1) + FPage * 128, FHex);
  for I := 0 to Grid.ColCount - 1 do
    Grid.Cells[I, 0] := GetOrd(I - 1  + FPage * 128, FHex);
  Grid.Cells[0, 0] := '';

  for I := 1 to Grid.RowCount - 1 do
  begin
    for J := 1 to Grid.ColCount - 1 do
    begin
      Grid.Cells[J, I] := GetChr((I - 1) * 8 + J - 1 + FPage * 128);
    end;
  end;
end;

procedure TCnAsciiForm.UpdateStatusBar;
begin
  StatusBar.Panels[0].Text := 'Dec: ' + GetOrd((Grid.Row - 1) * 8 + Grid.Col - 1 + FPage * 128, False);
  StatusBar.Panels[1].Text := 'Hex: ' + GetOrd((Grid.Row - 1) * 8 + Grid.Col - 1 + FPage * 128, True);
  StatusBar.Panels[2].Text := GetChr((Grid.Row - 1) * 8 + Grid.Col - 1 + FPage * 128);
  StatusBar.Panels[3].Text := GetNonVisualDesc((Grid.Row - 1) * 8 + Grid.Col - 1 + FPage * 128);
  DrawStretchedAscii;
end;

procedure TCnAsciiForm.seFontSizeChange(Sender: TObject);
begin
  Grid.Font.Size := seFontSize.Value;
  imVirtual.Canvas.Font.Size := seFontSize.Value;
end;

procedure TCnAsciiForm.sbHexClick(Sender: TObject);
begin
  FHex := sbHex.Down;
  UpdateChart;
  UpdateStatusBar;
end;

procedure TCnAsciiForm.PageActionExecute(Sender: TObject);
begin
  FPage := 1 - FPage;
  if FPage = 1 then
    PageAction.Caption := '<'
  else
    PageAction.Caption := '>';
  UpdateChart;
  Grid.Row := 1; Grid.Col := 1;
  UpdateStatusBar;
end;

procedure TCnAsciiForm.DoLanguageChanged(Sender: TObject);
begin
  FPage := 1;
  sbHex.OnClick(sbHex);
  PageAction.Execute;
  cbFont.ItemIndex := cbFont.Items.IndexOf(Grid.Font.Name);
  seFontSize.Value := Grid.Font.Size;
  edtOut.Text := '';
  cbFont.OnChange(cbFont);
  seFontSize.OnChange(seFontSize);
  DrawStretchedAscii;
end;

function TCnAsciiForm.GetHelpTopic: string;
begin
  Result := 'CnAsciiChart';
end;

procedure TCnAsciiForm.GridMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  ACol, ARow: Integer;
begin
  Grid.MouseToCell(X, Y, ACol, ARow);
  if (ACol <> FOldCol) or (ARow <> FOldRow) then
  begin
    FOldCol := ACol; FOldRow := ARow;
    UpdateStatusBar;
    Exit;
  end;

  FIsClick := False;

  if (ACol > 0) and (ARow > 0) then
  begin
    try
      Grid.Col := ACol;
      Grid.Row := ARow;
    except
      ;
    end;
  end;

  FIsClick := True;
  UpdateStatusBar;
end;

procedure TCnAsciiForm.GridMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
{$IFNDEF STAND_ALONE}
    CnOtaInsertTextToCurSource(GetChrSharp((Grid.Row - 1) * 8 + Grid.Col - 1 + FPage * 128));
{$ELSE}
    Clipboard.AsText := GetChrSharp((Grid.Row - 1) * 8 + Grid.Col - 1 + FPage * 128);
{$ENDIF}
end;

procedure TCnAsciiForm.DrawStretchedAscii;
var
  ARect: TRect;
begin
  ARect := Rect(0, 0, 16, 16);
  imVirtual.Canvas.FillRect(ARect);
  imVirtual.Canvas.TextOut(4, 1, GetChr((Grid.Row - 1) * 8 + Grid.Col - 1 + FPage * 128));
  Image.Canvas.StretchDraw(Image.Canvas.ClipRect, imVirtual.Picture.Bitmap);
end;

function TCnAsciiForm.GetChrSharp(I: Integer): string;
begin
  if (I >= 32) and (I < 127) then
    Result := Chr(I)
  else if sbHex.Down then
    Result := '#$' + IntToHex(I, 2)
  else
    Result := '#' + IntToStr(I);
end;

procedure TCnAsciiForm.ToHexActionExecute(Sender: TObject);
var
  I: Integer;
  S: string;
begin
  S := '';
  if edtSource.Text <> '' then
    for I := 1 to Length(edtSource.Text) do
      S := S + GetChrSharp(Ord(edtSource.Text[I]));

  edtOut.Text := S;
end;

procedure TCnAsciiForm.edtSourceKeyPress(Sender: TObject; var Key: Char);
begin
  if AnsiChar(Key) in [#13, #10] then
    ToHexAction.Execute;
end;

function TCnAsciiForm.GetNonVisualDesc(I: Integer): string;
begin
  Result := '';
  if (I <= High(SCnNonVisualAscii)) and (I >= Low(SCnNonVisualAscii)) then
    Result := SCnNonVisualAscii[I];
end;

procedure TCnAsciiForm.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FIsClick := False;
end;

procedure TCnAsciiForm.GridKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FIsClick := True;
end;

{$IFNDEF STAND_ALONE}
initialization
  RegisterCnEditor(TCnAsciiChart); // ע��ר��
{$ENDIF}

{$ENDIF CNWIZARDS_CNEDITORWIZARD}
end.