object CnAboutForm: TCnAboutForm
  Left = 208
  Top = 182
  Width = 655
  Height = 427
  Caption = '&Introduction'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TPanel
    Left = 0
    Top = 0
    Width = 647
    Height = 400
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 52
      Top = 96
      Width = 585
      Height = 234
      AutoSize = False
      Caption = 
        'Welcome to CnPack Relation Analyzer in CnPack IDE Wizards.'#13#10#13#10'Th' +
        'is Tool is Used to Analyze Executable Files Generated by Delphi,' +
        ' Get its Packages and Units Information. And It also can Get the' +
        ' Relations between Packages, and Relations between Packages and ' +
        'its Units.'#13#10#13#10'Analyzed Result can be Saved to an ARF File. And W' +
        'e can Create an SMR File from an ARF File to Query/View the Rela' +
        'tions between the Executables and Source Files Later.'#13#10#13#10'For Com' +
        'mon Situation, You can Open One or More Executable Files in "Ana' +
        'lyze Executable Files" Page and Analyze them. Analyzed Result ca' +
        'n be Save to an ARF File and Re-opened in "View Analyzed Result"' +
        ' Page.'#13#10#13#10'ARF is Generated by Analyzed Result, which only Contai' +
        'ns the Relations between the Executables and Pascal Source File ' +
        'NAME, NO Path Information and Other File Types. For Advanced Sit' +
        'uation, You can Open an ARF File in "Edit Source-Module Relation' +
        's" Page to Edit it and Generate an SMR File, which Contains the ' +
        'Relations between the Executables and Full Path Information of S' +
        'ource Files. Then You can View SMR Files in "View Source-Module ' +
        'Relations" Page Later.'
      WordWrap = True
    end
    object bvl1: TBevel
      Left = 0
      Top = 73
      Width = 647
      Height = 8
      Align = alTop
      Shape = bsTopLine
    end
    object bvlLine: TBevel
      Left = -10
      Top = 346
      Width = 657
      Height = 10
      Anchors = [akLeft, akRight, akBottom]
      Shape = bsBottomLine
    end
    object pnl1: TPanel
      Left = 0
      Top = 0
      Width = 647
      Height = 73
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      object lbl2: TLabel
        Left = 52
        Top = 36
        Width = 336
        Height = 13
        Alignment = taCenter
        Caption = 
          'CnPack IDE Wizards - Source file / affected Modules Relation Ana' +
          'lyzer'
        Layout = tlCenter
      end
      object lbl1: TLabel
        Left = 16
        Top = 16
        Width = 122
        Height = 13
        Alignment = taCenter
        Caption = 'CnPack Relation Analyzer'
        Layout = tlCenter
      end
      object img1: TImage
        Left = 597
        Top = 20
        Width = 32
        Height = 32
        Anchors = [akTop, akRight]
        Picture.Data = {
          07544269746D6170360C0000424D360C00000000000036000000280000002000
          0000200000000100180000000000000C0000120B0000120B0000000000000000
          0000FFFFFFE6E9EBBFC7CAB1B9BCABB2B5AAB1B4AAB1B4AAB1B4AAB1B4AAB1B4
          AAB1B4AAB1B4AAB1B4AAB1B4AAB1B4AAB1B4AAB1B4DA89BDC445979630728F2E
          6D932F70892C68862B66A3347CACACACAAB1B4AAB1B4ABB1B4C7CBCEE5E8E9FC
          FCFCEEF0F1BDC6CAA9B0B291969982878A7E84877F84877F84877F84877F8487
          7F84877F84877F84877F84877F84877F84877F8487D06CADFAF0F6FDF9FCF9ED
          F5F6E3EFF5E1EEF3DAEA922F6FACACAC7F84877F84878085888B9092A1A8ABF2
          F3F4CED1D5C5BCC0A1979A796D6F6155575C4F515D50525D50525D50525D5052
          5D50525C50525C50525C50525C50525C50525C5052D883BAFCF6FADA8ABEDB8F
          C0DA89BDE09EC9F7E7F1A1337AACACAC5B50525B50515C5557686E708B9093BE
          C4C69DD7DA3CE2E434D4D526C6C71EBEBE1CBCBC1CBCBC1CBCBC1CBCBC1DBCBC
          1DBCBC1DBCBC1DBCBD1EBCBD1EBCBD1EBCBC1FBCBCCE66A9FAF0F6FDF9FCFBF2
          F8FBF3F8F3DAEAF4DDEC812962ACACAC22BCBD20C3C32C98995C5557808588AA
          B1B584DCDF00F8F80AF8F808FBFB03FCFC02FCFC05FCFC08FCFC0DFCFD12FDFD
          17FDFD1CFDFD22FCFD29FEFD2FFEFD37FFFF3DFFFFD478B4FEFCFDDA8CBEDD95
          C4D67EB7DB8EC0FDF9FC812962ACACAC8DFFFF87FFFF1FC3C35B4F517F8487AA
          B1B488DBDE01F5F50FF3F30AF2F206F2F209F2F20EF2F312F2F317F3F31CF3F3
          22F1F028EAEA2DE4E533E3E23AE7E742EEEE4CF4F4D374B1FDF9FCFDF9FCFDF8
          FBFCF5FAF5E1EEF8EAF3993174ACACACA2FAFA9CFFFF24BCBD5B50527F8487AA
          B1B488DBDE00F4F40AF2F206F2F209F2F20EF3F213F2F318F3F31DF3F322F0F0
          26E6E428D1CF2ABBB92EB5B436C2C143D8D851ECECD57BB5FEFCFDE09EC9DE98
          C5D781B9DD94C3FCF6FA983174ACACACA8FAFAA2FFFF24BCBD5B50527F8487AA
          B1B489DBDE00F5F407F2F209F2F20DF2F212F2F317F3F31DF3F422F3F428EEEB
          29D3CE25A3A9218086227A752C8F8C3EB5B553DDDDD987BCF6E3EFFCF5FAFBF3
          F8FCF6FAFEFBFDF9EDF58C2D6AACACACB0FBFBAAFFFF24BCBD5B50527F8487AA
          B1B489DBDE00F4F40AF2F20EF2F213F3F317F2F31DF3F323F4F329F5F32BDBE4
          1663DD0515ED040CE50D2AA322626C38979554CFCFD987BCDD94C3DD94C3D987
          BCCF68ABCE64A9CE64A98C2D6AAEFBFBB9FBFBB1FFFF25BCBD5B50527F8487AA
          B1B488DBDE00F5F40DF2F312F3F317F3F21DF3F422F4F329F4F431FCF22090EE
          0101FE0000FF0000FF0000FC163B983A918658CACA70EEEE7DF9F986F9F98EF9
          F996FAF99FFAFAA7FBFAAEFBFBB6FCFCACACACACACACACACACACACACACACACAC
          ACAC88DBDE00F4F412F3F317F3F31DF3F323F4F428F3F42FF4F53AFFF2165AF8
          0000FF0000FF0000FF0000FF122DCA49A59564D3D379F1F186F9FAFF380296F9
          F99EFAFAFF3802AEFBFBB6FBFB45D44528AA281E7F1E1C781C1E7D1E1B731B21
          8A2188DBDE01F5F518F3F31DF4F423F4F429F5F530F5F537F5F541FFF4227CF7
          0000FF0000FF0000FF0000FF224EC95CC4B872E5E584F5F68EFAF996FAFAFF38
          02FF3802FF3802FF3802BDFCFC40D240A1E9A1A1E8A174C1A295B78CA6EAA620
          882087DBDE05F5F51EF1F222EFEF27EBEB2DEBEA34EDEC3CF2F247F8F442D7F5
          1743FA040AFD0308FB1229E1499BBA6FDCD782F3F38DF9F995F9F89BF5F6A0F0
          F1A7F1F1FF3802BBF8F8C4FBFC2FC62F9DE89DB2CDCA3099CC2396C76CA8A01A
          6D1A87DBDE09F3F323E9EA25DBDB28CCCC2CC8C835D1D13FE2E24BF0F056FBF6
          58EAF1163BFB1024E44899A05FBEB879E3E38DF9F995F9F998F0F095E1E192D1
          D194CECDA1D6D7B5E8E8C8F6F636D036B6E4AB73B7AB6CBBDE348FBA5EB1BD1A
          6D1A87DBDE0CEFEE28DDD524BCAD229A8C248E872C9E9D3ABCBC4AD7D756E2E4
          63F2DA1A3DF71121DB4D99815AA7A876CFD08AE6E791E5E590D8D083BDAD739E
          8F6F928B80A3A3A1C7C7C3E8E833CF3373D37B33BD49289B3793B196A5E9A71F
          821F87DBDD0FEAE61F94D10E41D10C2EBF144683216D69308D8D41ADAD4DBEBE
          57C5AF1630EC0D18D43F755F4B848365A7A879BFBF80C0BC5A82BF2C3ECF232F
          C03848865F757189A4A3BAD8D73AD13A84EF9B84B88C3BA632B4E4A1A6EAA61E
          801E87E0DC06ADEA0612F70000FF0000FF0105EB18437A2F7D63409C8A4EAF99
          336CBA060CF70305F1233E8C47765F60978477B298587EB5090DF30000FF0000
          FF0405EB3D48857E938BB7CFCE43D343A0E9A1A4CC9FBEE1B5A1E9A1A6EAA61C
          761C89E7DB0066F70000FF0000FF0000FF0000FF040AE5091AD20E22DD1126E1
          0408F80000FF0000FF0204F40F19D41521DC1A28E0151DEC0000FF0000FF0000
          FF0000FF2930C18DA091C0D4D443D3434FD64F4FD64F43D3432FC82F2EC42E1C
          761C89E9DC0068F90000FF0000FF0000FF0000FF0D1EEE1A3AF21F3FFA2242FD
          080FFF0000FF0000FF0609F82131EC2B3DF83446FE222DFB0000FE0000FF0000
          FF0000FF3B43D4B1C4B4D4E4E4ECF9F9F9FFFFEAFFFF27BCBD5A50527F8487AA
          B1B487E2DD12BAF60B17FD0000FF0000FF0712F8439AD16EEBD07EFBE88DFFF2
          61A9F60B13FE070BF6496EBB8AC8B2AEF1DECDFFF597C1F91317FE0000FF0000
          FF1013F88D9BD7D5E5DEE7F4F4F4FEFEFDFFFFEEFFFF27BDBD5A50527F8487AA
          B1B484DBDE2AFAF644B9F62868F82A66F64DAEEB6EECE87AF2F185F7F78EFBFB
          9FFFF32842FD1B26E27AB19B8DC2C1B0E8E9C6FDFDD0FFFC9FBEFB5C6BFC5D69
          FAA2B3F0E0F1EDEBF7F7F4FDFDFAFFFEFFFFFFF0FFFF27BDBD5A50527F8487AA
          B1B483DBDD2EF7F763FEF769FFF571FFF577FDF67DF8F885F9F98DF9F995F9F8
          A1FDEB293FFB1923DE74A08E87B2B2ADDDDCC8F7F7D3FCFCE3FFFFF2FFFFF8FF
          FFF7FFFFF1FEFDFAFFFFFFFFFFFEFFFFFFFFFFF4FFFF27BDBC5A50527F8487AA
          B1B483DBDD33F7F76AF7F76CF7F875F8F87DF9F886F9F88EF9F996FAFA99F3F3
          9FEDD4273AF3141BD56281677292919DC2C1C3E9E9D9FEFED8EAE9B19793AD89
          88D2C5C3FAFFFFE7DFDED9C1BEFEFDFDDFC8C6D6D8D729C0C05A50527F8487AA
          B1B482DBDD38F8F772F8F874F8F77DF8F885F8F98EF9F996FAFA9EFAFA9EEDEB
          6B9BD31720ED0C10DE36457C5B706D88A3A2BBDADAD8F2F289463F6B0900802E
          2A6A0A00CEB3B0C49D9984342CFBF9F8974E469D807A2DC6C75A51537F8487AA
          B1B481DBDD3FF8F87BF8F87DF8F886F9F88EF9F996F9F99FFBFAABFEF97BB0ED
          0D11F80000FE0000FF0405EC3D49867F938CBCD7D7B7A9A66D0C04CCBAB6FCFC
          FBA56E68BB8D89C8A39F8D423AFDFCFB9B554EA288832DC5C65A51537F8487AA
          B1B481DBDD44F8F883F8F885F9F98EF9F996F9FA9EFAFAA7FBFBB8FFF94A66F8
          0000FF0000FF0000FF0000FF2930C18EA091C6DEDEAE928E7D2A22E9E7E6FFFF
          FFFFFFFFFFFFFFC39C9873170ED0B1AE7B2018A38A842EC6C75A51537F8487AA
          B1B480DBDD49F8F88DF9F98EF9F996F9FA9EFAFAA7FAFAAEFBFBC1FFFA4F6AFB
          0000FF0000FF0000FF0000FF3C43D4B1C4B4D9EDEDC1ABA76E1005D5BEBBFFFF
          FFC8A49FD6BBB8D6BBB8944F4795504885302FCBCCC92CC5C6594F517E8387AA
          B1B480DBDD4FF9F995FAFA96FAFA9EFAFAA6FBFBAFFAFBB6FBFBC4FFFC94BDFA
          1317FD0000FF0000FF1012F88D9BD7D5E5DEE9F7F7F0F4F38C423A771E1B9149
          42670300B4827DFEFDFDFFFFFFFCFAF9F6EEEDF2FFFF29BEBF5E555783888AAB
          B2B67FDBDD55F9F99EFAFA9EFAFAA6FAFAAEFAFBB6FBFBBDFCFBC5FDFCCFFFFC
          9FBEFB5C6BFC5D68F9A2B3F0E0F0EDEBF8F7F4FDFDFEFFFFF3EDEDB78783A56B
          64C39C98FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEFFFF31C7C7766D6F919699B1
          B8BB7EDBDD60F9F9B2FBFBB1FBFBB9FBFCC1FCFCCAFCFCD1FDFDDAFDFDE1FEFE
          EEFFFDFAFFFEFFFFFDFFFFFDFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFFF3FD5D69E9699A8AFB2BB
          C3C77DDCDE32FAFA6AFAFA69FAFA6EFAFA73FBFA79FBFB7DFBFB82FBFB87FCFB
          8BFCFC8FFDFC93FDFD97FEFD9AFDFD9CFDFC9FFDFDA0FDFDA0FDFDA0FDFDA0FD
          FDA0FDFDA0FDFDA0FDFDA0FDFDA0FDFDA0FDFD8FFEFE3EE3E4C4BBBFC6CCCFD5
          DBDFB4D4D780DBDE7DDBDD7DDADD7DDADD7CDADD7CDADD7BDADD7BDADD7ADADD
          7ADADD79DADD79DADD78DADD78DADD78DADD78DADD77DADD77DADD77DADD77DA
          DD77DADD77DADD77DADD77DADD77DADD77DADD77DBDE9CD7DACCCED2EDEFF1FC
          FCFC}
      end
    end
    object btnAbout: TBitBtn
      Left = 16
      Top = 367
      Width = 75
      Height = 21
      Anchors = [akLeft, akBottom]
      Caption = '&About'
      TabOrder = 1
      OnClick = btnAboutClick
      NumGlyphs = 2
    end
    object btnClose: TBitBtn
      Left = 555
      Top = 367
      Width = 75
      Height = 21
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = '&Close'
      ModalResult = 1
      TabOrder = 3
      OnClick = btnCloseClick
      NumGlyphs = 2
    end
    object btnHelp: TBitBtn
      Left = 104
      Top = 367
      Width = 75
      Height = 21
      Anchors = [akLeft, akBottom]
      Caption = '&Help'
      TabOrder = 2
      OnClick = btnHelpClick
      NumGlyphs = 2
    end
  end
  object CnHashLangFileStorage: TCnHashLangFileStorage
    StorageMode = smByDirectory
    LanguagePath = '\'
    FileName = 'CnIdeBRTool'
    Languages = <>
    ListLength = 1024
    IncSize = 2
    Left = 256
    Top = 424
  end
end