object fmClip: TfmClip
  Left = 181
  Top = 234
  ClientHeight = 245
  ClientWidth = 141
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ListClip: TListBox
    Left = 0
    Top = 0
    Width = 141
    Height = 245
    Style = lbOwnerDrawFixed
    Align = alClient
    ItemHeight = 13
    TabOrder = 0
    OnDrawItem = ListClipDrawItem
  end
end