object fmToolbarProp: TfmToolbarProp
  Left = 227
  Top = 416
  BorderStyle = bsDialog
  Caption = 'Toolbar properties'
  ClientHeight = 382
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bOk: TSpTBXButton
    Left = 208
    Top = 351
    Width = 90
    Height = 23
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object bCan: TSpTBXButton
    Left = 304
    Top = 351
    Width = 90
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object GroupBoxCmd: TSpTBXGroupBox
    Left = 8
    Top = 96
    Width = 385
    Height = 249
    Caption = 'Buttons'
    TabOrder = 0
    object Label2: TSpTBXLabel
      Left = 8
      Top = 16
      Width = 52
      Height = 13
      Caption = 'Button list:'
    end
    object LabelHint: TSpTBXLabel
      Left = 8
      Top = 124
      Width = 23
      Height = 13
      Caption = 'Hint:'
    end
    object LabelCmd: TSpTBXLabel
      Left = 8
      Top = 164
      Width = 51
      Height = 13
      Caption = 'Command:'
    end
    object LabelIcon: TSpTBXLabel
      Left = 8
      Top = 204
      Width = 25
      Height = 13
      Caption = 'Icon:'
    end
    object ListBox1: TListBox
      Left = 9
      Top = 32
      Width = 368
      Height = 61
      Style = lbOwnerDrawFixed
      Columns = 10
      DragMode = dmAutomatic
      ExtendedSelect = False
      ItemHeight = 36
      TabOrder = 0
      OnClick = ListBox1Click
      OnDragDrop = ListBox1DragDrop
      OnDragOver = ListBox1DragOver
      OnDrawItem = ListBox1DrawItem
    end
    object edHint: TSpTBXEdit
      Left = 8
      Top = 140
      Width = 265
      Height = 21
      TabOrder = 3
      OnChange = edHintChange
    end
    object edCmd: TSpTBXEdit
      Left = 8
      Top = 180
      Width = 265
      Height = 21
      TabOrder = 4
      OnChange = edCmdChange
    end
    object btnBrowseIcon: TSpTBXButton
      Left = 8
      Top = 220
      Width = 97
      Height = 23
      Caption = 'Browse...'
      TabOrder = 6
      OnClick = btnBrowseIconClick
    end
    object btnBrowseCmd: TSpTBXButton
      Left = 280
      Top = 180
      Width = 97
      Height = 23
      Caption = 'Browse...'
      TabOrder = 5
    end
    object btnAdd: TSpTBXButton
      Left = 8
      Top = 96
      Width = 97
      Height = 23
      Caption = 'Add'
      TabOrder = 1
      OnClick = btnAddClick
    end
    object btnDel: TSpTBXButton
      Left = 216
      Top = 96
      Width = 97
      Height = 23
      Caption = 'Delete'
      TabOrder = 2
      OnClick = btnDelClick
    end
    object btnSep: TSpTBXButton
      Left = 112
      Top = 96
      Width = 97
      Height = 23
      Caption = 'Separator'
      TabOrder = 7
      OnClick = btnSepClick
    end
  end
  object GroupBoxProp: TSpTBXGroupBox
    Left = 8
    Top = 4
    Width = 385
    Height = 89
    Caption = 'Properties'
    TabOrder = 3
    object Label6: TSpTBXLabel
      Left = 8
      Top = 16
      Width = 78
      Height = 13
      Caption = 'Toolbar caption:'
    end
    object Label1: TSpTBXLabel
      Left = 8
      Top = 64
      Width = 51
      Height = 13
      Caption = 'Icons size:'
    end
    object LabelSize: TSpTBXLabel
      Left = 120
      Top = 64
      Width = 30
      Height = 13
      Caption = '10x10'
    end
    object edCaption: TSpTBXEdit
      Left = 8
      Top = 32
      Width = 265
      Height = 21
      TabOrder = 0
    end
    object btnIconSize: TSpTBXButton
      Left = 176
      Top = 58
      Width = 97
      Height = 23
      Caption = 'Change...'
      TabOrder = 1
      OnClick = btnIconSizeClick
    end
  end
end
