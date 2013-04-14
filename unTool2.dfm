object fmToolOutput: TfmToolOutput
  Left = 273
  Top = 322
  BorderStyle = bsDialog
  Caption = 'Output pattern'
  ClientHeight = 251
  ClientWidth = 321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = TntFormCreate
  OnDestroy = TntFormDestroy
  OnShow = TntFormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bOk: TButton
    Left = 128
    Top = 222
    Width = 90
    Height = 23
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object bCancel: TButton
    Left = 224
    Top = 222
    Width = 90
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object TntGroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 305
    Height = 217
    TabOrder = 0
    object TntLabel1: TLabel
      Left = 8
      Top = 44
      Width = 96
      Height = 13
      Caption = '&Regular expression:'
      FocusControl = edRE
    end
    object TntLabel2: TLabel
      Left = 8
      Top = 100
      Width = 46
      Height = 13
      Caption = '&Filename:'
      FocusControl = edFN
    end
    object TntLabel3: TLabel
      Left = 8
      Top = 84
      Width = 123
      Height = 13
      Caption = 'Subexpressions numbers:'
    end
    object TntLabel4: TLabel
      Left = 104
      Top = 100
      Width = 23
      Height = 13
      Caption = '&Line:'
      FocusControl = edLn
    end
    object TntLabel5: TLabel
      Left = 200
      Top = 100
      Width = 39
      Height = 13
      Caption = '&Column:'
      FocusControl = edCol
    end
    object TntLabel6: TLabel
      Left = 8
      Top = 172
      Width = 79
      Height = 13
      Caption = '&Test output line:'
      FocusControl = edTest
    end
    object Bevel1: TBevel
      Left = 8
      Top = 160
      Width = 289
      Height = 9
      Shape = bsBottomLine
    end
    object Bevel2: TBevel
      Left = 8
      Top = 32
      Width = 289
      Height = 9
      Shape = bsBottomLine
    end
    object edRE: TEdit
      Left = 8
      Top = 60
      Width = 289
      Height = 21
      TabOrder = 1
    end
    object edFN: TComboBox
      Left = 8
      Top = 116
      Width = 73
      Height = 21
      Style = csDropDownList
      DropDownCount = 10
      ItemHeight = 13
      TabOrder = 2
    end
    object edLn: TComboBox
      Left = 104
      Top = 116
      Width = 73
      Height = 21
      Style = csDropDownList
      DropDownCount = 10
      ItemHeight = 13
      TabOrder = 3
    end
    object edCol: TComboBox
      Left = 200
      Top = 116
      Width = 73
      Height = 21
      Style = csDropDownList
      DropDownCount = 10
      ItemHeight = 13
      TabOrder = 4
    end
    object edTest: TEdit
      Left = 8
      Top = 188
      Width = 193
      Height = 21
      TabOrder = 6
      OnChange = edTestChange
    end
    object bTest: TButton
      Left = 208
      Top = 188
      Width = 89
      Height = 21
      Caption = 'T&est'
      TabOrder = 7
      OnClick = bTestClick
    end
    object bPre: TButton
      Left = 8
      Top = 12
      Width = 97
      Height = 21
      Caption = '&Preset...'
      TabOrder = 0
      OnClick = bPreClick
    end
    object cbNoTag: TCheckBox
      Left = 8
      Top = 144
      Width = 289
      Height = 17
      Caption = 'Strip HTML tags from output'
      TabOrder = 5
    end
  end
  object DKLanguageController1: TDKLanguageController
    Left = 280
    Top = 92
    LangData = {
      0C00666D546F6F6C4F7574707574010100000001000000070043617074696F6E
      01140000000300624F6B010100000002000000070043617074696F6E00070062
      43616E63656C010100000003000000070043617074696F6E000C00546E744772
      6F7570426F783100000900546E744C6162656C31010100000004000000070043
      617074696F6E000900546E744C6162656C320101000000050000000700436170
      74696F6E000900546E744C6162656C3301010000000600000007004361707469
      6F6E000900546E744C6162656C34010100000007000000070043617074696F6E
      000900546E744C6162656C35010100000008000000070043617074696F6E0004
      0065645245000004006564464E0000040065644C6E000005006564436F6C0000
      0900546E744C6162656C36010100000009000000070043617074696F6E000600
      65645465737400000500625465737401010000000A000000070043617074696F
      6E000600426576656C31000004006250726501010000000C0000000700436170
      74696F6E000600426576656C32000009006D6E75507265736574000007006362
      4E6F54616701010000000D000000070043617074696F6E00}
  end
  object mnuPreset: TPopupMenu
    OnPopup = mnuPresetPopup
    Left = 264
    Top = 32
  end
end
