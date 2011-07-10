{******************************************************************************}
{                       CnPack For Delphi/C++Builder                           }
{                     中国人自己的开放源码第三方开发包                         }
{                   (C)Copyright 2001-2011 CnPack 开发组                       }
{                   ------------------------------------                       }
{                                                                              }
{            本开发包是开源的自由软件，您可以遵照 CnPack 的发布协议来修        }
{        改和重新发布这一程序。                                                }
{                                                                              }
{            发布这一开发包的目的是希望它有用，但没有任何担保。甚至没有        }
{        适合特定目的而隐含的担保。更详细的情况请参阅 CnPack 发布协议。        }
{                                                                              }
{            您应该已经和开发包一起收到一份 CnPack 发布协议的副本。如果        }
{        还没有，可访问我们的网站：                                            }
{                                                                              }
{            网站地址：http://www.cnpack.org                                   }
{            电子邮件：master@cnpack.org                                       }
{                                                                              }
{******************************************************************************}

unit CnBHConst;
{* |<PRE>
================================================================================
* 软件名称：CnPack IDE 专家辅助备份/恢复工具
* 单元名称：CnWizards 辅助备份/恢复工具字符串常量定义单元
* 单元作者：ccRun(老妖)
* 备    注：CnWizards 专家辅助备份/恢复工具字符串常量定义单元
* 开发平台：PWinXP + Delphi 5.01
* 兼容测试：PWin9X/2000/XP + Delphi 5/6/7 + C++Builder 5/6
* 本 地 化：该单元中的字符串均符合本地化处理方式
* 单元标识：$Id$
* 修改记录：2006.08.23 V1.0
*               LiuXiao 移植此单元
================================================================================
|</PRE>}

interface

var
  g_strAppName: array [0..11] of string =
  (
      'C++Builder 5.0 ', 'C++Builder 6.0 ', 'Delphi 5.0 ', 'Delphi 6.0 ',
      'Delphi 7.0 ', 'Delphi 8.0 ', 'BDS 2005 ', 'BDS 2006 ', 'RAD Studio 2007',
      'RAD Studio 2009', 'RAD Studio 2010', 'RAD Studio XE'
  );

  g_strAppAbName: array[0..11] of string =
  (
      'BCB5', 'BCB6', 'Delphi5', 'Delphi6', 'Delphi7',
      'Delphi8', 'BDS2005', 'BDS2006', 'RADStudio2007',
      'RADStudio2009', 'RADStudio2010', 'RADStudio2011'
  );

  g_strRegPath: array[0..11] of string =
  (
      'C++Builder\5.0', 'C++Builder\6.0', 'Delphi\5.0', 'Delphi\6.0',
      'Delphi\7.0', 'BDS\2.0', 'BDS\3.0', 'BDS\4.0', 'BDS\5.0', 'BDS\6.0',
      'BDS\7.0', 'BDS\8.0'
  );

  g_strOpResult: array[0..1] of string =
  (
      ' Failed!', ' Succeed.'
  );

  g_strAbiOptions: array[0..3] of string =
  (
      'Code Templates',
      'Object Repository',
      'IDE Configuration in Registry',
      'Menu Templates'
  );
  
  g_strObjReps: array[0..9] of string =
  (
      'Type', 'Name', 'Page', 'Icon', 'Description', 'Author',
      'DefaultMainForm', 'DefaultNewForm', 'Ancestor', 'Designer'
  );

  g_strFileInvalid: string = 'Invalid Backup File!' + #13#10 +
    'Please Use the File Generated by this Tool.' + #13#10 +
    'Any Bugs or Suggestions, Please Contact us: master@cnpack.org';

  g_strBackup: string = ' --> Backup';
  g_strRestore: string = ' --> Restore';
  g_strBackuping: string = 'Processing Backup ';
  g_strAnalyzing: string = 'Analysing ';
  g_strRestoring: string = 'Processing Restore ';
  g_strCreating: string = 'Creating ';
  g_strNotFound: string = 'Can NOT Find ';
  g_strObjRepConfig: string = ' Object Repository Config';
  g_strObjRepUnit: string = ' Object Repository Units';
  g_strPleaseWait: string = ', Please Wait...';
  g_strUnkownName: string = 'Unknown Name!';
  g_strBakFile: string = 'Backup File';
  g_strCreate: string = ' Creating';
  g_strAnalyseSuccess: string = ' --> Analysis Complete.';
  g_strBackupSuccess: string = ' --> Backup Complete.';
  g_strThanksForRestore: string = 'Restore Complete!';
  g_strThanksForBackup: string = 'Please Keep this File Carefully.';
  g_strPleaseCheckFile: string = 'Please Check whether the File is in Use or Readonly.';
  g_strAppTitle: string = 'CnWizards IDE Config Backup/Restore Tool';
  g_strAppVer: string = ' 1.0';
  g_strBugReportToMe: string = 'Any Bugs or Suggestions, Please Contact us: master@cnpack.org';
  g_strIDEName: string = 'IDE Name: ';
  g_strInstallDir: string = 'Original Installed Directory: ';
  g_strBackupContent: string = 'Backup Item(s): ';
  g_strIDENotInstalled: string = ' NOT Installed';

  g_strErrorSelectApp: string = 'Please Select One IDE.';
  g_strErrorSelectBackup: string = 'Please Select Item(s) to Backup.';
  g_strErrorFileName: string = 'Please Enter the File Name.';
  g_strErrorSelectFile: string = 'Please Select a File First.';
  g_strErrorFileNotExist: string = 'Backup File NOT Found, Please Select Again.';
  g_strErrorNoIDE: string = 'Error. NO Such IDE Installed.';
  g_strErrorSelectRestore: string = 'Please Select Item(s) to Restore.';
  g_strErrorIDERunningFmt: string = '%s is Running.' + #13#10 + 'Please Close it.';
  g_strNotInstalled: string = 'Not Installed';

  SCnQuitAsk: string = 'Sure To Exit?';
  SCnQuitAskCaption: string = 'Information';
  SCnErrorCaption: string = 'Error';
  SCnIDERunning: string = 'IDE is Running, Please Exit IDE and Run Me again!';
  SCnCleaned: string = 'IDE History Cleanned Successfully!';
  SCnHelpOpenError: string = 'Help File Open Error!';

  SCnAboutCaption: string = 'About';
  SCnIDEAbout: string = 'IDE Config Backup/Restore Tool' + #13#10#13#10 +
    'Author:' + #13#10 +
    'ccrun (info@ccrun.com)' + #13#10 +
    'LiuXiao (liuxiao@cnpack.org)' + #13#10#13#10 +
    'Copyright 2001-2011 CnPack Team';

implementation

end.
