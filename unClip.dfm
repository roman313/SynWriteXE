object fmClip: TfmClip
  Left = 181
  Top = 234
  Width = 157
  Height = 283
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
  object ListClip: TSpTBXListBox
    Left = 0
    Top = 0
    Width = 149
    Height = 249
    Style = lbOwnerDrawFixed
    Align = alClient
    ItemHeight = 13
    TabOrder = 0
    OnDrawItem = ListClipDrawItem
  end
end
