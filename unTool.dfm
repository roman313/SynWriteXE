object fmTools: TfmTools
  Left = 144
  Top = 205
  ActiveControl = List
  BorderStyle = bsDialog
  Caption = 'External tools'
  ClientHeight = 342
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = TntFormCloseQuery
  OnCreate = TntFormCreate
  OnShow = TntFormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TntGroupBox1: TGroupBox
    Left = 272
    Top = 4
    Width = 423
    Height = 301
    Caption = 'Tool properties'
    TabOrder = 1
    object TntLabel1: TLabel
      Left = 8
      Top = 44
      Width = 49
      Height = 13
      Caption = '&File name:'
      FocusControl = edFN
    end
    object TntLabel2: TLabel
      Left = 8
      Top = 68
      Width = 59
      Height = 13
      Caption = '&Parameters:'
      FocusControl = edPar
    end
    object TntLabel3: TLabel
      Left = 8
      Top = 92
      Width = 61
      Height = 13
      Caption = '&Initial folder:'
      FocusControl = edDir
    end
    object TntLabel4: TLabel
      Left = 8
      Top = 20
      Width = 31
      Height = 13
      Caption = '&Name:'
      FocusControl = edCap
    end
    object TntLabel5: TLabel
      Left = 8
      Top = 164
      Width = 38
      Height = 13
      Caption = '&Hotkey:'
      FocusControl = edKey
    end
    object TntLabel6: TLabel
      Left = 8
      Top = 116
      Width = 31
      Height = 13
      Caption = '&Lexer:'
      FocusControl = edLexer
    end
    object TntLabel7: TLabel
      Left = 8
      Top = 140
      Width = 63
      Height = 13
      Caption = 'Save &before:'
      FocusControl = edLexer
    end
    object TntLabel8: TLabel
      Left = 8
      Top = 228
      Width = 63
      Height = 13
      Caption = 'Output type:'
      FocusControl = edOutType
    end
    object TntLabel9: TLabel
      Left = 8
      Top = 252
      Width = 47
      Height = 13
      Caption = 'Encoding:'
      FocusControl = edOutType
    end
    object edFN: TEdit
      Left = 96
      Top = 40
      Width = 240
      Height = 21
      TabOrder = 1
      OnChange = edFNChange
    end
    object bBr: TButton
      Left = 342
      Top = 40
      Width = 75
      Height = 21
      Caption = '&Browse...'
      TabOrder = 2
      OnClick = bBrClick
    end
    object edDir: TEdit
      Left = 96
      Top = 88
      Width = 240
      Height = 21
      TabOrder = 5
      OnChange = edDirChange
    end
    object edPar: TEdit
      Left = 96
      Top = 64
      Width = 240
      Height = 21
      TabOrder = 3
      OnChange = edParChange
    end
    object bBr2: TButton
      Left = 342
      Top = 88
      Width = 75
      Height = 21
      Caption = 'B&rowse...'
      TabOrder = 6
      OnClick = bBr2Click
    end
    object bPar: TButton
      Left = 342
      Top = 64
      Width = 75
      Height = 21
      Caption = '&Add...'
      TabOrder = 4
      OnClick = bParClick
    end
    object cbOut: TCheckBox
      Left = 8
      Top = 206
      Width = 281
      Height = 17
      Caption = '&Capture output'
      TabOrder = 13
      OnClick = cbOutClick
    end
    object bOut: TButton
      Left = 96
      Top = 272
      Width = 137
      Height = 21
      Caption = '&Output pattern...'
      TabOrder = 16
      OnClick = bOutClick
    end
    object edCap: TEdit
      Left = 96
      Top = 16
      Width = 240
      Height = 21
      TabOrder = 0
      OnChange = edCapChange
    end
    object edKey: TecHotKey
      Left = 96
      Top = 160
      Width = 240
      Height = 21
      TabStop = False
      HotKey = 0
      TabOrder = 10
      OnChange = edKeyChange
    end
    object edLexer: TComboBox
      Left = 96
      Top = 112
      Width = 240
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 7
      OnChange = edLexerChange
    end
    object bLex: TButton
      Left = 342
      Top = 112
      Width = 75
      Height = 21
      Caption = 'C&urrent'
      TabOrder = 8
      OnClick = bLexClick
    end
    object bKey: TButton
      Left = 342
      Top = 160
      Width = 75
      Height = 21
      Caption = 'None'
      TabOrder = 11
      OnClick = bKeyClick
    end
    object edSave: TComboBox
      Left = 96
      Top = 136
      Width = 240
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 9
      OnChange = edSaveChange
      Items.Strings = (
        'Nothing'
        'Current document'
        'All documents')
    end
    object cbCtx: TCheckBox
      Left = 8
      Top = 186
      Width = 281
      Height = 17
      Caption = '&Show in context menu'
      TabOrder = 12
      OnClick = cbCtxClick
    end
    object edOutType: TComboBox
      Left = 96
      Top = 224
      Width = 240
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 14
      OnChange = edOutTypeChange
    end
    object edOutEnc: TComboBox
      Left = 96
      Top = 248
      Width = 240
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 15
      OnChange = edOutEncChange
      Items.Strings = (
        'ANSI (Windows)'
        'OEM (DOS)'
        'UTF-8')
    end
  end
  object bOk: TButton
    Left = 408
    Top = 312
    Width = 90
    Height = 23
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object bCancel: TButton
    Left = 600
    Top = 312
    Width = 90
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 4
  end
  object TntGroupBox2: TGroupBox
    Left = 8
    Top = 4
    Width = 257
    Height = 301
    Caption = 'Tools'
    TabOrder = 0
    object List: TListView
      Left = 8
      Top = 16
      Width = 155
      Height = 273
      Columns = <
        item
          Caption = 'Name'
          Width = 125
        end
        item
          Width = 0
        end
        item
          Width = 0
        end
        item
          Width = 0
        end
        item
          Width = 0
        end
        item
          Width = 0
        end
        item
          Width = 0
        end
        item
          Width = 0
        end
        item
          Width = 0
        end
        item
          Width = 0
        end>
      ColumnClick = False
      GridLines = True
      HideSelection = False
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      OnChange = ListChange
      OnClick = ListClick
    end
    object bUp: TButton
      Left = 170
      Top = 16
      Width = 75
      Height = 21
      Caption = '&Up'
      TabOrder = 1
      OnClick = bUpClick
    end
    object bDn: TButton
      Left = 170
      Top = 40
      Width = 75
      Height = 21
      Caption = '&Down'
      TabOrder = 2
      OnClick = bDnClick
    end
    object bClr: TButton
      Left = 170
      Top = 64
      Width = 75
      Height = 21
      Caption = 'Cl&ear'
      TabOrder = 3
      OnClick = bClrClick
    end
  end
  object bHelp: TButton
    Left = 504
    Top = 312
    Width = 90
    Height = 23
    Caption = 'Help'
    TabOrder = 3
    OnClick = bHelpClick
  end
  object TntOpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 200
    Top = 116
  end
  object DKLanguageController1: TDKLanguageController
    Left = 224
    Top = 116
    LangData = {
      0700666D546F6F6C73010100000001000000070043617074696F6E0142000000
      0C00546E7447726F7570426F783101010000000B000000070043617074696F6E
      000900546E744C6162656C31010100000002000000070043617074696F6E0009
      00546E744C6162656C32010100000003000000070043617074696F6E00090054
      6E744C6162656C33010100000004000000070043617074696F6E000400656446
      4E00000300624272010100000006000000070043617074696F6E000500656444
      697200000500656450617200000300624F6B0101000000080000000700436170
      74696F6E0007006243616E63656C010100000009000000070043617074696F6E
      000E00546E744F70656E4469616C6F673100000C00546E7447726F7570426F78
      3201010000000C000000070043617074696F6E0004004C69737401010000000D
      0000001200436F6C756D6E735B305D2E43617074696F6E000400624272320101
      00000010000000070043617074696F6E00030062557001010000001100000007
      0043617074696F6E00030062446E010100000012000000070043617074696F6E
      00040062506172010100000019000000070043617074696F6E0006006D6E7550
      617200010100000007006D6E75506172310000080070437572576F7264000008
      007046696C65446972000009007046696C654E616D6500000B00704375724C69
      6E654E756D0000050063624F7574010100000013000000070043617074696F6E
      000400624F7574010100000014000000070043617074696F6E000900546E744C
      6162656C34010100000015000000070043617074696F6E000500656443617000
      00040062436C72010100000016000000070043617074696F6E000900546E744C
      6162656C35010100000017000000070043617074696F6E00050065644B657900
      000900546E744C6162656C36010100000018000000070043617074696F6E0007
      0065644C6578657200000400624C657801010000001A00000007004361707469
      6F6E000400624B657901010000001B000000070043617074696F6E000900546E
      744C6162656C3701010000001C000000070043617074696F6E00060065645361
      766501010000001D00000005004974656D73000800704375724C696E6500000A
      0070437572436F6C4E756D000002004E31000002004E3200000D007046696C65
      4E616D654F6E6C7900000500636243747801010000001E000000070043617074
      696F6E0005006248656C7001010000001F000000070043617074696F6E000200
      4E3300000A0070496E74657246696C650000060070496E746572000009007049
      6E7465724469720000090065644F75745479706500000900546E744C6162656C
      38010100000020000000070043617074696F6E000900546E744C6162656C3901
      0100000021000000070043617074696F6E0008007046696C6545787400000E00
      7046696C654E616D654E6F457874000008007053656C54657874000008006564
      4F7574456E6301010000002200000005004974656D730006007050726F6A3300
      0006007050726F6A32000006007050726F6A31000002004E3400000600705365
      6C464E00000A007053656C464E416E7369000009007046696C65457874320000
      09007046696C654469723200000A007046696C654E616D6532000002004E3500
      000A007053796E496E69446972000007007053796E446972000002004E360000}
  end
  object mnuPar: TPopupMenu
    Left = 248
    Top = 116
    object pFileName: TMenuItem
    end
    object pFileDir: TMenuItem
    end
    object pFileNameOnly: TMenuItem
    end
    object pFileNameNoExt: TMenuItem
    end
    object pFileExt: TMenuItem
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object pFileName2: TMenuItem
    end
    object pFileDir2: TMenuItem
    end
    object pFileExt2: TMenuItem
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object pProj1: TMenuItem
    end
    object pProj2: TMenuItem
    end
    object pProj3: TMenuItem
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object pCurWord: TMenuItem
    end
    object pCurLineNum: TMenuItem
    end
    object pCurColNum: TMenuItem
    end
    object pCurLine: TMenuItem
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object pSelText: TMenuItem
    end
    object pSelFN: TMenuItem
    end
    object pSelFNAnsi: TMenuItem
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object pInter: TMenuItem
    end
    object pInterFile: TMenuItem
    end
    object pInterDir: TMenuItem
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object pSynDir: TMenuItem
    end
    object pSynIniDir: TMenuItem
    end
  end
end
