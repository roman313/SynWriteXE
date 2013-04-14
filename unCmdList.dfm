object fmCmdList: TfmCmdList
  Left = 247
  Top = 474
  ActiveControl = Edit
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Commands list'
  ClientHeight = 284
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = TntFormCreate
  OnKeyDown = FormKeyDown
  OnResize = TntFormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object List: TListBox
    Left = 0
    Top = 24
    Width = 494
    Height = 244
    Style = lbOwnerDrawFixed
    Align = alClient
    TabOrder = 1
    OnDblClick = ListDblClick
    OnDrawItem = ListDrawItem
  end
  object Edit: TEdit
    Left = 0
    Top = 0
    Width = 494
    Height = 24
    Align = alTop
    TabOrder = 0
    OnChange = EditChange
    OnKeyDown = EditKeyDown
    ExplicitWidth = 502
  end
  object Panel1: TPanel
    Left = 0
    Top = 268
    Width = 494
    Height = 16
    Align = alBottom
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitTop = 272
    ExplicitWidth = 502
    object labHelp: TLabel
      Left = 488
      Top = 0
      Width = 14
      Height = 13
      Cursor = crHandPoint
      Align = alRight
      Caption = #187'? '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = labHelpClick
    end
    object cbFuzzy: TCheckBox
      Left = 0
      Top = 0
      Width = 217
      Height = 16
      Align = alLeft
      Caption = 'Fuzzy search'
      TabOrder = 0
      OnClick = cbFuzzyClick
    end
  end
  object Keys: TSyntKeyMapping
    Items = <>
    Left = 360
    Top = 4
  end
  object TimerType: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerTypeTimer
    Left = 384
    Top = 4
  end
end
