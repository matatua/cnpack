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

unit CnGraphConsts;
{* |<PRE>
================================================================================
* �������ƣ�����ؼ���
* ��Ԫ���ƣ���Դ�ַ������嵥Ԫ
* ��Ԫ���ߣ�CnPack������
* ��    ע���õ�Ԫ�����˽������õ�����Դ�ַ���
* ����ƽ̨��PWin98SE + Delphi 5.0
* ���ݲ��ԣ�PWin9X/2000/XP + Delphi 5/6
* �� �� �����õ�Ԫ�е��ַ��������ϱ��ػ�������ʽ
* ��Ԫ��ʶ��$Id: CnGraphConsts.pas,v 1.6 2009/01/02 08:27:39 liuxiao Exp $
* �޸ļ�¼��2005.12.24 V1.0
*               ������Ԫ
================================================================================
|</PRE>}

interface

{$I CnPack.inc}

var
  SCnAOCaptionColor: string = '&Color';
  SCnAOCaptionFont: string = '&Font';
  SCnAOCaptionOption: string = '&Options';

  SCreateDCFromEmptyBmp: string = 'Can''t create DC for empty bitmap';
  SAllocDIBFail: string = 'Can''t allocate the DIB handle';
  SCreateDCFail: string = 'Can''t create compatible DC';
  SSelectBmpToDCFail: string = 'Can''t select an object into DC';
  SBitmapIsEmpty: string = 'Can''t access data for empty bitmap';
  SInvalidPixel: string = 'Invalid pixel x: %d, y: %d';
  SInvalidPixelF: string = 'Invalid pixel x: %f, y: %f';
  SInvalidScanLine: string = 'Invalid scanline Row: %d';
  SInvalidAlphaBitmap: string = 'In Alpha Blend, Blend Bitmap must be same dimensions as Current Bitmap';
  SInvalidForeBitmap: string = 'Invalid foreground bitmap';
  SReadBmpError: string = 'Read bitmap data error';
  
  // CnSkinMagic Exceptions
  SCNE_WRITEVMTFAILED: string = 'Can''t Write VMT Data, CnSkinMagic Class Register Failed!';
  SCNE_FINDCLASSDATAFAILED: string = 'Can''t Find CnSkingMagic Class Data!';
  SCNE_REGISTERMESSAGEFAILED: string = 'Can''t Register Window Message for CnSkinMagic!';  

implementation

end.