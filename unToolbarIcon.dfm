object fmToolbarIcon: TfmToolbarIcon
  Left = 227
  Top = 573
  BorderStyle = bsDialog
  Caption = 'Toolbar icon'
  ClientHeight = 239
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TSpTBXGroupBox
    Left = 8
    Top = 4
    Width = 385
    Height = 197
    TabOrder = 0
    object Label2: TSpTBXLabel
      Left = 8
      Top = 96
      Width = 55
      Height = 13
      Caption = 'Select icon:'
    end
    object Image1: TImage
      Left = 64
      Top = 112
      Width = 65
      Height = 65
      Center = True
    end
    object LabelErr: TSpTBXLabel
      Left = 8
      Top = 176
      Width = 10
      Height = 13
      Caption = '--'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object btnDLL: TSpTBXRadioButton
      Left = 8
      Top = 16
      Width = 273
      Height = 17
      Caption = 'Get icon from EXE/DLL file'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object btnPNG: TSpTBXRadioButton
      Left = 8
      Top = 32
      Width = 273
      Height = 17
      Caption = 'Read PNG image'
      TabOrder = 1
    end
    object btnBrowse: TSpTBXButton
      Left = 8
      Top = 60
      Width = 97
      Height = 23
      Caption = 'Browse...'
      TabOrder = 2
      OnClick = btnBrowseClick
    end
    object ListBox1: TSpTBXListBox
      Left = 9
      Top = 112
      Width = 368
      Height = 61
      Style = lbOwnerDrawFixed
      Columns = 10
      ExtendedSelect = False
      ItemHeight = 36
      TabOrder = 3
      OnDrawItem = ListBox1DrawItem
      OnMeasureItem = ListBox1MeasureItem
    end
    object btnShell32: TSpTBXButton
      Left = 112
      Top = 60
      Width = 97
      Height = 23
      Caption = 'shell32.dll'
      TabOrder = 4
      OnClick = btnShell32Click
    end
  end
  object bOk: TSpTBXButton
    Left = 208
    Top = 208
    Width = 90
    Height = 23
    Caption = 'OK'
    Default = True
    TabOrder = 1
    OnClick = bOkClick
  end
  object bCan: TSpTBXButton
    Left = 304
    Top = 208
    Width = 90
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object ImageList32: TImageList
    AllocBy = 20
    Height = 32
    Width = 32
    Left = 320
    Top = 16
  end
  object ImageList16: TImageList
    AllocBy = 20
    Left = 288
    Top = 16
  end
  object OpenDialogDLL: TOpenDialog
    FileName = 'D:\S\Util\ToolbarTest\Project1.exe'
    Filter = 'exe, dll|*.exe;*.dll|'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 256
    Top = 16
  end
  object OpenDialogPNG: TOpenDialog
    Filter = 'PNG|*.png|'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 232
    Top = 16
  end
end
