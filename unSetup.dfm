object fmSetup: TfmSetup
  Left = 308
  Top = 396
  ActiveControl = ListCat
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Options'
  ClientHeight = 429
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  OnClose = FormClose
  OnCreate = TntFormCreate
  OnDestroy = TntFormDestroy
  OnShow = FormShow
  DesignSize = (
    702
    429)
  PixelsPerInch = 96
  TextHeight = 13
  object Tabs: TPageControl
    Left = 152
    Top = 0
    Width = 545
    Height = 397
    ActivePage = tabCarets
    Style = tsButtons
    TabOrder = 0
    object tabIntf: TTabSheet
      Caption = 'Interface'
      ImageIndex = 4
      TabVisible = False
      OnShow = tabIntfShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label11: TLabel
        Left = 8
        Top = 364
        Width = 169
        Height = 13
        Caption = '* - saved separately for plugin/app'
      end
      object boxIntf: TGroupBox
        Left = 8
        Top = 0
        Width = 529
        Height = 205
        Caption = 'View'
        TabOrder = 0
        object Label18: TLabel
          Left = 8
          Top = 16
          Width = 51
          Height = 13
          Caption = 'Language:'
        end
        object TntLabel21: TLabel
          Left = 8
          Top = 56
          Width = 49
          Height = 13
          Caption = 'Esc key: *'
        end
        object cbChar: TCheckBox
          Left = 8
          Top = 132
          Width = 360
          Height = 17
          Caption = 'Show "char at cursor" status info'
          TabOrder = 4
        end
        object cbStat: TCheckBox
          Left = 8
          Top = 116
          Width = 360
          Height = 17
          Caption = 'Show status line'
          TabOrder = 3
        end
        object cbMenu: TCheckBox
          Left = 8
          Top = 100
          Width = 360
          Height = 17
          Caption = 'Show upper menu *'
          TabOrder = 2
        end
        object cbLang: TComboBox
          Left = 8
          Top = 32
          Width = 240
          Height = 21
          Style = csDropDownList
          DropDownCount = 20
          TabOrder = 0
          OnChange = cbLangChange
        end
        object cbInst: TCheckBox
          Left = 8
          Top = 164
          Width = 360
          Height = 17
          Caption = 'Allow to run single instance only'
          TabOrder = 6
        end
        object cbEsc: TComboBox
          Left = 8
          Top = 72
          Width = 240
          Height = 21
          Style = csDropDownList
          TabOrder = 1
          Items.Strings = (
            'Do nothing'
            'Close editor'
            'Close tab'
            'Close tab or editor'
            'Minimize editor')
        end
        object cbRoStart: TCheckBox
          Left = 8
          Top = 180
          Width = 360
          Height = 17
          Caption = 'Set read-only mode at startup *'
          TabOrder = 7
        end
        object cbMicroMap: TCheckBox
          Left = 8
          Top = 148
          Width = 256
          Height = 17
          Caption = 'Show micro-map bar'
          TabOrder = 5
        end
      end
      object boxNew: TGroupBox
        Left = 8
        Top = 208
        Width = 529
        Height = 61
        Caption = 'New document'
        TabOrder = 1
        object TntLabel4: TLabel
          Left = 8
          Top = 16
          Width = 47
          Height = 13
          Caption = 'Encoding:'
        end
        object TntLabel5: TLabel
          Left = 168
          Top = 16
          Width = 63
          Height = 13
          Caption = 'Line endings:'
        end
        object TntLabel6: TLabel
          Left = 320
          Top = 16
          Width = 31
          Height = 13
          Caption = 'Lexer:'
        end
        object edEnc: TComboBox
          Left = 8
          Top = 32
          Width = 153
          Height = 21
          Style = csDropDownList
          TabOrder = 0
          Items.Strings = (
            'ANSI (Windows)'
            'OEM (DOS)'
            'UTF-8'
            'UTF-8, no BOM'
            'UTF-16'
            'UTF-16 BE')
        end
        object edLE: TComboBox
          Left = 168
          Top = 32
          Width = 145
          Height = 21
          Style = csDropDownList
          TabOrder = 1
          Items.Strings = (
            'Windows'
            'Unix'
            'Mac')
        end
        object edLex: TComboBox
          Left = 320
          Top = 32
          Width = 193
          Height = 21
          Style = csDropDownList
          DropDownCount = 20
          Sorted = True
          TabOrder = 2
        end
      end
    end
    object tabColors: TTabSheet
      Caption = 'Colors'
      ImageIndex = 1
      TabVisible = False
      OnShow = tabColorsShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object boxToolbar: TGroupBox
        Left = 8
        Top = 1
        Width = 529
        Height = 100
        Caption = 'Toolbar'
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 16
          Width = 73
          Height = 13
          Caption = 'Toolbar theme:'
        end
        object Label12: TLabel
          Left = 8
          Top = 56
          Width = 67
          Height = 13
          Caption = 'Toolbar icons:'
        end
        object cbTheme: TComboBox
          Left = 8
          Top = 32
          Width = 240
          Height = 21
          Style = csDropDownList
          TabOrder = 0
        end
        object cbIcons: TComboBox
          Left = 8
          Top = 72
          Width = 240
          Height = 21
          Style = csDropDownList
          TabOrder = 1
          Items.Strings = (
            'Standard'
            'Fogue 16x16'
            'Fogue 24x24'
            'Tango 16x16'
            'Tango 22x22'
            'Gnome 24x24')
        end
      end
      object gColors: TGroupBox
        Left = 8
        Top = 104
        Width = 529
        Height = 249
        Caption = 'Colors'
        TabOrder = 1
        object Label4: TLabel
          Left = 8
          Top = 16
          Width = 47
          Height = 13
          Caption = 'Elements:'
        end
        object Label5: TLabel
          Left = 286
          Top = 16
          Width = 29
          Height = 13
          Caption = 'Color:'
        end
        object ListColors: TListBox
          Left = 8
          Top = 32
          Width = 273
          Height = 157
          Style = lbOwnerDrawFixed
          AutoComplete = False
          ExtendedSelect = False
          ItemHeight = 13
          TabOrder = 0
          OnClick = ListColorsClick
          OnDrawItem = ListColorsDrawItem
        end
        object StaticText1: TStaticText
          Left = 288
          Top = 56
          Width = 233
          Height = 65
          AutoSize = False
          Caption = 
            'You can assign color from the right colorbox to any element in t' +
            'he left list. (BG means background)'
          TabOrder = 2
        end
        object ColorBox1: TColorBox
          Left = 286
          Top = 32
          Width = 177
          Height = 22
          Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbIncludeNone, cbCustomColor, cbPrettyNames]
          TabOrder = 1
          OnSelect = ColorBox1Select
        end
        object bColorLoad: TButton
          Left = 8
          Top = 196
          Width = 242
          Height = 21
          Caption = 'Load color preset...'
          TabOrder = 3
          OnClick = bColorLoadClick
        end
        object bColorSave: TButton
          Left = 8
          Top = 220
          Width = 242
          Height = 21
          Caption = 'Save color preset...'
          TabOrder = 4
          OnClick = bColorSaveClick
        end
      end
    end
    object tabFonts: TTabSheet
      Caption = 'Fonts'
      TabVisible = False
      OnShow = tabFontsShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gFont: TGroupBox
        Left = 8
        Top = -3
        Width = 529
        Height = 172
        Caption = 'Fonts'
        TabOrder = 0
        object b1: TButton
          Left = 10
          Top = 16
          Width = 242
          Height = 23
          Caption = 'Text'
          TabOrder = 0
          OnClick = b1Click
        end
        object b2: TButton
          Left = 10
          Top = 40
          Width = 242
          Height = 23
          Caption = 'Line numbers'
          TabOrder = 1
          OnClick = b2Click
        end
        object b4: TButton
          Left = 10
          Top = 64
          Width = 242
          Height = 23
          Caption = 'Ruler'
          TabOrder = 2
          OnClick = b4Click
        end
        object b3: TButton
          Left = 10
          Top = 88
          Width = 242
          Height = 23
          Caption = 'Tree'
          TabOrder = 3
          OnClick = b3Click
        end
        object b5: TButton
          Left = 10
          Top = 112
          Width = 242
          Height = 23
          Caption = 'Auto-complete'
          TabOrder = 4
          OnClick = b5Click
        end
        object b6: TButton
          Left = 10
          Top = 136
          Width = 242
          Height = 23
          Caption = 'Output panel'
          TabOrder = 5
          OnClick = b6Click
        end
      end
    end
    object tabTabs: TTabSheet
      Caption = 'Tabs'
      TabVisible = False
      OnShow = tabTabsShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object boxTabs: TGroupBox
        Left = 8
        Top = 0
        Width = 529
        Height = 217
        Caption = 'Tabs'
        TabOrder = 0
        object TntLabel3: TLabel
          Left = 56
          Top = 144
          Width = 109
          Height = 13
          Caption = 'Maximal caption length'
        end
        object TntLabel13: TLabel
          Left = 445
          Top = 12
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tabs colors:'
        end
        object cbTabBtn: TCheckBox
          Left = 8
          Top = 72
          Width = 380
          Height = 17
          Caption = 'Show close buttons on tabs'
          TabOrder = 3
        end
        object cbTabMul: TCheckBox
          Left = 8
          Top = 88
          Width = 380
          Height = 17
          Caption = 'Show multiple tab lines'
          TabOrder = 4
        end
        object cbTabDown: TCheckBox
          Left = 8
          Top = 40
          Width = 380
          Height = 17
          Caption = 'Show tabs at bottom'
          TabOrder = 1
        end
        object cbTabNums: TCheckBox
          Left = 8
          Top = 56
          Width = 380
          Height = 17
          Caption = 'Show tabs numbers'
          TabOrder = 2
        end
        object cbTabSw: TCheckBox
          Left = 8
          Top = 172
          Width = 433
          Height = 17
          Caption = 'Use modern tab switcher (Ctrl+Tab)'
          TabOrder = 8
        end
        object cbTabDnD: TCheckBox
          Left = 8
          Top = 120
          Width = 380
          Height = 17
          Caption = 'Allow drag&&drop'
          TabOrder = 6
        end
        object edTabMaxLen: TSpinEdit
          Left = 8
          Top = 140
          Width = 43
          Height = 22
          MaxValue = 200
          MinValue = 0
          TabOrder = 7
          Value = 0
          OnKeyDown = edIndKeyDown
        end
        object cbTabDbl: TCheckBox
          Left = 8
          Top = 104
          Width = 380
          Height = 17
          Caption = 'Allow closing by double-click'
          TabOrder = 5
        end
        object ListTabColors: TListBox
          Left = 448
          Top = 28
          Width = 57
          Height = 181
          Style = lbOwnerDrawFixed
          TabOrder = 9
          OnDblClick = ListTabColorsDblClick
          OnDrawItem = ListTabColorsDrawItem
          OnKeyDown = ListTabColorsKeyDown
        end
        object cbTabVis: TComboBox
          Left = 8
          Top = 16
          Width = 321
          Height = 21
          Style = csDropDownList
          TabOrder = 0
          Items.Strings = (
            'Always show tabs'
            'Never show tabs'
            'Show tabs when 2 or more')
        end
      end
    end
    object tabEd: TTabSheet
      Caption = 'Editor'
      TabVisible = False
      OnShow = tabEdShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gEdit: TGroupBox
        Left = 8
        Top = 4
        Width = 529
        Height = 325
        TabOrder = 0
        object Bevel1: TBevel
          Left = 8
          Top = 96
          Width = 513
          Height = 3
        end
        object Bevel2: TBevel
          Left = 8
          Top = 256
          Width = 513
          Height = 3
        end
        object TntLabel35: TLabel
          Left = 112
          Top = 268
          Width = 100
          Height = 13
          Caption = 'Initial selection mode'
        end
        object cbBOver: TCheckBox
          Left = 8
          Top = 12
          Width = 258
          Height = 17
          Hint = 'Replaces marked block of text with whatever is typed next.'
          Caption = 'Overwrite blocks'
          TabOrder = 0
        end
        object cbBPers: TCheckBox
          Left = 8
          Top = 28
          Width = 258
          Height = 17
          Hint = 
            'Keeps marked block selected even when the cursor is moved using ' +
            'the arrow keys, until a new block is selected.'
          Caption = 'Persistent blocks'
          TabOrder = 1
        end
        object cbDClick: TCheckBox
          Left = 8
          Top = 44
          Width = 258
          Height = 17
          Hint = 
            'Selects the entire line when you double-click any character in t' +
            'he line. Otherwise only the current word is selected.'
          Caption = 'Double-click selects line'
          TabOrder = 2
        end
        object cbGrSel: TCheckBox
          Left = 8
          Top = 60
          Width = 258
          Height = 17
          Hint = 
            'If this option is set selection will contain extra column/line d' +
            'uring column/line selection modes.'
          Caption = 'Greedy selection'
          TabOrder = 3
        end
        object cbWrap: TCheckBox
          Left = 270
          Top = 12
          Width = 256
          Height = 17
          Hint = 'Wraps text at edge of memo.'
          Caption = 'Word wrap'
          TabOrder = 4
        end
        object cbFold: TCheckBox
          Left = 270
          Top = 28
          Width = 256
          Height = 17
          Hint = 'Shows codefolding bar on gutter.'
          Caption = 'Code folding'
          TabOrder = 5
        end
        object cbDrag: TCheckBox
          Left = 270
          Top = 44
          Width = 256
          Height = 17
          Hint = 'Enables drag&drop operation for text movement.'
          Caption = 'Text dragging'
          TabOrder = 6
        end
        object cbCollap: TCheckBox
          Left = 270
          Top = 60
          Width = 256
          Height = 17
          Hint = 
            'Collapse empty lines after text range when this rang have been c' +
            'ollapsed.'
          Caption = 'Collapse empty lines'
          TabOrder = 7
        end
        object cbFLine: TCheckBox
          Left = 270
          Top = 76
          Width = 256
          Height = 17
          Hint = 
            'Prevents the line height calculation. Line height will be calcul' +
            'ated by means of Default Style.'
          Caption = 'Fixed line height'
          TabOrder = 8
        end
        object cbAutoInd: TCheckBox
          Left = 8
          Top = 104
          Width = 258
          Height = 17
          Hint = 
            'Positions the cursor under the first non-blank character of the ' +
            'preceding non-blank line when you press Enter.'
          Caption = 'Auto indent mode'
          TabOrder = 9
        end
        object cbBackInd: TCheckBox
          Left = 8
          Top = 120
          Width = 258
          Height = 17
          Hint = 
            'Aligns the insertion point to the previous indentation level (ou' +
            'tdents it) when you press Backspace.'
          Caption = 'Backspace unindents'
          TabOrder = 10
        end
        object cbGrRedo: TCheckBox
          Left = 8
          Top = 136
          Width = 258
          Height = 17
          Hint = 'If it is set Redo will involve group of changes.'
          Caption = 'Group redo'
          TabOrder = 11
        end
        object cbGrUndo: TCheckBox
          Left = 8
          Top = 152
          Width = 258
          Height = 17
          Hint = 
            'Undoes your last editing command as well as any subsequent editi' +
            'ng commands of the same type.'
          Caption = 'Group undo'
          TabOrder = 12
        end
        object cbUndoSav: TCheckBox
          Left = 8
          Top = 168
          Width = 258
          Height = 17
          Hint = 'Stays Undo buffer unchanged after save.'
          Caption = 'Undo after save'
          TabOrder = 13
        end
        object cbCopyRtf: TCheckBox
          Left = 8
          Top = 184
          Width = 258
          Height = 17
          Hint = 'Copies selected text also in RTF format.'
          Caption = 'Copy to clipboard as RTF'
          TabOrder = 14
        end
        object cbSmCaret: TCheckBox
          Left = 8
          Top = 200
          Width = 258
          Height = 17
          Hint = 'Acts on the caret movement (up, down, line start, line end).'
          Caption = 'Smart caret behaviour'
          TabOrder = 15
        end
        object cbKeepCaret: TCheckBox
          Left = 8
          Top = 216
          Width = 258
          Height = 17
          Hint = 'Allows the caret to move only inside the text.'
          Caption = 'Keep caret in text'
          TabOrder = 16
        end
        object cbOptFill: TCheckBox
          Left = 8
          Top = 232
          Width = 258
          Height = 17
          Hint = 
            'Begins every auto-indented line with the minimum number of chara' +
            'cters possible, using tabs and spaces as necessary.'
          Caption = 'Optimal fill'
          TabOrder = 17
        end
        object cbColSel: TCheckBox
          Left = 430
          Top = 300
          Width = 256
          Height = 17
          Hint = 'Enables column selection mode (Alt+mouse selection). '
          Caption = 'Enable column selection'
          Enabled = False
          TabOrder = 18
          Visible = False
        end
        object cbFloatM: TCheckBox
          Left = 270
          Top = 104
          Width = 256
          Height = 17
          Hint = 
            'If it is set markers are linked to text, so they will move with ' +
            'text during editing. Otherwise they are linked to caret position' +
            '.'
          Caption = 'Floating markers'
          TabOrder = 19
        end
        object cbScrollLast: TCheckBox
          Left = 270
          Top = 120
          Width = 256
          Height = 17
          Hint = 
            'When it is set you may scroll to last line, otherwise you can sc' +
            'roll to last page.'
          Caption = 'Scroll to last line'
          TabOrder = 20
        end
        object cbWrapMar: TCheckBox
          Left = 270
          Top = 136
          Width = 256
          Height = 17
          Hint = 'Word wrap works on right margin, not edge of memo.'
          Caption = 'Word wrap on right margin'
          TabOrder = 21
        end
        object cbFixMove: TCheckBox
          Left = 270
          Top = 152
          Width = 256
          Height = 17
          Hint = 
            'Keeps X position of caret before editing text, this position is ' +
            'used when moving up/down caret.'
          Caption = 'Fixed column move'
          TabOrder = 22
        end
        object cbVarHorz: TCheckBox
          Left = 270
          Top = 168
          Width = 256
          Height = 17
          Hint = 
            'Recalculates horizontal scrollbar for currently displayed text o' +
            'nly.'
          Caption = 'Variable horizontal scrollbar'
          TabOrder = 23
        end
        object cbUnindKeep: TCheckBox
          Left = 270
          Top = 184
          Width = 256
          Height = 17
          Hint = 'Stops unindent when any line is already at pos 0.'
          Caption = 'Unindent keeps align'
          TabOrder = 24
        end
        object cbKeepBlank: TCheckBox
          Left = 270
          Top = 200
          Width = 256
          Height = 17
          Hint = 'Don'#39't remove spaces on line ends, on file saving.'
          Caption = 'Keep trailing blanks'
          TabOrder = 25
        end
        object cbSelMode: TComboBox
          Left = 8
          Top = 264
          Width = 97
          Height = 21
          Style = csDropDownList
          TabOrder = 28
          Items.Strings = (
            'Normal'
            'Columns'
            'Lines')
        end
        object cbKeepPaste: TCheckBox
          Left = 270
          Top = 216
          Width = 256
          Height = 17
          Hint = 'Don'#39't change caret position when performing Paste action.'
          Caption = 'Keep caret on paste'
          TabOrder = 26
        end
        object cbUrlClick: TCheckBox
          Left = 270
          Top = 232
          Width = 258
          Height = 17
          Hint = 
            'Use just a click (without Ctrl pressed) to activate hyperlink (U' +
            'RL) under cursor.'
          Caption = 'Activate URLs by single click'
          TabOrder = 27
        end
      end
    end
    object tabEd2: TTabSheet
      Caption = 'Editor 2'
      ImageIndex = 6
      TabVisible = False
      OnShow = tabEd2Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gEditor: TGroupBox
        Left = 8
        Top = 88
        Width = 529
        Height = 257
        TabOrder = 1
        object Label15: TLabel
          Left = 56
          Top = 108
          Width = 58
          Height = 13
          Caption = 'Line spacing'
        end
        object Label3: TLabel
          Left = 56
          Top = 84
          Width = 60
          Height = 13
          Caption = 'Right margin'
        end
        object Label14: TLabel
          Left = 136
          Top = 132
          Width = 63
          Height = 13
          Caption = 'Line numbers'
        end
        object TntLabel28: TLabel
          Left = 136
          Top = 156
          Width = 61
          Height = 13
          Caption = 'Block staples'
        end
        object cbDSep: TCheckBox
          Left = 270
          Top = 92
          Width = 256
          Height = 17
          Hint = 'Shows line between folding bar and text field.'
          Caption = 'Draw gutter separator'
          TabOrder = 17
        end
        object cbDGrad: TCheckBox
          Left = 270
          Top = 108
          Width = 256
          Height = 17
          Hint = 'Enables gradient on gutter (from BG to GradientRight).'
          Caption = 'Draw gutter gradient'
          TabOrder = 18
        end
        object cbLink: TCheckBox
          Left = 8
          Top = 12
          Width = 256
          Height = 17
          Hint = 'Underlines links and makes them clickable.'
          Caption = 'Highlight links'
          TabOrder = 0
        end
        object cbDLBack: TCheckBox
          Left = 270
          Top = 76
          Width = 256
          Height = 17
          Hint = 'Draws custom background for the current line.'
          Caption = 'Draw current line backgnd'
          TabOrder = 16
        end
        object cbCaret: TCheckBox
          Left = 8
          Top = 28
          Width = 256
          Height = 17
          Hint = 'Shows caret in read-only mode.'
          Caption = 'Show caret in read-only'
          TabOrder = 1
        end
        object cbHideCur: TCheckBox
          Left = 270
          Top = 44
          Width = 256
          Height = 17
          Hint = 
            'Hides mouse cursor when you type text and mouse cursor is within' +
            ' client area.'
          Caption = 'Hide cursor on typing'
          TabOrder = 14
        end
        object cbHideD: TCheckBox
          Left = 270
          Top = 28
          Width = 256
          Height = 17
          Hint = 'Hides dynamic highlightings when editor loses focus.'
          Caption = 'Hide dynamic highlightings'
          TabOrder = 13
        end
        object cbHideSel: TCheckBox
          Left = 270
          Top = 12
          Width = 256
          Height = 17
          Hint = 'Hides selection when editor loses focus.'
          Caption = 'Hide selection'
          TabOrder = 12
        end
        object edLSpace: TSpinEdit
          Left = 8
          Top = 104
          Width = 41
          Height = 22
          Hint = 'Vertical spacing between lines.'
          MaxValue = 10
          MinValue = 0
          TabOrder = 5
          Value = 0
          OnKeyDown = edIndKeyDown
        end
        object edMar: TSpinEdit
          Left = 8
          Top = 79
          Width = 41
          Height = 22
          Hint = 'Right margin column position.'
          MaxValue = 300
          MinValue = 1
          TabOrder = 4
          Value = 1
          OnKeyDown = edIndKeyDown
        end
        object cbMar: TCheckBox
          Left = 8
          Top = 60
          Width = 256
          Height = 17
          Hint = 'Shows vertical line after specified column.'
          Caption = 'Show right margin'
          TabOrder = 3
        end
        object edNums: TComboBox
          Left = 8
          Top = 128
          Width = 121
          Height = 21
          Hint = 'Style of line numbering.'
          Style = csDropDownList
          TabOrder = 6
          Items.Strings = (
            'Default'
            'Delphi-like'
            'Each 5'
            'Only current')
        end
        object cbDFocus: TCheckBox
          Left = 270
          Top = 60
          Width = 256
          Height = 17
          Hint = 'Draws focus rectangle around current line when editor has focus.'
          Caption = 'Draw current line focus'
          TabOrder = 15
        end
        object cbRuler: TCheckBox
          Left = 8
          Top = 44
          Width = 256
          Height = 17
          Hint = 'Shows ruler above editor area.'
          Caption = 'Show horizontal ruler'
          TabOrder = 2
        end
        object cbKeepScr: TCheckBox
          Left = 422
          Top = 236
          Width = 256
          Height = 17
          Hint = 'Keeps caret in visible area when scrolling (by 1 line) occurs.'
          Caption = 'Keep caret in screen on scrolling'
          TabOrder = 20
          Visible = False
        end
        object cbSmHi: TCheckBox
          Left = 8
          Top = 176
          Width = 256
          Height = 17
          Hint = 'Marks all occurances of selected word.'
          Caption = 'Smart highlighting'
          TabOrder = 9
        end
        object cbBrHi: TCheckBox
          Left = 8
          Top = 208
          Width = 256
          Height = 17
          Hint = 
            'Enables highlighting of pair brackets (if not overridden in lexe' +
            'r).'
          Caption = 'Highlight pair brackets'
          TabOrder = 11
        end
        object cbSmHiCase: TCheckBox
          Left = 22
          Top = 192
          Width = 243
          Height = 17
          Hint = 'Makes Smart Highlighting search case-sensitive.'
          Caption = 'Case sensitive'
          TabOrder = 10
        end
        object cbFixBlocks: TCheckBox
          Left = 430
          Top = 220
          Width = 256
          Height = 17
          Hint = 
            'Keep trailing spaces at the end of column blocks'#39' lines (Alt+mou' +
            'se selection).'
          Caption = 'Copy column blocks with extra spaces'
          TabOrder = 21
          Visible = False
        end
        object cbShowEOL: TCheckBox
          Left = 270
          Top = 156
          Width = 256
          Height = 17
          Hint = 
            'Show CR/LF chars for line endings, when "Show non-printable char' +
            's" is on.'
          Caption = 'Show EOL characters'
          TabOrder = 23
        end
        object cbBkUndo: TCheckBox
          Left = 270
          Top = 188
          Width = 256
          Height = 25
          Hint = 
            'Allow Undo for such operations as "Delete bookmarked lines", "Pa' +
            'ste into bookmarked lines". Much slower!'
          Caption = 'Allow Undo for massive strings deletion (much slower)'
          TabOrder = 25
          WordWrap = True
        end
        object cbStaples: TComboBox
          Left = 48
          Top = 152
          Width = 81
          Height = 22
          Hint = 'Line style of block staples.'
          Style = csOwnerDrawFixed
          TabOrder = 8
          OnDrawItem = cbStaplesDrawItem
        end
        object edStapleOffset: TSpinEdit
          Left = 8
          Top = 152
          Width = 41
          Height = 22
          Hint = 'Horizontal offset of block staples (in pixels).'
          MaxValue = 5
          MinValue = -5
          TabOrder = 7
          Value = 0
          OnKeyDown = edIndKeyDown
        end
        object cbDWrapMark: TCheckBox
          Left = 270
          Top = 124
          Width = 256
          Height = 17
          Hint = 'Draw "line wrapped" mark on gutter'
          Caption = 'Draw gutter "line wrapped" mark'
          TabOrder = 19
        end
        object cbColorOnEmpty: TCheckBox
          Left = 270
          Top = 172
          Width = 256
          Height = 17
          Hint = 
            'Colorize selected lines background with white space after line e' +
            'nds'
          Caption = 'Colorize selection BG including white space'
          TabOrder = 24
        end
        object cbCopyLineNSel: TCheckBox
          Left = 270
          Top = 140
          Width = 256
          Height = 17
          Hint = 
            'Copy/Cut operations will take current line, if no selection is m' +
            'ade in editor.'
          Caption = 'Copy/Cut current line if no selection made'
          TabOrder = 22
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 4
        Width = 529
        Height = 81
        TabOrder = 0
        object Label1: TLabel
          Left = 74
          Top = 16
          Width = 57
          Height = 13
          Caption = 'Block indent'
        end
        object Label13: TLabel
          Left = 74
          Top = 40
          Width = 46
          Height = 13
          Caption = 'Undo limit'
        end
        object Label6: TLabel
          Left = 376
          Top = 40
          Width = 47
          Height = 13
          Caption = 'Tab mode'
        end
        object Label16: TLabel
          Left = 376
          Top = 16
          Width = 47
          Height = 13
          Caption = 'Tab stops'
        end
        object edInd: TSpinEdit
          Left = 8
          Top = 12
          Width = 61
          Height = 22
          Hint = 'Size of block indentation for commands Indent/Unindent.'
          MaxValue = 32
          MinValue = 1
          TabOrder = 0
          Value = 1
          OnKeyDown = edIndKeyDown
        end
        object edULimit: TSpinEdit
          Left = 8
          Top = 36
          Width = 61
          Height = 22
          Hint = 'Number of actions that can be undone.'
          Increment = 100
          MaxValue = 100000
          MinValue = 10
          TabOrder = 1
          Value = 10
          OnKeyDown = edIndKeyDown
        end
        object edTabMode: TComboBox
          Left = 270
          Top = 36
          Width = 97
          Height = 21
          Hint = 
            'Behaviour of Tab key. SmartTab: inserts spaces to the first non-' +
            'whitespace character in the preceding line.'
          AutoDropDown = True
          Style = csDropDownList
          TabOrder = 3
          OnChange = edTabModeChange
          Items.Strings = (
            'Spaces'
            'Tab character'
            'SmartTab')
        end
        object edTab_: TEdit
          Left = 270
          Top = 12
          Width = 97
          Height = 21
          Hint = 
            'Tab key moves cursor onto these column positions (separate with ' +
            'space).'
          TabOrder = 2
        end
        object cbTabSp: TCheckBox
          Left = 270
          Top = 60
          Width = 256
          Height = 17
          Hint = 'Replace existing tabs with spaces also on file opening.'
          Caption = 'Replace tabs with spaces on file opening'
          TabOrder = 4
        end
      end
    end
    object tabCarets: TTabSheet
      Caption = 'Editor carets'
      TabVisible = False
      OnShow = tabCaretsShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object boxCarets: TGroupBox
        Left = 8
        Top = 0
        Width = 529
        Height = 189
        Caption = 'Carets'
        TabOrder = 0
        object TntLabel30: TLabel
          Left = 8
          Top = 52
          Width = 162
          Height = 13
          Caption = 'Indicate lines with multiple carets:'
        end
        object TntLabel31: TLabel
          Left = 104
          Top = 124
          Width = 106
          Height = 13
          Caption = 'Gutter column number'
        end
        object labCaretHelp: TLabel
          Left = 24
          Top = 32
          Width = 29
          Height = 13
          Cursor = crHandPoint
          Caption = '(Help)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = labCaretHelpClick
        end
        object cbCaretMulti: TCheckBox
          Left = 8
          Top = 16
          Width = 481
          Height = 17
          Caption = 'Enable multi-carets mode'
          TabOrder = 0
        end
        object cbCaretIndNone: TRadioButton
          Left = 24
          Top = 68
          Width = 500
          Height = 17
          Caption = 'Don'#39't indicate'
          TabOrder = 1
        end
        object cbCaretIndLine: TRadioButton
          Left = 24
          Top = 84
          Width = 500
          Height = 17
          Caption = 'By line background color'
          TabOrder = 2
        end
        object cbCaretIndGutter: TRadioButton
          Left = 24
          Top = 100
          Width = 500
          Height = 17
          Caption = 'By gutter background color'
          TabOrder = 3
        end
        object edCaretGutterCol: TSpinEdit
          Left = 48
          Top = 120
          Width = 49
          Height = 22
          MaxValue = 3
          MinValue = 0
          TabOrder = 4
          Value = 1
          OnKeyDown = edIndKeyDown
        end
      end
    end
    object tabOvr: TTabSheet
      Caption = 'Editor overrides'
      TabVisible = False
      OnShow = tabOvrShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object tabKey: TTabSheet
      Caption = 'Keys'
      ImageIndex = 2
      TabVisible = False
      OnShow = tabKeyShow
      object TntLabel19: TLabel
        Left = 8
        Top = 8
        Width = 88
        Height = 13
        Caption = 'Jump to category:'
        FocusControl = cbKeyCat
      end
      object TntLabel25: TLabel
        Left = 8
        Top = 32
        Width = 44
        Height = 13
        Caption = 'Filter list:'
        FocusControl = edFilter
      end
      object KeyList: TStringGrid
        Left = 8
        Top = 56
        Width = 521
        Height = 281
        Hint = ' '
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 110
        DefaultRowHeight = 17
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goThumbTracking]
        ParentCtl3D = False
        ScrollBars = ssVertical
        TabOrder = 3
        OnClick = KeyListClick
        OnDrawCell = KeyListDrawCell
        OnKeyDown = KeyListKeyDown
        OnMouseMove = KeyListMouseMove
        OnMouseWheelDown = KeyListMouseWheelDown
        OnMouseWheelUp = KeyListMouseWheelUp
        OnSelectCell = KeyListSelectCell
      end
      object ecHotKey: TecHotKey
        Left = 8
        Top = 347
        Width = 185
        Height = 21
        TabStop = False
        HotKey = 0
        TabOrder = 4
        OnChange = ecHotKeyChange
      end
      object bKeySet: TButton
        Left = 200
        Top = 346
        Width = 105
        Height = 22
        Caption = 'Set'
        TabOrder = 5
        OnClick = bKeySetClick
      end
      object bKeyClr: TButton
        Left = 312
        Top = 346
        Width = 105
        Height = 22
        Caption = 'Clear'
        TabOrder = 6
        OnClick = bKeyClrClick
      end
      object bKeyFn: TButton
        Left = 424
        Top = 346
        Width = 105
        Height = 22
        Caption = 'Find'
        TabOrder = 7
        OnClick = bKeyFnClick
      end
      object cbKeyCat: TComboBox
        Left = 152
        Top = 4
        Width = 265
        Height = 21
        Style = csDropDownList
        DropDownCount = 40
        TabOrder = 0
        OnChange = cbKeyCatChange
      end
      object edFilter: TEdit
        Left = 152
        Top = 28
        Width = 265
        Height = 21
        TabOrder = 1
        OnChange = edFilterChange
      end
      object bFiltClear: TButton
        Left = 424
        Top = 28
        Width = 97
        Height = 22
        Caption = 'Clear'
        TabOrder = 2
        OnClick = bFiltClearClick
      end
    end
    object tabFiles: TTabSheet
      Caption = 'Files'
      ImageIndex = 3
      TabVisible = False
      OnShow = tabFilesShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object boxFGroup: TGroupBox
        Left = 8
        Top = 0
        Width = 529
        Height = 89
        Caption = 'File groups'
        TabOrder = 0
        object TntLabel1: TLabel
          Left = 8
          Top = 16
          Width = 69
          Height = 13
          Caption = 'Non-text files:'
        end
        object Label17: TLabel
          Left = 8
          Top = 36
          Width = 184
          Height = 13
          Caption = 'Open in OEM encoding file extensions:'
        end
        object TntLabel8: TLabel
          Left = 8
          Top = 56
          Width = 191
          Height = 13
          Caption = 'Open in UTF-8 encoding file extensions:'
        end
        object TntLabel9: TLabel
          Left = 8
          Top = 68
          Width = 103
          Height = 13
          Caption = '(enter "*" for all files)'
        end
        object cbText_: TComboBox
          Left = 283
          Top = 12
          Width = 230
          Height = 21
          Style = csDropDownList
          TabOrder = 0
          Items.Strings = (
            'Don'#39't open'
            'Open'
            'Prompt')
        end
        object edOem: TEdit
          Left = 283
          Top = 36
          Width = 230
          Height = 21
          TabOrder = 1
        end
        object edUTF8: TEdit
          Left = 283
          Top = 60
          Width = 230
          Height = 21
          TabOrder = 2
        end
      end
      object boxReload: TGroupBox
        Left = 8
        Top = 92
        Width = 529
        Height = 125
        Caption = 'Misc'
        TabOrder = 1
        object Label9: TLabel
          Left = 8
          Top = 16
          Width = 112
          Height = 13
          Caption = 'Watch for file changes:'
        end
        object TntLabel23: TLabel
          Left = 64
          Top = 100
          Width = 208
          Height = 13
          Caption = 'Disable lexer if file size is bigger than ... Mb'
        end
        object TntLabel36: TLabel
          Left = 8
          Top = 32
          Width = 261
          Height = 13
          Caption = 'Suggest to save Unicode content in Unicode encoding:'
          WordWrap = True
        end
        object cbTail: TCheckBox
          Left = 8
          Top = 60
          Width = 481
          Height = 17
          Caption = 'Follow tail on reload'
          TabOrder = 2
        end
        object cbOverRO: TCheckBox
          Left = 8
          Top = 76
          Width = 489
          Height = 17
          Caption = 'Ask to overwrite read-only files'
          TabOrder = 3
        end
        object edBigSize: TSpinEdit
          Left = 8
          Top = 95
          Width = 49
          Height = 22
          MaxValue = 200
          MinValue = 1
          TabOrder = 4
          Value = 1
          OnKeyDown = edIndKeyDown
        end
        object cbNotif: TComboBox
          Left = 283
          Top = 12
          Width = 230
          Height = 21
          Style = csDropDownList
          TabOrder = 0
          Items.Strings = (
            'Don'#39't watch'
            'Watch, reload w/o question'
            'Watch, ask to reload')
        end
        object cbUniNeed: TComboBox
          Left = 283
          Top = 36
          Width = 230
          Height = 21
          Style = csDropDownList
          DropDownCount = 15
          TabOrder = 1
          Items.Strings = (
            'Don'#39't suggest'
            'Prompt to save as UTF-8'
            'Prompt to save as UTF-8, no BOM'
            'Prompt to save as UTF-16'
            'Prompt to save as UTF-16 BE'
            'Save as UTF-8'
            'Save as UTF-8, no BOM'
            'Save as UTF-16'
            'Save as UTF-16 BE')
        end
      end
    end
    object tabSearch: TTabSheet
      Caption = 'Search'
      TabVisible = False
      OnShow = tabSearchShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object TntLabel22: TLabel
        Left = 8
        Top = 364
        Width = 169
        Height = 13
        Caption = '* - saved separately for plugin/app'
      end
      object gSR: TGroupBox
        Left = 8
        Top = 4
        Width = 529
        Height = 137
        Caption = 'Search'
        TabOrder = 0
        object TntLabel32: TLabel
          Left = 64
          Top = 104
          Width = 201
          Height = 29
          AutoSize = False
          Caption = 'Offset of search result from horizontal edge'
          WordWrap = True
        end
        object cbSrDlg: TCheckBox
          Left = 8
          Top = 16
          Width = 260
          Height = 17
          Caption = 'Allow Lister to call custom search dialog'
          TabOrder = 0
        end
        object cbSrWord: TCheckBox
          Left = 270
          Top = 32
          Width = 256
          Height = 17
          Caption = 'Suggest current word as search text'
          TabOrder = 7
        end
        object cbSrHistTC: TCheckBox
          Left = 8
          Top = 32
          Width = 260
          Height = 17
          Caption = 'Use TotalCmd'#39's history section'
          TabOrder = 1
        end
        object cbSrOnTop: TCheckBox
          Left = 270
          Top = 52
          Width = 256
          Height = 17
          Caption = 'Show search dialog on top *'
          TabOrder = 8
        end
        object cbSrErr: TCheckBox
          Left = 8
          Top = 52
          Width = 260
          Height = 17
          Caption = 'Show messagebox when no results found'
          TabOrder = 2
        end
        object cbSrErr2: TCheckBox
          Left = 8
          Top = 68
          Width = 260
          Height = 17
          Caption = 'Same, for "Find/Replace in files"'
          TabOrder = 3
        end
        object cbSrSel: TCheckBox
          Left = 270
          Top = 16
          Width = 256
          Height = 17
          Caption = 'Suggest selection as search text'
          TabOrder = 6
        end
        object cbSrExpand: TCheckBox
          Left = 8
          Top = 88
          Width = 260
          Height = 17
          Caption = 'Search results: expand tree on progress'
          TabOrder = 4
        end
        object edSrOffsetY: TSpinEdit
          Left = 8
          Top = 108
          Width = 49
          Height = 22
          MaxValue = 30
          MinValue = 3
          TabOrder = 5
          Value = 3
          OnKeyDown = edIndKeyDown
        end
      end
      object gQSr: TGroupBox
        Left = 8
        Top = 144
        Width = 529
        Height = 81
        Caption = 'Quick Search'
        TabOrder = 1
        object TntLabel2: TLabel
          Left = 8
          Top = 36
          Width = 160
          Height = 13
          Caption = 'Behaviour of Esc in Quick Search:'
        end
        object cbQsEsc: TComboBox
          Left = 8
          Top = 52
          Width = 243
          Height = 21
          Style = csDropDownList
          TabOrder = 1
          Items.Strings = (
            'Close Quick Search'
            'Close editor'
            'Focus editor')
        end
        object cbQsCap: TCheckBox
          Left = 8
          Top = 16
          Width = 260
          Height = 17
          Caption = 'Show buttons captions'
          TabOrder = 0
        end
      end
    end
    object tabTree: TTabSheet
      Caption = 'Tree/Map'
      TabVisible = False
      OnShow = tabTreeShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gTree: TGroupBox
        Left = 8
        Top = 0
        Width = 529
        Height = 157
        Caption = 'Syntax tree'
        TabOrder = 0
        object TntLabel17: TLabel
          Left = 8
          Top = 112
          Width = 92
          Height = 13
          Caption = 'Double-click action:'
        end
        object TntLabel39: TLabel
          Left = 286
          Top = 112
          Width = 92
          Height = 13
          Caption = 'Update delay (ms):'
        end
        object cbTreeSync: TCheckBox
          Left = 8
          Top = 16
          Width = 260
          Height = 17
          Caption = 'Auto synchronize'
          TabOrder = 0
        end
        object cbTreeCollapse: TCheckBox
          Left = 8
          Top = 32
          Width = 260
          Height = 17
          Caption = 'Auto collapse'
          TabOrder = 1
        end
        object cbTreeExpand: TCheckBox
          Left = 8
          Top = 48
          Width = 260
          Height = 17
          Caption = 'Auto expand'
          TabOrder = 2
        end
        object cbTreeSort: TCheckBox
          Left = 8
          Top = 72
          Width = 256
          Height = 17
          Caption = 'Sort items'
          TabOrder = 3
        end
        object cbTreeTrack: TCheckBox
          Left = 8
          Top = 88
          Width = 256
          Height = 17
          Caption = 'Hot track'
          TabOrder = 4
        end
        object cbTreeAction: TComboBox
          Left = 8
          Top = 128
          Width = 243
          Height = 21
          Style = csDropDownList
          TabOrder = 5
          Items.Strings = (
            'No action'
            'Expand/collapse tree node'
            'Move caret to start of text range'
            'Select entire text range')
        end
        object cbTreeDelay: TSpinEdit
          Left = 288
          Top = 128
          Width = 65
          Height = 22
          Increment = 500
          MaxValue = 10000
          MinValue = 500
          TabOrder = 6
          Value = 500
          OnKeyDown = edIndKeyDown
        end
      end
      object TntGroupBox1: TGroupBox
        Left = 8
        Top = 160
        Width = 529
        Height = 77
        Caption = 'Mini-map'
        TabOrder = 1
        object TntLabel26: TLabel
          Left = 62
          Top = 52
          Width = 44
          Height = 13
          Caption = 'Zoom, %'
        end
        object cbMapHScroll: TCheckBox
          Left = 8
          Top = 14
          Width = 280
          Height = 17
          Caption = 'Horz. scrollbar'
          TabOrder = 0
        end
        object cbMapVScroll: TCheckBox
          Left = 8
          Top = 30
          Width = 280
          Height = 17
          Caption = 'Vert. scrollbar'
          TabOrder = 1
        end
        object edMapZoom: TSpinEdit
          Left = 8
          Top = 48
          Width = 49
          Height = 22
          Increment = 5
          MaxValue = 60
          MinValue = 10
          TabOrder = 2
          Value = 10
          OnKeyDown = edIndKeyDown
        end
      end
    end
    object tabHist: TTabSheet
      Caption = 'History'
      TabVisible = False
      OnShow = tabHistShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object boxHist: TGroupBox
        Left = 8
        Top = 0
        Width = 529
        Height = 273
        Caption = 'History'
        TabOrder = 0
        object Label8: TLabel
          Left = 56
          Top = 20
          Width = 201
          Height = 13
          Caption = 'Length of file state history (0: don'#39't save)'
        end
        object Label7: TLabel
          Left = 56
          Top = 112
          Width = 230
          Height = 13
          Caption = 'Length of search/replace history (0: don'#39't save)'
        end
        object TntLabel11: TLabel
          Left = 8
          Top = 224
          Width = 140
          Height = 13
          Caption = 'Folder of Open/Save dialogs:'
        end
        object TntLabel10: TLabel
          Left = 8
          Top = 198
          Width = 96
          Height = 13
          Caption = 'Create backup files:'
        end
        object edFS: TSpinEdit
          Left = 8
          Top = 16
          Width = 41
          Height = 22
          MaxValue = 50
          MinValue = 0
          TabOrder = 0
          Value = 0
          OnKeyDown = edIndKeyDown
        end
        object edSR: TSpinEdit
          Left = 8
          Top = 108
          Width = 41
          Height = 22
          MaxValue = 50
          MinValue = 0
          TabOrder = 5
          Value = 0
          OnKeyDown = edIndKeyDown
        end
        object cbHCaret: TCheckBox
          Left = 56
          Top = 36
          Width = 409
          Height = 17
          Caption = 'Save caret position'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object cbHEnc: TCheckBox
          Left = 56
          Top = 52
          Width = 409
          Height = 17
          Caption = 'Save encoding'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object bClrSR: TButton
          Left = 56
          Top = 132
          Width = 113
          Height = 21
          Caption = 'Clear'
          TabOrder = 6
          OnClick = bClrSRClick
        end
        object bClrFS: TButton
          Left = 56
          Top = 88
          Width = 113
          Height = 21
          Caption = 'Clear'
          TabOrder = 4
          OnClick = bClrFSClick
        end
        object cbMru: TCheckBox
          Left = 8
          Top = 160
          Width = 497
          Height = 17
          Caption = 'Cleanup recent files list at startup'
          TabOrder = 7
        end
        object cbDirLast: TComboBox
          Left = 264
          Top = 220
          Width = 233
          Height = 21
          Style = csDropDownList
          TabOrder = 10
          OnChange = cbDirLastChange
          Items.Strings = (
            'Follow current file'
            'Remember last folder'
            'Custom folder')
        end
        object edDirLast: TEdit
          Left = 24
          Top = 244
          Width = 329
          Height = 21
          TabOrder = 11
        end
        object bDirLast: TButton
          Left = 360
          Top = 244
          Width = 41
          Height = 21
          Caption = '...'
          TabOrder = 12
          OnClick = bDirLastClick
        end
        object cbBak: TComboBox
          Left = 264
          Top = 196
          Width = 233
          Height = 21
          Style = csDropDownList
          TabOrder = 9
          Items.Strings = (
            'Disabled'
            'In %AppData%\SynWrite'
            'In the same folder')
        end
        object cbHTemp: TCheckBox
          Left = 56
          Top = 68
          Width = 449
          Height = 17
          Caption = 'Save history for %Temp% files'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object cbSavePos: TCheckBox
          Left = 8
          Top = 176
          Width = 497
          Height = 17
          Caption = 'Save last window position'
          TabOrder = 8
        end
      end
    end
    object tabSess: TTabSheet
      Caption = 'Sessions/Projects'
      TabVisible = False
      OnShow = tabSessShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object boxSess: TGroupBox
        Left = 8
        Top = 0
        Width = 529
        Height = 73
        Caption = 'Sessions'
        TabOrder = 0
        object cbSessDef: TCheckBox
          Left = 24
          Top = 32
          Width = 470
          Height = 17
          Caption = 'Save "default" session on exit, not current one'
          TabOrder = 1
        end
        object cbSessLoad: TCheckBox
          Left = 8
          Top = 48
          Width = 470
          Height = 17
          Caption = 'Restore last session on startup'
          TabOrder = 2
          OnClick = cbSessSaveClick
        end
        object cbSessSave: TCheckBox
          Left = 8
          Top = 16
          Width = 470
          Height = 17
          Caption = 'Save last session on exit'
          TabOrder = 0
          OnClick = cbSessSaveClick
        end
      end
      object boxProj: TGroupBox
        Left = 8
        Top = 76
        Width = 529
        Height = 57
        Caption = 'Projects'
        TabOrder = 1
        object cbProjLoad: TCheckBox
          Left = 8
          Top = 32
          Width = 470
          Height = 17
          Caption = 'Restore last project on startup'
          TabOrder = 1
          OnClick = cbSessSaveClick
        end
        object cbProjSave: TCheckBox
          Left = 8
          Top = 16
          Width = 470
          Height = 17
          Caption = 'Save current project on exit'
          TabOrder = 0
        end
      end
    end
    object tabACP: TTabSheet
      Caption = 'Auto-complete'
      ImageIndex = -1
      TabVisible = False
      OnShow = tabACPShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gAcpAll: TGroupBox
        Left = 8
        Top = 148
        Width = 529
        Height = 105
        Caption = 'Common auto-completion options'
        TabOrder = 1
        object Label42: TLabel
          Left = 304
          Top = 48
          Width = 53
          Height = 13
          Caption = 'Filter type:'
        end
        object TntLabel7: TLabel
          Left = 64
          Top = 80
          Width = 90
          Height = 13
          Caption = 'Drop-down list size'
        end
        object TntLabel12: TLabel
          Left = 64
          Top = 52
          Width = 233
          Height = 29
          AutoSize = False
          Caption = 'After typing ... letters, show list automatically (0 - disabled)'
          WordWrap = True
        end
        object cbAcpFilter: TComboBox
          Left = 304
          Top = 64
          Width = 201
          Height = 21
          Style = csDropDownList
          TabOrder = 4
          Items.Strings = (
            'No filtration'
            'Start of string'
            'Any part of string'
            'Characters are in the same order')
        end
        object cbAcpNone: TCheckBox
          Left = 8
          Top = 16
          Width = 289
          Height = 17
          Caption = 'Show list even when no items are filtered'
          TabOrder = 0
        end
        object edAcpDrop: TSpinEdit
          Left = 8
          Top = 76
          Width = 49
          Height = 22
          MaxValue = 30
          MinValue = 3
          TabOrder = 3
          Value = 3
          OnKeyDown = edIndKeyDown
        end
        object edAcpNum: TSpinEdit
          Left = 8
          Top = 52
          Width = 49
          Height = 22
          MaxValue = 30
          MinValue = 0
          TabOrder = 2
          Value = 0
          OnKeyDown = edIndKeyDown
        end
        object cbAcpUseSingle: TCheckBox
          Left = 8
          Top = 32
          Width = 289
          Height = 17
          Caption = 'Auto insert single matching item into text'
          TabOrder = 1
        end
      end
      object gAcp2: TGroupBox
        Left = 8
        Top = 256
        Width = 529
        Height = 89
        Caption = 'Auto-completion from current file'
        TabOrder = 2
        object LabelAcpFileChars: TLabel
          Left = 64
          Top = 40
          Width = 184
          Height = 13
          Caption = 'Show words not shorter than ... chars'
        end
        object LabelAcpFileSize: TLabel
          Left = 64
          Top = 64
          Width = 200
          Height = 13
          Caption = 'Search for words only in first ... Mb of file'
        end
        object cbAcpFile: TCheckBox
          Left = 8
          Top = 16
          Width = 457
          Height = 17
          Caption = 'Also show words from current file'
          TabOrder = 0
          OnClick = cbAcpFileClick
        end
        object edAcpFileChars: TSpinEdit
          Left = 8
          Top = 36
          Width = 49
          Height = 22
          MaxValue = 200
          MinValue = 2
          TabOrder = 1
          Value = 2
          OnKeyDown = edIndKeyDown
        end
        object edAcpFileSize: TSpinEdit
          Left = 8
          Top = 60
          Width = 49
          Height = 22
          MaxValue = 20
          MinValue = 1
          TabOrder = 2
          Value = 1
          OnKeyDown = edIndKeyDown
        end
      end
      object gAcpSp: TGroupBox
        Left = 8
        Top = 4
        Width = 529
        Height = 141
        Caption = 'Special auto-completion features'
        TabOrder = 0
        object labSmTabHelp: TLabel
          Left = 424
          Top = 48
          Width = 29
          Height = 13
          Cursor = crHandPoint
          Caption = '(Help)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = labSmTabHelpClick
        end
        object labTplHelp: TLabel
          Left = 424
          Top = 98
          Width = 29
          Height = 13
          Cursor = crHandPoint
          Caption = '(Help)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = labTplHelpClick
        end
        object labAutoCloseHelp: TLabel
          Left = 424
          Top = 62
          Width = 29
          Height = 13
          Cursor = crHandPoint
          Caption = '(Help)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = labAutoCloseHelpClick
        end
        object TntLabel34: TLabel
          Left = 47
          Top = 116
          Width = 156
          Height = 13
          Alignment = taRightJustify
          Caption = 'Except for these file extensions:'
        end
        object cbAcpHtm: TCheckBox
          Left = 8
          Top = 16
          Width = 450
          Height = 17
          Caption = 'Use special HTML auto-completion'
          TabOrder = 0
        end
        object cbAcpTabbing: TCheckBox
          Left = 8
          Top = 48
          Width = 409
          Height = 17
          Caption = 'Use special HTML feature - SmartTagTabbing'
          TabOrder = 2
        end
        object cbAcpCss: TCheckBox
          Left = 8
          Top = 32
          Width = 450
          Height = 17
          Caption = 'Use special CSS auto-completion'
          TabOrder = 1
        end
        object cbTplTabbing: TCheckBox
          Left = 8
          Top = 96
          Width = 409
          Height = 17
          Caption = 'Use Tab key to expand code templates'
          TabOrder = 7
        end
        object cbACloseTags: TCheckBox
          Left = 8
          Top = 64
          Width = 409
          Height = 17
          Caption = 'Auto-close HTML/XML tags'
          TabOrder = 3
        end
        object cbACloseBr: TCheckBox
          Left = 8
          Top = 80
          Width = 208
          Height = 17
          Caption = 'Auto-close brackets: ( ) [ ] { }'
          TabOrder = 4
          OnClick = cbACloseBrClick
        end
        object cbACloseBrEsc: TCheckBox
          Left = 336
          Top = 80
          Width = 185
          Height = 17
          Caption = 'Skip escaped: \{'
          TabOrder = 6
        end
        object cbACloseQ: TCheckBox
          Left = 216
          Top = 80
          Width = 120
          Height = 17
          Caption = 'And quotes: " '#39
          TabOrder = 5
          OnClick = cbACloseBrClick
        end
        object edTplTabEx: TEdit
          Left = 216
          Top = 114
          Width = 201
          Height = 21
          TabOrder = 8
        end
      end
    end
    object tabASave: TTabSheet
      Caption = 'Auto-save'
      TabVisible = False
      OnShow = tabASaveShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gASave: TGroupBox
        Left = 8
        Top = 4
        Width = 529
        Height = 65
        Caption = 'Auto-save when'
        TabOrder = 0
        object labASaveTime: TLabel
          Left = 192
          Top = 22
          Width = 37
          Height = 13
          Caption = 'minutes'
        end
        object cbASaveTimer: TCheckBox
          Left = 8
          Top = 20
          Width = 129
          Height = 17
          Caption = 'Every'
          TabOrder = 0
          OnClick = cbASaveTimerClick
        end
        object edASaveTime: TSpinEdit
          Left = 136
          Top = 18
          Width = 49
          Height = 22
          MaxValue = 500
          MinValue = 1
          TabOrder = 1
          Value = 1
          OnKeyDown = edIndKeyDown
        end
        object cbASaveFocus: TCheckBox
          Left = 8
          Top = 40
          Width = 393
          Height = 17
          Caption = 'On application losing focus'
          TabOrder = 2
        end
      end
      object gASaveWhat: TGroupBox
        Left = 8
        Top = 72
        Width = 529
        Height = 77
        Caption = 'Auto-save what'
        TabOrder = 1
        object labASavIgnore: TLabel
          Left = 8
          Top = 52
          Width = 110
          Height = 13
          Caption = 'Ignore files larger than'
        end
        object labKByte: TLabel
          Left = 344
          Top = 52
          Width = 12
          Height = 13
          Caption = 'Kb'
        end
        object cbASaveCurrFile: TRadioButton
          Left = 8
          Top = 16
          Width = 297
          Height = 17
          Caption = 'Current file'
          TabOrder = 0
        end
        object cbASaveAllFiles: TRadioButton
          Left = 8
          Top = 32
          Width = 305
          Height = 17
          Caption = 'All opened files'
          TabOrder = 1
        end
        object edASaveMaxSize: TSpinEdit
          Left = 280
          Top = 48
          Width = 57
          Height = 22
          Increment = 100
          MaxValue = 100000
          MinValue = 0
          TabOrder = 2
          Value = 0
          OnKeyDown = edIndKeyDown
        end
      end
      object gUnnamed: TGroupBox
        Left = 8
        Top = 152
        Width = 529
        Height = 97
        Caption = 'Auto-saving of unnamed files'
        TabOrder = 2
        object edASaveUnnamedDir: TEdit
          Left = 24
          Top = 68
          Width = 313
          Height = 21
          TabOrder = 0
        end
        object cbASaveUnIgnore: TRadioButton
          Left = 8
          Top = 16
          Width = 420
          Height = 17
          Caption = 'Ignore unnamed files'
          TabOrder = 1
          OnClick = cbASaveUnnamedClick
        end
        object cbASaveUnShowSave: TRadioButton
          Left = 8
          Top = 32
          Width = 420
          Height = 17
          Caption = 'Show "Save as" dialog'
          TabOrder = 2
          OnClick = cbASaveUnnamedClick
        end
        object cbASaveUnSaveToDir: TRadioButton
          Left = 8
          Top = 48
          Width = 420
          Height = 17
          Caption = 'Save with default name to folder:'
          TabOrder = 3
          OnClick = cbASaveUnnamedClick
        end
        object bUnnamedBrowse: TButton
          Left = 344
          Top = 68
          Width = 41
          Height = 21
          Caption = '...'
          TabOrder = 4
          OnClick = bUnnamedBrowseClick
        end
      end
    end
    object tabSpell: TTabSheet
      Caption = 'Spell checker'
      TabVisible = False
      OnShow = tabSpellShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object boxSpellOpt: TGroupBox
        Left = 8
        Top = 0
        Width = 529
        Height = 125
        Caption = 'Spell checker options'
        TabOrder = 0
        object TntLabel16: TLabel
          Left = 8
          Top = 36
          Width = 158
          Height = 13
          Caption = 'Check &only these file extensions:'
          FocusControl = edSpellExt
        end
        object TntLabel24: TLabel
          Left = 8
          Top = 76
          Width = 156
          Height = 13
          Caption = 'Customize spell checking engine:'
        end
        object edSpellExt: TEdit
          Left = 8
          Top = 52
          Width = 329
          Height = 21
          TabOrder = 1
        end
        object cbSpellEn: TCheckBox
          Left = 8
          Top = 16
          Width = 313
          Height = 17
          Caption = '&Enable live spell checking'
          TabOrder = 0
        end
        object bSpellOpt: TButton
          Left = 8
          Top = 92
          Width = 121
          Height = 23
          Caption = '&Customize...'
          TabOrder = 2
          OnClick = bSpellOptClick
        end
      end
      object boxSpellLnk: TGroupBox
        Left = 8
        Top = 128
        Width = 529
        Height = 89
        Caption = 'Additional dictionaries'
        TabOrder = 1
        object TntLabel27: TLabel
          Left = 8
          Top = 16
          Width = 513
          Height = 29
          AutoSize = False
          Caption = 
            'You can install additional dictionaries. Download zipped package' +
            's, then unzip them into "Dictionaries" subfolder of SynWrite ins' +
            'tallation folder. Download from:'
          WordWrap = True
        end
        object labDictWww: TLabel
          Left = 8
          Top = 48
          Width = 137
          Height = 13
          Cursor = crHandPoint
          Caption = 'www.addictivesoftware.com'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = labDictWwwClick
        end
        object labDictDir: TLabel
          Left = 8
          Top = 64
          Width = 123
          Height = 13
          Cursor = crHandPoint
          Caption = 'Browse dictionaries folder'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = labDictDirClick
        end
      end
    end
    object tabFolders: TTabSheet
      Caption = 'Search folders'
      TabVisible = False
      OnShow = tabFoldersShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object boxFolders: TGroupBox
        Left = 8
        Top = 0
        Width = 529
        Height = 237
        Caption = 'Search folders'
        TabOrder = 0
        object TntLabel14: TLabel
          Left = 8
          Top = 216
          Width = 267
          Height = 13
          Caption = 'Hint: add * after folder name to search in it recursively.'
        end
        object TntLabel15: TLabel
          Left = 8
          Top = 16
          Width = 345
          Height = 29
          AutoSize = False
          Caption = 
            'Folders, which are looked by command "Open <selection>" of edito' +
            'r context menu:'
          WordWrap = True
        end
        object edFolders: TMemo
          Left = 8
          Top = 48
          Width = 345
          Height = 133
          ScrollBars = ssBoth
          TabOrder = 0
          OnKeyDown = edFoldersKeyDown
        end
        object bAddFolder: TButton
          Left = 8
          Top = 188
          Width = 129
          Height = 23
          Caption = 'Add folder...'
          TabOrder = 1
          OnClick = bAddFolderClick
        end
      end
    end
    object tabMisc: TTabSheet
      Caption = 'Misc'
      TabVisible = False
      OnShow = tabMiscShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object boxMisc: TGroupBox
        Left = 8
        Top = 0
        Width = 529
        Height = 269
        Caption = 'Misc'
        TabOrder = 0
        object labDate: TLabel
          Left = 158
          Top = 44
          Width = 13
          Height = 13
          Cursor = crHandPoint
          Caption = '(?)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = labDateClick
        end
        object TntLabel20: TLabel
          Left = 176
          Top = 44
          Width = 82
          Height = 13
          Caption = 'Date/time format'
        end
        object TntLabel18: TLabel
          Left = 176
          Top = 20
          Width = 65
          Height = 13
          Caption = 'Emmet profile'
          Layout = tlCenter
        end
        object TntLabel33: TLabel
          Left = 160
          Top = 68
          Width = 152
          Height = 13
          Caption = 'Date/time format for plugins log'
        end
        object TntLabel37: TLabel
          Left = 160
          Top = 92
          Width = 120
          Height = 13
          Caption = 'Show recent colors menu'
          Layout = tlCenter
        end
        object TntLabel38: TLabel
          Left = 160
          Top = 116
          Width = 82
          Height = 13
          Caption = 'Default sort type'
          Layout = tlCenter
        end
        object labEmmet: TLabel
          Left = 158
          Top = 20
          Width = 13
          Height = 13
          Cursor = crHandPoint
          Caption = '(?)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = labEmmetClick
        end
        object TntLabel29: TLabel
          Left = 160
          Top = 132
          Width = 313
          Height = 29
          AutoSize = False
          Caption = 'Offsets (horz. and vert.) for commands "Move caret by N chars"'
          Layout = tlCenter
          WordWrap = True
        end
        object cbFullTitle: TCheckBox
          Left = 8
          Top = 180
          Width = 360
          Height = 17
          Caption = 'Show full path in window caption'
          TabOrder = 8
        end
        object cbGroupLexers: TCheckBox
          Left = 8
          Top = 164
          Width = 360
          Height = 17
          Caption = 'Group lexers list'
          TabOrder = 7
        end
        object cbMenuIcon: TCheckBox
          Left = 8
          Top = 196
          Width = 360
          Height = 17
          Caption = 'Show icons in context menu'
          TabOrder = 9
        end
        object edDateFmt: TEdit
          Left = 8
          Top = 40
          Width = 145
          Height = 21
          TabOrder = 1
        end
        object cbBeep: TCheckBox
          Left = 8
          Top = 244
          Width = 360
          Height = 17
          Caption = 'Allow beep sounds'
          TabOrder = 12
        end
        object cbTips: TCheckBox
          Left = 8
          Top = 212
          Width = 360
          Height = 17
          Caption = 'Show panels'#39' tooltips'
          TabOrder = 10
        end
        object edMovX: TSpinEdit
          Left = 8
          Top = 136
          Width = 65
          Height = 22
          MaxValue = 200
          MinValue = 1
          TabOrder = 5
          Value = 1
          OnKeyDown = edIndKeyDown
        end
        object edMovY: TSpinEdit
          Left = 88
          Top = 136
          Width = 65
          Height = 22
          MaxValue = 200
          MinValue = 1
          TabOrder = 6
          Value = 1
          OnKeyDown = edIndKeyDown
        end
        object cbZenProfile: TComboBox
          Left = 8
          Top = 16
          Width = 145
          Height = 21
          Style = csDropDownList
          TabOrder = 0
        end
        object cbStripBk: TCheckBox
          Left = 8
          Top = 228
          Width = 497
          Height = 17
          Caption = 'Strip names in "Go to portable bookmark" dialog'
          TabOrder = 11
        end
        object edDateFmtP: TEdit
          Left = 8
          Top = 64
          Width = 145
          Height = 21
          TabOrder = 2
        end
        object cbRecColors: TComboBox
          Left = 8
          Top = 88
          Width = 145
          Height = 21
          Style = csDropDownList
          TabOrder = 3
          Items.Strings = (
            'Auto-hide'
            'Always show'
            'Always hide')
        end
        object cbSortMode: TComboBox
          Left = 8
          Top = 112
          Width = 145
          Height = 21
          Style = csDropDownList
          TabOrder = 4
          Items.Strings = (
            'Unicode'
            'Unicode (Win API)'
            'ASCII'
            'Numeric')
        end
      end
    end
  end
  object bApply: TButton
    Left = 508
    Top = 399
    Width = 90
    Height = 23
    Anchors = [akRight, akBottom]
    Caption = 'Apply'
    TabOrder = 2
    OnClick = bApplyClick
  end
  object bCan: TButton
    Left = 604
    Top = 399
    Width = 90
    Height = 23
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 3
    OnClick = bCanClick
  end
  object bOk: TButton
    Left = 412
    Top = 399
    Width = 90
    Height = 23
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    TabOrder = 1
    OnClick = bOkClick
  end
  object ListCat: TListBox
    Left = 8
    Top = 8
    Width = 145
    Height = 369
    ItemHeight = 13
    TabOrder = 4
    OnClick = ListCatClick
  end
  object FontDialog: TFontDialog
    OnShow = FontDialogShow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [fdForceFontExist]
    Left = 172
    Top = 400
  end
  object KeyMapping: TSyntKeyMapping
    Items = <>
    Left = 200
    Top = 400
  end
  object DKLanguageController1: TDKLanguageController
    IgnoreList.Strings = (
      'OpenDialogPre.*'
      'SaveDialogPre.*')
    Left = 276
    Top = 400
    LangData = {
      0700666D5365747570010100000001000000070043617074696F6E014A010000
      040054616273000005007461624564010100000002000000070043617074696F
      6E000500674564697400000600426576656C31000007006362424F7665720102
      00000004000000070043617074696F6E03000000040048696E74000700636242
      50657273010200000006000000070043617074696F6E05000000040048696E74
      000800636244436C69636B010200000008000000070043617074696F6E070000
      00040048696E740007006362477253656C01020000000C000000070043617074
      696F6E0B000000040048696E7400060063625772617001020000001000000007
      0043617074696F6E0F000000040048696E740006006362466F6C640102000000
      14000000070043617074696F6E13000000040048696E74000600636244726167
      010200000016000000070043617074696F6E15000000040048696E7400080063
      62436F6C6C6170010200000018000000070043617074696F6E17000000040048
      696E740007006362464C696E6501020000001A000000070043617074696F6E19
      000000040048696E7400090063624175746F496E6401020000001C0000000700
      43617074696F6E1B000000040048696E7400090063624261636B496E64010200
      00001E000000070043617074696F6E1D000000040048696E7400080063624772
      5265646F010200000020000000070043617074696F6E1F000000040048696E74
      00080063624772556E646F010200000022000000070043617074696F6E210000
      00040048696E740009006362556E646F53617601020000002400000007004361
      7074696F6E23000000040048696E740009006362436F70795274660102000000
      26000000070043617074696F6E25000000040048696E740009006362536D4361
      726574010200000028000000070043617074696F6E27000000040048696E7400
      0B0063624B656570436172657401020000002A000000070043617074696F6E29
      000000040048696E7400090063624F707446696C6C01020000002C0000000700
      43617074696F6E2B000000040048696E740008006362436F6C53656C01020000
      0030000000070043617074696F6E2F000000040048696E740008006362466C6F
      61744D010200000032000000070043617074696F6E31000000040048696E7400
      0C0063625363726F6C6C4C617374010200000034000000070043617074696F6E
      33000000040048696E740009006362577261704D617201020000003600000007
      0043617074696F6E35000000040048696E7400090063624669784D6F76650102
      00000038000000070043617074696F6E37000000040048696E74000900636256
      6172486F727A01020000003A000000070043617074696F6E3900000004004869
      6E74000B006362556E696E644B65657001020000003C00000007004361707469
      6F6E3B000000040048696E74000B0063624B656570426C616E6B01020000003E
      000000070043617074696F6E3D000000040048696E7400060074616245643201
      010000003F000000070043617074696F6E00070067456469746F72000007004C
      6162656C3135010100000040000000070043617074696F6E0006004C6162656C
      33010100000041000000070043617074696F6E0007004C6162656C3134010100
      000042000000070043617074696F6E0006006362445365700102000000440000
      00070043617074696F6E43000000040048696E74000700636244477261640102
      00000046000000070043617074696F6E45000000040048696E7400060063624C
      696E6B010200000048000000070043617074696F6E47000000040048696E7400
      08006362444C4261636B01020000004A000000070043617074696F6E49000000
      040048696E740007006362436172657401020000004C00000007004361707469
      6F6E4B000000040048696E7400090063624869646543757201020000004E0000
      00070043617074696F6E4D000000040048696E74000700636248696465440102
      00000050000000070043617074696F6E4F000000040048696E74000900636248
      69646553656C010200000052000000070043617074696F6E5100000004004869
      6E7400080065644C5370616365010100000053000000040048696E7400050065
      644D6172010100000054000000040048696E7400050063624D61720102000000
      56000000070043617074696F6E55000000040048696E7400060065644E756D73
      010200000057000000040048696E745800000005004974656D73000800636244
      466F63757301020000005A000000070043617074696F6E59000000040048696E
      74000700636252756C657201020000005C000000070043617074696F6E5B0000
      00040048696E7400090047726F7570426F7832000006004C6162656C31010100
      00005D000000070043617074696F6E0007004C6162656C313301010000005E00
      0000070043617074696F6E0006004C6162656C3601010000005F000000070043
      617074696F6E0007004C6162656C313601010000006000000007004361707469
      6F6E0005006564496E64010100000061000000040048696E740008006564554C
      696D6974010100000062000000040048696E7400090065645461624D6F646501
      0200000063000000040048696E746400000005004974656D7300060065645461
      625F010100000065000000040048696E74000900746162436F6C6F7273010100
      000095010000070043617074696F6E00070067436F6C6F727301010000006700
      0000070043617074696F6E0006004C6162656C34010100000068000000070043
      617074696F6E0006004C6162656C35010100000069000000070043617074696F
      6E000A004C697374436F6C6F727300000B005374617469635465787431010100
      00006B000000070043617074696F6E000700746162496E746601010000007800
      0000070043617074696F6E0007004C6162656C31310101000000790000000700
      43617074696F6E000700626F78496E746601010000007A000000070043617074
      696F6E000600636243686172010100000080000000070043617074696F6E0006
      00636253746174010100000082000000070043617074696F6E00060063624D65
      6E75010100000083000000070043617074696F6E0006007461624B6579010100
      000089000000070043617074696F6E0007004B65794C69737400000800656348
      6F744B657900000700624B657953657401010000008A00000007004361707469
      6F6E000700624B6579436C7201010000008B000000070043617074696F6E0006
      00624B6579466E01010000008C000000070043617074696F6E00080074616246
      696C65730101000000CC010000070043617074696F6E00060074616241435001
      010000009C000000070043617074696F6E000600624170706C790101000000A4
      000000070043617074696F6E0004006243616E0101000000A500000007004361
      7074696F6E000300624F6B0101000000A6000000070043617074696F6E000A00
      466F6E744469616C6F6700000A004B65794D617070696E67000007004C616265
      6C31380101000000A7000000070043617074696F6E00060063624C616E670000
      0900436F6C6F72426F78310000090063624B6565705363720102000000AC0000
      00070043617074696F6EAB000000040048696E740006006362496E7374010100
      0000B2000000070043617074696F6E00070067416370416C6C0101000000B300
      0000070043617074696F6E0007004C6162656C34320101000000B40000000700
      43617074696F6E000B00636241637046696C7465720101000000B70000000500
      4974656D7300090063624163704E6F6E650101000000B9000000070043617074
      696F6E000700636254616253700102000000BF000000070043617074696F6EBE
      000000040048696E74000600626F784E65770101000000C10000000700436170
      74696F6E000900546E744C6162656C340101000000C200000007004361707469
      6F6E0005006564456E630101000000C300000005004974656D73000900546E74
      4C6162656C350101000000C4000000070043617074696F6E00040065644C4501
      01000000C500000005004974656D73000900546E744C6162656C360101000000
      C6000000070043617074696F6E00050065644C6578000006006362536D486901
      02000000D8000000070043617074696F6ED7000000040048696E740009006564
      41637044726F7000000A0062436F6C6F724C6F61640101000000DC0000000700
      43617074696F6E000A0062436F6C6F72536176650101000000DD000000070043
      617074696F6E000D004F70656E4469616C6F6750726500000D00536176654469
      616C6F67507265000006006362427248690102000000E1000000070043617074
      696F6EE0000000040048696E74000700746162486973740101000000E7000000
      070043617074696F6E000700626F78486973740101000000E800000007004361
      7074696F6E0006004C6162656C380101000000E9000000070043617074696F6E
      0006004C6162656C370101000000EA000000070043617074696F6E000A00546E
      744C6162656C31310101000000EB000000070043617074696F6E000400656446
      5300000400656453520000080063624843617265740101000000EC0000000700
      43617074696F6E000600636248456E630101000000ED00000007004361707469
      6F6E00060062436C7253520101000000EE000000070043617074696F6E000600
      62436C7246530101000000EF000000070043617074696F6E00050063624D7275
      0101000000F0000000070043617074696F6E00090063624469724C6173740101
      000000F200000005004974656D7300090065644469724C617374000008006244
      69724C61737400000A006362536D4869436173650102000000F4000000070043
      617074696F6EF3000000040048696E74000B006362466978426C6F636B730102
      000000F6000000070043617074696F6EF5000000040048696E74000A00546E74
      4C6162656C31300101000000F9000000070043617074696F6E00050063624261
      6B0101000000FA00000005004974656D7300080065644163704E756D00000500
      6741637032010100000003010000070043617074696F6E000900636241637046
      696C65010100000004010000070043617074696F6E000E00656441637046696C
      65436861727300000D00656441637046696C6553697A65000011004C6162656C
      41637046696C654368617273010100000005010000070043617074696F6E0010
      004C6162656C41637046696C6553697A65010100000006010000070043617074
      696F6E00080063624B657943617400000A00546E744C6162656C313901010000
      000B010000070043617074696F6E000900636253686F77454F4C01020000000D
      010000070043617074696F6E0C010000040048696E7400050063624573630101
      0000000F01000005004974656D73000A00546E744C6162656C32310101000000
      10010000070043617074696F6E0009007461625365617263680101000000A501
      0000070043617074696F6E000300675352010100000021010000070043617074
      696F6E00070063625372446C67010100000022010000070043617074696F6E00
      080063625372576F7264010100000023010000070043617074696F6E000A0063
      625372486973745443010100000024010000070043617074696F6E0009006362
      53724F6E546F70010100000025010000070043617074696F6E00040067515372
      010100000026010000070043617074696F6E000900546E744C6162656C320101
      00000027010000070043617074696F6E00070063625173457363010100000028
      01000005004974656D7300070063625173436170010100000029010000070043
      617074696F6E000A00546E744C6162656C323201010000002A01000007004361
      7074696F6E0007006362537245727201010000002B010000070043617074696F
      6E000800636253724572723201010000002C010000070043617074696F6E0008
      006362426B556E646F01020000002E010000070043617074696F6E2D01000004
      0048696E74000800656446696C74657200000A00546E744C6162656C32350101
      00000034010000070043617074696F6E00090054696D657246696C7400000900
      6362537461706C657301010000003C010000040048696E74000A00546E744C61
      62656C323801010000003B010000070043617074696F6E000E00656453746170
      6C654F666673657401010000003D010000040048696E74000A006246696C7443
      6C656172010100000040010000070043617074696F6E0007006362537253656C
      010100000041010000070043617074696F6E0008007461624153617665010100
      000042010000070043617074696F6E0006006741536176650101000000430100
      00070043617074696F6E000C006362415361766554696D657201010000004401
      0000070043617074696F6E000B006564415361766554696D6500000C00636241
      53617665466F637573010100000045010000070043617074696F6E000A006741
      5361766557686174010100000046010000070043617074696F6E000F00636241
      536176654375727246696C65010100000047010000070043617074696F6E000F
      0063624153617665416C6C46696C657301010000004801000007004361707469
      6F6E000D006C61624153617649676E6F72650101000000490100000700436170
      74696F6E000E00656441536176654D617853697A6500000C006C616241536176
      6554696D6501010000004D010000070043617074696F6E0008006C61624B4279
      746501010000004E010000070043617074696F6E00080067556E6E616D656401
      010000004F010000070043617074696F6E00110065644153617665556E6E616D
      656444697200000F0063624153617665556E49676E6F72650101000000520100
      00070043617074696F6E00110063624153617665556E53686F77536176650101
      00000053010000070043617074696F6E00120063624153617665556E53617665
      546F446972010100000054010000070043617074696F6E000E0062556E6E616D
      656442726F77736500000A0063625372457870616E6401010000005601000007
      0043617074696F6E000600674163705370010100000059010000070043617074
      696F6E000800636241637048746D01010000005A010000070043617074696F6E
      000C00636241637054616262696E6701010000005B010000070043617074696F
      6E000800636241637043737301010000005C010000070043617074696F6E000C
      006C6162536D54616248656C7001010000005D010000070043617074696F6E00
      070063624854656D70010100000061010000070043617074696F6E000E006362
      41637055736553696E676C65010100000062010000070043617074696F6E0009
      006362526F5374617274010100000063010000070043617074696F6E000C0063
      6254706C54616262696E67010100000065010000070043617074696F6E000A00
      6C616254706C48656C70010100000066010000070043617074696F6E000C0063
      6241436C6F73655461677301010000006C010000070043617074696F6E000900
      546E744C6162656C3701010000006D010000070043617074696F6E000A00546E
      744C6162656C313201010000006E010000070043617074696F6E0010006C6162
      4175746F436C6F736548656C7001010000006F010000070043617074696F6E00
      0A00636241436C6F73654272010100000070010000070043617074696F6E000D
      00636241436C6F73654272457363010100000072010000070043617074696F6E
      000900636241436C6F736551010100000073010000070043617074696F6E000B
      00636244577261704D61726B01020000007A010000070043617074696F6E7901
      0000040048696E740007004C6973744361740000070074616254616273010100
      00007E010000070043617074696F6E000700626F785461627301010000007F01
      0000070043617074696F6E000900546E744C6162656C33010100000080010000
      070043617074696F6E000800636254616242746E010100000081010000070043
      617074696F6E00080063625461624D756C010100000083010000070043617074
      696F6E0009006362546162446F776E010100000084010000070043617074696F
      6E00090063625461624E756D73010100000085010000070043617074696F6E00
      070063625461625377010100000086010000070043617074696F6E0008006362
      546162446E44010100000087010000070043617074696F6E000B006564546162
      4D61784C656E00000800636254616244626C0101000000880100000700436170
      74696F6E000A00626F78546F6F6C626172010100000089010000070043617074
      696F6E0006004C6162656C3201010000008A010000070043617074696F6E0007
      0063625468656D65000007004C6162656C313201010000008B01000007004361
      7074696F6E000700636249636F6E7301010000008C01000005004974656D7300
      0800746162466F6E747301010000008D010000070043617074696F6E00050067
      466F6E7401010000008E010000070043617074696F6E00020062310101000000
      96010000070043617074696F6E00020062320101000000970100000700436170
      74696F6E0002006234010100000098010000070043617074696F6E0002006233
      010100000099010000070043617074696F6E000200623501010000009A010000
      070043617074696F6E000200623601010000009B010000070043617074696F6E
      0007007461625472656501010000009C010000070043617074696F6E00050067
      5472656501010000009D010000070043617074696F6E000A00546E744C616265
      6C313701010000009E010000070043617074696F6E000A006362547265655379
      6E6301010000009F010000070043617074696F6E000E00636254726565436F6C
      6C617073650101000000A0010000070043617074696F6E000C00636254726565
      457870616E640101000000A1010000070043617074696F6E000A006362547265
      65536F72740101000000A2010000070043617074696F6E000B00636254726565
      547261636B0101000000A3010000070043617074696F6E000C00636254726565
      416374696F6E0101000000A401000005004974656D7300070074616253657373
      0101000000A6010000070043617074696F6E000700626F785365737301010000
      00A7010000070043617074696F6E0009006362536573734465660101000000A8
      010000070043617074696F6E000A006362536573734C6F61640101000000A901
      0000070043617074696F6E000A00636253657373536176650101000000AA0100
      00070043617074696F6E000700626F7850726F6A0101000000AB010000070043
      617074696F6E000A00636250726F6A4C6F61640101000000AC01000007004361
      7074696F6E000A00636250726F6A536176650101000000AD0100000700436170
      74696F6E000C00546E7447726F7570426F78310101000000AE01000007004361
      7074696F6E000A00546E744C6162656C32360101000000AF0100000700436170
      74696F6E000C0063624D6170485363726F6C6C0101000000B001000007004361
      7074696F6E000C0063624D6170565363726F6C6C0101000000B1010000070043
      617074696F6E00090065644D61705A6F6F6D00000900626F784647726F757001
      01000000B2010000070043617074696F6E000900546E744C6162656C31010100
      0000B3010000070043617074696F6E0007006362546578745F0101000000B401
      000005004974656D730007004C6162656C31370101000000B501000007004361
      7074696F6E000900546E744C6162656C380101000000B6010000070043617074
      696F6E00050065644F656D0000060065645554463800000900546E744C616265
      6C390101000000B7010000070043617074696F6E000900626F7852656C6F6164
      0101000000B8010000070043617074696F6E0006004C6162656C390101000000
      B9010000070043617074696F6E00070063624E6F7469660101000000BA010000
      05004974656D7300060063625461696C0101000000BB01000007004361707469
      6F6E00080063624F766572524F0101000000BC010000070043617074696F6E00
      0900656442696753697A6500000A00546E744C6162656C32330101000000BD01
      0000070043617074696F6E0007007461624D6973630101000000CB0100000700
      43617074696F6E000700626F784D6973630101000000BF010000070043617074
      696F6E0007006C61624461746500000A00546E744C6162656C32300101000000
      C3010000070043617074696F6E000B00636246756C6C5469746C650101000000
      C5010000070043617074696F6E000D00636247726F75704C6578657273010100
      0000C6010000070043617074696F6E000A0063624D656E7549636F6E01010000
      00C7010000070043617074696F6E000900656444617465466D74000006006362
      426565700101000000C8010000070043617074696F6E00060063625469707301
      01000000C9010000070043617074696F6E00060065644D6F7658000006006564
      4D6F765900000C0063625A656E50726F66696C6500000D004C69737454616243
      6F6C6F727300000A00546E744C6162656C31330101000000CD01000007004361
      7074696F6E00090063625374726970426B0101000000CE010000070043617074
      696F6E000A00746162466F6C646572730101000000CF01000007004361707469
      6F6E000A00626F78466F6C646572730101000000D3010000070043617074696F
      6E000A00546E744C6162656C31340101000000D0010000070043617074696F6E
      000A00546E744C6162656C31350101000000D1010000070043617074696F6E00
      09006564466F6C6465727300000A0062416464466F6C6465720101000000D201
      0000070043617074696F6E0008007461625370656C6C0101000000D401000007
      0043617074696F6E000B00626F785370656C6C4F70740101000000D501000007
      0043617074696F6E000A00546E744C6162656C31360101000000D60100000700
      43617074696F6E000A00546E744C6162656C32340101000000D7010000070043
      617074696F6E000A0065645370656C6C4578740000090063625370656C6C456E
      0101000000D8010000070043617074696F6E000900625370656C6C4F70740101
      000000D9010000070043617074696F6E000B00626F785370656C6C4C6E6B0101
      000000DA010000070043617074696F6E000A00546E744C6162656C3237010100
      0000DB010000070043617074696F6E000A006C61624469637457777701010000
      00DC010000070043617074696F6E000A006C6162446963744469720101000000
      DD010000070043617074696F6E000900636253617665506F730101000000DE01
      0000070043617074696F6E0006007461624F76720101000000E1010000070043
      617074696F6E000A00546E744C6162656C31380101000000E201000007004361
      7074696F6E000B00656453724F66667365745900000A00546E744C6162656C33
      320101000000E3010000070043617074696F6E000A00656444617465466D7450
      00000A00546E744C6162656C33330101000000E4010000070043617074696F6E
      000E006362436F6C6F724F6E456D7074790102000000E6010000070043617074
      696F6EE5010000040048696E7400080063625461625669730101000000E70100
      0005004974656D73000A00656454706C546162457800000A00546E744C616265
      6C33340101000000E8010000070043617074696F6E000600426576656C320000
      0900636253656C4D6F64650101000000E901000005004974656D73000A00546E
      744C6162656C33350101000000EA010000070043617074696F6E000B0063624B
      65657050617374650102000000EC010000070043617074696F6EEB0100000400
      48696E74000A00546E744C6162656C33360101000000ED010000070043617074
      696F6E0009006362556E694E6565640101000000EE01000005004974656D7300
      0B006362526563436F6C6F72730101000000EF01000005004974656D73000A00
      546E744C6162656C33370101000000F0010000070043617074696F6E000E0063
      62436F70794C696E654E53656C0102000000F2010000070043617074696F6EF1
      010000040048696E74000A0063624D6963726F4D61700101000000F301000007
      0043617074696F6E000A006362536F72744D6F64650101000000F40100000500
      4974656D73000A00546E744C6162656C33380101000000F50100000700436170
      74696F6E0008006C6162456D6D657400000B0063625472656544656C61790000
      0A00546E744C6162656C33390101000000F6010000070043617074696F6E000A
      00546E744C6162656C32390101000000F7010000070043617074696F6E000A00
      636255726C436C69636B0102000000F9010000070043617074696F6EF8010000
      040048696E740009007461624361726574730101000000FA0100000700436170
      74696F6E000900626F784361726574730101000000FC01000007004361707469
      6F6E000C00636243617265744D756C74690101000000FB010000070043617074
      696F6E000A00546E744C6162656C33300101000000FD01000007004361707469
      6F6E000E0063624361726574496E644E6F6E650101000000FE01000007004361
      7074696F6E000E0063624361726574496E644C696E650101000000FF01000007
      0043617074696F6E00100063624361726574496E644775747465720101000000
      00020000070043617074696F6E000A00546E744C6162656C3331010100000001
      020000070043617074696F6E00100065644361726574477574746572436F6C00
      000C006C6162436172657448656C70010100000002020000070043617074696F
      6E00}
  end
  object OpenDialogPre: TOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 228
    Top = 400
  end
  object SaveDialogPre: TSaveDialog
    DefaultExt = 'colors'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 252
    Top = 400
  end
  object TimerFilt: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = TimerFiltTimer
    Left = 300
    Top = 402
  end
end
