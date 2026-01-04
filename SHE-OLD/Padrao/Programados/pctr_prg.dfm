inherited frmctr_prg: Tfrmctr_prg
  Left = -187
  Top = 90
  ActiveControl = DSConsulta
  AlphaBlendValue = 0
  Caption = 'Controle de Programa'#231#245'es de Vendas'
  ClientHeight = 958
  ClientWidth = 1904
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlbot: TPanel [0]
    Top = 522
    Width = 1904
    Height = 411
    Visible = True
    object GBFKCadastro: TGroupBox
      Left = 0
      Top = 0
      Width = 1584
      Height = 411
      Align = alClient
      Caption = '  Itens  '
      Color = 15329769
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object DBGFKCadastro: TdxDBGrid
        Left = 2
        Top = 19
        Width = 1580
        Height = 390
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ID'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        Color = clHighlightText
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        AutoSearchColor = 9395
        AutoSearchTextColor = clWhite
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -13
        BandFont.Name = 'Segoe UI'
        BandFont.Style = [fsItalic]
        DataSource = DTSFKCadastro
        Filter.Active = True
        Filter.Criteria = {00000000}
        GridLineColor = clSilver
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -13
        HeaderFont.Name = 'Segoe UI'
        HeaderFont.Style = [fsItalic]
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoExtMultiSelect, edgoImmediateEditor, edgoMouseScroll, edgoMultiSelect, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
        OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -13
        PreviewFont.Name = 'Segoe UI Semibold'
        PreviewFont.Style = [fsBold, fsItalic]
        ShowGrid = False
        OnCustomDrawCell = DBGFKCadastroCustomDrawCell
        object DBGFKCadastroITEM: TdxDBGridMaskColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 45
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
          DisableFilter = True
        end
        object DBGFKCadastroSKU: TdxDBGridMaskColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SKU'
          DisableFilter = True
        end
        object DBGFKCadastroDECP: TdxDBGridMaskColumn
          Width = 250
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DECP'
          DisableFilter = True
        end
        object DBGFKCadastroDGCP: TdxDBGridMaskColumn
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DGCP'
        end
        object DBGFKCadastroUCOM: TdxDBGridMaskColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UCOM'
          DisableFilter = True
        end
        object DBGFKCadastroQTDE: TdxDBGridMaskColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'QTDE'
          SummaryFooterType = cstSum
          SummaryFooterField = 'QTDE'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object DBGFKCadastroQTRL: TdxDBGridMaskColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'QTRL'
          SummaryFooterType = cstSum
          SummaryFooterField = 'QTRL'
          SummaryFooterFormat = '0'
          DisableFilter = True
        end
        object DBGFKCadastroVPRC_COM: TdxDBGridMaskColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VPRC_COM'
          SummaryFooterType = cstAvg
          SummaryFooterField = 'VPRC_COM'
          SummaryFooterFormat = '#,0.00###'
          DisableFilter = True
        end
        object DBGFKCadastroVPRC_PAD_INI: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VPRC_PAD_INI'
          DisableFilter = True
        end
        object DBGFKCadastroVPRC_PAD_FIM: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VPRC_PAD_FIM'
          DisableFilter = True
        end
        object DBGFKCadastroVDSC: TdxDBGridMaskColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 53
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VDSC'
          SummaryFooterType = cstAvg
          SummaryFooterField = 'VDSC'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object DBGFKCadastroTCDE: TdxDBGridMaskColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 85
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TCDE'
          SummaryFooterType = cstSum
          SummaryFooterField = 'TCDE'
          SummaryFooterFormat = '#,0.00'
          DisableFilter = True
        end
        object DBGFKCadastroSTFI: TdxDBGridMaskColumn
          Width = 130
          BandIndex = 0
          RowIndex = 0
          FieldName = 'STFI'
        end
        object DBGFKCadastroSKU_DEEP: TdxDBGridMaskColumn
          Width = 130
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SKU_DEEP'
        end
      end
      object PNLTAB_PRC: TPanel
        Left = 2
        Top = 409
        Width = 1580
        Height = 0
        Align = alBottom
        Alignment = taRightJustify
        Color = clGray
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object LALPRC_TAB_ABAIXO: TLabel
          Left = 30
          Top = 6
          Width = 118
          Height = 15
          Caption = 'Pre'#231'o abaixo da tabela'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object LALPRC_TAB_ACIMA_MIN: TLabel
          Left = 214
          Top = 6
          Width = 163
          Height = 15
          Caption = 'Pre'#231'o acima da tabela m'#237'nima:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object LALPRC_TAB_ACIMA_MAX: TLabel
          Left = 502
          Top = 6
          Width = 210
          Height = 15
          Caption = 'Pre'#231'o igual ou acima da tabela m'#225'xima:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object LAPRC_TAB_ACIMA_MIN: TLabel
          Left = 387
          Top = 4
          Width = 43
          Height = 17
          Caption = 'R$ 0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object LAPRC_TAB_ACIMA_MAX: TLabel
          Left = 724
          Top = 4
          Width = 43
          Height = 17
          Caption = 'R$ 0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object PNLTAB_PRC_ABAIXO: TPanel
          Left = 9
          Top = 4
          Width = 18
          Height = 17
          BevelInner = bvRaised
          Color = 9395
          TabOrder = 0
        end
        object PNLTAB_PRC_ACIMA_MIN: TPanel
          Left = 193
          Top = 4
          Width = 18
          Height = 17
          BevelInner = bvRaised
          Color = 12910532
          TabOrder = 1
        end
        object PNLTAB_PRC_ACIMA_MAX: TPanel
          Left = 481
          Top = 4
          Width = 18
          Height = 17
          BevelInner = bvRaised
          Color = 14789952
          TabOrder = 2
        end
      end
    end
    object PNLIMG_PAD: TPanel
      Left = 1584
      Top = 0
      Width = 320
      Height = 411
      Align = alRight
      Color = clHighlightText
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object GBIMG_PAD: TGroupBox
        Left = 1
        Top = 1
        Width = 318
        Height = 347
        Align = alClient
        Caption = '  Imagem do Produto  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object IMG_PAD: TImage
          Left = 2
          Top = 19
          Width = 314
          Height = 326
          Cursor = crHandPoint
          Hint = 'Amostragem do Produto'#13#10'Click para visualizar tela inteira'
          Align = alClient
          ParentShowHint = False
          ShowHint = True
          Stretch = True
        end
      end
      object GBIMG_ILA: TGroupBox
        Left = 1
        Top = 348
        Width = 318
        Height = 62
        Align = alBottom
        Caption = '  Instru'#231#245'es de Lavagem'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        object BVILA_BMP1: TBevel
          Left = 10
          Top = 20
          Width = 35
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP2: TBevel
          Left = 47
          Top = 20
          Width = 35
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP3: TBevel
          Left = 84
          Top = 20
          Width = 35
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP4: TBevel
          Left = 121
          Top = 20
          Width = 35
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP5: TBevel
          Left = 158
          Top = 20
          Width = 35
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP6: TBevel
          Left = 195
          Top = 20
          Width = 35
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP7: TBevel
          Left = 232
          Top = 20
          Width = 35
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object BVILA_BMP8: TBevel
          Left = 269
          Top = 20
          Width = 35
          Height = 35
          Cursor = crHandPoint
          ParentShowHint = False
          ShowHint = True
          Style = bsRaised
        end
        object DBILA_BMP1: TDBImage
          Left = 13
          Top = 23
          Width = 30
          Height = 30
          Cursor = crHandPoint
          DataField = 'ILA_BMP1'
          DataSource = DTSCAD_PRO_IMG
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 0
        end
        object DBILA_BMP2: TDBImage
          Left = 50
          Top = 23
          Width = 30
          Height = 30
          Cursor = crHandPoint
          DataField = 'ILA_BMP2'
          DataSource = DTSCAD_PRO_IMG
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 1
        end
        object DBILA_BMP3: TDBImage
          Left = 87
          Top = 23
          Width = 30
          Height = 30
          Cursor = crHandPoint
          DataField = 'ILA_BMP3'
          DataSource = DTSCAD_PRO_IMG
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 2
        end
        object DBILA_BMP4: TDBImage
          Left = 124
          Top = 23
          Width = 30
          Height = 30
          Cursor = crHandPoint
          DataField = 'ILA_BMP4'
          DataSource = DTSCAD_PRO_IMG
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 3
        end
        object DBILA_BMP5: TDBImage
          Left = 161
          Top = 23
          Width = 30
          Height = 30
          Cursor = crHandPoint
          DataField = 'ILA_BMP5'
          DataSource = DTSCAD_PRO_IMG
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 4
        end
        object DBILA_BMP6: TDBImage
          Left = 198
          Top = 23
          Width = 30
          Height = 30
          Cursor = crHandPoint
          DataField = 'ILA_BMP6'
          DataSource = DTSCAD_PRO_IMG
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 5
        end
        object DBILA_BMP7: TDBImage
          Left = 235
          Top = 23
          Width = 30
          Height = 30
          Cursor = crHandPoint
          DataField = 'ILA_BMP7'
          DataSource = DTSCAD_PRO_IMG
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 6
        end
        object DBILA_BMP8: TDBImage
          Left = 272
          Top = 23
          Width = 30
          Height = 30
          Cursor = crHandPoint
          DataField = 'ILA_BMP8'
          DataSource = DTSCAD_PRO_IMG
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 7
        end
      end
    end
  end
  inherited pnldbg: TPanel [1]
    Width = 1904
    Height = 425
    inherited DSConsulta: TdxDockSite
      Width = 1904
      Height = 425
      DockType = 0
      OriginalWidth = 768
      OriginalHeight = 448
      inherited LDSConsulta: TdxLayoutDockSite
        Width = 1904
        Height = 425
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 430
      end
      inherited DPConsulta: TdxDockPanel
        Width = 1904
        Height = 425
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 430
        inherited gbDET: TGroupBox
          Width = 1900
          Height = 421
          Caption = '  Programa'#231#245'es  '
          object PNLINFADCAD: TPanel [0]
            Left = 2
            Top = 419
            Width = 1896
            Height = 0
            Cursor = crHandPoint
            Hint = 'Informa'#231#245'es adicionais da programa'#231#227'o ...'
            Align = alBottom
            Alignment = taLeftJustify
            BevelInner = bvLowered
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Locked = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            object DBINFADCAD: TdxDBMemo
              Left = 2
              Top = 2
              Width = 1892
              Cursor = crHandPoint
              Hint = 'Informa'#231#245'es adicionais da programa'#231#227'o ...'
              Align = alClient
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 0
              DataField = 'INFADCAD'
              DataSource = DTSCadastro
              ReadOnly = True
              ScrollBars = ssBoth
              Height = 96
              StoredValues = 64
            end
          end
          inherited DBGConsulta: TdxDBGrid
            Width = 1896
            Height = 400
            KeyField = 'ID'
            ShowSummaryFooter = True
            Color = clHighlightText
            Filter.Active = True
            Filter.Criteria = {00000000}
            HideFocusRect = False
            HideSelectionColor = 14264386
            HighlightColor = 14264386
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
            PreviewFieldName = 'C_DEST'
            PreviewFont.Color = 9395
            PreviewLines = 1
            ShowRowFooter = True
            object DBGConsultaIDPK: TdxDBGridColumn
              Visible = False
              Width = 47
              BandIndex = 0
              RowIndex = 0
              FieldName = 'IDPK'
            end
            object DBGConsultaDEPK: TdxDBGridMaskColumn
              Color = clGrayText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 82
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEPK'
            end
            object DBGConsultaDTPK: TdxDBGridColumn
              Alignment = taCenter
              Color = clGrayText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 67
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DTPK'
            end
            object DBGConsultaHTPK: TdxDBGridColumn
              Alignment = taCenter
              Color = clGrayText
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 52
              BandIndex = 0
              RowIndex = 0
              FieldName = 'HTPK'
            end
            object DBGConsultaAPI_B2B_DEPK: TdxDBGridMaskColumn
              Color = clGray
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 65
              BandIndex = 0
              RowIndex = 0
              FieldName = 'API_B2B_DEPK'
            end
            object DBGConsultaAPI_B2B_DTPK: TdxDBGridDateColumn
              Color = clGray
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 67
              BandIndex = 0
              RowIndex = 0
              FieldName = 'API_B2B_DTPK'
            end
            object DBGConsultaAPI_B2B_HTPK: TdxDBGridColumn
              Color = clGray
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlightText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 52
              BandIndex = 0
              RowIndex = 0
              FieldName = 'API_B2B_HTPK'
            end
            object DBGConsultaSTA_NO_ABREV: TdxDBGridMaskColumn
              Color = 16316664
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 82
              BandIndex = 0
              RowIndex = 0
              FieldName = 'STA_NO_ABREV'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = ',##,0'
            end
            object DBGConsultaDEST: TdxDBGridMaskColumn
              Color = 16053492
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEST'
            end
            object DBGConsultaTPD_NO: TdxDBGridMaskColumn
              Width = 71
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TPD_NO'
            end
            object DBGConsultaTCO_NO_PRZ: TdxDBGridColumn
              Width = 204
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TCO_NO_PRZ'
            end
            object DBGConsultaCD_NO: TdxDBGridMaskColumn
              Width = 250
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CD_NO'
            end
            object DBGConsultaCR_NO: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 231
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CR_NO'
            end
            object DBGConsultaCV_NO: TdxDBGridMaskColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 90
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CV_NO'
            end
            object DBGConsultaTSDE: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 110
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TSDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'TSDE'
              SummaryFooterFormat = 'R$ ,##,0.00'
              DisableFilter = True
            end
            object DBGConsultaVDSC: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VDSC'
              SummaryFooterType = cstSum
              SummaryFooterField = 'VDSC'
              SummaryFooterFormat = 'R$ ,##,0.00'
              DisableFilter = True
            end
            object DBGConsultaTCDE: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 110
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TCDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'TCDE'
              SummaryFooterFormat = 'R$ ,##,0.00'
              DisableFilter = True
            end
            object DBGConsultaQTRL: TdxDBGridColumn
              HeaderAlignment = taRightJustify
              Width = 55
              BandIndex = 0
              RowIndex = 0
              FieldName = 'QTRL'
              SummaryFooterType = cstSum
              SummaryFooterField = 'QTRL'
              SummaryFooterFormat = ',##,0'
              DisableFilter = True
            end
            object DBGConsultaCT_NO: TdxDBGridMaskColumn
              Width = 230
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CT_NO'
            end
            object DBGConsultaFRT_NO: TdxDBGridMaskColumn
              Width = 175
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FRT_NO'
            end
            object DBGConsultaFRT_VFRT: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FRT_VFRT'
              SummaryFooterType = cstSum
              SummaryFooterField = 'FRT_VFRT'
              SummaryFooterFormat = 'R$ ,##,0.00'
              DisableFilter = True
            end
            object DBGConsultaFRT_PSBR: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FRT_PSBR'
              SummaryFooterType = cstSum
              SummaryFooterField = 'FRT_PSBR'
              SummaryFooterFormat = ',##,0.000'
              DisableFilter = True
            end
            object DBGConsultaFRT_PSLQ: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FRT_PSLQ'
              SummaryFooterType = cstSum
              SummaryFooterField = 'FRT_PSLQ'
              SummaryFooterFormat = ',##,0.000'
              DisableFilter = True
            end
          end
        end
      end
    end
  end
  inherited PNLSBRodape: TPanel [2]
    Top = 933
    Width = 1904
    inherited PNLSBRodapeSyncEvent: TPanel
      Width = 1894
      inherited GFASyncEvent: TRxGIFAnimator
        Image.Data = {
          251F0000474946383961DC00DB00F7F900000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FF0015
          1515535353818180B1B1B1E6E6E4FEFEFC21FF0B4E45545343415045322E3003
          0100000021F904050A00F9002C00000000DC00DB000008FF0001081C48B0A0C1
          8308132A5CC8B0A1C38710234A9C48B1A2C58B18336ADCC8B1A3C78F20438A1C
          49B2A4C9932853AA5CC9B2A5CB973063CA9C49B3A6CD9B3873EADCC9B3A7CF9F
          40830A1D4AB4A8D1A348932A5DCAB4A9D3A750A34A9D4AB5AAD5AB58B36ADDCA
          B5ABD7AF60C38A1D4BB6ACD9B368D3AA5DCBB6ADDBB770E3CA9D4BB7AEDDBB78
          F3EADDCBB7AFDFBF80030B1E4CB8B0E1C388132B5ECCB8B1E3C790234B9E4CB9
          B2E5CB98336BDECCB9B3E7CFA0438B1E4DBAB4E9D3A853AB5ECDBAB5EBD7B063
          CB9E4DBBB6EDDBB5F5F1EBC7AFB7EFDFC07F57D4CD3BB8F1DFFB36EFFBC7BCB9
          F3E7D0F551E407BD7A757FCAAD6B772E7D22F5EDDAB16BFF5E0E5E7B7789DFCB
          43179F39BDFAE7E723BA7FCF9C3DE6F9F4FFC58788FFBDFDCBFDBDB7DF430196
          F79F65059637A043096E7760650D6EB76043115AF72065155A37214319AEB759
          87D14D979F73174E06227C228E58DF872A36B7E142273657A26431BA98A28A33
          465623732F2AB4638E90EDA8DF8D2302F998903D26F4238B2D0EE95D93463A86
          2491F945D9D89413F50325932D2689D092E3F923E698649659663F15ED63E69A
          6BA289DB9B70C629E79C74D669E79D78E6A9E79E7CF6E9E79F80062AE8A08416
          2A953EFD24AAE8A28A8AC9A89B13EDF3E8A493F2935D935E1E04667B4D3A89DE
          969A61F9698B563226AA7CA0728A2995F495BAD8A9FCA5B67A5FA7991AB4E9AC
          AB3E492A972AD65AD0AD00D2CAAA7FBC8EE82B41C02228ACAE38169BDFB10325
          0BE1B2A3361B2AB5A8EE7A6DAED516E92C7DD00A242D86D8C6AAADAA5D0EAB9E
          AB8AC14AA0AC97214AE9BC895A4A91A4F4CE6BAFA1FCF6EBEFBF00072CF0C004
          176CF0C10827ACF0C20C37ECF0C310472CF1C414576CF1C51867ACF1C61C77EC
          F1C720872CF2C824976CF2C928A7ACF2CA2CB7ECF2CB30C72CF3CC34D76CF3CD
          38E7ACF3CE3CF7ECF3CF40A714100021F904050A00F9002C4C004C0043004300
          0008FF00F3091C48B0A0C1830813EA5BC8B0A1438703014804F070E1BE8B1709
          EA4BC851A0BF8F20438A1C29505FBF91FE3A0ADC0740E5417DFF5C1EE4976F5F
          4C990559E2D47873A7409A367D0ED42914A6D09FF98C1EE5D7B2684F9F34950A
          657A542AD4A44F7752757A345FD4AC38B7FAB4AA156B57B13BC986F5D8B55FD3
          B16065D2CC97F2A8DBAA715DCEAD2BF42ED7A56CEDBE4D9B57E5DEB68371AA95
          2BB01F62BC671B77F59758E662BD928F52860C389F63CD955D5E36DC75E0E6BF
          534B7B0CAD7274C7B9AA59ABE47BD5EBBFDBB873EB2E3C959FEFDFC08303DF58
          B39F71E3C0315E84A8BAB9F3E7D0A34B9F4EBDBAF5EBD8B36BDFCEBDBBF7EFE0
          C38BC01F4FBEBCF9F3E8D3AB5FCFBEBDFBA40E95EF038E5C2000F9F8F363243E
          39E4EEFFFFD4A50F6D6579F7CF46FCA5662082A5C1C6DD814935D8D53E5D4198
          606D425178948504AE75948642FD43E180917D58E188129AB8E1881D32A66288
          2C9658D48949B5885955154695E28C1B4665236938F658A38C63E538646745FD
          C8D13F8E9188A44F0028991093472A2854941B362965420EEE8465885A12E9E5
          960751E9A4955092E911485EE513258070E2D6254EF705875F45FABC85E79E0D
          8917100021F904050A00F9002C49004B00490045000008FF00F3091C48B0A0C1
          830813EEE3C79061BF8710234ADC97B0A2C58B08F5F9FBC7B1A3C78F1FFB01C0
          980F80C993284DEA434992A0469030618A1C6930A54D00FAF62DECE7CFDFBE93
          2D07BE0C3A70E6419BFA72F2E3E9CF203FA0448712CD67D460CE9D3C2FCEA419
          542AD17E2B0BEE63FA7525D7965E83823DFBF2DF547F66A7A66DB996E0BE8D6E
          89FA342977E3D47C70D9F6E3F8F7E759927349062E38382FD1A7873126C6B898
          20BF8E53AB76F5FB36AC5DCC7A3D6F761CB4B250BC9D23631CFCD7B4C0B68555
          6B25DDD2B5C0C67F9FFE659DDA29E1A9BA33D3562C7AE0BEDF5F655BE41D3AF2
          E48B70770FA75CFC3567B9D25B57BF3D1D2345E1DA555FFFFE9B8F5FEEA63DD3
          AB5FAFBEAEC1E3E4FB914F4ABFBEFDFB71AD7647E891BCC09B00DE84105E317D
          E44F3FFCECA38F7F0C26D4184C3D21A8E0820D5688D0651D4598A082167658D1
          581272E8E188165148E28928A6A8E28A2CB6E8E28B30C628E38C34D668E38D38
          E6A8E38E3CF698E2554B99E763463A2DD5538626FA98D44E47C6F49D8E4B1A59
          20484F1614E09550F5F51149FF0869A54AF88559DF7CFEC957130063B1A7267B
          604D054053DA9DE965501C55491200664EF58F9D250130674B75BA9927517BCA
          F957A044F9495E9767F28911A241A1B9E8A0FF49AA67A1896A7468740499E4E8
          4590B684139C84623A90A7879A2A2A9EA9FE89EAA59F569264D29F5C32DAA9A5
          A5C69AD0ABA5B6792AAE74AA7A279AA402FA0FA795EA9A1047B45EA452B1B5FA
          74ABB2FCD91A294E943ECAECB4ADBA6952B6A0724429B0C636EBACA2A55AFB1F
          B5076DEBED5DA545986449EC1AE46EA2C442F7D086F3AEDBADB79A16A4E18429
          21446EADE65AA4927C07F28BA5C1F51674EFB5382585255FB21E37E59409CBA8
          8F4420870C51C42406040021F904050A00F9002C4400470054004D000008FF00
          F3091C48B0A0C183081322D4C7B061C37D10F5299C48B1A24581FAF8F1EBC7B1
          A3C77EFE428A0CC94FE2C5932827EEEBF7AFA5CB973061FADB97B2A6CD812B63
          EAD4E98FDFCD9F2873EE1CDAB22780A300802A4D28D4E545A34897564C7AB269
          CBA7FC9052954A50ABD6AA2C5F62FDBAD4ABD9A817F585756A11EA519B6791EE
          E3B7EFEC49B530C7A23D19F7E84A7FFD4ADAB588576CDBAC7B2DF6553B10705D
          B369411AAEE876AB62B319FD11042CD86B647F93295646E935F341CE90094B66
          4B1971E2A90032F65308589F67D5A0598B76FDF6EEDF89A8C956549BFB6ADB7E
          B65F2BD4F79B32F2DB14338706FE5CF941E61B41EBB57E9D5FF17F4FABF7FF5E
          9E5D37F5E4E3274A374F5BBC6584FB424E07CEFBA2F7F9096B0B5FB89AFDC47E
          8FBDA7D07DFE25E49E4AFD19B79D7DDF85879E8005FD15134A33A587E048188E
          F411479D5968906CDF81875275694164E23E0EA5D8505C14CDB596824F3D5653
          5F34EEC7548235F5E3216C35F645D846F85554175C3D0E669184309EA423574C
          0A64D5452EF9D46493EB8978904E004EA925920411D5939660E6131F51302117
          2698550E35D3996716B6534F26B119E698313926E79DFCC814589C77B6995B48
          59F6D9677C9CF1296874406D84E2A184AD44D34D0C317A6476664A1A2688B949
          69E9947F7DB7E6A65C8188A5A1A0DA84244F9A965A539A3B05AA6A502F7AFF59
          E9ABC311B8D3402E7D496B8B2126D9654BAEEE5A50526B41595449C20EAB8F66
          29BDB4279145C2C558B3B906AB509134CE181FB52E3D4B11B63EA674D46CDCFE
          53E8B78BA9A8EEA217F9C5EC497A3E7AAD5C1B6DD8518623A53A1152DEA1A427
          B2F3BA0B6FB7F2EEEB17B9C6BE549BC10227FC8FB50969D5AFC3C7A27BF0C045
          15CC707316293C6BC472215C91C21A076C9AB180EA8B90562B616C6EC9201F45
          1C949CB1CB30002D3BFC298F476547593E74911A33CE22534472BB5ACD4C1DCC
          37E7DC71AE4C1F549ACF0839961C6921BBAC2BCF324F6C10800F627DB1CE2A07
          1CF2BB02C1991AD232173D91C2650FDD3548697708DD656D6B1DF7CA667555EA
          DEDA78C7E6B64270F38599460F02CEB6E07A1B1EAD5249D3FD74C58BDFCD55E4
          8D1B7E67E468BF9DEBDEAA269D4FAF641E2B74B2C495CED3C7C90E94BAEA7A9E
          9E6CA7F8026A6F60AD27C4DC8928AA1B29AD01010021F904050A00F9002C4200
          4300580055000008FF00F3091C48B0A0C18308131ED4C750A1C38710234264A8
          6F9F457E18FBF5F3C7D19FC67DFA248A1C19B162C68D1DFFA95CC952A5477EFB
          48CA9C49501F3F8DFE5AEADCF93226CD9F236DE2DC4974654F0048932605CAD4
          E0BEA14589FA13B84FA955A44DB33EDD18F5DF418FFD405E559AB5E9BE9B39A3
          7ED5C84FDFD8A565819EE5AAD620C77E6DDF628DFB736EDAA25F5FBAD5CBB72F
          DAAE81F10E7E5B98A65FC47605EB05D078A6508E750BDECD4BB87241B8082FFF
          DD89F06867CFF9AE26144A976869BC554F37661CFA666BD776614FAE3C99F2C2
          ADA349E786B99B6FEFBD078143D6FCB178D6E3649343059C3BAC73A0D0AD227C
          9C992058B1B26566FF1F9BFC70F7819B17939F399E7641EED4354B0E2FB13DFD
          CB6A3B82C50B3336FD88F6B93790492869C4567F2051A41E74E229555182F691
          14A06A122A751646162D781D8013463792830662D49F860242D4A1872229659B
          81FCC1C4506F1546881D00FBE8C7E281196E88DA4F21E5A35F47376248A26F3B
          3255A357DEFDB8DF881416F9133F2B29F4235BE021C7D78309FED44F9412DDE5
          1F9157AE28A24519F6E8903E5B7219914783A186264AFBB58860994E05D7253F
          6056F6D46877052922860541D952973EEDB8A74E36FAC94F4D690EEA904AFD38
          99CF4D5125CAA29947EAA4104B8B3AC94F705201F991403681AAD2412DF963A6
          9BB77565A34F67C5FF27D04E913A89665752E14555A3C215D56991FA988AEB3F
          FE2C2AD4B044156AA8B0B8166B12B3AEAE8A9AA0C8B6A4D8A1D5B2D48FB49EF1
          9AED3F61E58326B451D5EA24B3B34A0593B89F92CBD3AF3BEA835BBAEFF6D86E
          4AC8FAA3ECB49A1A4454B802ADA85FB30017C96B42FF627A239CCCB2E964A60F
          EDA4AC4D27B1886FAADB7A3A154488AE6AD29F15C36994623B0280A648D61AC4
          109964FE69F16625D3686E449C9EA920CB2286E85952A24964D4BE12DD0C126F
          0ECEC5F0C608B904B4A4295AF5F1CB1DF93810A4DC325DDF580F867C74475559
          4D935E2BE77C23906D96955D8C605FA4B57556367D22DA607F7C129E285E7D62
          9E0F8DB7F2859C81F6E6F6DB2A2BD4DEDE5FE2CDA1DE14593469C540AEFB997D
          2F6AD7E05B4FE3347051E9197477DB7F5FE557D2980BA6F9E65F838D16E8A192
          3CFA8433527E3AAAA1ABFEB88CAD638D16D204B92AFBEC0C3E673A4AB0630E1B
          4267C735196BB84F5DE9F0C4EBD8D4F1B6254F6FAE8E1FF49FEF9403177CAE05
          5B2FF9CE69E3B43D4FA3265437D17A7DEEEFF2DD7BBDFA5BEA17E4AAE8EE7B9F
          FEEBF2574A7FFDBC8F157FEEFADB1DFF04D29BFF292F766D1960FFAED2B3FC21
          B06AF5EB4D0301B8BC042A9020D08B94BB10C5BC0B0E8430D1FB16B13AE84185
          204F843D29E1434EA8BF3E6168682A7488D1FAD4223251248640B9610C030200
          21F904050A00F9002C42004300580055000008FF00F3091C48B0A0C18308131E
          04C050A1C3871023466448B1A2C58A12336A9C68519F477D174352DC4892E447
          7DFB52F25BD9AF654B7E20455E2C4933E13E962DFDE9D4F9AF674F82FE60CA9C
          59B3A8407DFDFCF95CCAD42750A143311A2DBA2F69D3AB3F07FAEBB72FAAD4A9
          34AB2AC5DA142857AF5FC16E144BB6ACD6B3681BAA25C9B6ED52B35DE302986B
          D2AA5DA76FF3C6E5BB11E9D8BFFFF0EADD4B38A33E7E8711BFE5B7B8B163C888
          01E7DB4A59AF65898FFB65CEBAB91F54B49F25F2133D7A724CD4081FEF4B2D70
          7564BB044DBFF61A1BA7BED4B65B6B3DCDDB60E8A43A675BAE2BF9EDEEA8C657
          23EFE94F3961E67FCD3E1F5AF0384F9FFE7E5FFFF7DB5CE056C1B0F379BFFDAF
          9FF8B9D87107AEACBE2AF9A6EEF9C66FAB7870FDE96DE5A7D67E88F9930F7A69
          1184128076C1C4D148071996D94E3A399811815805F59E42214547E14E2EADC4
          4F4A297DB4D67D055A9810770491B8CF49E3B197E28606A547DB81328EA61B42
          F4A5B64F8EA3B5A7E2408B41D8D88F4192C5598D45263815924966C80F934D3A
          491590416E45659572C18765815B6DC8A5454746B9944E2D5997CF984612C68F
          5B02B585A6696AB2D965636FDE55D0553A0DF4229176DEC85A62096936625E80
          B279A33E6341F4D28B10EA85D2768CD186A4435BD1B99B4071D98760A5B40100
          99429C414AE69A512D58EAA93702F098810795FF4A29AA43BD6A9E6E5636C690
          6106714669A7A34E962B61148985D7AF5EA9DA2B5CA0A65691B1A5992A13AD1D
          D9865098CD3A4B516815228BD14528599B908637726AD14D5C792B5545E12605
          D194E586246D71B4A2DB0F44D4A9F9999D95BA7A93797A1E041E8DC406DA623E
          F7CA28B04F025AC6EF408FD9F6E540F8ED6BF051129BE913BC052B4A10645F22
          C6F15C0F7F1C7266238355B29F836A0C5ECA2A8F5910864906657191D1A11825
          B9DA7A96F3C952127C338B11AEA631CF7C9D54224144F70634783B6AF4918B22
          BAF4E1795B0E0B316613461D91AA1416C8158F5A17C4B55DBE920DEE666662CD
          A146792A9936B5A9BA4B71D7301B157753688EC59868B2C1C689379E7C3ECA74
          5CB6DE2DF6906AB53CA7DF87A3151A41A3CD9D346B8FEB4B77ADE20A8E98D797
          67BE905E9DE75339E3731D37A2D08B957EBAD0F0ADAE365AD07AFE17D29FC16E
          6EA776DB8EF6D8E572C83BACBECB097CF0B34755BBE95D6B8EFCDFCAF7CEBCD8
          CE3FBFB94CBC2A7EFBF1D6479EACF49573DFFDEE80133FFDF6795B2F69E0E7FF
          65DAF805AD6F7EFB01A6FF7CEBE06726FEF8F89BCFD48721FA13FCBCE715B164
          CA34F02A918906B822499D84280C7C90CF22389536513020000021F904050A00
          F9002C42004400570052000008FF00F3091C48B0A0C18308090248C8B0A1C387
          10230A044051A2C58B18F351DCC8B1E3C68C20436AF448B2E4429128219A5CE9
          31A5CB862C37EA9B59F2A5CD8133F7EDCBA7731FBF9F3FFB091DEAAF9F3E9237
          6DF2F3E7EF9F53A70FFDED439AD465BFA758A34E6D5935E555AC501D4AA5DA55
          E457B05AC93EE427749FBEB203CF6615BBB563447DFD9A3AEDE7B62C3FB0611B
          8EE5FA709FDCA7FDF8BDBDF91730C4BA76D7EA05FCAF28BF9D2E1BA35D5BD321
          5ECA802DF70DA97973437E9D1B7E064DB928DFC5174BCF3D9D9AE1BEC9AC5B1B
          C5B80F3467B50965FBCE171AB3C5DB947F134EB83A3741B0FEF8F1C6FD547964
          DBD41D17C4CA777A7287FD6A23FF143EDBA0D3A2B02522D7DE303C7083CDD923
          AC2CDDBBFC8446DF175C7F1F613F90FC9587DF51D705F7DD5A47D9971B68F97D
          14557F090D769244FA64B72062E93DA40F840372645185173298A143A5C5B69C
          67163EC5D48A2BB675D1591749E8614440FDD4D38D33E538E25DD5BD48608170
          1DD7A345A8E917A4864B0506913F3F0279E471F545E49E784F7E68983F85AD54
          654814E97365844D9EB8A5451CE9C31696051569D2985C96E9535E6842E6249B
          6492E4255B538AF9908374AE44939130F1D9674C335EA4E793840A1AD19A748E
          C452465A36EA28957BC624E9A485D649A8A480329468A663CEE950497F761A64
          45189564D86B945E3AAA49FFE5FF235A9813BA5A29A9065916A6ADB7961465AE
          ACD6CA2B422CA1C95051A30D9B9049C645D59DB207C17A117D3BF24AAAB11121
          06AD4224359BAD53BF62A4638E37F6F453B5D17A84D7B44F79EB199E42B1C862
          6BE1065A26B60F6185EF5A218256AFBD142D251158FF9ED62F65057BDA65ACF9
          02E62EB11B91D76FC20ADF06516BE84EE4D1C3E6217C24830073647143FE66F4
          19C9AC713C90AAFB760C18C3C7E995506E4C86BCD1C80C817C9199931DB420CC
          106FDCF2769401FDD861CF2D18DDAB423B24E2CE87FD23508852F57AF3D04483
          B55B6C4C1DCC5DC62BAB8B75D25A839DD09B2982B6B4D55D8E3D50D166337467
          5E213ECBF4BD0D979DD2DC69FF64B3F5DD32B93D75687153C816BD8B8A9DB7BE
          85EF7C25622A1B64A7D13E131EA49779FD0DF8C28BABD8384A9F4FDEF9799F87
          4A12E52EEB1BB9AB25A19EF5D7DB72EBD1522D0E25548D97E1187B41768EFBE8
          EE417F7A28F0C29B1A7BF1C0278EEA9301010021F904050A00F9002C47004900
          4D0049000008FF00F3091C48B0A0C183F9000040C8B0A1C38706154A9C48B1A2
          428818333EB4C891A3C68F20F3E9DB47B2A4C97DFC52AA4CD96F9FC4903021F6
          FBF70F64BF972051F22BA94F5F4C82FE68DAC4A9515F509A48FD29EDD72F25CF
          9E108F0EBDF8D12852A102AF6A55EA6F9FC399353FDEA45AF428D6825AAFF6FB
          7A36A33FA219F7696598F61F3FB66135BE251BF72AC4AB771B8205B977E147B9
          4835FE73C997E0E08F8541F2F3AB917163818FF5C2C538B92D46CB860B82CD8B
          31B2D8C455271E1C0D79B34CD46EF5A936C85AAFECD06E3D47A5B81A76E9DB84
          753F1C7B19B3EFA8C03F1E9739DB6067D2C85D37D427FC213FE9029F83BC8DFB
          2175E89CB1E7FFD39EBA3843B9302D33245F54FC41F4211937647FB0EEBFE419
          27C3C47FF0B9FDFFF785145848B239E4DF7F5C25B856480B1266DE40239DB44F
          4F145658614CFBACA59466DDFDE4A1411492C4523F5CD1D6E1872812C4514F25
          F1C3944B29C6C8504715C9682342349E78E38E0959C4E38F113507E490033D48
          E4914826A9E4924C36E9E493504619A591526AC45B953F7984E547396E99518E
          EE7929924A2451A8A5982A7A5510574CED542654680A04809AA5F9934F531F5A
          A8A785133AA4D080CAF9945382842658979D0DFD091378188D06E0A182E20840
          839071791180F5D1E44FA4414E1AD23F887EA910A51869CA69411285AA18A91B
          8D0A92A9922ACFA46A46FFB0EAA7A2CA817A6A910AEDFA975D96020068A9BAC6
          EAEB43340DDBAAB0AF16DBE99C9F2E16ACB2C8D2E4EB4474D24A53B6104944AD
          4348ED4AD1B70D21C5EDB2E4D265EDB39E2A16EEB4CD0688EA44B6960BAB95B8
          BA2BEFBCAEEA3B6BB7F96ABBEFBCC7AAAB2948129D5BEDC00799F52B4DF526AA
          90C2E06E3B5D5DF6428CF0C4F1522C1062181BA455BAB17A6CB0C9FA90F8E840
          236F0C6DAED27AD7A28B242A659FC92577EC61883A3155B0C438671A3396BD32
          6574532B9169523E412F096697623EDD519C357E18100021F904050A00F9002C
          4B004C00450043000008FF00F3090440B0A0C1830801085CC8B0A1C38710230A
          D4C7AFA2C58BFD326ADCC84FA1C48814F909BC48B224BF7D0CF9FDFB08922544
          952B1BFE9B49B3264D7D0B55BA7C88736743983E05CED4E75167D0853D8FE603
          AA94E8C8984D953E959ACFE952A847931E35DAB428D6A05A8372CDEA956A589F
          63C196957A76675A9F56F77D854BF5AD4B7F0405CA355B77EE5D8FF9F6B2052C
          D62F4BBC0B0577956AF73060C564195345ACD7304BAB5B273FB6FC11B358CD89
          394BF48C167465B3844B4BA51C5834C8D4547DB286AC566A3FD3AD5DDA1C1ABB
          37527FC0830B17BE51636F7F0B872B1F7EDBB7F38505F5499F4EBDFAF3EB1113
          E6C5CEBDBBF7EFE0C38BEC1F4FBEBCF9F3E8D3AB5FCFBEBDFBF7F0E3CB9F4FBF
          BE7DF5DA61DB07505D7A7EFDED2DA75C71023527D53EC525A860462225961E00
          FDECB6DB43FF20F75C5B2C412855852951F50F861F69A81487397908A244221E
          45E248264A9562502B2ED5A2522FFAB422000D8E78627606C268613E387A4855
          8D3BDD98A38A43F618D48F416E98E464D01D09E393AB4529A48B4ACA66E588AE
          4144E44E4C4A5964970F7D79D7962AFE789499870DD4649A438A09A69B72B214
          63506F1E652141757E74A74F792E49E7866AE2D9E7476AC224E14C10FDB953A0
          5A2265124604E6D3CFA12822B8E0A60CBAF7DFA78005040021F904050A00F900
          2C4D004D00430041000008C900F3091C485020BF830811165CC8B0A1C3871023
          4A9C48D11F008A183366B4A8B1A3C7861C3F8AFC1872A4498C254FAA84E86FA5
          4B962F63CA9C49B3A6C48B3673EA3CC96FA7CB9E3E55020D6A72285191468F7A
          4CAA5423D3A6189FDA944A71DF447F58B342DD7A138057AF5CC38A1D4BB6ACD9
          B368D3AA5DCBB6ADDBB770E3CA9D4BB7EE4DB9FDF2EADD6B372655B57FD30646
          3BF86C61B387CB268EA96F29D4C61D17BF84ECF4B1E3A694334A769939AAE5B8
          FF3AB70D2D973468D16C4DC3557D74AFEBBC6803020021F904050A00F9002CDB
          00DA000100010000080400F305040021F904050A00F9002CDB00DA0001000100
          00080400F30504003B}
      end
      inherited PNLSyncEvent: TPanel
        Width = 1864
      end
    end
    inherited SBRodape: TdxStatusBar
      Width = 1894
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          MinWidth = 100
          Text = 'Consulta'
          Width = 150
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          MinWidth = 0
          Width = 1200
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          MinWidth = 0
          Width = 320
        end
        item
          PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
          PanelStyle.CapsLockKeyAppearance.ActiveFontColor = clBlack
          PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
          PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
          PanelStyle.NumLockKeyAppearance.ActiveFontColor = clBlack
          PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
          PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
          PanelStyle.ScrollLockKeyAppearance.ActiveFontColor = clBlack
          PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
          PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
          PanelStyle.InsertKeyAppearance.ActiveFontColor = clBlack
          PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
          PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
          MinWidth = 137
          Width = 137
        end>
    end
  end
  inherited SpeedBar2: TSpeedBar [3]
    Width = 1904
    inherited siPSQ: TSpeedItem [4]
    end
    inherited siREF: TSpeedItem [5]
      Hint = 'Atualiza Programa'#231#245'es'
    end
    inherited siREL: TSpeedItem
      Hint = 'Imprime e Visualiza Relat'#243'rios'
      Left = 883
    end
    inherited siSAIR: TSpeedItem
      Left = 993
    end
    object SINovo: TSpeedItem
      BtnCaption = '[ins] Incluir'
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Pedido'
      ImageIndex = 4
      Spacing = -3
      Left = 223
      Top = 3
      Visible = True
      OnClick = SINovoClick
      SectionName = 'Movimento'
    end
    object siARO: TSpeedItem
      BtnCaption = '[F3] Alterar'
      Cursor = crHandPoint
      Hint = 'Altera Programa'#231#227'o'
      ImageIndex = 5
      Spacing = -3
      Left = 333
      Top = 3
      Visible = True
      OnClick = siAROClick
      SectionName = 'Movimento'
    end
    object siCRO: TSpeedItem
      BtnCaption = '[F9] Cancelar'
      Cursor = crHandPoint
      Hint = 'Cancela Programa'#231#227'o'
      ImageIndex = 6
      Spacing = -3
      Left = 443
      Top = 3
      Visible = True
      OnClick = siCROClick
      SectionName = 'Movimento'
    end
    object SIClientes: TSpeedItem
      BtnCaption = 'Cad. Clientes'
      Cursor = crHandPoint
      Hint = 'Cadastro de Clientes'
      ImageIndex = 7
      Spacing = -3
      Left = 553
      Top = 3
      Visible = True
      OnClick = SIClientesClick
      SectionName = 'Movimento'
    end
    object SIPED: TSpeedItem
      BtnCaption = 'Gerar Pedidos'
      Cursor = crHandPoint
      Hint = 'Gera Pedidos para Faturamento'
      ImageIndex = 8
      Spacing = -3
      Left = 663
      Top = 3
      Visible = True
      OnClick = SIPEDClick
      SectionName = 'Movimento'
    end
    object SIFIM: TSpeedItem
      BtnCaption = 'Finalizar'
      Hint = 'Finaliza Programa'#231#227'o de Venda'
      ImageIndex = 9
      Spacing = -3
      Left = 773
      Top = 3
      Visible = True
      OnClick = SIFIMClick
      SectionName = 'Movimento'
    end
  end
  inherited imageOPC: TImageList
    Top = 286
    Bitmap = {
      494C01010B000E00040048004800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000200100002001000001002000000000000010
      0500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600E3E3E300E1E1
      E100DFDFDF00E0E0E000DEDEDE00DBDBDB00DBDBDB00DBDBDB00DADADA00D6D6
      D600D6D6D600D6D6D600D4D4D400D5D5D500D4D4D400D4D4D400D5D5D500D5D5
      D500D5D5D500D4D4D400D4D4D400D2D2D200D5D5D500D2D2D200D5D5D500D5D5
      D500D4D4D400D4D4D400D5D5D500D5D5D500D5D5D500D5D5D500D4D4D400D4D4
      D400D5D5D500D6D6D600D4D4D400D4D4D400D2D2D200D2D2D200D2D2D200D4D4
      D400D2D2D200D1D1D100CFCFCF00D1D1D100D1D1D100D1D1D100D1D1D100D0D0
      D000D1D1D100D2D2D200D0D0D000D0D0D000D1D1D100CFCFCF00CFCFCF00D1D1
      D100D2D2D200D2D2D200D5D5D500D6D6D600D9D9D900DBDBDB00DEDEDE00E0E0
      E000E0E0E000E4E4E400E6E6E600E9E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00D4D4D30095958F009C9C9300CDCAC900E2E2E100F2F2F100FBFB
      FA00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFF5F200C1D8CB0083B09700659C7C00659C7C00659C7C00659C
      7C00659C7C00659C7C00659C7C00659C7C00659C7C00659C7C00659C7C00659C
      7C00659C7C00659C7C00659C7C00659C7C00659C7C00659C7C00659C7C00659C
      7C00659C7C00659C7C00659C7C00659C7C00659C7C00659C7C00659C7C00659C
      7C00659C7C00659C7C00659C7C00659B7C00659B7C00659B7C006BA082008AB4
      9C00CEE1D6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00E3E3E300E1E1E100E0E0
      E000DCDCDC00DCDCDC00DCDCDC00DBDBDB00D9D9D900D6D6D600D7D7D700D7D7
      D700D6D6D600D6D6D600D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D0D0
      D000D0D0D000D4D4D400D2D2D200D1D1D100D2D2D200D0D0D000D0D0D000D4D4
      D400D2D2D200D2D2D200D2D2D200D1D1D100D5D5D500D4D4D400D0D0D000D0D0
      D000D1D1D100D0D0D000CFCFCF00D0D0D000CDCDCD00CDCDCD00CDCDCD00CCCC
      CC00CBCBCB00CCCCCC00CCCCCC00CCCCCC00CBCBCB00CBCBCB00CCCCCC00CDCD
      CD00CCCCCC00CCCCCC00C9C9C900C8C8C800C7C7C700C8C8C800C9C9C900CCCC
      CC00CCCCCC00CFCFCF00D2D2D200D4D4D400D7D7D700DADADA00DCDCDC00DFDF
      DF00E0E0E000E1E1E100E6E6E600E9E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1D1CE0084847C007B7B7200878680008E8E86009A999200A8A7
      A200B8B8B300CBCBC700E0E0DC00EFEFEE00FEFFFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECF3
      F000A0C3AF00508562002A5E35001D552A001651240016512400165124001651
      2400165124001651240016512400165124001651240016512400165124001651
      2400164F2400164F2400164F2400164F2400164F2400164F2400164F2400164F
      2400164F2400164F2400164F2400164F2400164F2400164F2400164F2400164F
      2400164F2400164F2400164F2400164F2400164F2400164F2400175025001E55
      2B002E6139003D774E00B5D0C000F2F7F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00E4E4E400E0E0E000DFDF
      DF00DEDEDE00DCDCDC00DBDBDB00DADADA00D7D7D700D6D6D600D5D5D500D1D1
      D100D2D2D200D2D2D200CFCFCF00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CBCB
      CB00CCCCCC00CFCFCF00CDCDCD00CDCDCD00CFCFCF00CFCFCF00D0D0D000D0D0
      D000CFCFCF00CFCFCF00D1D1D100CDCDCD00D0D0D000CFCFCF00D0D0D000CFCF
      CF00CFCFCF00CCCCCC00CCCCCC00CCCCCC00CBCBCB00C9C9C900C7C7C700C5C5
      C500C5C5C500C5C5C500C4C4C400C1C1C100C0C0C000C0C0C000C1C1C100C3C3
      C300C4C4C400C0C0C000BFBFBF00C0C0C000C0C0C000BFBFBF00C4C4C400C4C4
      C400C9C9C900CBCBCB00CDCDCD00CFCFCF00D6D6D600D9D9D900D9D9D900DBDB
      DB00DEDEDE00E3E3E300E1E1E100E9E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F800C1C1BE0074746C00797970007C7C73007E7D74007F7F77008484
      7C008D8D840095958C009B9B9400A4A49E00BEBEBA00CCCCC800DEDEDA00ECEC
      EA00F6F6F500FCFCFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E2EEE80079A3
      86002C693D000C481B0000310A00002608000023060000210600002106000039
      1E000F797E001797AB001797AB001797AB001696A90011859300002F13000022
      07000020060000200600002006000020060000200600012F1800086A6500289F
      AD00289FAD00289FAD00289FAD001260570000280D0000200600002006000020
      060000200600002006000020060000371C001B7871002DA0A9001F9498000B79
      7000005A340002451200356B42007AA78B00D8E7DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E3E3E300E0E0E000DEDE
      DE00DCDCDC00DADADA00DADADA00D7D7D700D5D5D500D5D5D500D2D2D200D0D0
      D000D0D0D000CFCFCF00CCCCCC00CCCCCC00C8C8C800C9C9C900C5C5C500C4C4
      C400C4C4C400C5C5C500C8C8C800C8C8C800CBCBCB00CBCBCB00CFCFCF00CBCB
      CB00CCCCCC00CDCDCD00CFCFCF00CDCDCD00CFCFCF00CCCCCC00CCCCCC00CCCC
      CC00C9C9C900CBCBCB00C8C8C800C8C8C800C7C7C700C5C5C500C0C0C000C4C4
      C400C0C0C000BDBDBD00BDBDBD00B8B8B800B6B6B800B1B1B100AFAFAF00ADAB
      AB00A8A8A800AAABAB00AEAEAE00AEAEAE00B1B1B100B3B3B300B8B8B800BCBC
      BC00C0C0C000C3C3C300C7C7C700C9C9C900D1D1D100D2D2D200D5D5D500D9D9
      D900DBDBDB00E1E1E100E1E1E100E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F600B7B7B7006C6C6B0062625C0083837A008080770081807800818179007D7C
      750073726A00707067007B7A730087867E0097978F009C9C9500A5A49E00AEAD
      A800B9B7B300C4C3C000D0D0CD00EAEAE900F4F4F300FAFAFA00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDF4F00079A487001E5E
      2E000045120000340E00001E0600001704000014030000130300001303000023
      13000A646C001AA7CF0022C5FB0023C5FB0023C4FA001EB7E8000A6D80000120
      14000014040000130300001303000013030000130300001D0F00064B4C0020A7
      C6003BCDF7003ED2FD003ED2FD002BA4C1000F565700001C0A00001303000013
      0300001303000013030000130300002212001262600031ACC40040CDF00032BC
      D50027A3A90009756400014616001D5D2E0084AD9200DDEAE300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00E3E3E300E0E0E000DEDE
      DE00DBDBDB00DADADA00D7D7D700D6D6D600D2D2D200D0D0D000D1D1D100CDCD
      CD00CBCBCB00CCCCCC00C7C7C700C7C7C700C3C3C300C3C3C300BDBDBD00C1C1
      C100BFBFBF00BDBDBD00BFBFBF00C0C0C000C4C4C400C5C5C500C9C9C900C8C8
      C800C9C9C900C9C9C900C9C9C900C9C9C900C7C7C700C7C7C700C7C7C700C8C8
      C800C8C8C800C5C5C500C4C4C400C5C5C500C4C4C400C1C1C100BCBCBC00BCBC
      BC00B9B9B900B5B5B500B3B3B300AEABAD00A8A7A6009FA6A4009F9D99008E92
      930084858100807F7F008989890097979700A0A0A000A6A6A600ADADAD00B1B1
      B100B6B6B600BABABA00C0C0C000C3C3C300CDCDCD00D0D0D000D4D4D400D6D6
      D600DADADA00DFDFDF00E0E0E000EBEBEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F4F300B4B5
      B400525351002B2B28005E5E580087877F00808077008180790084837C007C7B
      740062615B0050504B005A59540064635D00706F690076756E007D7B75008684
      7D00908E87009A979200A1A09A00B6B6B000C2C2BD00CCCCC900D6D5D300DFDE
      DD00EAE9E800F3F3F200FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000093BDA6001E633000004D
      1500086850000859550000251800001303000013030000130300001303000013
      030000291D000B6772001AA8CF0024C6FB0025C6FB0024C4F9001BB4E5000A62
      710002241A000014040000130300001303000013030000130300011A0C000552
      570024A5C4003BCBF30041D2FD003CCFF90029A3BE000F555400001B0A000013
      030000130300001303000013030000130300002819001365660037B1C9004ED8
      FE004AD5F9002DB9CF0009715500014C19002C6D3F00A2C2AE00F6FAF8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00E3E3E300DFDFDF00DEDE
      DE00DCDCDC00DBDBDB00D6D6D600D2D2D200D1D1D100CFCFCF00CDCDCD00CBCB
      CB00CBCBCB00C8C8C800C4C4C400C5C5C500C0C0C000BDBDBD00BCBCBC00B8B8
      B800B5B5B500B6B6B600B6B6B600B8B8B800B8B8B800BDBDBD00BFBFBF00BFBF
      BF00C0C0C000C1C1C100C3C3C300C5C5C500C5C5C500C5C5C500C5C5C500C7C7
      C700C5C5C500C4C4C400C1C1C100C1C1C100C0C0C000BFBFBF00BABABA00B6B6
      B600B3B3B300AFAFAF00ADADAE00A1A3A100979C9C00908F8A00858381007678
      7B007D7B78007373740072727200747474008484840092929200A3A3A300A6A6
      A600ABABAB00B2B2B200B6B6B600BDBDBD00C8C8C800CDCDCD00D2D2D200D6D6
      D600DBDBDB00E1E1E100E3E3E300E9E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F100B2B3B2004B4C
      4B000F100F002728240065655F0087867F00808077008181780084837C007F7F
      78006B6A64005757520051514C004C4B47004948460053514D005F5E5A006B6B
      650076756F007C7B7500807F780086867E008F8F860094948D0099989200A8A6
      A100B9B9B300C7C7C300DCDCD900E5E5E300ECECEA00F4F3F300F8F8F800FCFB
      FB00FEFEFE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F8F5002B764700045016000263
      3B00129DAF00169FC700075B6200002215000013030000130300001303000013
      03000013030000291D000B6770001EADD30027C8FC0027C8FC0028C8FC001CB4
      E4000B5F6D0002261D0000140400001303000013030000130300001303000013
      030006565D0026A6C2003CCBF20044D4FD003FD0F9002CA8C3000E514C00001A
      0900001303000013030000130300001303000013030000271800136869003EC1
      DE0050D9FE0050D9FE0024B2B80007663600004E130067987700D9E8DF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1E1E100E0E0E000DCDC
      DC00D9D9D900D9D9D900D6D6D600D4D4D400CDCDCD00CCCCCC00C9C9C900C8C8
      C800C4C4C400C4C4C400C3C3C300C0C0C000BCBCBC00B9B9B900B3B3B300A7A7
      A7008D8D8D007D7D7D007979790079797900808080009D9D9D00A7A7A700ADAD
      AD00B1B1B100B5B5B500BDBDBD00C1C1C100BFBFBF00C3C3C300C0C0C000C0C0
      C000C0C0C000BFBFBF00BFBFBF00BDBDBD00BABABA00BABABA00B5B5B500B3B3
      B300AFAFAF00ABABAB00A4A4A400979790006C6D700046466700292D6200403F
      5000373D3D00131112003D3D3E005B5B5B007979790076767600909090009C9C
      9C00A4A4A400A8A8A800AEAEAE00B6B6B600C5C5C500CCCCCC00D2D2D200D7D7
      D700DADADA00E0E0E000E4E4E400E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B1B1B10040403F000E0F
      0E000D0E0D002D2E2B006666600087857E00818078008180790083817B008684
      7E008C8B8300909086008C8C81007F7F770061615B00555450004D4C49004848
      4500474744004C4B460056554F0073726C008D8D84008E8D850085837B008C8C
      84009292890093928A00A1A19A00AFAFA800BDBDB600CECDC900D9D8D500E2E1
      E000EBEAE900F5F5F400F9F9F900FBFCFB00FEFEFE0000000000000000000000
      000000000000000000000000000000000000CEE3D700175B2500005111000888
      830017B5DF001FC3FB0018A5CD0006585C00001F110000130300001303000013
      0300001303000013030000271B000A666C0021B4DD0029C9FC002BC9FC002BC9
      FC001EB4E3000C606D0002251A00001404000013030000130300001303000013
      030000130300065A5F0029A9C50040CFF50046D5FD0043D2FA002FB0CD000C49
      4000001907000014030000130300001303000013030000130300022F2400147D
      840044CBEA0052DAFE004BD5F6001187580000561800377B4D00A8CCB7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00E3E3E300E0E0E000DBDB
      DB00D9D9D900D7D7D700D4D4D400D1D1D100C9C9C900C7C7C700C4C4C400C1C1
      C100C0C0C000BFBFBF00BABABA00B9B9B900B8B8B800B2B2B200AAAAAA008989
      8900A7A7A700AFAFAF00AAAAAA00A1A1A10095959500707070006A6A6A006F6F
      6F007F7F7F009A9A9A00B8B8B800BCBCBC00BDBDBD00C0C0C000BFBFBF00BCBC
      BC00BFBFBF00C0C0C000BCBCBC00BABABA00B9B9B900B5B5B500AFAFAF00AFAF
      AF00ADADAD00A7A7A700A1A0A1006061810008099000000088000A0980003239
      38003333360012111200100E11000706070026272600545454007F7F7F008383
      8300909090009F9F9F00A8A8A800AFAFAF00C7C7C700D0D0D000D5D5D500DADA
      DA00DCDCDC00E3E3E300E4E4E400E9E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC00FCFD
      FD00FEFEFE000000000000000000FEFEFE00F3F3F3002F302E000D0E0C000F0F
      0E00121312002F2F2C006A6A63008787800081807A0083817C0085837D008584
      7D0085847D0086867D0087887E008A8A820095958D0097978E0097948D008C8B
      85007D7D77006C6C65005C5B54004C4B480081807A008C8A84008A8A81009B9A
      9300A0A099009A9A92009B9A92009B9B930099978F0097968D0099989100A2A0
      9B00ADACA600CCCDC900DCDCD900E6E7E400F0F0EF00F6F6F500F9F9F800FBFB
      FB00FEFEFE000000000000000000000000009AC5AD00115A2100005E1500119C
      A7001DBFF60020C3FB0021C4FB001CADD8000353520000150500001303000013
      0300001303000013030000130300002517000863650027BFEA002CCBFC002DCB
      FC002ECBFC0020B6E4000D637100011F13000013030000130300001303000013
      030000130300001303000A6168002CB1CF0046D4FB0048D6FD0046D4FA0037BD
      DC00073E3000011A0A000014030000130300001303000013030000130300032B
      2000148995004DD2F30055DAFD0014A27F00016529000F652C0080B396000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00E6E6E600E0E0E000DBDB
      DB00DADADA00D6D6D600D0D0D000CCCCCC00C4C4C400C1C1C100BFBFBF00B9B9
      B900B3B3B300B2B2B200AFAFAF00AEAEAE00ABABAB00A8A8A800A3A3A300AFAF
      AF00BFBFBF00C3C3C300B9B9B900B5B5B500AEAEAE00B2B2B200AFAFAF009C9C
      9C008181810066666600AEAEAE00B5B5B500B8B8B800B9B9B900BABABA00BCBC
      BC00BABABA00B9B9B900BABABA00B9B9B900B6B6B600B3B3B300B1B1B100ADAD
      AD00ABABAB00A3A3A3009F9D9D004141950000019D0000019D00161AA8001C1F
      3C002B2B3200131214001212130012111200121112000D0D0D00454545007070
      7000818181008484840096969600AEAEAE00CFCFCF00D4D4D400D9D9D900DCDC
      DC00DFDFDF00E3E3E300E3E3E300E8E8E8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0E5E700E7EA
      EC00F9FAFA000000000000000000F2F2F200A2A2A0000C0D0B00111210001313
      1200121212003333300076766D0097968C0081807C0083817C0085847C008685
      7D0087857E0088877F008888800089888100898981008B8B84008D8D8500908F
      870095928B009A9792009F9E97009C9C940098978F0097948E00565651007877
      7100A1A09800A4A49B007877700058585100716E6900898781009D9B9500A7A6
      9F00A9A7A1009F9D96009C9A94009F9D9800A8A8A200B6B6B000CACAC500DCDC
      D900F4F4F300FBFBFB00000000000000000066A783000C591D000068190011A0
      A6001EBFF50022C4FB0022C4FB0021C3F8001AAAD60000291800001505000013
      03000013030000130300001303000013030000201200055E5D002FCCFA0031CC
      FC0031CCFC0032CCFC0022B9E5000C6979000017070000130300001303000013
      0300001303000013030000180600116E7A0033C1E6004CD6FD004CD7FE004BD6
      FD003FCCF100073E300000180700001303000013030000130300001303000013
      0300022014000F8E990051D4F30016A68200016D2D000F6A2E0080B496000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00E4E4E400E1E1E100DEDE
      DE00DBDBDB00D4D4D400CFCFCF00CBCBCB00BABABA00B5B5B500B3B3B300ABAB
      AB00A4A4A400A1A1A100A0A0A0009F9F9F009C9C9C009C9C9C0099999900B3B3
      B300BFBFBF00C1C1C100B5B5B500AAAAAA00A7A7A700B5B5B500BABABA00B9B9
      B900ABABAB0090909000A7A7A700AFAFAF00B2B2B200B8B8B800B8B8B800B8B8
      B800B8B8B800B9B9B900B8B8B800B6B6B600B5B5B500B5B5B500ADADAD00AAAA
      AA00A4A4A400A1A1A100999999004E4EA4000000B6000409AD00090BA6001C1E
      44002226230015131500141315001312140012111300121212000D0D0D000E0E
      0E002D2D2D0058585800ABABAB00C1C1C100D2D2D200D7D7D700D9D9D900DCDC
      DC00DFDFDF00E1E1E100E4E4E400E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00596568006371
      7500B8C0C10000000000E7E7E7008C8C8C001D1D1B0012131100131412001314
      1200131312001D1D1C00353532004E4D48007F80790081817A0087867E008989
      80008B8980008C8B82008A8A8300898981008D8B84008E8D86008F8E87008F8E
      8900918F890093918B0095948D0098958E0097948E009B989200807E79009595
      8E00ACABA300A6A59D0088857F0064635D00565551004F4E4C004F4E4A005554
      4F0062615B0085827E0098949000A6A39E00ACABA600ACABA600A9A8A200A7A5
      9E00AFADA800B7B7B300C4C4C200D4D5D10066A983000C5B1F0000701B00024D
      2900128199001FC0F50023C5FB0024C6FB0024C4F6001BABD70003342A000017
      0700001303000013030000130300001303000014050001221600056A6F002DC1
      EC0032CDFC0034CDFC0033CBF90025B5DE000E6F810000170700001303000013
      0300001303000013030000140300022113001369710033C2E6004FD9FE004FD9
      FE004DD8FD003CBEDD000C494000001A08000013030000130300001303000013
      0300001405000220140015899500099A6E0001712E000F6D300080B597000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00E4E4E400E3E3E300DEDE
      DE00DCDCDC00D9D9D900D5D5D500CCCCCC00B8B8B800AEAEAE00A3A3A3009C9C
      9C00959595008F8F8F0080808000797979007B7B7B008181810088888800A1A1
      A100B8B8B800B1B1B100A6A6A600A0A0A0009D9D9D00ADADAD00B9B9B900BCBC
      BC00B9B9B900A7A7A700A6A6A600ADADAD00B2B2B200B3B3B300B6B6B600B6B6
      B600B8B8B800B8B8B800B6B6B600B3B3B300B2B2B200B1B2B100ABABAB00A7A7
      A700A0A0A0009A9A9A00969696008E8B93001E1E9A0005059D001E20B6001C1A
      47001D1F1F001613150014141600131214001312140012121400121212001212
      120012121200060606001616160056565600CFCFCF00D5D5D500D9D9D900DEDE
      DE00DFDFDF00E4E4E400E4E4E400E9E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00AAA9A700646663006E72
      700096999600A8A8A6006C6C6B00242524000E0F0D0013141200131412001314
      12001314120011111000131313002F322D00838D7E00747B6F00767B6E007D83
      76007D8178007D7E790085847E008C8B83009290880099978F0098948E009492
      8B0093918A0093928B0094938C0097948E0097948E0099979000989791009B9B
      94009D9C94009D9C94009C9B95009A9992009897920094938E008B8A84007F7E
      780072706C005F5D59005D595600615E590068656100716F6B00878680009E9D
      9700A6A49F00A6A5A000A7A6A100AAA9A30066AB84000C5E1F0000751D00003A
      100004322A00117B920021C0F50026C8FC0027C8FC0026C6F9001AA1C600053E
      3800001808000013030000130300001303000014030000160500002517001087
      9E002EC2EB0036CFFC0038CFFC0036CCF80028B4DB0010738500001807000015
      04000015040000150400001504000015040003271A0013666D0034C3E60051DA
      FE0051DAFE004ED7FB0025A5BE0009433E000015050000130300001303000013
      03000013030000130300032B2100026D3000006A20000F6F310080B698000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00E6E6E600E3E3E300E0E0
      E000DCDCDC00DCDCDC00D7D7D700D4D4D400B9B8B900A4A3A400959593008B8B
      8B00868686007F7F7F008B8B8B0083838300686868005E5E5E005A5A5A007474
      7400ABABAB00A3A3A3009C9C9C00999999009696960099999900AFAFAF00B3B3
      B300B9B9B900B3B3B300ADADAD00AFAFAF00B2B2B200B5B5B500B6B6B600B8B8
      B800BABABA00B6B6B600B6B6B600B5B5B500B2B2B200B2B2B200A3A7A600A1A0
      A00093999D00938F8E0086888600817D80008586840059598B0013107B000F12
      4E00191D1E001614160014141600141315001413150013121400131214001213
      12001212120011111100111111000E0E0E00D9D9D900D5D5D500D9D9D900DCDC
      DC00DEDEDE00E4E4E400E4E4E400E9E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFFFF00F3F3F300ADABAB0062625E005F5E59005353
      500050504D00414140001C1D1B000E0F0D001112100012131200121312001213
      1100121211000E0E0C000D0D0D00262925006E7C6C00707E6F0068746500626E
      63006268630066646100716D68007F827A0086897F0075756F007D7C75008D8C
      840097958F009B9992009B9993009A97910099979100999891009B9A93009B9A
      93009A9A92009C9B94009F9D9800A2A19B00A3A29C00A3A29C00A1A09A009E9D
      97009A98930092908B008C8A840083827C007A7873006D6C66007B7A74009C9B
      9600A7A5A000A7A5A000A6A59F00A6A59F0067AC84000C61200000791F000038
      0D000017070004352F00117B8F0023C3F50028C9FC002AC9FC0028C7F8001A9A
      B90007474300001B090000150400001504000015040000160400001604000338
      3100148A9E002FC0E7003BD1FD003CD1FD003ACDF9002BB5DB000F728200001D
      08000019050000180500001705000017040000180500042B1D00146A6E0038C7
      E60053DAFE0054DBFE0047D1F400289BB1000B47440000160500001403000013
      0300001303000013030000130300005C1B0000681B001072320080B799000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00E6E6E600E4E4E400E0E0
      E000DEDEDE00DBDBDB00D7D7D700D4D4D400C1C1C100BFBDBF00A0A1A0008B8B
      8B008080800073737300A7A7A7009D9D9D008B8B8B007D7D7D006F6F6F005C5C
      5C008B8B8B009C9C9C009797970095959500929292008B8B8B00979797009F9F
      9F00B1B1B100AFAFAF00AFAFAF00B5B5B500B3B3B300B9B9B900B6B6B600B6B6
      B600B9B9B900B9B9B900B8B8B800B5B5B500B3B2B200B1B1AF009FA09D00938F
      8E006D6E70004F5161004A485F0057585F00636562007B79680079748A00181B
      5A00191B19001715170015141600141315001413150014131500141315001312
      140013131300131313001313130012121200DFDFDF00D5D5D500DBDBDB00DCDC
      DC00DFDFDF00E4E4E400E4E4E400E8E8E8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00EDEEED00AEAEAC0061605D00504F4A004A4845002726
      2400161615000E0F0E00080907000D0E0C000F100E001112100010110F001111
      10001717160019191800181A1A00262625003C433B00424B4200373F3800373D
      3900434340004C47430058585100727E71005358510034353100454B49005F6D
      6A006B74710072736E0080827C0091938E009B9A93009E9C9500A09E9700A2A1
      9A00A2A19A00A19F99009F9D98009E9E9800A09F9900A09F9900A2A19B00A4A3
      9D00A6A59F00AAA8A200A9A8A000A4A49B009D9C960095948E0098979100A4A2
      9D00A8A7A100A9A8A200A9A8A200A9A8A20067AD85000C632100007E2300003B
      0F00001303000017070004372F00127F920025C4F5002CCAFC002DCBFC002AC8
      F8001B97B300094D4900001F0B0000180500001805000019050000190500001A
      050003403900178A9D0031C0E6003FD2FD0040D2FD003DCEF9002BB7DC00065D
      5D0001230F00001A0600001A0500001A0500001A0500001A0500042C1B00156F
      72003BC8E80053DAFC0056DCFE0048D1F200299AAE000C4B4800001805000015
      0400001404000014030000140300005D1C00006B1D001075340080B899000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00E8E8E800E4E4E400E0E0
      E000DEDEDE00DBDBDB00D6D6D600D1D2D1009090900052525200656665009595
      9500A3A3A30093939300A8A8A800A1A1A1008E8E8E0081818100737373007373
      7300858585009A9A9A009797970096969600909090008E8E8E00A6A6A600A7A7
      A700ABABAB00AEAEAE00B5B5B500B5B5B500B9B9B900BABABA00BABABA00BABA
      BA00B9B9B900BCBCBC00B8B8B800B6B6B600B6B6B800B5B2B100A7A4A300676C
      8600120F780000007200000069000000620007055C0014175A003B3D5A002322
      6100161818001715170015141600141315001413150014131500141315001413
      150014131400131313001313130013131300E0E0E000D9D9D900DEDEDE00DFDF
      DF00E1E1E100E6E6E600E6E6E600ECECEC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEA00B1B1AE0065655F004C4B470055544E003E3D3B001110
      100003040200080906000A0B09000B0B09000B0C0A000C0D0B000C0D0C001919
      18002F312F003C423F003D423E0048413E0030333200292F2D00202523002324
      23002C2827002F2B280034373200495349001E201D001214130027323300384B
      4C00394746003D413E004F585500636B67006E6F69007E817800888B84008C8D
      8800908F8B0099979200A5A39D00A6A49F00A7A49E00A4A29C00A4A29D00A4A2
      9D00A3A29C00A5A49E00A7A69F00A8A79F00A9A8A200ADABA500ADACA600AAA9
      A300A8A7A100A9A8A200A9A8A200A9A8A20067AF86000C65220000842D00003D
      130000140300001403000019070004372B0015889B0028C6F6002FCBFC0030CC
      FC002CC8F8001C97B00009524A0000240C00001B0500001B0500001C0500001C
      0600001D060004463E00198D9E0033C2E60041D2FD0042D2FD003FCEF70025AC
      C900095B590001281600001D0600001C0600001C0600001C0500001D06000229
      150016777C003EC4E00053DAFA0058DDFE0049D2F2002B9DAE000D4B45000019
      060000160400001503000015030000622100006F20001078350080B99A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00EAEAEA00E6E6E600E1E1
      E100E0E0E000DCDCDC00D7D7D700DBDBDB0018191A000D101100090A0B000302
      030018171900525252009C9C9C009D9D9D008B8B8B007B7B7B006D6D6D007B7B
      7B00888888009C9C9C00A0A0A0009C9C9C009595950092929200ABABAB00ADAD
      AD00B1B1B100B3B3B300BABABA00B8B8B800BCBCBC00BDBDBD00BFBFBF00BFBF
      BF00BFBFBF00C0C0C000C0C0C000BDBDBD00BABCBC00B8B8BA00BDBFB2004343
      930000008D0007089000181CAD0001047000040974000A0A74000A0E70002122
      7000151716001715170016151700151416001514160014131500141315001413
      150014131500141315001313130013131300D2D2D200DEDEDE00DEDEDE00E3E3
      E300E4E4E400E7E7E700E8E8E800ECECEC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFE
      FF00ECECEB00B2B2AF00676762004C4B45005857510057564F003D3D3A001111
      1100060604000C0B08000B0B08000B0A08000A0A08000C0C0B001E221E003B3F
      3900575E560065726700697064006A635C00464D4D00404B4900444D47003C40
      3C00363532002B2A27001A1B1900161716000D0D0C0016171700252C2C002831
      310020262500202322002B3535002C3533002F323000454E4600515955005053
      5000565754006B706900888B830090948E00989B94009FA09900A4A39E00A9A7
      A200ABA8A300ABA8A100ABA8A100A9A7A000A8A6A000A9A7A100A9A8A200A9A8
      A200AAA9A300AAA9A400AAA9A400AAA9A40067B088000C682300028A37000141
      1800001704000017040000170400001C080003372500179EBA002EC7F50033CC
      FC0033CDFC002FCAF7001E9EB4000955460000270C00001E0600001F0700001F
      07000020070000200700044A400019909F0036C5E90044D4FD0046D4FD0046D4
      FD0024ACC7000B5C5800012D1800001F0700001F0700001F0700001F0700001F
      070000230A00197E830042C3DC0056DBFA005BDEFE004DD4F2002DA1B2000C48
      3F00001B060000180400001704000167280000742500107B380080BB9B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00EBEBEB00E7E7E700E3E3
      E300E1E1E100DEDEDE00DADADA00E0E0E0001C1E1E00101212000E1011000C0E
      0F000A0A0B0004030500808080009A9A9A008B8B8B0079797900696969007C7C
      7C00888888009F9F9F00A1A1A100A3A3A3009D9D9D0092929200AEAEAE00B3B3
      B300B5B5B500B6B6B600C0C0C000BFBFBF00BFBFBF00C0C0C000C1C1C100C1C1
      C100C1C1C100C3C3C300C1C1C100C1C1C100C0C0C000C0BFBF00C7C8BD004D4F
      AD000E0AB50001069900131AB300181EA00010128A000102620017198300191B
      7400161517000F0E100017171800181617001615180015141600141315001412
      140014131500141315001414140013131300AFAFAF00E4E4E400E1E1E100E4E4
      E400E6E6E600E8E8E800EAEAEA00ECECEC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEE
      EF00B4B2B100696864004B4B4600565650005958530057564F003C3C39001111
      1000060604000C0B09000B0B08000B0B09000809060018181600485148006A76
      6700728070007483700076806F0060655F004E5151005C6562006B776D00636D
      61005E635A00484A45001B1C1B000E0E0E001C1D19001B1D1A001D1F1E001B1D
      1D001515140016171500202322001D1F1E001D202000262C2C00252929001A1A
      19001A1C1A0029362E0038483C00475B50005A6B620074807700878D85009392
      8D009A979300A7A5A100ABAAA500ABAAA200ACA8A200AEACA400AEACA500AEAC
      A600ACABA600ACAAA500ABAAA500ABAAA50067B288000C6B230005913F000245
      1D0000190500001A0500001B0500001B050000210C00004F410022AAC60032C8
      F40036CEFC0037CFFC0033CCF80021A6BC0008543E0000270A00002208000023
      0800002308000023080000230800044A3D001995A3003CCAED0047D5FD0047D5
      FD0048D5FD0025AEC5000B5E5900012E18000023080000230800002208000022
      07000021070000260A001D84880046C6DF005CDCFD005FDEFF0052D7F50030AA
      BD000A403200001C0700001B0500036E300001792900107D390081BB9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00EBEBEB00EAEAEA00E4E4
      E400E1E1E100E0E0E000DCDCDC00E6E6E6001B1D1C000F1112000E1011000D0F
      10000C0D0D000B0A0C004A4A4A009A9A9A008E8E8E007B7B7B00696969007272
      720081818100929292009D9D9D00A3A3A300A3A3A30093939300B9B9B900BDBD
      BD00BDBDBD00C0C0C000C4C4C400C4C4C400C4C4C400C3C3C300C7C7C700C5C5
      C500C9C9C900C8C8C800C8C8C800C7C7C700C8C8C800C9C7C800C8C5C000AEAE
      CD001010AD00090AAF001212A300080B880003036F0003076200202399000909
      6900151518005253530014161700161716001616160016161700151416001413
      1500141315001413150014141400131313007D7D7D00EDEDED00E3E3E300E6E6
      E600E7E7E700E8E8E800EAEAEA00F0F0F0000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B1
      AF00696763004E4C470057565000595852005A595500575650003C3B39001111
      1000050604000A0B09000B0B0800090908000608060027282700545D51006874
      63006A7565006976660067716200615F5600655F59007B8076006A7668006372
      6200606D60003F474000171A1B00222A2A0025291D002A3129002D3332002B2F
      2E002C2F2A002C2D260026262200151715000F100E0013141300131313000F0D
      0D00141514001C211D001C2420001E2B25001F2C260027372D002C392F00292E
      29002B2C29006A788A008A98A9009C9FA300A4A3A400AEACA700B2B0A900B3B0
      AA00B0AEA900ADACA600ABAAA500ABAAA40067B489000C6E240007984500034C
      20000020070000210700002207000023070000240800002508000059450026B0
      C70033C9EE0035CAF10036CAF10032C9ED001FA8BA0000431B00002A0900002B
      0900002C0A00002C0A00002C0A00002C0A00044D3700189DA70042CFEF0042D0
      F10042D0F10044D0F10020ABBD00065E4F00002D0B00002B0900002B09000029
      0900002909000027090000300C00279191004CCFE50058DAF30058DAF3004FD4
      EC0029ADBC00003015000024090005753600027E2E00107F3A0081BB9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00EDEDED00EDEDED00E7E7
      E700E8E8E800E4E4E400E0E0E000EDEDED001B1D1E00111213000E1011000D0F
      10000B0E0E000A0C0D00262626009F9F9F0090909000818181006D6D6D005858
      580083838300909090009F9F9F00A4A4A400A7A7A70095959500C4C4C400C5C5
      C500C7C7C700C8C8C800C7C7C700C9C9C900C9C9C900C8C8C800CBCBCB00CBCB
      CB00CCCCCC00CCCCCC00CCCCCC00CDCDCD00CDCDCD00CCCDCD00CCCCCC00CCCD
      CC00CFD0D400706DCD005656B20000037B000A0B7200100E7600191E99000503
      73002027320043454600424444002D2F2F001B1B1B0016161700161616001616
      16001515150014141500151515001414140056565600F3F3F300E6E6E600E7E7
      E700E8E8E800EAEAEA00EAEAEA00F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD006666
      6000504F4A00595852005A5853005D5A55005E5D5700595852003C3B38001111
      1000060605000A0B0800080805000505050028292A00727B8500646D72003D42
      43002223220020211E0021211E001E1E1B003A3F380058635500667060006773
      6200474F4500242725002835360041656500292E28002E383200323E3B00373E
      37003F43360043483A0041493E00212323000E0C0B00181918001D1F1D001B1E
      1D00161918001013110010100F0011111000161A17001B211D00141A17000C0C
      0900040D13000C286300193177001C337400213874002C437B0048618700707B
      8600A7A49D00A9A8A100A9A8A200A8A6A00068B489000C6F25000A9C4E000466
      280000440E0000450E0000460E0000470E0000480E0000480E0000490E000171
      490006938000099F9300099F9300099F930007998700017A5400004D1000004D
      1000004F1000004F1000004F1000004F1000004F1000025F2900089B82000BA4
      93000BA496000BA496000BA4960005815600005B1A00004F1000004F1000004D
      1000004D1000004D1000004D100000632A00098F6C0010AA960010AA960010AA
      96000FA6900003855C00004F1700088942000384330010833B0081BF9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00F0F0F000EBEBEB00EBEB
      EB00E8E8E800E7E7E700E6E6E600F1F1F0001B1D1E000F1112000E1011000D0F
      10000B0E0F000A0B0C000D0F0F009C9C9C009696960088888800737373006161
      61008E8E8E0099999900A1A1A100A7A7A700A6A6A6009A9A9A00CDCDCD00CCCC
      CC00CDCDCD00CCCCCC00CBCBCB00CDCDCD00D0D0D000D1D1D100D0D0D000CFCF
      CF00D1D1D100D0D0D000D0D0D000D2D2D200D2D2D200D2D2D200D0D1CF00D2D1
      D400D5D4D200D9DBD400DFE0D9000E0E8D00161C84001A178E00111492000002
      73001F1F65004444490061645F0030303300302F32001F2223001C1B1B001615
      16001514150016161700161713001615150043434300F3F3F300E7E7E700EAEA
      EA00EAEAEA00EAEAEA00EDEDED00EFEFEF000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00AFAFAB005856
      50005C5954005D5A56005D5B56005E5D5700605F5900595852003B3A38001113
      110006080500060706000C0C0A0042424200D5D9DC00D0E0EE00A8B7C6004C53
      580014161500191D22002C3443002F38470033353B002C2E2F00252824002627
      25001A1A180011121100212626002D3838002D353500323D3C00323933003941
      37003B463D00353E39002D323100181A180020231F0026282400292F28002732
      2B0024322C0022302A001D2423001C201F0012131300100D0A00110E0A00120F
      08000F141700051C3500071E3A0010275500132B60000724560008244300121C
      25003937350087858400DEDDDC00D8D8D50068B58A000C7226000FA255000783
      330000691900006A1900006A1900006A1900006A1900006A1900006A1900006E
      1F00017225000173280001732800017328000174270000702100006B1A00006B
      1A00006C1A00006C1A00006C1A00006C1A00006C1A00006D1D00017426000175
      280001752800017728000177280001742100006F1B00006E1B00006E1C00006E
      1C00006E1C00006E1C00006E1C0000701E000175260002782A0002792A000279
      2A0002792A0000752400006F1C000C9D5000058B390010853D0081BF9D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00F0F0F000EDEDED00EBEB
      EB00EAEAEA00E7E7E700E7E7E700F1F1F1001B1E1F000F1112000E1011000D0F
      0F000A0D0E000A0C0D00020405007F7F7F009C9C9C008D8D8D00797979008484
      840095959500A0A0A000A4A4A400A7A7A700A3A3A300A6A6A600D4D4D400D2D2
      D200D4D4D400D1D1D100D4D4D400D4D4D400D5D5D500D6D6D600D5D5D500D4D4
      D400D7D7D700D6D6D600D6D6D600D9D9D900D9D9D900D7D7D700D7D7D700D9D9
      D900D9D9D900DADADA00D9D9D700242690001C1E83001A1C99000B0D8F000001
      80000303770000005A0000003F0042424700494A4C004647470017191A001519
      1300171615001A17150016161500151516001E1F1F00F0F0F000E8E8E800E8E8
      E800EBEBEB00EDEDED00EDEDED00F0F0F0000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00B1AFAC006D6C66005C5B
      55005E5C57005E5C57005E5D57005F5F580061605A005A5852003A3837001011
      1000030403000F100F0043474800AAB5C100B3C9EA00A1B9D800606C7D003035
      3A00232B3C00354C7B00496CAE004B6198005B646E00282A2C00474B4D007D84
      8F0088909C005D646A00272A2B00101010002428280020242400222726002E37
      35002E3635002126250014141400212723002D3F32002932290029342B002736
      2D0028372F00283B320027372F002536300014141100111418000D1A2600101C
      2800131C27000E1820000E171F00141C2500151B29000F182700050E17000A0C
      0D008B898900E0E0DF00F9F9F900F8F8F70069B68A000C74270014A85C00098A
      390000711C0000711C0000711C0000711C0000711C0000721C0000721C000072
      1C0000721C0000721D0000721D0000721D0000721D0000721D0000721D000072
      1D0000721D0000731D0000741D0000741D0000741D0000741D0000741D000074
      1D0000741D0000741D0000741D0000741D0000741D0000741D0000741D000074
      1D0000761D0000761D0000761D0000761D0000761D0000761D0000761E000076
      1E0000761E0000761E0000761E0010A4570007903F0010873F0081C09D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00F3F3F300F0F0F000EDED
      ED00EDEDED00EAEAEA00EBEBEB00F6F4F4001C1E1F000F1112000E1011000C0E
      0F000B0C0E000A0B0C0000010200545454009F9F9F008E8E8E007C7C7C009090
      90009C9C9C00A3A3A300A7A7A700A8A8A800A4A4A400B3B3B300D9D9D900D7D7
      D700D7D7D700D7D7D700D7D7D700D7D7D700D9D9D900D9D9D900D9D9D900D9D9
      D900DADADA00DBDBDB00DBDBDB00DADADA00DCDCDC00DBDBDB00DBDBDB00DCDC
      DC00DEDEDE00DCDCDC00DBDBDB001E20800010116C001D1F9F00080989000303
      8A000304880001016500040358002B2D85003A395A004848510011106E000C0A
      5E000D0B4D001314390021241D001D1917000A0B0A00E3E3E300E8E8E800EBEB
      EB00EDEDED00F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      00000000000000000000FEFEFE00F4F4F400B4B4B2006F6D69005D5D5600605F
      5900605F5900605F58005F5E58006060590062625C005A5953003F3E3C001717
      1500070807001415130033363800575F690048577300465163002C343E002A37
      4D0043608F00557EC2005A7DC300778DBA00393C3F0077797A00B0B7BC00C3D2
      DF00BBCEDF007F8C970026282A0011121500354254002A2F3800414A5300363E
      4100272B2B0025262600212020001D201E001F2921001A211B001D2520001D26
      210021292400253029001E2721001A2321001B222B00182857000A2559000624
      57000925570008204B00091F46001019200013110D000B0B0A00151516006160
      6000E1E1E100FDFDFD00000000000000000069B88B000C76270018AE63000A8F
      3C0000751D0000751D0000751D0000751D0000751D0000761E0000761E000076
      1E0000761E0000761E0000761E0000761E0000761E0000761E0000761E000076
      1E0000761E0000771E0000771E0000771E0000771E0000771E0000771E000077
      1E0000771E0000781E0000781E0000781E0000781E0000781E0000781E000078
      1E0000791E0000791E0000791E0000791E0000791E0000791E0000791F000079
      1F00007A1F00007A1F00007A1F0014AA5B0009944400118A420081C19E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00F3F3F300F1F1F100F0F0
      F000EDEDED00EDEDED00EDEDED00F9F9F9001B1D1E000E1011000D0F10000C0D
      0E000A0C0D000A0B0C00020304003A3A3A009C9C9C0089898900787878009797
      9700A0A0A000A7A7A700A8A8A800A8A8A800A3A3A300C5C5C500DCDCDC00DBDB
      DB00DADADA00DBDBDB00DADADA00DCDCDC00DBDBDB00DCDCDC00DBDBDB00DBDB
      DB00DBDBDB00DFDFDF00E0E0E000DEDEDE00DEDEDE00DFDFDF00DEDEDE00DCDC
      DE00E1E1E100E0E0E000E4E4E10013167D00121279001E1EA40003038A000503
      8F0004059000000168000A0A61000E0D990000027F0026265B000304A0000002
      9D000000990000008B000E0C7300545759004A4B4B00EAEAEA00EAEAEA00EBEB
      EB00EDEDED00F1F1F100F1F1F100F0F0F0000000000000000000000000000000
      000000000000FEFEFE00EFEFEF00B8B8B500706F6A005E5D5800605F5A006361
      5C0063625C0063615B0062605B0062615C0065645E005B5A550053524E003E3E
      3A002E2F2C002C2C29002A2B2B00242729001F232C0015181A0016191C00232D
      4000374C6F00415A850045577B00545D6C00666A6C009AA8C000A7BFE400AAC6
      E9008DA2BD00545E6C00282E3A002A3A5C004E659400636F85004F576300444A
      4E006E727500939B9D007D878B00131313001819190023252400232625001E21
      1F00171917001619150010100E0013161A00223253001C2F65000A2657000827
      61000B2B6F000527630007224D0009131B000B090400262422007F7E7D00CACA
      CA000000000000000000000000000000000069BA8C000C78280021B369000E93
      3F0000791E0000791E0000791E0000791E0000791E0000791F0000791F000079
      1F0000791F0000791F0000791F0000791F00007A1F00007A1F00007A1F00007A
      1F00007A1F00007A1F00007A1F00007A1F00007A1F00007A1F00007A1F00007A
      1F00007A1F00007B1F00007B2000007B2000007B2000007B2000007B2000007B
      2000007B2000007B2000007B2000007B2000007C2000007D2000007D2000007D
      2000007D2000007D2000007D200018AF61000B984900118D450081C39F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00F4F4F400F0F0F000F0F0
      F000EEEEEE00EDEDED00EEEEEE0000000000191B1C000C0E0F000F0F0F000D0D
      0D000B0B0B000A0A0A000305050027292900929393008080800080808000A0A0
      A000A6A6A600AAAAAA00A8A8A800A7A7A700A3A3A300D4D4D400E0E0E000DEDE
      DE00DEDEDE00DFDFDF00DFDFDF00E1E1E100DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00E1E1E100E1E1E100E0E0E000E0E0E000E0E0E000E0E0E000E1E1E100E4E4
      E300E0E0E600E3E3E400E1E8E700101170000D0D6F001518A300000289000303
      95000506930001016A00040460000204B5000302C1000407B5000303AE000507
      C0000709C5000303BD000000CC0042415200F6F7F700EDEDED00EEEEEE00F0F0
      F000F0F0F000F1F1F100F0F0F000F3F3F3000000000000000000000000000000
      000000000000EEEEED00BABAB80076756F005D5C560064635D0063625D006462
      5E0064635E0064625D0063625D0063625D0065645F005D5C5700686760006564
      5E005C5B5600565450004F4D4A004A484500444441002F2F2B00292A2800292C
      3000282C3400282C3500292C330021212000666B6E005B6D89004F678F00556B
      8C00404C6000252B37002D3953003E5C99006478A7006772820058606200707A
      76009CACA600B6CDC8009BB3B400191C1900354536005F695C00505752002F33
      3100303231004E4F51003433390018191D0018243C0018223A000F1C2F001323
      400016285100091F440007162A0014181A00474644008E8E8D00E3E3E300FDFD
      FD000000000000000000000000000000000069BA8D000C7A29002CB871001396
      4300007B1F00007B1F00007B1F00007B1F00007C1F00007C1F00007C2000007D
      2000007D2000007D2000007D2000007D2000007D2000007D2000007D2000007D
      2000007D2000007D2000007D2000007D2000007D2000007E2000007E2000007E
      2000007E2000007E2000007E2000007E2000007E2000007E2000007E2000007E
      2000007E2000007E2100007E2100007E21000080210000812100008121000081
      21000081210000812100008121001CB367000D9C4E001190470081C39F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F600F4F4F400F3F3
      F300F3F3F300F1F1F100F0F0F000F9F9F9004A4B4B00333637000D0E0E000D0D
      0D000B0B0B000A0A0A00030303003737370092929200797979008E8E8E00A4A4
      A400AAAAAA00ADADAD00ABABAB00A7A7A700A0A0A000E0E0E000E4E4E400E3E3
      E300E3E3E300E3E3E300E6E6E600E3E3E300E4E4E400E4E4E400E1E1E100E4E4
      E400E4E4E400E4E4E400E6E6E600E3E3E300E4E4E400E4E4E400E4E4E400E6E6
      E600E7E4E400E4E4E400D2D1E00005075F00131279000B0E970001028E000504
      9A000606970000007B00000059000A0CB2000307D9000408D0000409D4000609
      D6000306D2000000D100191AC500FAFFF300EEEEF000EEEEEE00F0F0F000F1F1
      F100F1F1F100F3F3F300F1F1F100F4F4F4000000000000000000000000000000
      0000EEEEEE00BCBCB900797874005F5E58006765600067655F0065645F006564
      5E0065645E0065645F0065635E0064635E0063625C0065645E007C7B72007D7C
      74007C7A73007C7974007D7B75007C79730077767000686661005D5C57005352
      4E004B4B4700454540003C3C3800343330002F3030001E252B001D232C001B1F
      230017191B00191D240027324900344C77005059690034363700586259007B87
      7A006B7F70005B756800556B6500354939006289650080937A00636E64005256
      550078797C00B2B0BB006E6C7B001D1D1D00161514002B282D00322F3500302F
      360023262B000F1418002122230067666400BABABB00F6F6F600000000000000
      00000000000000000000000000000000000069BB8E000C7C2A0036BD7700189A
      4600007D2100007D2100007D2100007E2100007F210000802100008021000080
      2100008021000080210000802100008021000080210000802100008021000080
      2100008021000080210000802100008021000081210000812100008121000081
      2100008121000081210000812100008122000081220000812200008122000081
      2200008122000082230000822300008223000083230000842300008423000084
      230000842300008423000085230022B86D0011A0530012924A0082C4A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F600F4F4F400F1F1
      F100F3F3F300F3F3F300F3F3F300FDFDFD00151718003A3C3F00505152002122
      2200191919000E0E0E00000101003B3C3B00858585008888880095959500A8A8
      A800ADADAD00ADADAD00ABABAB00A4A4A4009D9D9D00E7E7E700E6E6E600E4E4
      E400E6E6E600E6E6E600E8E8E800E6E6E600E8E8E800E7E7E700E6E6E600E4E4
      E400E6E6E700E4E4E400E6E6E600E4E4E400E4E4E400E7E7E700E7E7E700E8E6
      E700E4E7E400FDFCF3005656A70002015B001D1E97000303920004059A000405
      A3000303A000010389000101670001025E00110EBD000608DA001118EB000305
      D6000003CF000000D000AAA1E000F7F6F100F0F1F100EEEEEE00F0F0F000F3F3
      F300F1F1F100F3F3F300F3F3F300F3F3F3000000000000000000000000000000
      0000BDBDBA007C7C7500616059006A6963006968610068676100686660006765
      5F0067665F006765600066645F0065635E0066655F0079787000919287009292
      8800909087008F8D86008E8C86008D8C85008B8984008A8782008A8982008A89
      810088877F0083827A007E7D760077766F00575650004C4C470043433E003939
      350033322E002D2C2B0027282900202223001617140025262500353B31002D32
      290020271F001B211B001A201C0048694F0064856800404D4000333634006F6B
      7000A29AA500B3A9B80066616E0027252800473E47006A6070006E677700524D
      56002C292B00312E2B007A797900ECECEC000000000000000000000000000000
      00000000000000000000000000000000000069BC8E000C7F2A003FC17E001C9E
      4A00008122000081220000812200008122000081230000832300008323000083
      2300008323000083230000842300008423000084230000842300008423000084
      2300008423000084230000842300008423000084230000842300008523000085
      2400008524000085240000852400008525000085260000852600008626000086
      2600008626000087260000872600008726000087270000872800008728000087
      28000087280000872800008928002BBD740015A3590013944B0082C5A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700F6F6F600F3F3
      F300F3F3F300F3F3F300F1F1F100F1F1F100B3B5B500898A8D006D6F72002627
      29001B1D1E00292D30000C0E0F00595959008F8F9200969695009F9F9F00ABAB
      AB00AFAFAF00AFAFAF00AAAAAA00A3A3A30097979700EDEDED00EAEAEA00E8E8
      E800EAEAEA00E8E8E800E8E8E800E6E8EA00E8E7E700E8E8E800EAE8E800EBE8
      E800EBEAE700EAEAE800EAEAEA00EAEAEA00EAEAEA00EAEAEA00E8E8E800EAE8
      E800E4EAED00DAD5E3000C0F6D00161576001917A400010193000605A3000303
      A8000102A6000205990000037C0000005A005E65A7000A0BB3002032FA000000
      D7000301D4001C1DD000F9FAF900F3F0EE00F1F1F100F3F3F300F3F3F300F3F3
      F300F1F1F100F4F4F400F6F6F600F5F5F500000000000000000000000000F5F5
      F5007A7B750063635C006B6B64006A6A64006A6963006A696300696861006967
      6100696861006967610067655F00686662007A7974008F8F86008F8F86009191
      87009191880091908A0095948E00999892009C9994009E9D97009E9D97009C9B
      94009A99910097968E0094938C0091908A0095958B0096968B0095958A009190
      880089877F007A77700066645D0052514B003737350030302F00272625002122
      2000181917000C0C0C000C0D0C00222422001D1D1C00171717003D3F40004943
      4A003B3139002F282E002A272A004A414E0081728900938A9D0066626B00302E
      31001B1A1A009B99980000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006BBE8F000C802B0049C484001FA2
      4F00008625000086250000862500008625000086270000862700008627000086
      2700008627000086270000872700008928000089280000892800008928000089
      280000892900008929000089290000892900008A2900008A2900008A2900008A
      2C00008A2C00008A2C00008A2C00008A2C00008A2C00008B2C00008D2D00008D
      2D00008D2D00008D2D00008D2D00008D2D00008D2D00008D2E00008D3000008D
      3000008E3000008E3000008E300035C17A001AA75C0013974D0082C7A1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700F6F6F600F7F7
      F700F4F4F400F4F4F400F4F4F400F4F4F400F3F3F300F6F6F600FFFFFF00FFFF
      FF00D0D4D20043434500505050009D9F9D009D9D9D00A1A1A100A6A6A600AFAF
      AF00B1B1B100AFAFAF00ADADAD00A3A3A30099999900E6E6E600EDEDED00EEEE
      EE00EDEDED00EDEDED00EDEDED00EEEBEA00EBEAEB00F0EBEE00E7EEEA00EAEE
      ED00EBE8F300EDEDEA00EBEBEB00EBEBEB00EAEAEA00EBEBEB00EDEDED00EDED
      ED00F4F4F4006765B600373990001D209700080897000303A1000504A8000102
      A8000304AE000405A40002038E000000660033336400656CC7000B11E7000508
      D5000000D200787CDA00F0F4EE00F4F3F000F4F4F400F1F1F100F1F1F100F4F4
      F400F6F6F600F6F6F600F7F7F700F5F5F5000000000000000000FDFDFD00BABA
      B70065655F006D6C67006D6B66006B6B66006B6A64006B6A66006B6A64006968
      620069686200696762006968620076766F0086857F0085847C008B8B82009090
      87009391890094918A0098958F0099989200999992009A9993009B9A93009D9B
      94009E9D95009F9E9800A1A09A00A3A29C00A5A59F00A3A39D00A2A19B00A19F
      9900A09F9900A09F9900A09F9800A2A099009F9E970096958D00898881007574
      6D005D5C560046454100353432001E1E1C001413120016161500111211000E10
      0F00101212000B0D0C001D1C1D002E2C2E003F4043002C2D2E00161616001111
      11002B2B2A00EDEDEA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006BBF8F000C832C0050C88A0023A8
      5600008C2C00008C2C00008C2C00008C2C00008C2C00008C2F00008C2F00008D
      2F00008D2F00008D2F00008D2F00008D3000008D3100008D3100008D3100008D
      3100008D3100008E3100008E3200008E3200008E3200008E3200008E3200008E
      3200008E3200008E320000903400009135000091350000913500009135000091
      3500009135000091370001913700019137000192370001923700019237000192
      380001923A0001923A0001923A003EC582001EAA61001399500082C7A2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700F6F6F600F6F6
      F600F9F9F900F7F7F700F6F6F600F4F4F400F6F6F600F6F6F600F4F4F400F3F3
      F300000000005354550092939300AAAAAA00ABAEAE00AEAEAE00AEAEAE00B1B1
      B100B1B1B100AFAFAF00ADADAD00A3A3A30097979700D0D0D000F1F1F100EEEE
      EE00EDEDED00EEEEEE00EEEEEE00EDEDED00EEEDED00F4F4F6005E5F9D006565
      A600F0EEED00F0EDEB00EEEEEE00EEEEEE00F0F0F000F0F0F000EDEEEE00F1F1
      F000A3A8A800201F4D00322F8A001113A000010199000404A4000303AA000002
      AA000505B5000307A800020396000000720009095C00807DCD000C0BCD00070A
      D2000303B300FCFAF400F6F4F400F3F3F600F6F6F600F3F3F300F6F6F600F7F7
      F700F6F6F600F7F7F700F7F7F700F4F4F40000000000FCFCFC00B8B8B4007B7A
      75006E6D68006F6E69006E6D68006E6D68006B6B66006B6B66006B6B64006D6C
      6600686761005B5954004E4C48004D4C48004B4A450047464200484844004B4A
      450054514C00676560007E7C76007F7E77008282790087877F008D8D84009291
      890096958E009B9A93009F9D9800A2A09B00A5A59F00A5A59F00A6A69F00A8A7
      A000A9A8A200ABA9A400ACABA500AEACA600ABAAA400A9A8A200A8A7A200A7A6
      A000A5A49E00A4A29D00A19F9900918F8A0082817C006C6C650055524E003D3D
      39002D2D2A002121200018181700121212000707070005050500070706000607
      05002C2D2B00E7E7E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006BBF91000C842D0058CB900027AC
      5E00009035000090360000903600019036000191360001913600019136000191
      3800019139000191390001913900019139000191390001913900019239000192
      390001923B0001923B0001923B0001923B0001923B0001923B0002923B000292
      3E0002923E0002943E0002953E0002953E0002953E0002953E0002953F000295
      3F0002953F0002953F0002953F0003963F000396400003964000039640000396
      400003964000039640000396400046C9890022AE6500139C520082C8A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700F7F7
      F700F7F7F700F7F7F700F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F7F7
      F700F9F9F900CFD4D500BCBCBA00BCBCBC00BABCBC00BABABA00B6B6B600B1B1
      B100B1B1B100AFAFAF00A8A8A8009F9F9F0092929200ADADAD00F3F3F300F0F0
      F000F0F0F000F0F0F000F1F1F100EEF0EA00EEEDF00022248600000084000906
      6200D6D7D200F4F4F600EEEEEE00EEEEEE00EEEEEE00F0F0F000F0F0F000F4F4
      F70043434200181914001D1D53000709970002019D000304A8000203AA000102
      AB000406B8000306AA0003069A000203790000005D0047479F000906BA000508
      C9000506A400FCFCF600F4F4F600F6F7F300F6F6F600F6F6F600F6F6F600F7F7
      F700F7F7F700F7F7F700F7F7F700F5F5F500FAFAFA00B8B8B6007B7B76006C6B
      6600716F6A00716F69006F6E69006F6E69006D6D68006D6B66006B6B66006867
      610055544F0042403E003A393700393937003837350037373500373733004746
      420054524D005F5E580072706A0076766D00797870008180790086867D008887
      7F00898881008B8B84008F8E870092908A00989791009C9B9500A2A09900A5A3
      9D00A8A7A100ACABA500AFADA800AFADA800B0AFA900B2B0AB00B4B2AC00B6B5
      AF00B7B6B000B7B6B000B6B5AF00B1B0AA00AEADA700A8A7A100A3A29C009E9D
      97009997910091908A0074736F005E5D5A004545410031312F00242423001E1E
      1D0043434000E2E2DF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006BC191000C862E005ECD96002AB0
      670002953E0002953E0002953E0002963E0003963E0003963F0003963F000396
      3F0003963F0003963F0003963F00039740000398410003984100039841000398
      4100039841000398410003984200039843000398430003984300049843000499
      440004994400049A4500049A4500049A4500049A4500049A4500049A4500049A
      4500049A4500049B4500049B4600059B4600059B4600059B4600059B4600059B
      4600059B4600059B4700059B47004ECE900025B16A00149E540082C9A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F900F9F9
      F900F9F9F900F9F9F900F7F7F700F9F9F900F7F7F700F7F7F700F6F6F600F6F6
      F600F6F6F600F9F9F900C0C0C000C7C7C700C7C7C700C0C0C000BDBDBD00B2B2
      B200B1B1B100ADADAD00A4A4A400979797008D8D8D0088888800F3F3F300F1F1
      F100F4F4F400F3F3F300F1F1F100FAFCFC0083849C005B5B7700776E7C008183
      7B006562630085868500F7F7F700F0F0F000F1F1F100F1F1F100F1F1F100E7E6
      E600151A1A00201E1C000C0F1C0001039A000001A3000304AD000203AA000002
      AA000406B5000306AA0003079A000303800000015C000C0F81000907B8000807
      C1000000A400DBDBED00F6F6F600F6F6F600F7F7F700F7F7F700F6F6F600F7F7
      F700F7F7F700F9F9F900F9F9F900F6F6F600A8A6A4007D7C77006D6C67006D6D
      680072706A00717069006F6F69006F6E69006E6D68006E6C67006D6D68005452
      4E0041413D0038373500363633003838340039383500363533004F4F4A005F5E
      58005C5B560060605A0077766F0075756D0074746C00797872007D7D7400807F
      77008281790085857D008A8A81008E8C860094938D00989790009B9992009C9B
      93009E9D9600A1A09A00A4A29D00A7A59F00ADACA700B1B0AA00B5B4AE00B7B6
      B000B9B8B200BAB8B200B9B8B200BBB9B400BDBBB500BDBCB600BEBDB700BEBD
      B700BCBAB400B7B5B000ABAAA400A3A29E009D9C960095948F008C8B86008786
      820089888200D8D7D30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006BC292000C892F0067D19B002FB4
      6E00049A4500049A4500049A4500049A4500049A4500049A4600049A4600049A
      4600049A4600049A4600049B4600049D4700059D4700059D4700059D4700059D
      4900059D4900059D4900059D4900059D4A00059D4A00059D4A00059E4A00069E
      4A00069E4A00069E4B00069E4B00069E4B00069E4B00069E4C00069E4C00069E
      4C00079F4C00079F4C00079F4D00079F4D00079F4D00079F4D00079F4D00079F
      4D00079F4D00079F4E00079F4E0055D0970029B46D0014A0540082CAA3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F900F9F9
      F900F7F7F700F9F9F90000000000F9F9F900F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700C7C7C700C9C9C900C9C9C900C4C4C400BDBDBD00AFAF
      AF00ADADAD00A4A4A4009C9C9C008E8E8E00838383006A696C006A686C00FFFF
      FF00FFFFFF00FFFFFF00DBDCDC00777674007B767600898381008D8685008381
      83006F6D73006565650076767600F9F9F900F1F1F100F3F3F300F6F6F600C8C8
      C800161818001E1D1E000C0B190000019D000202A6000204A8000203A7000103
      A7000203AD000305A4000305990003037C0000005C00101286000706B3000307
      BC000000AD00969CDB00F7F7F600F7F7F700F7F7F700F7F7F700F7F7F700F9F9
      F900F9F9F90000000000F9F9F900F6F6F600716F6A006B6A65006E6E68006F6F
      6A0071706A0072716900716F6900716F6900706E6900706E690065655F004341
      3E003A39360038383400393935003B3A37003A39360044434000686661006B6A
      650065645E0073726C0094948D008F8F88008D8C85008B8A8400898982008887
      800087867E0086867E0088877F00898881008D8C86009190880094948C009796
      8E009A9992009E9D9700A19F9900A4A29D00A8A7A200AAA9A300ADACA600AFAE
      A900B2B1AC00B5B3AE00B8B6B000BCBAB500BFBDB700BFBEB800BFBEB800BFBE
      B800BCBBB500B8B6B100B6B5AF00B8B7B200BAB9B300BCBAB400BAB8B200B7B5
      AF00ADABA500E3E2E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006CC392000C8B2F006ED3A00034B8
      7400079F4B00079F4B00079F4C00079F4C00079F4C00079F4C00079F4C00079F
      4C00079F4D00079F4D0007A04D0007A24D0007A24D0007A24D0007A24D0008A2
      4F0008A24F0008A24F0008A24F0008A24F0008A2500008A2500008A3510008A3
      510008A3510008A3510008A3510008A3510008A3510008A3520008A3520009A4
      520009A4520009A4520009A4530009A4530009A4530009A4530009A4530009A4
      530009A4530009A453000AA555005BD39D002CB6700015A1550082CAA3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F9F9F9000000
      0000F9F9F90000000000F9F9F900F7F7F700F7F7F700F9F9F900F9F9F900F7F7
      F700F9F9F900FDFDFD00C5C5C500C9C9C900C5C5C500C1C1C100BCBCBC00ABAB
      AB00A1A1A1009A9A9A008E8E8E007F7F7F00707070006E6D6F00616162008686
      8800908E9000999999006262620077787B008589850099969500A09F9F009A99
      97008A899700838085006F6F6F00BABABA00FCFAFC00F4F4F400F6F4F400E0E1
      E100171616001B1E1E00100D13000000A1000203AA000203AA000203A8000103
      A7000002A60002039D0002038F0002026F0003035E001C1C8F000908B1000306
      BA000000B1005B5CBD00FCFCF900F7F7F700F9F9F900F9F9F900F9F9F9000000
      000000000000F7F7F700F9F9F900F9F9F900686760006E6D6700707069007070
      6A0071706A0072706900726F690072706A0072706A006765600051514B003C3B
      37003A3A36003B3A36003C3B37003F3E3B004B4A46005F5E590074736D007473
      6E006F6E680082817B00ABAAA400A7A6A000A8A6A000A5A49E00A4A39D00A09F
      99009D9C96009C9A94009A9992009998910098969000999891009A9992009B9A
      93009C9B94009E9D96009F9E9600A19F9A00A6A49E00A7A59F00A9A8A200ACAA
      A500AFADA800B2B0AB00B6B3AE00B8B6B100BAB8B300BBB9B400BCBBB600BEBD
      B700BAB8B300B4B2AD00B1AFAA00B3B1AC00B1B1AB00B2B1AB00B2AFA900B7B4
      AE00C4C1BD00F6F6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006CC394000C8D310075D6A50038BC
      7A0009A4520009A4520009A4520009A4520009A4520009A4530009A4530009A4
      530009A4530009A4540009A5540009A6540009A6540009A6550009A655000AA6
      55000AA655000AA655000AA655000AA656000AA657000AA657000AA757000AA7
      57000AA757000AA758000AA758000AA758000AA758000AA758000AA758000BA9
      58000BA958000BA959000BA95A000CA95A000CA95A000CA95A000CA95A000CA9
      5A000CA95A000CA95A000CAB5C0063D7A4002FB9740015A3580082CBA4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FCFCFC000000
      0000FCFCFC0000000000FCFCFC00F9F9F90000000000F9F9F900F9F9F9000000
      000000000000FDFDFD00C8C8C800C5C5C500C1C1C100BCBCBC00B3B3B300A6A6
      A600999999008E8E8E00808080006C6C6C00636363008E8E8E00959595009090
      90008A8A8A008888880081818100838483008E8F8F009D9C9C00A1A3A100A6A1
      9F007C7FB10090969500908F920069676A00F6F7F400F3F6F600F9F6F600F1F1
      F100202022001C1C1C00111210000001A1000303AA000002AB000203AD000103
      AA000101A600010297000002880000006600221E64001E2497000303AB000403
      B1000003C0004643B900FDFDFC00F9FAF90000000000F9F9F900000000000000
      0000F9F9F900FCFCFC0000000000F9F9F9006B6B620070706800717169007171
      690071706900726F6A0072716A0071716A006969620051504B003F3E3A003B3A
      37003C3C38003D3D390043423E0052514C006967620074716C00817F79008281
      7A007C7B75008E8D8700B3B2AC00B1AFAA00B2B0AB00B4B3AD00B6B5AF00B6B5
      AF00B5B4AE00B7B5B000B7B5B000B6B5AF00B4B3AD00B2B2AC00B0AFA800ADAC
      A600ABAAA300A8A7A100A7A69F00A7A59F00AAA8A200ABA9A300ACAAA500ADAC
      A700AFAEA800B1AFA900B3B1AC00B5B3AE00B6B4AE00B9B7B200BBBAB500BFBE
      B800BBB9B400B4B1AC00AEACA700AEABA700AAA9A400A9A9A300B4B2AC00CAC8
      C200E7E5E3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006DC596000C9035007CD9AA003DC1
      7F000BA958000BA958000BA958000BA959000BA959000BA959000BA959000BA9
      59000BA959000CA95A000CAA5B000CAB5B000CAB5B000CAB5B000CAB5B000CAB
      5B000CAB5C000CAB5C000CAB5C000CAB5C000DAB5C000DAB5C000DAC5C000DAC
      5D000DAC5D000DAC5E000DAC5E000DAC5E000DAC5E000EAC5E000EAC5E000FAD
      5F000FAE5F000FAE60000FAE60000FAE60000FAE60000FAE60000FAE60000FAE
      61000FAE610010AE610010AF61006ADBA90032BC790017A65B0083CDA6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FDFDFD00FDFD
      FD00FCFCFC000000000000000000FCFCFC0000000000F9F9F900000000000000
      000000000000FCFCFC00C0C0C000BFBFBF00BABABA00B5B5B500AEAEAE009C9C
      9C008E8E8E0080808000696969006A6A6A0089898900A3A3A300AAAAAA00AEAE
      AE00ADADAD00ABABAB00ABABAB00ABABAB00AAAAAA00A7A7A700A7A7A700AAAD
      A6000001B1005150890070748E008D8DA800FFFFFD00FCF9F600F4F7F900FFFF
      FC004749480019161700121312000000A3000203A8000103AE000103AD000102
      AB000102A800000196000002810000005A004F4F8F000A0C8F000304AB000303
      B5000308C5002727B900FCFCFD00F9FAFA0000000000FCFCFC00FCFCFC00FCFC
      FC0000000000FCFCFC0000000000F6F6F6006B6B60007171670072726A007070
      6A00706F6A0072706A00717169006969620051514B003E3E3900383734003C3B
      380041403D00474642005958530072716B0079787300787570008E8B85008B8A
      830093928B00ADABA500C1C0B900BEBDB600BDBCB600BEBDB700BFBEB800C0BE
      B800BFBFB800C1BFB900C2C0BA00C4C1BB00C9C7BF00C7C7BF00C7C6BF00C8C7
      C000C8C7C000C6C5BF00C4C3BD00C1BFBA00BCBAB500B9B7B200B6B4AF00B4B3
      AD00B4B3AB00B3B1AB00B3B2AC00B6B5AF00B8B7B100BAB8B300BCBAB500C0BF
      B900BDBCB500B5B3AE00ACADA500AAAAA300ABA9A200B6B4AD00D7D6D000F3F3
      F000FEFEFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006FC798000C93390084DBAF0042C5
      86000EAD5F000EAD60000EAD60000FAD60000FAD60000FAD60000FAD60000FAD
      60000FAD61000FAE61000FAF61000FAF61000FAF61000FAF610010AF610010AF
      610010AF620010AF620010AF620010AF620011B0620011B1620011B1630011B1
      640011B1640011B1640011B1640011B1640011B1640012B1640013B1650013B1
      660013B2660013B2660013B2660013B2660013B2660013B2670013B2670013B2
      680013B2680014B2680014B2680071DDAD0036BF7D0018A95E0084CEA7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FCFCFC00FCFC
      FC00FCFCFC000000000000000000000000000000000000000000000000000000
      0000FFFFFF00BABABA0096969600B8B8B800B3B3B300ADADAD00A4A4A4008F8F
      8F007D7D7D006C6C6C0074747400939393009F9F9F00B1B1B100B9B9B900C0C0
      C000C4C4C400C7C7C700C8C8C800C7C7C700C5C5C500BFBFBF00B2B2B200B1B2
      A8000D13EA000C0D9D0000005B0004055800E0E6EE00FDFFFA00F7F9F900FDFC
      FD007C837F000F0F0F00171614000000A8000103A8000203B3000304B1000302
      B2000405B5000303990000017D0000005800211E780002018F000303AA000309
      BF000203CD003E3ECD00FDFDFC00FAFCF600FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC0000000000FCFCFC00FBFBFB006D6A5F0071716800707369007172
      690072706A0072706A006868610052514B003F3E3B003A39360036353300403F
      3B004C4B460062625A007A7972007C7A74007A7974008B8981008D8C86009998
      9100BAB9B200D2D1CA00D1D0C900D1D1CA00D3D1CB00D5D3CD00D4D2CC00D4D2
      CC00D3D2CB00D2D1C900D1CFC800D0CEC700D0CEC700D1CEC700D1CEC700D1CF
      C800D1D0C900D2D1CA00D3D2CB00D4D2CC00D6D5D000D7D6D000D8D6D100D6D5
      CF00D4D3CB00CECDC600C8C6C000BCBBB600BAB9B400B9B6B100B9B6B000BAB8
      B200BAB8B200B4B4AD00AAABA300ACA8A000BFBAB300E9E8E400FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000071C89B000D953F008ADDB30048C8
      8C0012B1660012B1660012B2660012B2660013B2660013B2660013B2670013B2
      670013B2670014B2670014B2670014B4670014B5670014B5670014B5680015B5
      680015B5680015B5680015B5680015B5680015B5680016B5680016B56A0016B6
      6A0016B66A0016B66A0016B66A0016B66A0016B66A0016B66B0016B66C0016B6
      6C0017B66C0017B66C0017B76C0017B76C0017B76C0018B76D0018B76E0018B7
      6E0018B76E0018B76E0019B76E0077DFB2003AC181001AAB610085D0A8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FCFCFC00FCFC
      FC00FCFCFC00FDFDFD00FCFCFC00FCFCFC000000000000000000FDFDFD000000
      0000F0F0F0007272720077777700B5B5B500ABABAB00A6A6A600999999007777
      7700696969008585850099999900A4A4A400ADADAD00BCBCBC00C3C3C300C4C4
      C400CBCBCB00CDCDCD00CCCCCC00D1D1D100CBCBCB00CDCDCD00C3C3C300C0BF
      AE000507DF000A0BAF00050367000000670011125A009FA1C700FFFFFF00FAFC
      FC00DBDEE60012121500191A19000100B1000000AE000203B9000908B8000E0A
      BF000808BF000506A10002037C0005065C0013149600020395000103B100050A
      CF000000C800706FD900FCFDF700FAF9FA00FCFCFA0000000000FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00000000006E6A6100726E670072726A007273
      6A0073726B00676460004D4C4800403F3C003E3D390038373400363533004D4C
      4700686861007878700076756E00817F78008F8E880097978D0095958C00B3B2
      AA00CDCBC400D3D1CB00D4D2CC00D5D5D000D5D4CF00D9D7D100D8D6D000D8D6
      D100DAD8D200DBD9D300DBD9D500DBDAD700DCDBD900DEDBDA00DDDBD800DCDB
      D600DCDBD500DCDBD500DBDAD500DBDAD500DBDAD400DBDAD400DEDBD800E0DD
      DA00E1DFDC00E1DFDC00E0DDDB00DCDCDA00DCDBD900DAD8D400D5D3CD00CDC9
      C400C7C4BE00BABAB200AEABA100D7D3CD00FAF9F800FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000072CB9C000E98450090E1B9004DCB
      910016B56B0016B56B0016B66B0016B66B0017B66B0017B66B0017B66D0017B6
      6D0017B66D0018B66D0018B66D0018B76D0018B96D0018B96D0018B96E0019B9
      6E0019B96E0019B96E0019B96E0019B96E0019B96E001AB96E001AB96F001ABA
      6F001ABA6F001ABA6F001ABA6F001ABA6F001ABA6F001ABA70001ABA72001ABA
      72001BBA72001BBA72001BBB72001BBB72001BBB72001CBB72001DBB73001DBB
      73001DBB73001DBB73001DBB73007EE3B7003EC585001CAE650086D1AA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FDFDFD00FCFC
      FC00FCFCFC00FDFDFD0000000000FCFCFC00FCFCFC00FCFCFC00FDFDFD00FFFF
      FF00BABABA008B8B8B0078787800B1B1B100AAAAAA009F9F9F008E8E8E007C7C
      7C0093939300A0A0A000AAAAAA00B1B1B100B8B8B800C3C3C300C3C3C300C0C0
      C000D6D6D600E7E7E70000000000FCFCFC00E1E1E100C1C1C100CBCCCC00CCCF
      BD001C17EA000E0FB90000036C0005047D000200720000005C00454467008184
      B200FFFFFF002F2D43001D1B1B000003AF000300B2000003B8000705BD001411
      BD000505BA0000038B0000005F0014157F0001018B000505A3000509C5000408
      D0000000C800F3F1F600FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FCFC
      FC00FDFDFD00FCFCFC00FCFCFC00F9F9F9006E6B5F00726E6700737169007473
      6A0062615B004B4A4500403F3C003E3D3A003D3C39003A3935003C3A38007674
      6F0072706B005C5954006E6B66009A98900097978D0094948B00ADABA500C9C7
      C200C8C5C000AEADA600A5A6A000BBBEBA00C3C6C200CDCBC200D6D1C900D8D4
      CE00DAD7D000DEDAD300DEDBD600DEDAD700DCDBD900DEDCDA00DEDCD800DFDD
      D700DFDED800E0DFDA00E0DEDC00E1DFDE00E3E1E000E3E2DF00E3E1DF00E4E1
      DF00E4E2E000E4E2E000E4E1E000E1E1DF00E3E2E100E4E2E100E3E1E000E1E1
      DF00E1E1DD00D1D0CA00E6E5E100FBFAFA00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073CCA0000F9C4A0094E4BC0051CF
      96001AB971001AB971001ABA71001ABA71001BBA71001CBA72001CBA72001CBA
      72001CBA72001CBA72001CBA72001CBB72001CBC72001CBD74001CBD74001DBD
      74001DBD74001DBD74001DBD74001DBD74001DBD74001EBD74001EBD76001EBE
      76001EBE76001EBE76001EBE76001FBE76001FBE76001FBE76001FBE77001FBE
      77001FBE770020BE770020BF770020BF770020BF770020BF770021BF780021BF
      790021BF790021BF790021BF790083E5BC0042C889001FB2690087D3AD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FDFDFD00FDFD
      FD00FCFCFC00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF009C9C9C00969696007F7F7F00AFAFAF00AEAEAE00A6A6A6009F9F9F00A7A7
      A700ABABAB00AEAEAE00B5B5B500BABABA00BFBFBF00C5C5C500C0C0C000F0F0
      F000FFFFFF00FCFCFC00000000000000000000000000B8B8B800CCCCCC00D6D1
      C900373AD9000A09C1000E12C7000B12C300080BA60004079200000065000000
      550034305E0042435F001D1915000407A0000100B3000001B9000203B900100F
      BD000200AB00020084000F116F000B0A920003049C000202AA00080AD1000002
      D2004B4BD000FFFFFF00FDFDFD00FCFCFC00FDFDFD00FCFCFC00FCFCFC00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FBFBFB006E6B5F00736E670075726B007271
      6A00484742003E3D3900403F3C003F3D3A0042403C0042423D0053524D008482
      7C007A79720065645E007E7C76009E9D960098978E0093928900C4C2BC00CCCB
      C400B3B0AA008C8C8500767771006D6E6A007A7B76008E95990095A6B5009DAB
      B400ADB5B900BABFC300C0C2C000CECFCB00DAD6D500D6D4D000DCDAD600E1DF
      DA00E1E0DB00E2E1DD00E3E1DF00E2E0DF00E2E0DF00E3E1DF00E4E2E000E6E4
      E200E6E4E300E6E4E300E6E5E400E7E7E500E8E7E600E8E6E500E8E6E500E7E6
      E500E8E7E500EAEAE600FBFBFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000075CDA200119F4D0099E6BE0056D2
      9B0020BE770020BE770020BE770020BE770020BE770020BF770021BF780021BF
      780021BF780021BF780021BF780021BF780021BF780021C0790021C07A0021C0
      7A0021C17A0022C27A0023C27A0023C27A0023C27A0023C27A0023C27B0023C2
      7B0024C27B0024C27B0024C27B0025C27B0025C27B0025C37C0025C37D0025C3
      7D0025C37D0026C37D0026C37D0026C37D0026C37D0026C37D0026C37E0027C3
      7E0027C47F0029C47F0029C47F0089E7C00046CA8D0021B36C0089D3AE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FFFF
      FF00A7A7A700929292008A8A8A00B3B3B300B3B3B300B1B1B100B3B3B300BDBD
      BD00BCBCBC00BDBDBD00BFBFBF00C1C1C100C3C3C300C0C0C000F3F3F300FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFDFD00EBEBEB00CCCBCB00BCC1
      C000FFFFFD00CBCFEA003D3CC1000306D7001D29ED00121AC8000A0A90000808
      780000035B000F137900191C17000A0B78000004BD000101BA000002BF000304
      B3000403AE00000283000A0A890003039A000303AA000405BA000508D4000000
      D2009FA0EA00FAFDFC00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FCFCFC00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FBFBFB006F6B600074716900706F68005D5B
      55003C3A36003E3C380043423F0045423F0049464200605E58004A4A46008B8A
      840083847D006E6E67008A8982009D9C960095948C009E9D9600CDCCC500BDBC
      B5009A9992007A7A73006A6A66006D6D6B0065655F0074889E006B87A800768D
      A8007A93AF007F97B2008D9FB0008DA7BE00A5A19D00A7A6A000B6B5AF00B5B4
      AE00C0BFB900CBCBC500CBCAC600DBD9D700E5E3E000E6E6E200E6E5E200E7E4
      E300E7E5E400E6E5E400E6E5E400E9E7E500EAE8E700EAE8E700EBE9E800EAE9
      E800EBEBE900F3F3F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000076CFA30012A151009DE7C20070DE
      AC0032C8850025C27D0025C27D0026C27D0026C27D0026C37D0026C37D0026C3
      7E0027C37E0028C37E0028C37E0028C37E0028C37E0028C37E0029C37E0029C3
      800029C4800029C4800029C4800029C580002AC680002BC680002BC681002BC6
      81002CC681002CC681002DC681002DC681002DC681002DC782002EC782002EC7
      82002EC783002EC783002EC783002FC783002FC783002FC7830031C7830031C7
      830031C8830032C8850032C8850099EDC8004ECE930024B670008AD5AF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00FDFDFD00FFFFFF00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FFFF
      FF00BABABA008E8E8E009D9D9D00B6B6B600BABABA00BDBDBD00C0C0C000C9C9
      C900C9C9C900C7C7C700C4C4C400C8C8C800C7C7C700E6E6E600FDFDFD00FCFC
      FC00FCFCFC00FCFCFC00FDFDFD00FCFCFC00FCFCFC0000000000CBCBCB00D1D1
      D40000000000FDFFFC00FCFCFA00C5C7E6004B4ACB000103CB00171DC1001212
      960004046D000A0A7600181952000D105500060BCD000305C0000002C0000203
      BC000102B10001039F000201A1000303AD000404BA00090ACD000101D1000706
      C900F3F4F900F9FCFA00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FCFCFC00FFFF
      FF00FDFDFD00FDFDFD00FDFDFD00F6F6F6006F6C64006D6B64005A5853004644
      3F003B3834003D3C38003D3E3A003F3E3B0065635E00716F69004B4C48009998
      930084857E0072726B0094938A009B9A940097979000B4B3AD00C2C2BB00AAA5
      A20096848B0086727B0076727200757772006A6B66006782A7006C85A5006D88
      AC006D89AD00708AAB007692B300819DBB007C7974009A99930092918B009291
      8B009B9A94009D9C9700A7A5A000CBC9C400C4C0CA00D0CEDE00D4D5DB00DFDF
      E000E3E3E200E5E4E200E8E7E500E9E9E700E9E7E600E9E7E600E9E8E600E8E7
      E600EDEDEC00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009FDEC00018A5580087E0B7008DEA
      C30051D49A002DC782002DC782002EC782002EC782002FC782002FC782002FC7
      830030C7840031C7840031C7840031C8840031C8840032C8840032C8840032C8
      860032C8860032C8860033C8860034C9860034CA860035CA860035CA860036CA
      860036CA870036CA870037CA880037CA880037CA880038CA880039CA880039CA
      880039CB890039CB890039CB890039CB89003ACB89003ACB89003BCB89003BCB
      89003BCB89003BCB8B0057D69E00B2F5D60051CC91002EB9750096DAB9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FDFDFD00FFFF
      FF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FFFF
      FF00D2D2D2008A8A8A00AEAEAE00BABABA00BFBFBF00C1C1C100C5C5C500CDCD
      CD00D1D1D100D0D0D000D0D0D000CCCCCC00D2D2D200FFFFFF00FDFDFD00FCFC
      FC00FCFCFC00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFCFD00F9FDFA00FFFAFA00FFFFFD00CCC8E7000003B8000609
      8E0004036F000204620012119C000E1237001013DC000A0FCB000408C9000203
      C3000203BD000302B8000102B9001211D4000506D4000208D6000000D700696A
      DA00FFFFFD00FCFCF700FCFCFC00FCFCFC00FFFFFF00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FFFFFF00FBFBFB00707068005A575100433F3A003835
      30003A3834003D3E3B00393D3B004448450073746E005959540069696400A09F
      9900807F7A0075756E009B9B92009C9B9500A9A9A300C7C6BE00AFACA8009C89
      9100957287008A6F7F00787574006D706A00737C83006781A500708AAA006E8A
      AD00718BAB007790AE007C97B90097A2AD008885800092918C00888680008F8E
      87008B8A85008A888300A7A59F00C5C3BB009A94B0009B93C600A6ACC700B1BF
      CF00B8C5D300C1CBD800CAD3DD00E5DBE000E2DFDF00E5E5E300E5E5E300E9E8
      E700F3F2F200FCFCFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBF3E80023AC650058D29A009EEF
      CD007EE3B70045D0920038CA880038CA890038CB89003ACB89003ACB89003ACB
      89003ACB8A003ACB8A003ACB8A003ACB8B003ACC8B003BCC8B003BCC8B003BCC
      8B003CCD8B003CCD8B003DCD8B003ECD8B003ECD8C003ECD8D003FCD8D0040CE
      8D0040CE8D0040CE8D0040CE8E0040CE8E0040CE8E0041CE8F0043CE8F0043CE
      8F0043CE8F0043CE8F0043CE8F0043CE8F0044CF8F0044CF8F0044CF900044CF
      900045CF91004FD3980097ECC500B5F6D90046C3850045BE8200B1E4CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00EBEBEB00ECECEC00F2F2F200FAFAFA00FCFC
      FC00F7F7F700EFEFEF00E8E8E800EBEBEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FDFD
      FD00E7E7E70088888800B5B5B500BABABA00BFBFBF00C1C1C100C4C4C400CDCD
      CD00D1D1D100D2D2D200D0D0D000CDCDCD007D7D7D00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FAFDFA00FAFFFC00FCFCFA00FCFDFA004A49C3000002
      A80004037300040361000B0FAD0014170F000D14A6001013D200090ECD000509
      C9000307C7000304C8000306D000131BED00131BEA00090CE3001615DE00F9F9
      F700FDFCFD00FCFDFA00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FFFFFF00FFFFFF00FDFDFD00FBFBFB009F9F9A00817E7900706C67006560
      5A004D4C47003E403E00414543006A6D680062635D00464743008D8C87009A99
      93007D7B750079787300A1A09A00A6A59F00C1C0BA00CDCDC500B1ABA800A488
      96009B7D8F008B808400797B7400757A7700738AA5007086A5006787AD006A87
      A9006E8AAA007794B4008B9CAE0091908A009A99930081807A00908F89009190
      8A008D8C8600A19F9900C1C0BA00BFBFB6008B909400817D9D0087979E0086A0
      AA008AA4B00092ACB9009FADC400D8B5CB00DCD8D900E3E2E100E6E6E500F1F0
      F000FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004BBF860030C07A0090E7
      BE00A9F1D2007FE3B7005BD69F0049D0940043CE8F0043CE8F0043CE8F0043CE
      8F0043CF8F0044CF8F0044CF8F0044CF900044CF900044CF900045CF900045CF
      910046D0910046D1910046D1910046D1910046D1910046D1930048D1930048D1
      930048D1930048D1930048D1930048D1930049D193004AD294004AD294004AD2
      94004AD294004AD295004BD295004BD295004BD295004BD295004DD3970054D6
      9C0066DBA70087E7BC00C6FBE20083E3B70030B9750071CC9E00DAF3E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F8F800C1C1C100C5C5C500D7D7D700F1F1F100F7F7
      F700E9E9E900D0D0D000BABABA00C3C3C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00FFFFFF00FDFDFD00FFFF
      FF00FDFDFD00FFFFFF00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FFFF
      FF00F6F6F6009F9F9F00BABABA00BDBDBD00BCBCBC00BCBCBC00BFBFBF00C4C4
      C400C7C7C700C4C4C400BFBFBF00B8B8B80056565600FFFFFF00FDFDFD00FDFD
      FD00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FCFCFD00FCFCFA00FAFDFF00FCFDFD00F9FDFD00F4F6F7001C1B
      AF0000028D0007087400151BC1002B2327000C0F3C001218BF000A0FC300080A
      C1000609C0000507C8000205CC000F14E4000F12E4000002E000DAE0F100FAFA
      F700FAFCFA00FAFCFC00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FFFFFF00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00F9F9F900FAF9F900F1F1EF00E5E4E000D2CE
      C90093928C005D5E5C0052524D00817F79005B5C56006F706B009E9D98009393
      8D00797872007F7E7800AAA9A300B9B8B100CBCAC300CCCBC300CBC5C100C1B6
      B700BBB2B300AFAEA9009E9F9800A2A8A8008199B7007E93AF00798FAC00778F
      AC007491B300869DB6009D9E9E007B79720085847E008887810094938D008887
      810098979100BDBAB500C1C0BD009EA5A80094AC7600A0B37D0097AE730095AA
      7D0092AC82008EA690009E96AC00CFA5BC00E2DDDD00E5E3E200EEEEED00FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4E2C5002FB672005BCF
      9800A8EFCF00BFF9DF00A1EFCD0077E1B10068DBA60068DBA70068DBA70068DB
      A70068DCA70068DCA70068DCA70068DCA70068DCA70068DCA7006BDCA7006BDC
      A9006BDCA9006BDCA9006BDCA9006BDCA9006BDCA9006CDDA9006CDDA9006CDD
      AA006CDDAA006CDDAA006CDDAA006DDDAA006DDDAA006DDDAA006DDDAA006DDD
      AA006DDDAA006EDEAC006EDEAC006EDEAC006EDEAC006EDEAC0073E0AF0084E6
      BB00A7F1D300CBFEE600A8F1CF0033BF7C0038BD7E00AEE4CB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5F5F500A2A2A200A7A7A700C3C3C300EAEAEA00F3F3
      F300DEDEDE00B7B7B70099999900ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CDCDCD00BFBFBF00BCBCBC00B8B8B800B3B3B300B5B5B500B3B3
      B300B1B1B100A7A7A700A0A0A00057575700C9C9C900FDFDFD00FDFDFD00FDFD
      FD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FCFDFC00FDFDFC00FFFFFD00FFFDFD00FDFDFC00FDFDFD00D9DA
      F4000303A300050686000C0FB6001C1E1C000E1009000C1447000A0FB9000609
      B5000707B2000506BA00060AC4001212D4000809C8005555C900FDFDFD00FFFF
      FD00FDFDFD00FDFFFF00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FBFBFB000000000000000000000000000000
      0000FAFBFB00CCCDCA006F6F68003C3C3A00918F8900A2A19B00A5A49F008D8D
      8700777770008B8B8400B9B8B100C8C6BF00CAC8C100CBC9C100CDCAC300D0CF
      C700D2D2CC00D7D5D000D9D7D100D7D5CF00D1CFC700BEC2C300BBC0C100ADB8
      BE00AAB7C300B7BCC100B8B3AD00A19E990089878100A2A09A008A8882009795
      8F00B8B6AE00C0BFB800A6ADAF008199B50098A694009DB371009BAC76009EB4
      700096B16E0096A38D00AF9AB400E2E0DE00E5E4E100EBEAE900FAFAF9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006ACFA10026B8
      730054CE96009FEDCA00C6FAE200CEFDE700D4FEEA00D6FFEB00D6FFEB00D6FF
      EB00D6FFEB00D6FFEB00D6FFEB00D6FFEB00D6FFEB00D6FFEB00D6FFEB00D6FF
      EB00D6FFEB00D6FFEB00D6FFEB00D6FFEB00D6FFEB00D6FFEB00D6FFEB00D6FF
      EB00D6FFEB00D6FFEB00D6FFEB00D6FFEB00D6FFEB00D6FFEB00D6FFEB00D6FF
      EB00D6FFEB00D6FFEB00D6FFEB00D6FFEB00D6FFEB00D5FFEB00D3FEEA00CEFD
      E700C5F9E100A8F1D0002EC37F0026B570009CDCBD00EDF9F300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5F5F500A5A5A500A9A9A900C4C4C400EAEAEA00F3F3
      F300DFDFDF00B9B9B9009F9F9F00C3C3C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F9F9F900C0C0C000B9B9B900B1B1B100AAAAAA00AAAAAA00A6A6
      A600A1A1A100999999006565650027272700F4F4F400FDFDFD00FFFFFF00FDFD
      FD00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FDFDFD00FDFDFD00FDFD
      FD00FFFFFF00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FFFFFF00FDFF
      FD009290DC0000009F000301A800232330001D1E1E000E1643000A0C9F000006
      A1000407A1001211B3003C3DE6001010A100C5C4E600FFFFFA00FCFDFD00FFFF
      FF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      000000000000D7D6D40076746F0044444100A5A39E00A9A8A200A7A6A0008988
      83007B7B7400A1A09900CFCDC500D0CFC700CFCCC500CFCCC500CBCAC200CCCA
      C300CCCBC400CCCBC400CDCBC400CFCDC600D1D0C900D8D4CC00D9D5CE00DCD8
      D000DEDAD000DCD8D100DAD6D200DBD9D300D5D4CF00CDCBC300C3C1BB00C7C5
      BD00D3D1C800C1C5C30090A3B4007D9CBD00A78A6000968D6500A3986D009FA0
      64009BA384008C9FB3008EACC800E6E4E000E6E4E300F9F8F800FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3FCF70086D8
      B3002DB975001DBA6F004DD3980091EBC600C0FAE000D5FFEA00D5FFEA00D5FF
      EA00D5FFEA00D5FFEA00D5FFEA00D5FFEA00D5FFEA00D5FFEA00D5FFEA00D5FF
      EA00D5FFEA00D5FFEA00D5FFEA00D5FFEA00D5FFEA00D5FFEA00D5FFEA00D5FF
      EA00D5FFEA00D5FFEA00D5FFEA00D5FFEA00D5FFEA00D5FFEA00D5FFEA00D5FF
      EA00D5FFEA00D5FFEA00D5FFEA00D5FFEA00D5FFEA00D0FEE700BCF9DE0092EB
      C60054D59A0013B166001EB47000AAE3C900F0FAF50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5F5F500A7A7A700ABABAB00C6C6C600EAEAEA00F3F3
      F300E0E0E000B7B7B70098989800C4C4C4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00C0C0C000B2B2B200A4A4A4007B7B7B006F6F6F006E6E
      6E006E6E6E006F6F6F005E5E5E00EBEBEB00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FDFD
      FC00FFFFFA006E6CD4000000A6000C0E8000060A72000A0A88000B0F88000302
      740003047900070A8D0004058500E0E1F100FDFFFF00FAFCFD00FFFFFD00FFFF
      FF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FDFDFD00DBDBD9009B9B950091908A00A5A39E00A9A8A200A7A6A0008281
      7C007D7E7800B0B0AA00D5D3CE00D3D1CB00D3D2CB00D4D3CE00D3D2CC00D3D2
      CB00D3D1CB00D1D0C900D1CFC800D1D0C900D3D1CB00D4D1CB00D4D1CB00D5D3
      CC00D5D4CC00D2D1C900CECDC600D2D1CA00E0DFDB00E1DFDC00E0DEDB00DFDD
      DA00DFDED900DCDBD800D2D4D700C9CCD100C3AE9D00C0AD9E00B49A7F00B097
      7C00AD8F7000B89C8300D1CCC400E4E3E000F6F6F500FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFFFE00F2FB
      F700CBEEDD0085D8B30040C3850020B66D0025B8700027B9710027B9710026B9
      710026B9710026B9710026B9710026B9710026B9710026B9710026B9700026B9
      700026B9700026B9700026B9700026B9700026B9700026B9700026B9700026B9
      700026B9700026B9700026B9700026B9700026B9700026B9700026B9700026B9
      700026B9700026B9700026B9700026B9700026B9700025B9700023B76F0024B8
      71003DC3860083D8B100D0F1E000F3FBF700FDFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600ABABAB00AFAFAF00C9C9C900ECECEC00F1F1
      F100DDDDDD00B7B7B70099999900C7C7C7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FCFCFC00BABABA006C6C6C00676767006E6E6E007070
      7000727272006D6D6D006C6C6C00C5C5C500FDFDFD00FDFDFD00FFFFFF00FDFD
      FD00FDFDFD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FAFF
      FD00FCFCFC00FFFFFD00BCBDE1002223A1000C0A81003D419500413F97003234
      8D001C1C74001B1C76003C369C00C9CCE300FFFFFD00FDFCFD00FDFDFF00FFFF
      FF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      0000FBFBFB00D8D8D6009C9C96009F9E9800A8A7A100A8A6A000A9A8A0007B7C
      760082847E00BFBDB800D8D6D100DAD9D400E0E0DC00DEDDD800D4D3CC00D5D4
      CE00D6D4CE00D7D5CF00D8D7D100D9D8D200D9D8D300DAD9D300D9D8D300DAD9
      D400D7D6D100CECCC600B7B6AF00A1A09900E6E5E300E8E6E400E8E6E400E7E5
      E400E7E5E400E7E5E400E6E4E400E4E2E100E1DDD900DFDBD800DCD7D100DBD4
      CE00D8CEC500DAD1C700E0DDD900F3F3F100FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8FDFA00E7F7F000D5F1E400CBEEDD00CBEEDD00CBEEDD00CBEEDD00CBEE
      DD00CBEEDD00CBEEDD00CBEEDD00CBEEDD00CBEEDD00CBEEDD00CBEEDC00CBEE
      DC00CBEEDC00CBEEDC00CBEEDC00CBEEDC00CBEEDC00CBEEDC00CBEEDC00CBEE
      DC00CBEEDC00CBEEDC00CBEEDC00BEE1D00097BAA90083A69500ADD0BF00C7EA
      D900C7EAD900BDE0CE00A1C4B30081A49300A4C7B600CBEEDC00CBEEDC00CCEE
      DE00D4F1E400E7F8F000FAFDFB00FEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600ACACAC00B0B0B000CACACA00ECECEC00EFEF
      EF00DCDCDC00B9B9B9009B9B9B00C8C8C8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5B5B5006A6A6A0076767600797979007B7B7B007B7B
      7B007B7B7B0078787800747474006969690095959500FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF
      FD00FDFFFD00FDFDFC00FDFDFD00706EB3003A3899001B1E8400090A68000000
      61000000610000005F00000061000E096D007B7CC100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      0000E9E9E700BEBEB9009D9C9600A7A6A000A9A8A200A8A6A000AAA8A1007878
      72008D8D8700CBC9C300D6D4CE00D5D4D000C8C8C700C0C0BB00D9D8D200DAD9
      D300DAD9D400D9D7D200D5D4CE00D5D4CE00DAD8D600DFDCDB00DFDDDB00DEDC
      D900DBD8D600BEBCB80091918A0099989100ECEBEA00ECEBEA00ECEAE900EBEA
      E900EBE9E800EBE9E700EBEAE700ECEAE700EBECEB00EBEBEA00EAEBEA00EAEA
      E900E7E6E500E3E1DF00E3E1DF00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F000BFBFBF00A6A6A600D9D9D900F6F6
      F600FAFAFA00F0F0F000CDCDCD00A2A2A200CFCFCF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600AFAFAF00B3B3B300D1D1D100EFEFEF00EFEF
      EF00DDDDDD00BBBBBB009D9D9D00CACACA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD0077777700808080008383830083838300858585008484
      84008484840081818100808080007B7B7B006E6E6E00FFFFFF00FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF
      FF00FDFDFD00FAFDFF00EBEBF10016158600080A6F0003036C0000006A000000
      6C0000006D000001690000006C0000006700000065004F4FA600FAFFFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000D2D1CE00A6A59F00A4A39D00AAA9A300A9A8A200A8A6A000ACAAA4007978
      72009A999300CECDC700BBB9B40091908C006869690067676500DDDBD800DEDC
      D700DEDDD800DCDAD600D6D4D000D2D0CC00CFD0C200D3D2C700DAD8D200DEDC
      DA00DAD8D500AFADA8007F7F7900B6B5AF00C4C3C000C8C6C500D7D5D300E4E2
      E100E9E7E600EAE8E600EBEAE600ECEAE700EDECEB00EDEDEB00EDECEB00EDED
      EC00EAEAE900E6E5E300EBEAE800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F900C8C8C800A8A8A800DADADA00F3F3
      F300FAFAFA00F2F2F200D4D4D400A7A7A700D0D0D00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600B1B1B100B9B9B900D6D6D600F1F1F100EFEF
      EF00DEDEDE00BDBDBD009F9F9F00CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B500898989008A8A8A008D8D8D008D8D8D008D8D8D008B8B
      8B008A8A8A008888880088888800858585008080800097979700FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF
      FF00FDFDF900F1F3F9003A37890016199500121393000403810001017B000000
      7B0000007B0000007B0001017700000074000000740000006A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      0000C7C6C300A09E9800A9A8A200AAA9A300A9A8A200A9A7A100AFADA7007F7F
      7900ADADA800D8D7D200BCBAB500878681005D5D5B005D605E00DEDBD900DFDD
      D900DFDED900DEDDD900DCDAD800DAD8D400D0D3BD00CDCFB500D4D6C300DEDD
      D700D3D2CF00A3A29C0088888200D5D4D10086837E0088858200918E8B009593
      9100B0AFAE00D8D7D500EAE9E700E8E6E400ECEAE900EDECEB00EDEBEA00EDEC
      EB00EBEBEA00EDECEB00F6F6F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0D0D000A8A8A800D7D7D700F2F2
      F200FAFAFA00F2F2F200D9D9D900ACACAC00CECECE00FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600ADADAD00C0C0C000D8D8D800F1F1F100EFEF
      EF00DDDDDD00BCBCBC00A3A3A300D8D8D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFC
      FC00E1E1E1008686860092929200959595009696960096969600979797009393
      93009595950092929200909090008D8D8D008A8A8A007B7B7B00E0E0E000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FC00FFFFFF005657B1001A1996001E21AE0010129D0000018600000188000000
      8600000086000001880000018500000185000000830000008000979AD900FDFC
      F900F9FFFF00FFFFFA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      0000CAC9C600A4A39D00AAA9A300AAA9A400ABAAA400AAA9A400B2B1AB00696A
      650095959100BDBCB800BCBBB500B5B4AE00ABABA600ABAFAB00DFDEDC00E2E1
      DD00E3E2DD00E3E2DE00E4E3DF00E4E2E000DFE0D300D9DBC400D9DCC900E0E0
      D900C7C7C4009C9B9600A09F9B00E2E1DF00736D670077706C00534F4B003533
      310074747200D2D1CF00F0EEED00E9E7E600DDDBD800D0CECC00E3E1DF00ECEB
      E900EFEEED00F5F5F400FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2D2D200AAAAAA00D2D2D200F1F1
      F100FAFAFA00F3F3F300DBDBDB00AEAEAE00CACACA00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5F5F500A4A4A400C5C5C500DCDCDC00F2F2F200EFEF
      EF00DADADA00BBBBBB00AAAAAA00E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A8A8A800999999009F9F9F009D9D9D00A0A0A000A1A1A100A0A0A0009F9F
      9F009D9D9D009D9D9D009A9A9A0096969600939393008989890090909000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00E1E8F00015169D001519A4001416AB000606950002019200030193000303
      96000201950006049C0004039700030195000100900000008E001E1C9900F9F9
      FA00FAFCFC00FAFFFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000D0CFCD00A8A6A100AAA9A300ABAAA500ADABA600ACABA600B4B3AD002C2C
      2B0036373500565652006C6C6600878682009F9E9800A7A7A400BEBDBB00C6C5
      C300CDCCC900D4D3CF00DAD8D500DDDCD900E2E0E000E6E4E400E4E3E200E2E1
      DF00BBBBB7009E9E9800BEBDBA00DBD7D500968C8500A0979100524D4B002F2D
      2C008C8C8B00F3F2F100FAF7F700F5F3F300B7B5B00094928E00D2D0CD00EDEC
      EA00F3F2F200FBFBFA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D7D7D700B1B1B100D0D0D000EDED
      ED00FAFAFA00F5F5F500DDDDDD00B1B1B100C8C8C800F2F2F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F4F4009F9F9F00C7C7C700E0E0E000F3F3F300EDED
      ED00D7D7D700BABABA00ADADAD00EAEAEA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEA
      EA0097979700A4A4A400A8A8A800AAAAAA00ABABAB00A8A8A800AAAAAA00A8A8
      A800A8A8A800A8A8A800A6A6A600A1A1A1009D9D9D009292920081818100E6E6
      E600FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005C5ECC000A0F9F001010A3000E0EA70004049C0002019F000304A3000405
      A4000305A4000305A7000103A4000103A3000102A00000009A0000009200B1AB
      E100FFFFFD00FCFDFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD000000000000000000000000000000
      0000D6D5D300ABAAA500ABA9A400ADABA600ADABA600AFADA800AFADA8001516
      140004060400050705000B0C0A0012131100181817001F1F1D002D2D2C003F3E
      3D00575855007675720093918F00ABA9A700C1BFBD00D6D5D300D9D9D700D9D8
      D600B2B2AF00A7A8A500D8D5D400C1BBB7008D837E00837A74003D3936004B4B
      4A00B1B0B000FCFBFC00FAF7F800FCF9F9009B97920095928E00D9D7D400F0EE
      ED00F6F5F500FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFDFDF00BBBBBB00CBCBCB00EAEA
      EA00FAFAFA00FAFAFA00E0E0E000BBBBBB00C9C9C900EEEEEE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00EFEFEF00A0A0A000CDCDCD00E5E5E500F4F4F400ECEC
      EC00D6D6D600BBBBBB00B2B2B200F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C9C9
      C900A7A7A700AEAEAE00B1B1B100B2B2B200B5B5B500B5B5B500B5B5B500B5B5
      B500B2B2B200AFAFAF00AFAFAF00ABABAB00A8A8A8009D9D9D0092929200C9C9
      C900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F9
      FC003C40C0000A0A9F00070AA0000505A4000202A3000202AA000304AE000405
      AF000304AE000203AE000203AF000102AD000001AA000000A6000000A1004545
      B300FFFFFD00F9FDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD000000000000000000000000000000
      0000DBDAD800AEACA700A7A5A000AFADA800AFADA800B1B0AA00A2A09B001516
      14000F0F0D0011110F001211100011110F000E0F0D000B0C0A00060705000506
      040005070500090A08000F100E00171716001E1E1D002B2B2A0067676500B0B0
      AC00B6B6B200B9B8B600DCD9D800A7A39F00847C7700574F4D002D2A29008F8E
      8D00E6E3E300F6F1F200F6F2F300F9F6F700B3AFAC00CECDC900E6E6E300F1F1
      F000FAFAF9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5E5E500C3C3C300C6C6C600E6E6
      E600FAFAFA00FAFAFA00E2E2E200BFBFBF00C3C3C300E6E6E600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFA00E2E2E200A4A4A400D3D3D300EBEBEB00F7F7F700EAEA
      EA00D0D0D000B5B5B500B6B6B600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000B5B5B500B8B8B800BABABA00BCBCBC00BDBDBD00BDBDBD00BCBCBC00BCBC
      BC00BABABA00B9B9B900B8B8B800B3B3B300B2B2B200A7A7A700A0A0A000BCBC
      BC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEB
      FA001D22C50003039A000304A1000000A8000202B1000302B5000301B3000303
      B6000405B8000102BA000406BD000305BF000406BD000303B6000000B1000706
      AD00F4F3F900FAFDFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000DBDBD800A2A19B0092918B00B2B1AB00AFADA800B6B4AE008C8A84001212
      10000F0F0D000F0F0D000E0D0C00100A0B000F090A0011090A00110B0B00110D
      0D00110F0E0011100F00111210001112100010110F000606050062616000ABA8
      A500C1BEBA00CDCCCA00E3E2E000DCDBD700D1CFCA00B1AFAB00A09F9C00CAC8
      C600E9E4E400EAE5E600EDE8E800EFEAEB00D2D0CD00E2E1DE00EBEAE700F5F5
      F400FEFEFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAEAEA00C7C7C700BCBCBC00E3E3
      E300FAFAFA00FAFAFA00E6E6E600CBCBCB00C3C3C300DEDEDE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F700D7D7D700B3B3B300D6D6D600EFEFEF00F9F9F900E8E8
      E800CECECE00BABABA00C3C3C300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00C0C0
      C000BFBFBF00C0C0C000C3C3C300C4C4C400C5C5C500C5C5C500C5C5C500C7C7
      C700C5C5C500C4C4C400C3C3C300BFBFBF00BABABA00B1B1B100ADADAD00B9B9
      B900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00E4E4
      F9000F15C3000000A0000001A8000001B2000103BD000203C4000002BD000603
      C1001612C9000303C300060AD0000509D0000609CF00070ACC000001B9000000
      B600D7D6EE00FCFDFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD000000000000000000000000000000
      0000F6F6F500E2E2E000CAC9C500AEACA700B0AFA900BBB9B400706F6A000F0E
      0D000C1B150007342100054326000735230009271E0009221A000D1B16000D17
      13000F13110010100E00100E0D00110F0F0011111100191918009A9A9600C1C0
      BA00C8C7C000DCDBD700E2E0DD00E2E0DE00E3E1E000E2E1DF00D6D5D300D3CF
      CC00E0DAD900EDE8E800EEE9E900ECE7E700E4E3E100E6E5E400F0EFED00FAFA
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F400D2D2D200B6B6B600DFDF
      DF00FAFAFA00FAFAFA00ECECEC00D5D5D500BEBEBE00D4D4D400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F5F5F500CDCDCD00BEBEBE00DADADA00F3F3F300F7F7F700E6E6
      E600CBCBCB00BABABA00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00C7C7
      C700C7C7C700CBCBCB00CBCBCB00CCCCCC00CCCCCC00CFCFCF00CFCFCF00CFCF
      CF00CDCDCD00CCCCCC00C9C9C900C7C7C700C4C4C400BCBCBC00B6B6B600C1C1
      C100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3
      F7000A0DC0000000AA000101B6000001BD000002C3000003CB000002CB000503
      D0001D1BDE000203CF00090BDA00060AD900070AD9000709D5000103C4000000
      BF00D0CFEE00FFFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD000000000000000000000000000000
      0000FEFEFE00FBFBFA00E5E5E300B2AFAA00AFAEA800BBB9B200565653000D0D
      0C000E1E18000837240004492A00034E2B0003572D00035C2D0004582C000550
      2800074B2600083E2200092E1D000E1B1600110E0E004B4C4B00BBBBB800D0D0
      C900D1D0C900DFDED900DFDED900E0DFDB00E3E1E000E4E2E100B8B7B500C5C0
      BE00E5DEDD00F2EDEE00F1EDEE00EDE8E800E7E6E500E9E8E700F6F6F500FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00DEDEDE00B4B4B400DBDB
      DB00F4F4F400F9F9F900F3F3F300E0E0E000C1C1C100CDCDCD00F6F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00EEEEEE00BBBBBB00CCCCCC00E2E2E200F5F5F500F3F3F300E5E5
      E500C7C7C700BABABA00DCDCDC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0D0
      D000CFCFCF00D0D0D000D1D1D100D5D5D500D6D6D600D6D6D600D6D6D600D5D5
      D500D4D4D400D2D2D200D2D2D200D0D0D000CDCDCD00C4C4C400BCBCBC00D0D0
      D000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8E8
      FA00080AC1000300B6000003C7000101C9000002CC000203D1000202D5000307
      E300343AFD000809E700080BE6000808E1000606DF000305DA000303D4000000
      C800D6D7ED00F7FCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000EEEEEC00BAB9B300B0AEA900B2B1AA00444442000C0E
      0C00101512000E1E16000B26180009301B00083D200007452400064927000549
      2700054E2A00054C2A00073D24000C1E18000C08080093939200D3D1CF00D9D8
      D200D8D7D100DEDCD800DEDCD800DEDDD800E3E1DE00BDBBB8009A999500C6C2
      C000EEE9E800F3EEEE00EFEBEB00ECE7E700E5E3E200F0EFEE00FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8E8E800BFBFBF00D3D3
      D300ECECEC00F9F9F900F8F8F800E7E7E700CBCBCB00C7C7C700E3E3E3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAFAFA00E1E1E100B7B7B700D9D9D900EDEDED00F8F8F800F0F0F000E1E1
      E100C5C5C500C0C0C000ECECEC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDE
      DE00D4D4D400D5D5D500DADADA00DADADA00DADADA00DBDBDB00DBDBDB00DCDC
      DC00DCDCDC00DADADA00D7D7D700D6D6D600D2D2D200CCCCCC00C0C0C000E1E1
      E100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F7
      FD00161BC0000000C1000304D4000407DE000403DB000203DE000403DE000304
      E7001217F900090EF400050AE7000304E1000102DB000000DC000406DE000303
      CD00F3F6F900FCFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      00000000000000000000F3F3F200C8C7C300B3B2AB00979691002E2F2C000A0B
      09000D0C0B000E0C0B000F0D0C000F100D000E1410000E1611000D1A14000C1E
      16000B2519000B2C1C000C281A000D15120008070700C6C5C200DEDCD800DCDA
      D400DBDAD500DCDBD700DEDCD800DEDCD700DCDAD6008F8E8900A09D9800D5CE
      CC00EDE7E700ECE7E600EAE5E400EBE7E600E7E6E600F8F8F700FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F000D0D0D000C7C7
      C700E4E4E400F9F9F900FBFBFB00EDEDED00D8D8D800C6C6C600CFCFCF00F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00EEEEEE00CDCDCD00C6C6C600E2E2E200F5F5F500F9F9F900EBEBEB00D9D9
      D900C3C3C300CACACA00F9F9F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0
      F000D7D7D700DCDCDC00DFDFDF00DFDFDF00E0E0E000E0E0E000E0E0E000E1E1
      E100E3E3E300E1E1E100DEDEDE00DBDBDB00D7D7D700D1D1D100C8C8C800F9F9
      F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FD005454D7000000CD000306D5000A10F1000509E6000305E7000505E700080A
      F6000B12FC001119FD000305EE000000E3000302EA000609F3000406ED004847
      D000FFFFFC00FAFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      00000000000000000000F7F6F600D6D5D300B0AFA90081817C00292A27001112
      10001112100010111000100F0E000E0E0C000D0B0B000C0909000C0809000D09
      09000E0A0A00100D0C000F0D0C000C0B0A0016171600D4D4CF00DAD9D300D9D7
      D100D9D8D300DAD9D500DCDAD600DDDCD700D5D3CE0096958F00BFB9B400DDD6
      D200E1DBD900E1DBD800E5E0DE00E8E6E400F1F1F100FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F900E0E0E000BDBD
      BD00DDDDDD00F5F5F500FAFAFA00F5F5F500E6E6E600CECECE00C5C5C500E0E0
      E000FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00F4F4
      F400DBDBDB00C4C4C400D9D9D900EBEBEB00F9F9F900F7F7F700E7E7E700D0D0
      D000C3C3C300D7D7D70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E0E0E000E1E1E100E4E4E400E4E4E400E6E6E600E4E4E400E4E4E400E6E6
      E600E6E6E600E3E3E300E3E3E300DFDFDF00DCDCDC00D6D6D600DFDFDF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF
      FD00E3EBF6000200D0000103DF001116FD00070AF4000406F0000506F000090A
      FC001E21FC001E32FD000207F3001014F1001821FD00070DF9000101EA00C1C4
      F000FFFFFF00FAFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000FAFAF900E3E2E000ABA9A40093938D005F5F5B004545
      430040403E003A3B390032323000282825001D1E1C00181817000F100F000F0F
      0E000F0F0E0010100F000E0D0C0010100F004B4C4900D6D5CF00D3D3CC00D5D4
      CD00D7D5CF00D8D7D100D9D8D200DAD8D300D7D6D000D3D1CB00DCD9D300DDD9
      D300DAD5D000DBD6D100DFDBD700E2E1DE00FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00EEEEEE00C1C1
      C100D2D2D200EAEAEA00F8F8F800FAFAFA00EFEFEF00DEDEDE00CDCDCD00C6C6
      C600E7E7E700F8F8F800FDFDFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB00F3F3F300DCDC
      DC00C9C9C900D2D2D200E6E6E600F7F7F700FAFAFA00F1F1F100E2E2E200C8C8
      C800C9C9C900E9E9E90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F4F4F400E6E6E600E8E8E800EAEAEA00EAEAEA00EBEBEB00EBEBEB00EBEB
      EB00EAEAEA00E8E8E800E8E8E800E6E6E600E1E1E100DADADA0000000000FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FFFFFD005454DC000000E3000910F9000C0EFA000408F9000306F4000406
      FC002630F9001822FC00181FF7003B41FC001015F7000406FA002D2DDB00FCFC
      F900FDFCFD00FAFDFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00FDFDFD00FBFBFB000000000000000000000000000000
      0000FEFEFE00FCFCFB00FBFBFA00F4F3F200C4C4BD00BDBDB800C2C0BA00ADAC
      A500A3A29C009C9B960094908B00837F79006E6D68005B5A58003A3B39003535
      330030302E00282826002121200038383500AEADA700D1D0C900D0CFC700D1D0
      C900D2D0CA00D3D2CC00D3D2CC00CFCDC500CDCCC700D6D5D000D9D8D300DBDA
      D500DDDBD700DDDCD800DDDDD800E2E2DE00FFFFFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8F8F800DBDB
      DB00C2C2C200DDDDDD00F3F3F300FAFAFA00F7F7F700EDEDED00DCDCDC00CBCB
      CB00C0C0C000DBDBDB00F1F1F100F8F8F800FBFBFB00FCFCFC00FDFDFD00FDFD
      FD00FDFDFD00FCFCFC00FBFBFB00FAFAFA00F8F8F800EAEAEA00D0D0D000C7C7
      C700D4D4D400E7E7E700F3F3F300FBFBFB00FAFAFA00E9E9E900D7D7D700C4C4
      C400D5D5D500FBFBFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00EEEEEE00EDEDED00F0F0F000F1F1F100F1F1F100F1F1F100F0F0
      F000F1F1F100EEEEEE00EDEDED00EAEAEA00E7E7E700F3F3F300FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFF
      FD00FDFCF900FFFDFA001412D7000605F700060CFA000A09FC000707FD000706
      FD000B0BFC000D12FC001A22FC000A0BF9000000F9000D0DFD00CBD2ED00FAFD
      F600F9FCFC00FDFDFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00FCFCFC00000000000000000000000000000000000000
      0000F2F2F200E0E0DF00DCDCDB00DFDEDE00E1E0E000DDDBDB00D7D7D4007C7B
      75004A4A4500504F4800716A5C00908471007C7464006C64560075736C009290
      8A00A3A19C009B9A95008C8B86009B9A9300C9C7C000C6C4BD00CAC8C000CCCA
      C300CDCBC400D0CEC700CECEC700C0BDB6009A9993009998920099989200BBBA
      B200D5D4CD00D9D8D100DCDBD400F0EFEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00F4F4
      F400BEBEBE00D4D4D400E6E6E600F5F5F500FBFBFB00F7F7F700EDEDED00E1E1
      E100D7D7D700C0C0C000BCBCBC00CDCDCD00DBDBDB00E4E4E400EBEBEB00EFEF
      EF00EDEDED00E7E7E700E0E0E000D4D4D400C3C3C300C0C0C000CCCCCC00DBDB
      DB00E7E7E700F4F4F400FBFBFB00FBFBFB00EEEEEE00E3E3E300CACACA00CDCD
      CD00E9E9E9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F800FFFFFF00FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00FDFDFD00F6F6F600F4F4F400F6F6F600F6F6F600F7F7F700F6F6
      F600F6F6F600F4F4F400F3F3F300F0F0F000EBEBEB00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFDFC00FCFDFA00DBDEF3000203FD00080AFD000B0EFD00090AFC000A0B
      F7000F10F7000A08F9000B0AF9001012F9000F0DFD000000F000FFFFFD00FCFD
      FF00FAFDFF00FDFDFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00FDFDFD00F8F8F8000000000000000000000000000000
      00009D9D9D002B2A29001F201F00252524002625230027252500282726001A1B
      18001011100011120F001B19150024221C00201E180019161000171614002423
      21006D6B6700C0BDB700CDC9C400C3BFB700B8B4AD00B1AFA900B0AEA800B2B0
      AA00B6B3AD00BBB7B200BEBCB600C3C1BA00C7C6BF00C1C0B900B7B7B000C6C5
      BE00D1CFC800D7D5CF00E8E8E500FCFCFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00E5E5E500C5C5C500D8D8D800E9E9E900F5F5F500FBFBFB00F9F9F900F2F2
      F200E6E6E600DFDFDF00DBDBDB00D4D4D400CFCFCF00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CCCCCC00CECECE00D2D2D200D9D9D900DDDDDD00E4E4E400EEEE
      EE00F6F6F600FAFAFA00FAFAFA00F3F3F300E5E5E500D4D4D400C5C5C500DEDE
      DE00FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F7F7
      F700F9F9F900F9F9F900F6F6F600F6F6F600F9F9F900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFD
      FF00FCFFFC00FCFDFC00FFFDFC004344E0000000F1000303FA002321FD004140
      FC004242FF003E40FA00292DFA000705F7001515E7009FA3E700FDFFFD00FCFD
      FD00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00FDFDFD00FBFBFB000000000000000000000000000000
      00008F8F8F00101010000304030008090800060807000808080009080700090A
      0800090A08000A0B0A000B0C0A000B0D0A000A0A09000A0A0800050604001111
      0F007C7A7700EDEBE800F6F5F400F2F1EF00ECEBE900E2E0DE00DDDBD900D8D6
      D100D1CFC900CAC8C100C3C1B900BEBDB600BBB7B200BAB8B100B9B8B200BEBB
      B400CECAC500E6E4E000F9F9F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAFAFA00D7D7D700C9C9C900D8D8D800E8E8E800F3F3F300FAFAFA00F9F9
      F900F7F7F700F4F4F400EEEEEE00E7E7E700E4E4E400E1E1E100DFDFDF00DFDF
      DF00DFDFDF00E0E0E000E3E3E300E6E6E600ECECEC00F1F1F100F6F6F600F9F9
      F900FAFAFA00F9F9F900F1F1F100E6E6E600D6D6D600C9C9C900DCDCDC00F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD0000000000000000000000
      0000F9F9F90000000000FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFC00D4D5F000494CE7000809DC000000
      F1000404F6000000E7002420E4007C83DF00FFFFFF00FCFCFD00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00000000000000000000000000000000000000
      00008F8E8D0012100F00060503000B0B09000D0E0A000C0C09000D0C08000909
      0700090907000A0A0800090A08000809070008090700090A0900030303001616
      14008B8A8800FDFCFB0000000000FFFFFE00FEFEFD00FAFAF900F8F8F700F6F5
      F400F3F2F000EFEEEC00EBEAE800E7E7E400DEDDDA00DBDBD600D7D6D200D8D7
      D200E6E5E200F7F7F600FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3F3F300DADADA00CFCFCF00D6D6D600E4E4E400EEEEEE00F4F4
      F400F8F8F800FAFAFA00F8F8F800F6F6F600F5F5F500F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F5F5F500F6F6F600F7F7F700F9F9F900FAFAFA00F8F8
      F800F3F3F300EDEDED00E5E5E500D6D6D600C9C9C900DDDDDD00F3F3F300FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FCFDFA00FFFFFC00FFFFFD00F4F4F700D7D6
      FC00C8C8F100E3E1FA00FDFDF900FFFFFF00F9FFFC00FAFDFD00FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00F8F8F8000000000000000000000000000000
      00008D8D8C0011100E00070705001818120023241A001B1B14001C1B14000807
      050008080600080806000808060009080600080806000B0A0900030302002826
      24009D9B99000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFD00F9FAF900F7F7F600F4F4F200F4F4
      F300FAFAF9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F4F400E3E3E300D6D6D600D3D3D300DADADA00E5E5
      E500EDEDED00F0F0F000F2F2F200F5F5F500F5F5F500F7F7F700F8F8F800F8F8
      F800F8F8F800F8F8F800F6F6F600F5F5F500F4F4F400F2F2F200F0F0F000ECEC
      EC00E6E6E600DCDCDC00D3D3D300D3D3D300DFDFDF00F4F4F400FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FDFFFC00FFFFFD00FCFDFC00FAFF
      FA00FDFFFF00FAFDFC00FFFDFF00FDFCFD00FDFDFC00FCFDFF00FDFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      00008C8C8B000F0F0E00070705001D1E16002C2D200020211700212118000706
      050008070600070806000708060009070600080706000B0A0900030302004643
      4000B7B5B3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F900EAEAEA00DCDCDC00D5D5D500D5D5
      D500D9D9D900DDDDDD00E3E3E300E7E7E700E9E9E900EBEBEB00ECECEC00ECEC
      EC00ECECEC00ECECEC00EAEAEA00E9E9E900E6E6E600E2E2E200DEDEDE00D9D9
      D900D6D6D600D7D7D700DCDCDC00E8E8E800F9F9F900FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      00008A8A88000E0E0C000506050013130E001819110013130D0013130E000707
      06000707060007070600070706000807060007080600090A0800080706006B69
      6700D7D5D3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00F6F6F600E8E8E800DCDC
      DC00D7D7D700D9D9D900DBDBDB00DBDBDB00DADADA00D9D9D900D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900DCDCDC00DADADA00D9D9D900D9D9D900D8D8
      D800DCDCDC00E7E7E700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000898888000F0F0D0006070700080808000505050006060600060606000909
      080009090800090908000909080009090900080908000A0A0800121110008E8D
      8A00F0F0EE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00F6F6F600EDEDED00E7E7E700E2E2E200DBDBDB00D7D7D700D7D7D700D7D7
      D700D7D7D700D7D7D700D7D7D700DEDEDE00E0E0E000E6E6E600ECECEC00F4F4
      F400FCFCFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      000098979700292A280022232200252525002525250025252400252525002424
      230023242100222320002121200020201F001D1E1C001C1C190028282700A7A6
      A500FCFCFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB000000000000000000000000000000
      0000E2E2E100B1B1AE00999993009C9E98009E9C99009C9E99009C9E99009D9A
      95009A97910096948E0092928C008C8D870085857F00807E78008F8D8900D7D6
      D400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FDFDFD00FCFCFC00FCFBFC00F8F7F800F6F6F600F7F6
      F700F7F6F700F6F6F600F7F7F700F9F9F900FEFEFE000000000000000000FEFE
      FE00FCFCFC00FCFCFC00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDEEF900D9DBF300B4B9E800A3AAE300A3AAE300A3AAE300A3AAE300A3AA
      E300A3AAE300A3AAE300A3AAE300C4C7ED00DADCF400EDEEFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FAFAFA00F7F7F700F3F2F300EEECEE00E7E5
      E700E2E1E200DCDBDC00D3D2D300D1D0D100D1CFD000BBBABB00B2B0B200B3B1
      B300B3B1B300B1B0B100B2B2B200BFBFBF00E3E4E300F8F8F800FDFDFD00F1F1
      F100D3D3D300CDCDCD00DCDCDC00E4E4E400ECEBEC00F3F3F300FCFCFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F8FD00DDE0F500B4B9E8009297DD007171
      D2006565D0005759D2003F42D3003438D4003438D4003438D4003438D4003438
      D4003438D4003438D4003438D400494BD300585AD0006566D000797CD600949D
      E000C2C6ED00EEEFFA00FDFDFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00E7E5E700D9D6D900C7C2C500ABA4AB008B86
      8A00777276006A6B6A005C5A5B005A5959005C655D00424E4400353635003536
      3500353A350033363300343434004746470092939200DFDFDF00F5F5F500C6C8
      C600666C66004C544C00687169007D7E7E00A29FA400C7C5C800EFEFEF00FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EEEEEE00D8D8
      D800C6C6C600B7B7B700B1B1B100B1B1B100B1B1B100B1B1B100B1B1B100B1B1
      B100B1B1B100B1B1B100B1B1B100B1B1B100B1B1B100B1B1B100B1B1B100B0B0
      B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0
      B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000AFAFAF00BABABA00D7D7
      D700ECECEC00E4E4E400F0F0F000F9F9F900FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00E4E4E400A6A6A6009A9A
      9A00C0C0C000EAEAEA00F1F1F100DFDFDF00D2D2D200C6C6C600C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C2C2C200CACACA00E2E2E200EAEAEA00EFEFEF00F3F3F300F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E2E3F600B7BDEA009195DE006C6ED6004348D3002127D1000004
      CB000004CE000003D2000001DA000000DD000000DD000000DD000000DD000000
      DD000000DC000000DC000000DC000001D6000003D0000003CD00080DCD00242C
      D1005155D5007C7DDA00949BE100C6CAEF00EBEDF900FCFCFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F2F0
      F200E2DEE200D2D0D200C2C2C200ABABAB009C9B9C00898889006C6B6C004C53
      4C00373F38002E4030002230230020302100233F250011321500071908000615
      06000618050004100200040A02001112110055585500ABAEAC00D2D2D2009B9E
      9A0030393000111E11002A3C2B003E443E006362640089888800B4B3B500CFCD
      CF00E1E0E100F9F8F90000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00F1F1F100D4D4D400B7B7B700A8A8
      A8009B9B9B008F8F8F008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A
      8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A008989
      8900898989008989890089898900898989008989890089898900898989008989
      890089898900898989008989890089898900898989008888880097979700B8B8
      B800BEBEBE00BBBBBB00D6D6D600DCDCDC00E7E7E700F5F5F500FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00EEEEEE0087878700292929001818
      180054545400A0A0A000C0C0C000B8B8B800B0B0B000A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A700A6A6A600A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A4A4A400B0B0B000C8C8C800C5C5C500D1D1D100DDDDDD00E2E2
      E200ECECEC00F8F8F80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFF00FAFAFD00D6D8
      F300B2B3E7007E80DB003E47D1001119CA000003CC000002D9000001E5000005
      EB000005EB000004E9000001E7000001E6000001E6000001E6000001E6000001
      E6000001E5000001E5000000E5000002E7000004E9000005EA000003E8000000
      E1000001D4000003CA000D18CA00545AD6008C8EE000BBBDEC00E3E5F700FCFC
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FBF8FB00F4F1F400E7E4E700D4D3D400B3B0
      B300878787005B625C003E4B3F002F4130002A3F2B00243E27001C381E001644
      190012401500134F1900114916000F4814000E501500105418000F4715000C3D
      10000B380E00082B0800061D0500040B0500161A1700444F4700747875005156
      500017221700041705000A260B000F220F0018231800212C2000353835005A57
      5A0084818400CBCACB00F5F4F500FEFEFE000000000000000000000000000000
      00000000000000000000FBFBFB00E7E7E700BDBDBD008D8D8D0091919100BABA
      BA00DADADA00F0F0F000F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00F7F7F700E0E0
      E000A5A5A500AEAEAE00BABABA00B2B2B200BABABA00D3D3D300EFEFEF00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700C4C4C40012121200090909000D0D
      0D0016161600383838006F777E00A7B6C300D4DDE300F5F5F500FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00E1E1E100BCBCBC00BDBDBD00C8C8C800C5C5
      C500C5C5C500DDDDDD00F7F7F700FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFE00E7E9F800BBC0EB00676D
      D6001417C3000002C8000002DA000005EA000008EE000004EA000000E6000000
      E2000000E0000000E0000000E0000000E0000000E0000000E0000000E0000000
      E0000000E0000000E0000000DF000000DF000000DF000000E0000000E3000001
      E6000003E9000006EC000001E5000001D4000002C7003338CE00868AE000C8CA
      F000EAECFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB00E9E8E900D6D5D600C4BFC400AAA6A90070747000364837002545
      27001B511F00125019000F51170010561800125A1900155F1B0018641E001A6C
      23001D6D25001C6D23001C6B23001C6B23001A6A23001763200015601E00115C
      1C000F5318000C44130009340E0003170500060B06001A291D0019221A000E17
      0E000720090005250700062508000B280C00102E0E0013390E00113411001428
      15001A271B003E463E00B0AFB000F5F4F5000000000000000000000000000000
      000000000000FCFCFC00E4E4E400A9A9A90078787800C8C8C800F6F6F600F4F4
      F400EDEDED00E8E8E800E5E5E500E5E5E500E5E5E500E5E5E500E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E8E8E800E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E4E4E400B7B7B70091919100B8B8B800B3B3B300A1A1A100C0C0C000F3F3
      F300FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E6007F7F7F0011111100060606000808
      08000D0D0D00151618002A4D7200589EE4009CCBF300D3DEED00D3DFE900DBE4
      E900E4E7E800E9EAEA00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00ECECEC00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00E9E9E900C0C0C000AFAFAF00C5C5
      C500C4C4C400B3B3B300D4D4D400F6F6F600FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFEFF00F5F6FC00D6D9F4008990DF000213BD000003
      CC000006E7000008EF000004EC000001E6000000E2000000E1000000E1000000
      E1000000E1000000E1000000E1000000E1000000E1000000E1000000E1000000
      E1000000E1000000E1000000E1000000E1000000E1000000E1000000E1000000
      E1000000E0000000E0000000E6000004EB000006EC000003DE000001CA00282B
      C9009096E300E7E9F900F9FAFE00FEFEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00E8E8
      E800CACACA0077797700364737002A4A2B00265A2A001F7327001C7A22001A76
      25001C7527001C7125001D6F25001F712700207228001F74290021752A002275
      2A0024792B00237C2D00227A2C0023792D00237A2D0021772A001C6D24001968
      220013621E000F5C19000C4E1400062C0A00060F070015241900071108000421
      060008310B0009330C00072B0B00062B0B0009310D00103A11001C4E1B002263
      22001E632000164C1900404C4100D6D5D6000000000000000000000000000000
      000000000000E4E4E400A9A9A90090909000EDEDED00F7F7F700E8E8E800E5E5
      E500E5E5E500E5E5E500E5E5E500E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E7E7E700E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900A6A6A600A9A9A900BFBFBF00B5B5B5009F9F9F00B8B8
      B800F9F9F9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F000ABABAB00252525000C0C0C000505
      0500070707000C192500093D8F00025AF600045DF5000D72F5003098F10078C3
      ED00C3E0EB00E3E9EB00EAEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00E9E9E900C0C0C000AAAA
      AA00D6D6D600C2C2C200A9A9A900D2D2D200F6F6F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F1FB00A3ABE5002231C3000001C4000005EA000009
      F0000002E9000000E4000000E2000000E2000000E2000000E2000000E3000000
      E3000000E3000000E3000000E3000000E3000000E3000000E3000000E3000000
      E3000000E3000000E3000000E3000000E2000000E2000000E2000000E2000000
      E2000000E2000000E2000000E2000000E1000000E4000004EA000006ED000003
      DF000509C6002B3BC800CDD0F300FAFAFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8E9E800787F
      7900303F310019411B0018641F0020772700247C2A00237D2B0025812D002885
      31002B8A33002C8D34002E8E38002F933B002E943B002D913A002D8E3C002F94
      390032973A0032933B0031933B002F913A002D8E37002B8D360025802F00247C
      2B001E7227001A6F230016661F000C461300051107000D161000071809000D47
      13000E4F16000E4B15000E4513000C3E13000E3B1300083C1000104D17001B60
      21002270280022762600284D2900B3B3B2000000000000000000000000000000
      0000F1F1F100AFAFAF008E8E8E00DDDDDD00F1F1F100E7E7E700E5E5E500E5E5
      E500E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E8E8E800E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E2E2E20093939300B5B5B500C9C9C900B3B3B300A2A2
      A200B5B5B500F9F9F90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00E9E9E900767676001F1F1F000808
      0800080D1100114F80001381E4000B77F8000561F900045EF7000762F6000F65
      F4001972F4002E8DF1005CB1EF009AD0EE00D1E4ED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00DADADA00BDBD
      BD00BABABA00D6D6D600C0C0C000AEAEAE00D1D1D100F3F3F300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7DAF3007174D6001214C7000408DF00000BEE000004EB000001
      E5000000E4000000E4000000E4000000E4000000E4000000E4000000E4000000
      E4000000E4000000E4000000E4000000E5000000E5000000E5000000E5000000
      E4000000E4000000E4000000E4000000E4000000E4000000E4000000E4000000
      E4000000E3000000E3000000E3000000E3000000E2000000E3000001E6000003
      EA000107EA000506DB00171AC500959CE400EBECFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00F2F2F200EDEDED00EFEFEF00D3D7D4003655
      38000C4B120019692200227C2B00298433002D89370031913D00389B450040A6
      4B003EAC49003DAD4D003DB64F003CBE4E003BBF4C003ABA48003AB4490039B8
      46003EB7490041B4490042B64C0040B54B003BB0470039AC480036A040003397
      39002D9237002A8E3400268A30001B712200061D0800050F0600124216001F82
      29001F802A001C782700196E2200145C1D0015551D000E4415000D4D1500125D
      1C00186B22001B77230026722900B0B9AF000000000000000000000000000000
      0000C6C6C600A2A2A200C6C6C600F2F2F200E8E8E800E5E5E500E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E7E7E700E8E8E800E8E8E800E8E8
      E800E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00E9E9E900BBBBBB00AFAFAF00C5C5C500CBCBCB00B3B3
      B300A1A1A100B2B2B200F9F9F900FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFAFA00DDDDDD008C8C8C007F8185003F4E
      5700246D9C001B8CDF001692F500138FF7001084F7000870F7000360F900035D
      F700025DF7000764F600136DF5002278F3003488F3004EA3F20084C6EE00D3E5
      DD00EAECEB00EDEDED00EDEDED00EDEDED00EEEEEE00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EEEEEE00EAEAEA00CCCC
      CC00ABABAB00E2E2E200D3D3D300BFBFBF00B2B2B200D0D0D000F1F1F1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C1C5EF005E61D4001518D0000006E4000006EC000003E9000001E6000000
      E5000000E5000000E5000000E5000000E5000000E5000000E6000000E6000000
      E6000000E6000000E6000000E6000000E6000000E6000000E6000000E6000000
      E6000000E6000000E6000000E6000000E6000000E5000000E5000000E5000000
      E5000000E5000000E5000000E5000000E4000000E4000000E4000000E4000001
      E5000003E8000005EB000006E2001E20D000666EDB00D2D6F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F3F400C0BEC100AAAAAA00B5B3B400B9B9B800355C
      380016661D0024802D002C8A350032933C00359A400039A2450040AA4C0044B2
      4C003EAE49003BB04C0039B3470038B6450039B746003BB7470039B4460036B3
      420036AF430039B143003AB2450039B1460036AF450035AD420033A93C002E98
      35002B9936002B9936002C9C3700289231000E3F1000081F090026802B0031B3
      3B0031B13D002EA93B00279732001D7728001D71260013561B00115419001560
      1E00186B23001976220026752900B1B8B000000000000000000000000000F2F2
      F200ABABAB00AAAAAA00EEEEEE00EFEFEF00E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E7E7E700E8E8E800E8E8E800E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900EAEAEA00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00EBEBEB00E0E0E000A4A4A400B9B9B900DCDCDC00CACA
      CA00B1B1B1009F9F9F00BFBFBF00F8F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F000BBBBBB00BBBBBB00D3D7DA0082B5
      CC005BB8E80037ACF8001D9BF7001695F7001490F7001087F7000C7DF8000669
      F7000361F800035EF800025DF700025DF6000461F6000D6EEF002987CD005DB5
      8600BEDDCE00E6ECE900EEEEEE00EEEEEE00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EEEEEE00D9D9
      D900B7B7B700D4D4D400E2E2E200D3D3D300BCBCBC00B5B5B500D7D7D700F8F8
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6AC
      E7004D51D400141BD8000009E7000006EC000002E8000000E6000000E6000000
      E6000000E6000000E6000000E6000000E6000000E6000000E7000000E7000000
      E7000000E7000000E7000000E7000003E9000005EA000005EA000005EA000005
      EA000005EA000005EA000001E9000000E7000000E6000000E6000000E6000000
      E6000000E6000000E6000000E6000000E5000000E5000000E5000000E5000000
      E4000001E5000002E8000005EB000008E400161BD300676EDC00CCD0F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00DDDCDC00878588006A6B6A0076767500878A86002F5A
      33001A6E230025842E002C8F3600339B3D0036A1400038A744003EB04A003FB4
      49003BAE45003AB2480038B3440039B245003BB346003EB648003CB748003AB4
      460039B0460038B3460039B5470039B5470038B3470034B0410032AD3C002D9D
      36002B9B34002B9D36002DA339002EA339001A67200016491A0037A73F0040CD
      4D0040CE4F003DC64C0032AD3E0025882F0024802B0017641F00135C1B001765
      1F001B7024001B7A2400266E2900B0B5AF00000000000000000000000000D9D9
      D900A6A6A600BFBFBF00F7F7F700E9E9E900E6E6E600E6E6E600E6E6E600E6E6
      E600E7E7E700E8E8E800E8E8E800E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900EAEAEA00EBEBEB00EBEBEB00EBEBEB00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00A1A1A100B7B7B700E4E4E400DBDB
      DB00C8C8C800B0B0B000A0A0A000D0D0D000F6F6F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8E8E8009D9D9D00E6E6E600F2F4F500ADE1
      F8008CD7FB005ABFFA002FA7F800209EF7001896F700138FF700128EF7000F82
      F7000873F8000568F8000362F800035FF800035DF8000460E6000E76A00031AA
      670061B88900B6DAC900E3EBE800EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E2E2
      E200C6C6C600C3C3C300E9E9E900E1E1E100D1D1D100BCBCBC00BEBEBE00DCDC
      DC00FAFAFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAB0E9004046
      D2000C14D900000AE9000008EE000002E9000000E6000000E7000000E7000000
      E7000000E7000000E8000000E8000000E8000001E8000001E8000001E9000005
      EB000009EE00000DF0000010F100000EF000000CEF00000CEF00000CEF00000C
      EF00000CEF00000BEF00000EF100000DF000000BEF000007EC000003E9000000
      E8000000E8000000E7000000E7000000E7000000E7000000E6000000E6000000
      E6000000E6000000E6000002E8000005ED000007E500191EDB00696FE100C9CD
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4F4F400AAACA90031333100161816001B1F1C0026352700184A
      1E001D74260024842D002A933400309E390033A53D0037AD410039B848003DB8
      4C003EBB4B0041C14C0043C3510045C3540048C456004BC858004CC858004BC5
      5A004CC45A0048C8570046CA570045CA570045C7550040BF4E0039B8470035B3
      420031A73C0031A83B0033AE3D0036B6420031AB3F0035A341004ED15E0057E3
      6A0059E96C0053DF650040BD4E002F9D3A002E9236001C752500176920001A71
      23001E7D27001E842700276A2B00B4B8B400000000000000000000000000BEBE
      BE00AFAFAF00D7D7D700F3F3F300E6E6E600E6E6E600E6E6E600E7E7E700E7E7
      E700E8E8E800E9E9E900E9E9E900E9E9E900E9E9E900EAEAEA00EAEAEA00EAEA
      EA00EBEBEB00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00AEAEAE00C0C0C000E7E7E700E4E4
      E400DADADA00C7C7C700ADADAD00AAAAAA00E0E0E000FAFAFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFBFB00DCDCDC009D9D9D00FBFBFB00F3F3F300C4E4
      F300A7DFFA0081D1FB0050BAF9002DA9F70024A1F7001895F7001390F7001490
      F7000F86F7000B7BF700076FF8000566F9000362F9000566DE0013837D0039B5
      6F002EA8640061B68900B1D7C400E2EBE700EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E9E9
      E900D5D5D500BABABA00EDEDED00E9E9E900E0E0E000D0D0D000BDBDBD00C2C2
      C200E4E4E4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F8FD00BBC0EE003E45D2000B11
      D900000AEA000007ED000002EA000000E7000000E8000000E8000000E8000000
      E8000000E9000000E9000000E9000002E9000006EC00000BEE00000FF000000D
      EE00000CED00000DE8000010E3000B1CE3001425E4001425E4001425E4001425
      E4001425E4001424E4000414E200000DE400000BE900000CED00000CEF000006
      EC000000E9000000E8000000E8000000E8000000E8000000E7000000E7000000
      E7000000E7000000E6000000E6000001E8000006EE000006E9001A20DE00696F
      E200CCD0F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00F6F7F800EFF0F100ECEEEF00E9EA
      EC00E1E1E300D1D0D000787F790014261600010902000205020006130700154F
      1A0024842A002A95330030A33C0038B045003DBA4B0044C552004ECD5B0056D3
      650057DB690059D669005BD86C0060DD6F0064DF720067DE74006ADC730068DC
      710062DE6D0060DA6D005CDB6A0058DC680054DC640053D762004BD05B0044CC
      52003EC44C003FC34C0040C54D0042CA4F0046D2530052D9620062E6760070E7
      820070E6830066DE790050C65E003EB04C0038AE470025822E001E7725001E7B
      2600208528001E8A26002D753400D1DBD200000000000000000000000000B0B0
      B000B6B6B600E7E7E700F1F1F100E6E6E600E7E7E700E7E7E700E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900EAEAEA00EBEBEB00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00BCBCBC00C4C4C400E3E3E300E9E9
      E900E4E4E400DADADA00C8C8C800AAAAAA00C0C0C000E9E9E900FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5F5F500D4D4D400ADADAD0000000000F1F1F100D7E7
      F000B5E2F700A2E0FC0078CEFB0041B5F80032ACF80025A1F8001896F7001390
      F600128EF700118DF7000D82F7000974F800076DF7000D76DA00259C770038B4
      6E0033AF6A00259F5C005CB18500AED4C100E2EBE600EFEFEF00EFEFEF00EFEF
      EF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00E0E0E000B1B1B100F0F0F000ECECEC00E9E9E900E0E0E000D0D0D000BFBF
      BF00C9C9C900F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F8FD00CCCFF300454CD200080FD800000D
      ED000007ED000002E9000000E8000000E9000001E9000001E9000002EA000002
      EA000002EA000002EB000006EC00000DEF000011F0000012EF000116EB00081A
      E5002931E5004043E0005051DA00666DDE007380E2007380E2007380E2007380
      E2007380E2007380E2005C5FDA004B4CDB003538DF001621E5000012ED000011
      F3000006ED000002EA000002EA000002EA000001E9000000E9000000E9000000
      E9000000E8000000E8000000E8000000E7000001E9000007EF000007E900191E
      DD006B71E100DBDEF80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFEFE00FBFBFC00F8F8
      F800F0EFF000E5E3E300DEDBD900D5D2D200B5B5B8009C999C00928E90008782
      8300695C5A00624E450027312500093D120005220800040F0400041105001555
      1C002997320030A53D003CBC480043C9500049CE550054D6600064E673006DEF
      7C0072E67D0073E8820071E77E0071E67F0070E57F0070E57F0076EB830078EB
      870075EF860070ED81006CEA7E006AE87C0067EA79005FEC70005AE46B0050D9
      63004BD2570046CF540045CF550048D35A004FDA640059E46B006BEB7C0074E9
      88006CE3830063DB780056CE65004BC756003EC44E002D96360024912D00228D
      2B00218F2B001E8C2600326A3500D8E1D900000000000000000000000000B0B0
      B000B6B6B600E7E7E700F1F1F100E7E7E700E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900EAEAEA00EAEAEA00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDEDED00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00BFBFBF00BCBCBC00DBDBDB00EBEB
      EB00E9E9E900E5E5E500DBDBDB00C5C5C500ABABAB00CFCFCF00F4F4F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600D5D5D500AEAEAE0000000000F1F1F100E6EB
      ED00BBE3F600B1E5FD009CDDFC0066C6F90040B4F90036AEF9002AA6F7001895
      F500128EF700118DF700128EF700138CF500188BEA00299CCA0052C792003AB5
      70002FAC670029A762001D94530055AA7D00ADD4C000E4EBE800EFEFEF00EFEF
      EF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00DEDEDE00A7A7A700F1F1F100EFEFEF00EDEDED00E9E9E900DFDFDF00CECE
      CE00C3C3C300D3D3D300FBFBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFCFE00D9DBF6006B71DD000105CF000012F100000A
      EF000004EB000002E9000002E9000002EA000002EA000002EA000004EB000004
      EB000006EC00000CEE000013F1000019F100061DEC001A21E3003537D9004B5A
      DA0098A0EA00CDD1F600F3F3FD00000000000000000000000000000000000000
      0000000000000000000000000000E6E8FA00B4BAF000666DE3001C26E0000013
      F0000013F3000004EB000004EB000004EB000002EA000002EA000002EA000002
      EA000001E9000001E9000001E9000000E8000000E8000003EA000007EF000007
      E7001E23DB007C84E400F2F3FC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00F6F6F800ECEBEA00DDDCDB00D0CDCC00C1BC
      BA00A39792007B655A0063453100563827005833210069351B00733719007D3C
      15008F460C009B4A0800211E0700054614000E4915000E3610000A230C001D6A
      24002EA53A003AB6460049CA54004DD55D0053DA650063E574006FF3830077F1
      880082ED8E0080F28A0082EF8D0087EF930088F0960087F1980089F0970080EE
      960085F09D0088F29C008AF79D0089F89D0083F3990077EC8D006AEA7E0061EA
      740059E3690050DB60004DD95E004FDA600053D965005BE56D0063EC75006BEA
      7D0067E57C0062DE760058D36A004DD75E003CC54D0031A33C002A9D3500279A
      3000229A2B001B902600477B4C00DEE4DE00000000000000000000000000B0B0
      B000B6B6B600E6E6E600F0F0F000E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900EBEBEB00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00C8C8C800BFBFBF00D8D8D800EDED
      ED00EBEBEB00E9E9E900E5E5E500D9D9D900C2C2C200B7B7B700DCDCDC00FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600D5D5D500AEAEAE0000000000EFEFEF00EDED
      ED00C2E5F500BAE7FC00BEE9FD0096DAFA0053BFF90043B6F90038B1F9002AA5
      F7001793F500108CF5001490F30026A4E7003FBCBE0058CB8E007BE4AE0054CC
      890030AD690026A25E00229B5900168B4B0049A07100AFD6C300EAEEEC00F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100E0E0E000ADADAD00EFEFEF00F1F1F100EFEFEF00ECECEC00E8E8E800DFDF
      DF00CDCDCD00C6C6C600E9E9E900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E8EAFA009297E7000007CE000015F200000CF0000003
      EC000003EB000004EB000004EB000004EB000004EB000004EB000004EB000006
      EC000010F1000023F400031FEE000E17DF003337D700838CE500E6E8FA000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4E7FA008386EB000007
      E000001EF7000005EC000004EB000004EB000004EB000004EB000004EB000004
      EB000003EB000001EA000001EA000001EA000001E9000001E9000003EB000009
      F0000009E7002527D600B2B7EF00FDFDFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFC00F0F0F100E0DEDF00BFB8B7009C8C7B00876C44007C542B007B49
      210083451900954A0C00A0520200A3550100A75B0300AC600300AF620300B064
      0300B66B0300B56803003222030008400F00176F21001D7125001B5B20002588
      2E0033AB410045C350004ED0610056DA6A005EE071006CEA7D007AF58B008AF1
      95008EF39D008BF495008FF4980092F29B0093F29D0093F39E0092F49E0089F4
      9D0088F8A3008BF5A1008DF8A0008DFB9F008DFB9B008AF7960079EF8C0071EA
      86006AE97C0061E473005AE16C0053DE660053DF68005BE06C005EE56F005DE6
      70005EE271005DDC6F0057D4680045D356003BC0490033AF3E0029A13500269B
      31001E972900198D230060896400E4E8E400000000000000000000000000B0B0
      B000B6B6B600E6E6E600F0F0F000E9E9E900E9E9E900E9E9E900E9E9E900EBEB
      EB00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00E3E3E300B2B2B200BBBBBB00F0F0
      F000EEEEEE00ECECEC00E9E9E900E3E3E300D9D9D900C3C3C300D0D0D000EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600D5D5D500AEAEAE0000000000EFEFEF00EDED
      ED00CEE6F200C4E9F800C8EDFC00B1E6FD0078D1FB004FBBF90043B6F90038B1
      F9002AA6F7001896F60036B2E5004AC5AB0033AD68002199570036B06F0081E8
      B6004AC1810029A260001E9755001A925000128343003B936000AFD9C600F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100E2E2E200B1B1B100DEDEDE00EFEFEF00EFEFEF00EEEEEE00ECECEC00E7E7
      E700DDDDDD00D0D0D000CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B2B9EE001225D2000010EC000015F5000006EC000004
      EB000004EB000005EC000005EC000005EC000005EC000005EC000005ED00001A
      F5000029F800000FE3001925D9007C88E700EAECFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F9FE00A0A2ED00000B
      D900002EF9000005ED000005ED000005EC000005EC000005EC000005EC000005
      EC000004EB000004EB000004EB000004EB000004EB000002EA000001EA000005
      ED000009F0000007E7001A1ED100EEF0FC00FDFEFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFF
      FF00ECEEEE00BABABC008A7B780079523C00834C1E00A4630A00AF650200AF63
      0100AE600200AE600200B2670200B56D0200B56D0300B36C0300B36D0300B36E
      0300B7710300B86F03004B3301000F3E0B001A762400258D3000299033002B9D
      350038AF46004CCB580053D566005BDE6D0064E4740072EC81007DF08C008AF3
      94008CF99F0088F698008DF69B008FF59C008FF49D008FF59E008FF79C008DF8
      9D008FF79D0093F7A00097F8A50098F9A60097F9A40096FAA0008BF8990081F1
      96007AEC8D0075E785006DE47C005DE16B0051E066005CDD6D005CDF6A0059DE
      680058DB6B0059DA6C0055D765003FCE4B003CC2490033B63E0028A9340025A4
      32001C9927001B8220007E9A7F00EBEDEB00000000000000000000000000B2B2
      B200B8B8B800E7E7E700F0F0F000E9E9E900E9E9E900ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDEDED00D3D3D300BDBDBD00BBBB
      BB00C4C4C400E8E8E800ECECEC00E8E8E800E3E3E300D6D6D600CBCBCB00DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600D6D6D600B1B1B10000000000EFEFEF00EDED
      ED00E2EBEE00C4E7F600BEE9FC00C8ECFD00A4DFFB0061C6FB004EBBF90042B6
      F90036AEF9004EC4E50045BEA1002BA666001F9854001C9451001D94530030AB
      690069D9A00044BB7A00239B5900178D4C0013874600137F3F00378B5800AED8
      C500F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100EEEEEE00DEDEDE00BEBEBE00C7C7C700D6D6D600E8E8E800EEEEEE00EBEB
      EB00E7E7E700DDDDDD00D3D3D300EBEBEB00FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CACDF3005A61E100020BE000001EF6000009EE000005EC000005
      EC000005ED000005ED000005ED000006ED000007EE00000BF0000026F700001F
      F300000BDC005059E100B7BCF200F1F2FC00FDFDFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2C7F5004E58E800000F
      E9000022F7000007EE000007EE000007EE000007EE000007ED000006ED000005
      ED000005ED000005EC000005EC000005EC000004EB000004EB000004EB000004
      EB000008EE00000BF0000B0DE2006571E300EEEFFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFFFF00FAFD
      FE00DCDCDD00938786006C463A007335090090480100BB700100CA7E0100CA80
      0100C37D0200BC790300BA7B0300BC800300BB7D0300B97B0300B87B0300B97B
      0300BD7D0300C17D030061420100133A080019712200259030002DA037002CA3
      37003AB247004DCC5B0057D768005FE0700067E6770073EC84007DEE8B0089F4
      94008AFB9E0088F89B008FF79D0090F59D008FF59D008FF69E008FF79C0090F9
      9D0093F79E0097F8A40099F9A8009AF9A9009BF8A8009DFBA60094FCA0008AF6
      9B0084EF950082EB90007BE9870067E6750055E06A005DDC6F005DDC6C0059DA
      670058D8680057D7690052D662003DCC47003FC54B0032B73D0027AC320024A9
      30001A9824001E7B210093A89300F0F1F000000000000000000000000000B4B4
      B400BABABA00E7E7E700F0F0F000EAEAEA00EBEBEB00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00E9E9E900E3E3E300DDDD
      DD00CBCBCB00A9A9A900AAAAAA00D9D9D900E6E6E600E1E1E100D7D7D700DCDC
      DC00F3F3F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600D6D6D600B1B1B10000000000EFEFEF00EFEF
      EF00EDEEEF00C2E5F500B8E6FB00D0EFFE00B9E6FD0085D6FB0059C1F9004CBA
      F90054C6F00049BFA80030A86C001E9855001A935000198F4E00188D4C00198F
      4D0031A9680057CB8E003CB574001C955100118442000D7D3C0011783A003586
      5500ACD6C400E9EEEC00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100EEEEEE00E5E5E500E7E7E700D2D2D200BABABA00C3C3C300DDDD
      DD00EBEBEB00E7E7E700DFDFDF00DCDCDC00FBFBFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F3FC008C8EE600111CDA000019F2000010F2000005ED000007ED000007
      EE000007EE000007EE000007EE000007EF000010F000002DF7000020F300000C
      DC007E82EA00CED1F600F3F5FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4D8F9006D72EB000F22E900002D
      F6000014F4000008EF000008EF000008EF000007EF000007EF000007EF000007
      EF000007EE000007EE000007EE000005ED000005ED000005EC000005EC000005
      EC000006EC00000AEF000210F0001215D600B7BBF200F4F5FD00000000000000
      00000000000000000000000000000000000000000000F9F9F900E6E8E900DDE6
      E900B9B7B80070493D0080340D00A4550200B66F0300C0800300C4890200C68E
      0200C7930300CB970300CF9C0300D29F0300D29C0300D09A0300CE990300CC98
      0300CD970300D29603007F5600001931050013611A001F8428002C9D35002CA0
      36003BB647004DCB5C005BD66B0064E2740069E97A0073EC85007FEF8D0087F7
      98008AFB9D0090F8A00096F4A00094F39F0093F49E0094F59F0093F59F0091F7
      9F0094F9A70096F9AC0095F8AA0096F8A9009AF9AA009FFBAA0099FBA50091F9
      9D008EF59B008DF49A0088F395007AEF880067E4780062DD740062DD74005DD9
      6C005DD66A005AD468004FCF5F003DC9490044C9500030B73C0023A92F001FA8
      2A001794200026742800B0BCB100F6F6F600000000000000000000000000B6B6
      B600BCBCBC00E8E8E800F2F2F200EBEBEB00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00EDEDED00EDEDED00EDEDED00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00ECEC
      EC00E3E3E300CFCFCF00C1C1C100A6A6A600C1C1C100DDDDDD00E1E1E100E0E0
      E000EDEDED000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600D7D7D700B2B2B20000000000F0F0F000EFEF
      EF00EFEFEF00C0E3F300B2E3FA00CEEEFE00C2EBFE00A4E1FD0068CAFA0054C0
      EE004DC2AF0032AB7200209856001B935000198F4E00188D4B00168B49001488
      4700168D4A0030A6650048BF7E0035AE6B00178C49000C7A39000A7434000C6E
      310035835400A8CEBC00E4ECE800F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100E7E7E700DBDBDB00CACACA00BEBE
      BE00C9C9C900E8E8E800E7E7E700DEDEDE00F8F8F800FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BABFF1004952E2000011E700001BF5000009EF000006EE000007EE000007
      EF000008EF000008EF000008EF000010F1000023F4000026F200000DDE007B80
      E900D8DAF800FAFAFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3D7F9007076EE001D36EC00002EF5000021
      F600000BF2000009F0000008F0000008F0000008F0000008F0000008EF000008
      EF000008EF000008EF000007EF000006EE000006EE000006ED000006ED000005
      ED000005ED000008EE00000FF2000006E5005262E500DBDFFA00000000000000
      000000000000000000000000000000000000F8F8F800C5C7C70074797A007881
      89007D7576007C432500A4530300B26E0300BD7E0300C58A0300C9900200CA92
      0100CB910100CB940100CD980100CE990100CE970100CE960100CD940200C990
      0300C88E0300D19203009B6302001D22030009490E0017741D002D9F36002CA5
      37003ABD49004FCC5E005CD86C0062E3720068E7770076EA840080F2940085F7
      98008FF8A00094F7A40092F8A10091F7A20091F7A30093F6A30090F3A2008FF7
      A40094F9A90094F8AA0098F9AA009AF9AB0099F9AC0097F9AC0098FAAE0096F8
      A70092F8A2008EF69C008CF699008CF6960083F18E0071E77E006EE67D0068E2
      79006ADE7A0065DA730051D15F0041CC500046CA54002DBA38001FA92C00149A
      1D0013871A003A793F00CCD1CD00FCFAFC00000000000000000000000000B7B7
      B700BCBCBC00E8E8E800F3F3F300ECECEC00ECECEC00ECECEC00ECECEC00DCDC
      DC00D8D8D800DADADA00DBDBDB00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDC
      DC00DADADA00E4E4E400ECECEC00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EDEDED00E3E3E300C4C4C400ADADAD00B5B5B500D2D2D200E3E3
      E300EBEBEB00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600D7D7D700B2B2B20000000000F1F1F100EFEF
      EF00EFEFEF00D0E6F100B3E2F700B6E7FD00C1EBFD00AAE4F70071D0E4006CD6
      CF0051C68F002BA461001B93500019904E00178D4B00168B4900148847001286
      440010844200138746002DA160003EB573002EA562001281400009713000076C
      2C00046325003E855B00A4C9B700E0EAE600F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100E4E4E400CFCF
      CF00BFBFBF00C2C2C200E2E2E200E5E5E500F3F3F300FDFDFD00000000000000
      000000000000000000000000000000000000000000000000000000000000F3F4
      FC007E82E6001528E100001FF2000012F3000008EF000008EF000008EF000008
      F0000008F0000009F000000FF2000021F5000030F4000D1FE5007378E800DDDF
      F900FAFBFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D3D8F9007077EF001E3BEE000030F5000028F7000010
      F3000009F2000009F2000009F2000009F1000009F1000009F1000009F0000009
      F0000008F0000008F0000008EF000008EF000008EF000007EF000007EE000006
      EE000006EE000007EE00000BF0000013F400111CDF00AEB3F300F3F4FD000000
      000000000000000000000000000000000000E2E0DF005B4F4B00211614002515
      16003F201400793A0700A85C0200B36C0300C1800300CC930100D19D0200D4A1
      0200D5A40100D6A40100D8A80100DAB00100DDB40200DDB30100DCB10100D9AC
      0200D9A80100DEA60100B988020024230200022E05000F5915002B9B35002FAD
      39003CC04C0057CF66005ED96F0064DC74006DE07B007BEB8A007FF2910086F2
      930094F69F0093F89F0091F69B0097F9A1009AFAA5009AF9A6009AF9A10096F8
      A5009DFBA9009EFAAA00A2F9A900A3FAA9009EFCA90098FCA9009EFAA7009CFB
      A80095FAA80091F6A60090F6A4008EF8A1008AF5990081EF90007BE8870074E5
      800078E685006FE47C0053DC610049D8580042CE500026BA33001BA626000A7F
      0E001B741D006B916E00E4E7E500FFFEFF00000000000000000000000000B7B7
      B700BCBCBC00E8E8E800F3F3F300ECECEC00ECECEC00ECECEC00ECECEC00B6B6
      B600A9A9A900ACACAC00ADADAD00AEAEAE00AFAFAF00AFAFAF00ADADAD00ADAD
      AD00ABABAB00CCCCCC00E6E6E600EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00CACACA00A6A6A600B0B0B000D1D1
      D100EAEAEA00F9F9F90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600D7D7D700B3B3B30000000000F1F1F100EFEF
      EF00EFEFEF00E5ECF000B5E1F1008BD9EA0095DCD30075CEB60050BC9E0056C8
      920065D49A0043B87800229A5700188E4C00158B490014894700128645001084
      42000F8140000E7E3E0011824100289C5A0036AD6B00279B59000C7737000569
      280004652500025B200042865F00A2C5B400DFE9E500F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100ECEC
      EC00D5D5D500B6B6B600C0C0C000E2E2E200ECECEC00FBFBFB00000000000000
      000000000000000000000000000000000000000000000000000000000000C1C6
      F2004850E3000019E8000022F600000AF1000008F0000008F0000008F0000008
      F1000008F100000CF2000020F6000030F500112EEB005E65E700E4E6FB00FCFC
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7DCFA00727AF0001D3CEF000034F500002CF8000013F500000B
      F300000AF300000AF200000AF200000AF200000AF200000AF100000AF1000009
      F1000008F1000008F1000008F0000008F0000008F0000007F0000007EF000007
      EF000007EE000007EE000009EF000017F6000008E700616DEB00D3D8F9000000
      000000000000000000000000000000000000E3DDDA0067433600350B03001202
      0000251100007A3F0000B0670300C07C0300CF980100DCB20200E5C10500E8C6
      0600E9C70400EAC80300EACA0400ECCD0400ECCF0500EBCE0500EACC0400E9C8
      0300E8C70200EBCA0300D5AF02003B2D0400071102000B360E002691300036BB
      43003BBD4A0058D1690059D86C0069DD780074E482007AEE8A0081EE8C008AEC
      95008EF39D008FF79E0094F8A40094F8A60093F8A50092F8A30095FBAA0097FA
      A80096FAA30097FBA70099FAAD009BF9B0009BF9B00097F7AA0099F9A8009DFA
      A8009CF9AA009BF9A50098F9A20090F89E0089F899008BF49E0083F2930082EA
      8E007FE78D0071E5800055E3640050DF61003ACC470021B22C00169420000965
      0D002D692E009BAB9C00F1F1F10000000000000000000000000000000000B7B7
      B700BCBCBC00E8E8E800F3F3F300ECECEC00ECECEC00ECECEC00EDEDED00B4B4
      B400A6A6A600A8A8A800A8A8A800AAAAAA00ACACAC00ACACAC00A9A9A900A8A8
      A800A7A7A700CACACA00E6E6E600EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00C9C9C900A6A6A600B5B5
      B500DCDCDC00EAEAEA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600D8D8D800B5B5B50000000000F1F1F100EFEF
      EF00EFEFEF00EFEFEF00C4E4EA007DD1CB0054C28F002DA86300219B5700209B
      560057C58A0060CF94003EB373001E955200148A470012864400108442000F80
      40000E7E3D000D7B3B000C7938000D7D3B002294530032A866001E925000076E
      2E0002622200015E1E0000531B0043835E00A2C3B300E0E9E600F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100ECECEC00D8D8D800B1B1B100C8C8C800E4E4E400F3F3F300FCFCFC000000
      0000000000000000000000000000000000000000000000000000FBFCFE007980
      E6001930E6000020F3000016F5000008F1000008F1000009F1000009F100000A
      F200000AF2000019F5000030F7000B36F000474BE600CFD3F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFC
      FF00DDE1FB00747EF0001736EE00003DF8000030FA000015F600000CF400000C
      F400000CF400000CF300000CF300000CF300000CF300000CF300000BF300000A
      F200000AF200000AF200000AF1000009F1000008F1000008F1000008F0000008
      F0000008F0000007F0000008F000000EF3000015F3001727E400ACB2F300FAFB
      FE0000000000000000000000000000000000E9E4E2008461590053140B00270A
      00003319010080450200BA710300CA8F0300D7A70100E7C50300F2D80800F6DF
      0900F4DF0700F2DA0400F4DA0400F5DC0800F3DB0800F0D80500EFD70400F0D8
      0300F4D90500F8E10800E6CE03006D57040019140300051E0800196F1F0039BB
      480035BC45004DCD5C0053D3620068DD750073E4810078EB88007FEA8C0086E9
      930091F59E0090F69D0093F8A40097F6A70098F5A80098F6A8009BF9A900A0F9
      AA00A0F9AD009EFAB3009DF7B3009BF5B00099F4AA009BF6AB00A4FAB500A2F9
      B400A1F8B100A0FBAE009EFBA90099F9A20096F8A70095F8A60089F39A0088EF
      95007AEB88006AE8790056E365004EDB5E002EC13D001CA727000E7915001963
      1E004D7A5000C1C5C100F9F8F90000000000000000000000000000000000B7B7
      B700BCBCBC00E8E8E800F3F3F300ECECEC00ECECEC00ECECEC00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00C9C9C900AEAE
      AE00B7B7B700D0D0D000FBFBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600D8D8D800B5B5B50000000000F1F1F100EFEF
      EF00EFEFEF00F0F0F000E6EEEA00B0DDC50052BA810020985500178E4B00148A
      47001A914E0052C086005CCC910038AE6C00188F4C00118442000F8140000E7E
      3E000D7B3B000C7938000B7736000A7533000A7736001A8B49002FA562001588
      470003652400005B1C0000551A00004D1800417E5B00A3C3B500E4EAE800F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100EEEEEE00DCDCDC00ABABAB00D8D8D800DADADA00F3F3F3000000
      0000000000000000000000000000000000000000000000000000E4E7FB004B4F
      E1000026EA00002AF700000CF200000AF100000AF100000AF200000AF200000B
      F3000010F4000031F8000033F3002C3EEB009FA8F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFBFF00DCE0
      FC007984F2000E2AED000049F9000034FA000018F700000DF500000DF400000D
      F400000DF400000DF400000DF400000DF400000CF400000CF400000CF400000C
      F300000CF300000CF300000CF200000AF200000AF100000AF1000009F1000009
      F1000008F1000008F1000008EF000009F100001EF8000009E500888BF000E8EA
      FC0000000000000000000000000000000000E8E6E600846B68006A200F006829
      020073390200944F0300BA770300CD950300DAAD0200E8CA0300F3D80500F8DE
      0600F8E30500F6E20300F9DE0300FBE10600F8E00600F5DC0400F4DB0300F4DB
      0300F7DD0500FCE40900F1DE03009C8503002A230400011005000E4C120035B9
      440034BC440048C957004ACB590063DB720071E4800079E884007EEB8C0085EB
      940093F49E0091F69D0094F8A1009BF5A8009EF5AB00A1F7AC00A9FAAD00A6FA
      AF009EF9AF00A4FAB200A9FAB500ABF9B700AAF9B900A9FCBD00AAFDBF00ABFD
      BF00A7FBB600A3FBB1009FFBAC0099FBA4009CF9A90093F8A3008BF49A0087F0
      97006FEC7F0061EA700057E5650045D3540023B83100179D2300106514003569
      390072917600DCE0DC00FEFDFD0000000000000000000000000000000000B7B7
      B700BEBEBE00EAEAEA00F3F3F300ECECEC00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00F0F0F000F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EAEAEA00BFBF
      BF0094949400B0B0B000EDEDED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600D8D8D800B6B6B60000000000F1F1F100EFEF
      EF00F0F0F000F1F1F100F1F1F100E5EEEB00AFDCC7003CAE7000178C4A001186
      44000F804100148847004AB97D005BCB8F0030A76500128643000E7F3E000D7B
      3C000C7A39000B7736000A75340008723100076D2C00066C2B00117C3B002DA6
      62000F7E3C00025C1F000053190000511800004816003B745200A6C7B900ECEF
      EE00F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F2F2F200F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100EDEDED00CACACA00BFBFBF00B7B7B700E6E6E6000000
      0000000000000000000000000000000000000000000000000000A9B0F100313B
      E8000025F1000024F600000AF200000CF200000CF300000CF300000CF400000C
      F4000021F700003AF8000833EC005C62E800F4F6FD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFCFF00DCE0FC007A87
      F2000118EB00005AFD000038FA000019F700000FF600000FF600000FF600000F
      F600000FF500000FF500000DF500000DF500000DF400000DF400000DF400000F
      F4000012F5000013F5000013F5000011F400000DF300000CF200000AF2000009
      F2000009F2000009F1000009F1000008F1000018F600000FEF00525FEE00C4CB
      F70000000000000000000000000000000000EAE9E9008B787800712713008E3C
      02009C4D0200A2550300BA790300CF970300DBAE0200E7C90300F2D40300F6D9
      0300F7E10400F7E20200F9E00300FDE30400F9E10400F6DE0300F5DD0300F5DC
      0200F7DD0400FBE20700F7E20200B69D020038300400050D04000A380C002FAC
      3B0036BE450047C9560046C956005ED96E006EE27C0078E783007DEC8C0086EC
      940092F29C0091F79E0098F8A100A2F7AC00A6F7B100AAF9B300AAFBAF00A0FB
      AC0095F9A8009DFAA900A5FAAF00A9FAB500AFFBBF00B0FEC500ACFEC000AEFE
      BF00A8FCB400A5FAB0009FFAAB0096FCA1009CF9A70091F8A0008DF49A0084EF
      940068EC77005CEA6A0056E466003DCC4A001CB2290011901C00146017004F74
      52008FA19200E8EBE8000000000000000000000000000000000000000000BBBB
      BB00C0C0C000EAEAEA00F3F3F300EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EFEFEF00F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100EFEFEF00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00E1E1
      E100B2B2B2008A8A8A00E1E1E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600D8D8D800B6B6B60000000000F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100E7EFEB00B4DECA00289E5D001284
      43000D7C3D000B7839000F7F3F003DAF71005CCF930027A15E000D7B3C000C7A
      39000B7635000975330008723100076E2D00056827000262230002612200096F
      2F002DA964000C76350002571D00004F1700004C16000043140031664700A9CB
      BE00F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F3F3F300F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100B4B4B400AAAAAA00E2E2E2000000
      00000000000000000000000000000000000000000000000000006C78E7001632
      EC000022F5000018F500000CF300000CF400000DF400000DF400000DF400000D
      F400003FFB00002EF2004451EC00BCC4F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEE2FC007985F3000018
      EC00006FFF00003CFB000018F8000010F7000010F7000010F7000010F7000010
      F700000FF700000FF700000FF600000FF600000FF600000FF6000010F600001C
      F7000037FA000047FC00004AFC000036F9000018F500000DF400000CF300000C
      F300000CF300000BF2000009F2000009F1000012F400001EF6000F2CEA0098A4
      F30000000000000000000000000000000000F1F0F100A3979B00692A1A00A149
      0200B75C0200AA580300B9780300D0990300DBAE0300E4C40200EDCD0200F1D2
      0200F2D80200F5DC0200F8E10300FBE30300F7E00300F4DD0400F4DC0300F5DD
      0200F5DC0300F6DE0300F8E10100CEB50100554A03001A1B02000B2507002085
      260039C4470047CB550046C9560055D1630063D9700072E481007AEC8B0089EC
      94008BEF96008DF79C0099F7A100A6FBAF00AAFCB400A5FCB00092FBA40084FA
      970080FA940084F897008AF89D0092F9A600A1FCB600AEFDC100ADFDBD00AEFB
      B500A3FBAE00A3F9AE009EF9A80092FC9A0097FAA30090F89E008FF39C007DEB
      8D005DE96D0053E8640051E063002EC13D0014AA210009751100236527008092
      8300BDBDBF00F1F1F2000000000000000000000000000000000000000000BBBB
      BB00C0C0C000EAEAEA00F3F3F300EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00F0F0F000F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F0F0
      F000EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDED
      ED00C8C8C80097979700E1E1E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F600D9D9D900B9B9B90000000000F3F3F300F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F0F1F000E6EDEA00AFDAC5002C9A
      5D000F7E3D000A75350009723200107B3C0031A2640055CA8D00219A57000A76
      35000A75330008723100076E2D000568280003632300015E1F00005A1C000159
      1C00086A2A001E9352000C71320002531B000048150000451400054218002F5F
      4300A8CABE00F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F2F2F200F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100D2D2D200B2B2B200E2E2E2000000
      00000000000000000000000000000000000000000000000000003F40DF000237
      EF00002DF8000010F400000DF400000DF400000DF500000DF500000FF500001B
      F7000049FB000139EE006C7CEE00F8F9FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8DCFB007581F3000D30EF000067
      FD000042FC00001CF8000014F8000012F8000011F8000011F8000011F7000011
      F7000010F7000010F7000010F7000010F7000010F7000015F8000035FA00004E
      FB000031F6000014EE000010EC000021F300003FFA000022F800000EF400000D
      F400000DF400000CF400000CF300000CF300000DF2000029F8000214EA007F82
      F000F0F2FD00000000000000000000000000F7F8F800BBB8BB00592F23008E40
      0100AD560100AA5C0300B9760300CC960300DAAA0300E3BD0300E8C70300EACB
      0300EBCF0300EFD40200F4DB0300F7DE0300F6DD0400F4DC0300F3DC0300F4DB
      0100F3D80200F3D90100F4DC0300E7CF03009D8201005F4D0000162302000D4D
      100031C1420043CE540049CC590044C552004CC8580066D6730074E2860083ED
      8E0078EE87007AF28C0082F795007DFB8F0071FC84005CF970004FF8680055F7
      6E0062F97C0071FA8A0077F98E007AF9910083FB99009FFCB200B1FDC100ACFC
      B200A2FBB0009FF9AB0098F9A1008CFA960095F7A40092F69D0089EE990070E8
      810057E766004DE25D0042D253001CB42B000E9018000C5C100050745400C4CC
      C600F5F4F500FDFDFD000000000000000000000000000000000000000000BCBC
      BC00C1C1C100EAEAEA00F3F3F300EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00F0F0F000F0F0F000F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F0F0F000F0F0F000EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00CECECE009F9F9F00E1E1E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700DBDBDB00B9B9B90000000000F3F3F300F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F0F1F000E6EEEA00A0D1
      B90031945C000C773600076E2D00066C2B000E7736002B9859004DC283001B92
      4E000B763300066D2D000569280003642400015F2000005A1D00005619000054
      180001531A0009672A00148442000B6D2F00024F1A0000431300004012000B46
      2000457C6300E6E6E600F2F2F200F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F3F3F300F2F2F200F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100DADADA00B4B4B400E2E2E2000000
      00000000000000000000000000000000000000000000D2D6F8002D34E7000038
      F400002CF800000DF400000EF500000FF500000FF600000FF600000FF700003A
      FB000037F6002D4BEF009EA7F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D4D9FB00727EF4001744F2000062FB00004A
      FD000021F9000017F8000016F8000016F8000016F8000015F8000014F8000014
      F8000014F8000012F8000012F8000011F8000018F900003BFB000043F9000C35
      F3003B59F000969FF500A2A8F7002240ED00042DF4000032F9000020F700000E
      F500000DF500000DF400000DF400000DF400000CF4000025F8000015EF005E67
      F000D0D5FA00000000000000000000000000FBFCFC00CECDCF005D3A36007C31
      06009B430100AC5B0300BB790300C9930300D6A20300DFB60300E7C20300EAC8
      0300ECCC0300EDCF0300F0D40200F3D60200F4D60300F3D60200F3D60200F3D5
      0300F2D60300F2D50300F2D60300F7D90300ECC30100B69701003D4203000A31
      08001F8A2A0042D8530048D1570035C1440038C2460054D0600061D871005BE1
      6E005BED720067F37D0065F37D0054F96E0048FA62003DF853003DF8520046FA
      630057FC75006AFC800071FC860071FC860070FA820080FA9200AAFDBA00ACFD
      B4009FF8AB008EF0990083EF90007EF4920095F6A20093F19D0083EC91005AE9
      6C0051E7610049DC580030C43F0014A9220006630C001F5F21009BA29B00E9E7
      E90000000000000000000000000000000000000000000000000000000000BCBC
      BC00C1C1C100EAEAEA00F3F3F300EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00F0F0F000F0F0
      F000F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F0F0F000F0F0F000EFEFEF00EEEEEE00EEEEEE00EEEE
      EE00CFCFCF00A2A2A200E1E1E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700DBDBDB00BABABA0000000000F3F3F300F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100E1EB
      E70095C9AF00328F5A00086E2F0004662700046526000C6F30002893540043BB
      7800198B4A00086E2E000465240002602000005B1E0000561B00005318000050
      1800004D1700014E1800086329000E77370008662B00014A1800003D11001149
      230056806C00A8A7A500DDDDDB00F0F0F000F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F3F3F300F3F3
      F300F2F2F200F1F1F100F1F1F100F1F1F100DBDBDB00B5B5B500E3E3E3000000
      000000000000000000000000000000000000000000009BA4F1001F32EC000035
      F6000027F800000EF500000FF600000FF6000010F7000010F7000010F7000055
      FD00002EF1006671F100D7DBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D3D8FC00707DF5001D51F500005FFA000052FD000028
      FA00001CF900001BF900001BF900001BF900001AF8000019F8000019F8000019
      F8000018F8000017F8000017F800001CF9000040FC00003DF700193CF2006376
      F300C4CCFA00EAECFD00EFF1FD00B0BBF7002533EF00003EF8000030FA00000F
      F600000EF600000EF500000DF500000DF400000DF400001FF700001BF3004354
      F100B4BBF700000000000000000000000000FEFFFF00E4E3E50079666A006127
      180076280100A7530200B86F0300C28B0300D49E0300DAAC0300DEB80300E2BE
      0300E8C30300EAC70300EDCB0300EECF0300EDD00200EED20300EFD30300EED2
      0300EFD30300F0D50300EFD40300F0D60300F9E50300E1CC03008B7B02001949
      05000C46100032B73E0045D752003CC6480038BE420038C1430034CC430030D4
      420041E755004BF1600044F25A0037F24D0033F249003CF452005CFA740073FA
      8F0072FB8F006EFC870071FB890070FB8A0067FC830053F972006AF5800087FA
      95007EF7920067F37B005EF3740064F37B007CEF8D0089EC94007AEA860045E1
      570040D4500037CB46001CB729000D8216000D490F00576D5800D9DBDA00FCFB
      FC0000000000000000000000000000000000000000000000000000000000BCBC
      BC00C1C1C100EAEAEA00F3F3F300EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EFEFEF00F0F0F000F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F0F0F000F0F0F000EFEFEF00EEEE
      EE00D0D0D000A4A4A400E1E1E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700DBDBDB00BABABA0000000000F3F3F300F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100DDEBE5008EC3A800328A560005672800025F2100015A1E00076026002791
      510032A766001583430005672800005C1E0000571B000053190000501800004D
      1700004A15000047140000491600065D2600096C3100065F270002491A00245B
      38008F9D96006F6C6B0099989500D6D6D400F0F0EF00F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F2F2F200F1F1F100F1F1F100DCDCDC00B8B8B800E4E4E4000000
      000000000000000000000000000000000000000000006C7AEB001439F0000033
      F8000021F8000010F7000010F7000010F7000011F7000012F800001BF800005C
      FD000133EF008691F300F7F8FE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D3DAFC00707FF6001E57F5000061FB000059FD000031FA000020
      F9000020F9000020F900001FF900001FF900001FF900001EF900001EF900001D
      F900001CF900001CF9000026F9000048FC000041F8001A3EF2006978F300CDD3
      FB00000000000000000000000000F9FAFE004A59EF000847F7000036FA000017
      F8000010F700000FF700000EF600000EF500000EF5000019F7000023F7002744
      F00098A3F40000000000000000000000000000000000F0F1F2009D999D004E2C
      2E00531A03009E4E0100AF5E0300B6760300CB960300D6A50300DAAD0300DDB4
      0300E3BD0300E8C60300EAC90300EDD00300EED20300EFD40300F0D60300F0D6
      0300F1D50300F2D50300EFD20300EDD00300F1D80300F1D10200D0A701004161
      030008520400145F19003BCB490047E055003ED14B0024B0300014AD220025CE
      34003EE650003BED4D0040F2540051F4640068F67A0096FAA700C4FED200C2FC
      CE00ADFBBD0079FA94006DFB860072FB89007AFC910063FA7D005CF3740073FA
      8D0070F9870058F870004EF666004BF3630042EA58004CE15C0051E161003CD5
      4C002EC83D0024BB310012991D000A500C0039513900C5CAC600FAFAFA000000
      000000000000000000000000000000000000000000000000000000000000BCBC
      BC00C1C1C100EAEAEA00F3F3F300EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EFEFEF00F0F0F000F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F0F0F000EFEF
      EF00D0D0D000A5A5A500E1E1E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700DBDBDB00BBBBBB0000000000F3F3F300F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F2F2
      F200F3F3F300DBEBE40088BEA1002E834E00025B1F00004F1800004B17000255
      1C00248C4E00269B5900117B3B00035F220000541A0000511900004E1800004B
      1600004715000044140000411200004214000456230007642C00186B39005887
      6E00ACABAB005D5B5B005F5E5C00ACACAA00E0E0DF00F1F1F100F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F3F3F300F2F2F200F1F1F100DDDDDD00B9B9B900E4E4E4000000
      000000000000000000000000000000000000000000004F61E9000D46F3000032
      F900001CF8000011F7000012F7000012F7000013F7000015F8000033FA000056
      FC00194AF0009EAAF60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D7DDFC007281F6001D57F6000065FB000060FE000039FB000027F9000027
      F9000027F9000026F9000025F9000025F9000025F9000024F9000022F9000022
      F9000023F900002CFA000050FC00004CFA00193FF3006A79F400CAD0FB000000
      0000000000000000000000000000000000007587F3001A4CF6000037F9000023
      F9000010F700000FF700000FF600000FF600000FF6000014F700002EF9000D34
      F0007E8BF30000000000000000000000000000000000F7F9F900BABCBE004D3B
      4400431A0E0093480300B05F0300B06B0300C38A0300D5A10300D9A70300DBAC
      0300DFB80300E5C40300EBCB0300F2D40300F2D30300F2D30300F2D30300F3D3
      0300F4D40300F1D20300EECE0300EBCB0300E8CB0300ECCC0300E8BD02008576
      02001567050008440B00299B360046E2580042E052001DA828000A9B170021C9
      300039E54A0056F0670084F89500AEFBBD00C5FDD200DEFEE800EEFFF300E2FE
      E800DEFEE600A7FDBD007FFE99006FFD8A0066FB810067FB7F007BFB8F0099FD
      AD007FFD97005BFA77004DF86A0049F363003BEB500025DA35002DD93E0031CB
      410023C1300016A92100086B0D00193B1A0092939200EFEFEF00000000000000
      000000000000000000000000000000000000000000000000000000000000BEBE
      BE00C3C3C300EBEBEB00F3F3F300EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EFEFEF00F0F0F000F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F0F0
      F000D1D1D100A6A6A600E2E2E200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700DCDCDC00BCBCBC0000000000F3F3F300F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F2F2F200F4F4
      F400F4F4F400F4F4F400D8E9E20086BA9D0027754300004D1700004614000044
      130001501A00208749001E904E000D73340002581E00004E1700004B16000049
      15000045140000411200003E1100003A1000003C12000C5A2A0046906900A5BC
      B200B6B6B7007A7A7B006060600093939400BAB9B900DBDAD900EFEFEF00F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F2F2F200DEDEDE00B9B9B900E4E4E4000000
      000000000000000000000000000000000000000000003746E7000750F6000033
      F9000018F8000013F7000015F8000016F8000017F8000019F800004AFC00004D
      FA003F65F300B8C0F80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFCFF00DDE2
      FD007485F7001751F600006FFC000066FE000040FC00002EFA00002EFA00002E
      FA00002EFA00002DFA00002DFA00002DFA00002CF900002AF9000028F900002A
      F9000034FA000055FD00005BFB00163BF4006879F500CDD3FB00000000000000
      000000000000000000000000000000000000A3AFF7002E4EF500003AF9000030
      FA000012F7000012F7000011F7000010F700000FF7000011F7000038FB000028
      F1007177F20000000000000000000000000000000000FBFCFC00CCCED000574E
      590040211E00813C0700B4640300B0680300BC7F0300D29D0300D8A60300DAAB
      0300DEB70300E4C30300ECCC0300F0CE0300ECC50300EBC40300ECC50300EFC9
      0300F2D00300EFCF0300EECD0300EBCB0300E5C70300E8C90300ECC50300B08F
      02002E6B0500074607001B7526003DCD4E003EDC4F001DAC2800089313001BC1
      290043E7530083F59000B0FCBF00C8FFD600D0FFDC00D1FFDB00CDFFD400C2FE
      CB00C5FCCE009CFAB00076FA8F0061F97B004FF6680056F76C007AF88C009DF8
      AB007FFA96005DFB780051FA6D004DF5670041EC570029DD3A0021D3310025BF
      33001AAF26000F901900094E0C003C4D3D00C4C0C400F9F8F900000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C5C5C500EBEBEB00F3F3F300EEEEEE00EEEEEE00EEEEEE00EEEEEE00D4D4
      D400CCCCCC00CECECE00CFCFCF00D0D0D000D0D0D000D0D0D000D0D0D000D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D1D1D100D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000CFCF
      CF00CFCFCF00CECECE00E6E6E600EFEFEF00F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D3D3D300A8A8A800E3E3E300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700DCDCDC00BCBCBC0000000000F3F3F300F1F1
      F100F1F1F100F1F1F100EBEBEB00E0E0E000D7D7D700D8D8D800DADADA00DADA
      DA00DBDBDB00DBDBDB00DBDBDB00BFD0C9006FA287000F5A2900004614000040
      1300003D110000491800197F41001A8A49000A6D2F0001511A00004915000045
      140000421300003D1100003A100000370F00033B14002D67470089B09E00DADA
      DA00D3D3D400ACACAE008B8B8D009E9E9F0093929100ADACAA00DADAD800F1F1
      F100F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E0E0E000BABABA00E4E4E4000000
      000000000000000000000000000000000000000000001D1DE4000057F8000036
      FA000018F8000017F8000019F800001AF800001CF800001EF8000058FD000043
      F8005976F400C9D0FA0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFBFF00DCE2FC00798A
      F7000E41F500007FFD00006CFF000045FD000035FB000035FB000035FB000035
      FB000035FB000035FB000035FB000034FB000033FA000031FA000033FA00003D
      FB000057FC00006EFC001032F3006376F600D3D8FC0000000000000000000000
      000000000000000000000000000000000000C2CBFA003B51F500003EF900003B
      FB000016F8000016F8000014F8000012F7000011F7000010F700003EFC000026
      F1007171F20000000000000000000000000000000000FEFEFE00E1E1E3007C7C
      85004E4146005B290F00B5690200B46B0300B16C0300CA930300D5A50300D8AB
      0300DCB00300E2BE0300E8C60300DEB00300D5980300D69A0300DAA30300E2B2
      0300E9C20300E8C60300ECCB0300EDD00300E9CA0300E7C70300E8C70300D8B9
      02006B730200124D04000C471000269031002DB53B0021B62E00088D100010A9
      190055E86400B5F9BD00B5F7C20093F3A1007EF28D006CF17C005FF46E005AF1
      690059EB66004BEA5C0045ED57003DEC50002DE940002EE942004FE460006BE3
      780060EA720053F269004EF566004AF1620048E65B004EE761001EC22C000F9E
      1A000B7A14000D5A1300284129008D918D00E8E8E900FEFEFE00000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C5C5C500EBEBEB00F3F3F300EEEEEE00EEEEEE00EEEEEE00EEEEEE008686
      860068686800696969006A6A6A006C6C6C006D6D6D006F6F6F006F6F6F007070
      7000707070007070700072727200737373007373730073737300737373007373
      7300737373007373730073737300737373007373730073737300727272007070
      700070707000707070006F6F6F006F6F6F006F6F6F006E6E6E006C6C6C006B6B
      6B006969690068686800C6C6C600EAEAEA00F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D3D3D300A8A8A800E3E3E300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700DCDCDC00BCBCBC0000000000F3F3F300F1F1
      F100F1F1F100F1F1F100DADADA00ACACAC008B8B8B008C8C8C008E8E8E008E8E
      8E0090909000909090009090900091919100848F8A00547E680010582800003F
      1200003A100000380F000043140014753B001888470007652A00014A17000043
      130000401100003B100000380F00023812001B5935007EA59300E5E5E500E7E7
      E700E7E7E800B4B4B7009E9E9F00A7A7A700A6A5A50098969600AFAEAE00E1E1
      E100F2F2F200F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E0E0E000BABABA00E4E4E4000000
      000000000000000000000000000000000000000000001D1DE4000061F800003B
      FA00001AF800001CF800001EF800001FF9000020F9000022F9000070FE000030
      F3007E8CF600E2E5FC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFCFF00DCE2FC007A8FF700012E
      F3000090FE000071FF00004AFD00003DFC00003DFC00003DFC00003DFC00003D
      FC00003DFC00003DFC00003BFC00003AFB00003AFB00003BFB000044FC00005F
      FD000178FD000A24F3005C73F600DDE2FD000000000000000000000000000000
      000000000000000000000000000000000000CED4FB004153F5000042F9000043
      FC00001AF8000019F8000017F8000015F8000013F8000011F700003FFC000028
      F2006E6FF300FAFBFF0000000000000000000000000000000000F3F4F400C5CA
      CC008A8C8F004130230096540200C4840300AE670300B87A0300C68C0300CB90
      0300CC8F0300D79D0300D5980300C26F0300BE680300C67C0300CD8A0300D69A
      0300DEA80300DBA90300DFAC0300EBC60300EECC0300EBC70300E3BD0300E4BD
      0300C6B50100435201000A2F03000C3E0E0017641E0024AA320014A31F000A88
      10002DBE390055D65F003CC4460020B6270014B11A0010B314000CBC13000CC1
      10000CC110000DCF150015DE220019E1260016DC230015D5240021CC2F0027C7
      35001DBF2C001EC02D0020BF300024BB320033CA41004DD85B00129017000558
      07001133120033413400888D8900E2E2E200FDFDFD0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2C2
      C200C6C6C600EBEBEB00F3F3F300EEEEEE00EEEEEE00EEEEEE00EEEEEE00F0F0
      F000F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D3D3D300A8A8A800E3E3E300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700DDDDDD00BEBEBE0000000000F3F3F300F1F1
      F100F1F1F100F1F1F100F1F1F100F2F2F200F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400E1ECE7008CC2A800024C
      1B00003A100000350E0000310D00003D12000E6B320018884700055F25000040
      1300003C110000380F0000340E000F542D008CAF9E00E7E7E500DEDDDA00D9D7
      D500D5D5D5007575750089898900A5A5A500AAAAAA00A6A6A600A1A0A000B3B2
      B200E1E1E200F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E0E0E000BABABA00E4E4E4000000
      000000000000000000000000000000000000000000001D1DE6000065F900003F
      FB00001EF9000020F9000022F9000023F9000026F900002AF9000076FE000033
      F4007E8EF600E2E6FC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEE3FD00798CF700002EF50000AA
      FF000074FF00004DFD000044FC000044FC000044FC000044FC000044FC000044
      FC000042FC000042FC000042FC000042FC000042FC00004BFD00006DFE00007F
      FD000926F400556DF500ECEEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000DADFFC004656F5000049F900004D
      FC00001EF900001DF900001BF8000019F8000017F8000015F800003AFB00002B
      F5005461F300D4DAFB0000000000000000000000000000000000FDFDFD00F7F8
      F800CACBCC005F5E5E004B310D00BF890200C07F0300A04F03009B410300A147
      0300B05D0300BE6F0300BE690300C16C0300D79B0400E4B90400E6BD0300E0AF
      0200DBA10100DCA50300D2920300D69B0300E0B00300E0AE0300D5970300D08C
      0300D79F0300B4940100364202000A350200094009001A661E0022AC2C000A84
      110007650B000C6A0E00066B08000271030001760100007A0200007501000078
      0100028A030003970600069F0B0007A10C00069E0C0005960A000A920F000E93
      1400068C0C00047E080004720700076D0B00109A1A0012921800074208002536
      2500686D68009E9F9E00E0E0E000FCFCFC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2C2
      C200C6C6C600EBEBEB00F3F3F300EEEEEE00EEEEEE00EEEEEE00F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D4D4D400AAAAAA00E3E3E300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700DDDDDD00BEBEBE0000000000F3F3F300F1F1
      F100F1F1F100F1F1F100F2F2F200F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F2F3F300E0EBE6008CBE
      A800104F250000340F00002F0D00002E0D00023B14000A602B00137E41000459
      2200003A100000350E000E542C008DAD9C00D3D6D400D0CECC00C6C4C100B7B4
      B200727070006B696900D0D0D000CDCDCD00B0B0B0009C9C9C007E7E7E005358
      6C004E609600ABB8DD00F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E0E0E000BABABA00E4E4E4000000
      000000000000000000000000000000000000000000001D1DE7000069F9000044
      FB000023F9000026F9000029F9000029FA00002BFA00002EFA00007BFE000037
      F5007E8FF700E2E6FC0000000000000000000000000000000000000000000000
      0000000000000000000000000000D8DEFC007588F8000D49F600009CFE00007B
      FF000053FD00004AFD000049FD000049FD000049FD000049FD000049FD000049
      FD000049FD000049FD000049FD000049FC000053FD000076FE000075FC001039
      F6005D73F800EBEEFE00FDFDFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FBFCFF00545AF400004BF8000058
      FC000023F9000022F9000020F900001EF900001CF900001AF800003EFC00002F
      F7005462F500D4DAFC0000000000000000000000000000000000000000000000
      0000F7F7F800C7C7C8004D423A0079440500C68402008A2C0300710C0300801E
      0300AC560300C5820200DAA60300ECD00800F2E01100F4E60F00F4E60C00F0DA
      0800E2B70300DAA00100D1920300D8A10300E2B20300E0AC0300D2920300C67F
      0200B55E0300B957030092460300361E02000E0E0200091406000B370E000356
      07000141020000350200013C03000343020003400200012E0200001800000015
      000000190100011E01000120020001200200011E0100001C0100011A02000223
      03000148020002650300036D04000169050002570500062907002E362E008E8D
      8E00D6D5D600F1F1F100FCFCFC00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2C2
      C200C6C6C600EBEBEB00F3F3F300EEEEEE00EEEEEE00F0F0F000F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D4D4D400AAAAAA00E3E3E300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700DEDEDE00C0C0C00000000000F3F3F300F1F1
      F100F1F1F100F3F3F300F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F2F3F300E1EB
      E70084B39C001B522E0000300E00002A0C00002B0D0002371300085726000D76
      390002541E00135B340088A59600BAC0BD00AFAFAE00A9A7A600AFADAC009898
      97006B6A6A00ADACAC00E3E1E100D7D7D70098989800878787007F7F80004C52
      6F0014267900303A8900A9B5DB00EBEDF100F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E0E0E000BCBCBC00E5E5E5000000
      000000000000000000000000000000000000000000001D1DE900006EF900004A
      FC000029FA00002CFA00002FFA000032FB000034FB000037FB000081FF00003A
      F6007E90F800E2E6FD0000000000000000000000000000000000000000000000
      00000000000000000000D4DAFD007286F800175DF8000092FD000080FF000057
      FE000051FE00004FFE00004FFE00004FFE00004FFE00004FFE00004FFE00004F
      FE00004FFE00004FFE00004EFE000059FE00007FFF000072FC001649F8006279
      F800DEE3FD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2E6FD004A58F6000050FA00005A
      FD000029FA000028FA000024F9000022F9000020F900001EF9000044FC000033
      F7005464F600D4DAFC0000000000000000000000000000000000000000000000
      000000000000F4F4F400AAABAA004B3A27009154030091390200671002006B16
      0100A6580200E0BE0800EACE0900E0B50600D9A30500D8A20400D7A00500D699
      0500D8950200D2880100C5780300D7A40300E2B50300DEAB0300D08F0200CB86
      0200C67B0200B2520300872103005B0B0100410B07002B1D1D00363B38001E44
      2000095C0C00056E0C000432070002130300010C0100010B0100000E02000214
      0400041C05000629080008320A0009320C000B2C0F000A250E0004170700000C
      01000016000001420200024F0400073F0800142814003C3E3C00ACADAC00E9E9
      E900FBFBFB000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2C2
      C200C6C6C600EBEBEB00F3F3F300EFEFEF00F0F0F000F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D5D5D500ABABAB00E3E3E300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700DEDEDE00C1C1C10000000000F3F3F300F1F1
      F100F2F2F200F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400D9E7E2007EAA940022533500002B0D0000260B0000260B00013212000D58
      2B004A8E6800829F9000C1C7C400B7B7B700969696009C9C9B00B6B5B500AEAE
      AE00A1A1A100C0C0C000D2D1D0009695950084848400A4A4A5009FA3AD00525B
      8800030D6A00050B650031398500B8C0DA00EBECF100F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E0E0E000BEBEBE00E6E6E6000000
      000000000000000000000000000000000000000000001D1DEA000072FA00004F
      FC00002FFB000032FB000035FB000038FC00003AFC00003EFC000088FF00003D
      F6007E91F800E2E6FD0000000000000000000000000000000000000000000000
      000000000000D3DAFC007086F9001D6AF900008CFD000088FF000060FE000053
      FE000054FE000056FE000056FE000056FE000056FE000056FE000056FE000056
      FE000054FE000054FE00005EFF000085FF000070FC001954F800677EF900D3D9
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D1D8FC00425AF8000052FB00005B
      FD000032FB00002FFB00002CFA000029FA000024F9000022F900004FFD000034
      F600676FF600F1F3FE0000000000000000000000000000000000000000000000
      000000000000FEFEFE00E1E2E2006D6F6F0043301A0080380300791B02007010
      02007B280200AA650600B65B0400C2500200D05B0200D65A0100D4560100D056
      0100D8750100E0840300D77C0300D4900300D8960300D4880300C0610200A74A
      0200B86301008D4202003A110400281412004539390093909000C9C9CA009CA5
      9E004D78500026592A0008190900030D040005160500072F09000C5512001474
      1A001C88210023992A002AA8340031B03E003BB64C0035B04E0017852800044A
      0900011D02000217030010201000383E38007E7E7E00CECECE00F5F5F500FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C3C3
      C300C8C8C800ECECEC00F3F3F300EFEFEF00F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D5D5D500ACACAC00E3E3E300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700DEDEDE00C2C2C20000000000F3F3F300F2F2
      F200F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400D4E5DE007CA290002551370000270C00042C13001B452E005474
      610096AFA300D1D4D300E0E0E000C4C4C4008D8D8D0090909000BEBEBE00BEBE
      BE00BDBDBD00BEBEBE008E8E8D0067676700A1A0A000CECECE00959EBB002C3B
      84000006630000045D00000358004D579C00D1D3E200F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E0E0E000BFBFBF00E6E6E6000000
      000000000000000000000000000000000000000000001D27EB000074FA000058
      FD000039FC00003AFC00003DFC00003EFC000040FC000044FC000080FF000053
      FA006385F900D0D7FC0000000000000000000000000000000000000000000000
      0000D3DBFC007087F9001E71F900008BFD00008DFF000067FE00005AFE00005A
      FF00005AFF00005BFF00005BFF00005BFF00005BFF00005BFF00005BFF00005B
      FF00005AFF000065FF00008DFF000077FC001A5AF9006981F900CDD5FD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C5CFFC003D5EF9000057FC00005D
      FE000038FC000035FB000033FB000030FB00002BFA000029FA000057FD000036
      F6007175F6000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F8F900C1C4C60052535200441F0B006E1E01007319
      0200580D030069190200A3250200D4490200D54A0300D13D0200CB3A0200C142
      0200BA520300C05C0300C3590300BF640300D4730300DA6F0300C94F0300A825
      0300912C02003A1601001D151200545757008D919100D9DADA00F8F8F900EAEB
      EA00C3CAC400797579001627170006370B000C511300187720002B9F2E0038AB
      30003BA63200359E310036A037003BA7410045B7540047CD61002CCF42000EA1
      18000463090009360C002D3C2E00877D8600D6D3D600FAFAFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C3C3
      C300C9C9C900EDEDED00F3F3F300F0F0F000F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D5D5D500ADADAD00E4E4E400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700DEDEDE00C2C2C20000000000F3F3F300F3F3
      F300F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400D1E2DC0086A294004C675600425A4C0059726900959D
      9D00C7C7C700EEEEEE00EBEBEB00B7B7B7007B7B7B0088888800BDBDBD00C1C1
      C100BEBEBE00AFAFAF005C5C5B007D7C7B00C1BFBF00BDC2CE00606CA1000614
      71000006620000045B0000015400060D6400BFC1D400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E0E0E000BFBFBF00E6E6E6000000
      000000000000000000000000000000000000000000002E44EF000472FB000060
      FD000045FC000040FC000043FC000045FC000047FC000049FC000075FF00006D
      FE004477F900BBC5FB000000000000000000000000000000000000000000D7DE
      FD007289F9001D70FA000090FD000093FF00006DFF00005EFE00005FFE00005F
      FF000060FF000060FF000060FF000060FF000060FF000060FF000060FF000061
      FF000069FF000091FF000082FD00195CF9006A83FA00CAD3FD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACBAFB003265FA00005EFD00005D
      FE00003FFC00003CFB00003AFB000036FB000032FA000035FB00005DFD00003C
      F700717AF7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EAECEC00828689003C2C2900541D07005916
      0100420502005C0601009A180200B33D0300A43602009A280300952703008C2F
      030081330200833702008A3603008A3E0300A64E0300B7510300BF430300A320
      0200681402001A0C09003F40410090949400C2C6C700F2F3F30000000000FCFB
      FC00DFD9DF00818382001C491F000F5E170016751E002090260030A82E0039A9
      2D00399B2E002F8B27002B8428002C852E00338F3D0038A64A0029BE3A0014B0
      1F000B8D1400106B160030693400858F8400DDD8DD00FCFAFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C4C4
      C400CACACA00EDEDED00F4F4F400F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D6D6D600AFAFAF00E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700DEDEDE00C2C2C20000000000F4F4F400F3F3
      F300F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400E3E8E600BDC3C20090909700757584008F8F
      9D00C9C9CD00E3E3E400DCDCDD00A4A4A4008E8E8E00A5A5A500BEBEBE00B7B7
      B700A3A3A300858585006D6C6B00AAA8A700BDBDC0007782A90023307F000007
      650000056000000359000001530000035300BEBED000F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E0E0E000C0C0C000E7E7E7000000
      000000000000000000000000000000000000000000004A64F2000C6CFC000066
      FE000051FD000046FC000048FC00004AFC00004CFD00004FFD00006EFF000086
      FF002669F800A7B4FB00000000000000000000000000FBFCFF00DDE3FD00748C
      F9001768F9000098FD000098FF000074FF000063FF000064FF000064FF000064
      FF000066FF000066FF000066FF000066FF000066FF000066FF000068FF000071
      FF000093FF000092FE001656FA006882FA00CDD5FD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C93FA001D69FB000068FE00005B
      FE000045FC000043FC000041FC00003CFC000039FB000042FC00005FFE000849
      F800798AF8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00D6D7D80078797A00443B3700301F
      1B002C0B0900610B020078120200461203002E10010034130200391502003B18
      02003C1E01003E210100381F02002D1501003812030053190300822803007A26
      0300371C13003F3C3D00AAABAC00E1E2E200F2F3F300FCFDFD00FFFEFE00EEE9
      EE00A0A4A100448A4A001F862400218B2500248F2600258F2200248D1F00238D
      1F00228C22001D871F00167A19001470180015641A00135E19000F6915001483
      1C00199E23001EB6280021AD2A0038863C0096999600E8E2E800FDFCFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7C7
      C700CBCBCB00EDEDED00F5F5F500F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D6D6D600AFAFAF00E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700DEDEDE00C2C2C20000000000F5F5F500F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E5E5E900ACACBC0062627F006D6D
      86009E9EA800B4B4B900C7C7C800C5C5C500D5D5D500DCDCDC00BFBFBF009090
      90006F6F6F005D5C5C0097959500B0B0B2008E95AB0037428800000968000005
      600000045C000002560000015200040B6100BFC0D400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E0E0E000C0C0C000E7E7E7000000
      000000000000000000000000000000000000000000006176F4001163FA00006C
      FE00005CFE00004CFD00004EFD000050FD000052FE000055FE000064FF0000A1
      FF000157F7008699FA00F7F8FF0000000000FAFBFF00DCE2FD00798FF9000E58
      F90000A7FD00009BFF000077FF000068FF000069FF00006AFF00006AFF00006A
      FF00006AFF00006AFF00006BFF00006CFF00006CFF00006EFF000079FF000094
      FF0000A8FE00104DFB00637FFA00D3DAFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFDFF004664F900066DFC000074FF000059
      FE00004BFD000048FC000045FC000043FC000041FC00004FFD00005AFE001F5B
      F90090A3F9000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFC00E4E5E600C5C7C9009A9C
      9E004C4B4C0030212100210C05002C1601004B2B020075440200884C0200934D
      02009F5B0200A76902008F640100553201002E12020021090200200B0400372A
      240077787700CCCDCE00F4F4F400FDFDFD000000000000000000F7F3F600B8B0
      B600408042002DB335002899270027952500299E28002DAC310034B63E0038BF
      45003BC747003AC6470038BC470036B6460032AF4100279D33001A811F001572
      18001D801D002BA832002EBF390027BF3300387D3C00A098A000F1EAF000FFFE
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7C7
      C700CBCBCB00EDEDED00F5F5F500F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D6D6D600AFAFAF00E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700DEDEDE00C3C3C30000000000F5F5F500F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400E7E7EA00BDBDC9008484
      95008F8F950093939900BEBEC000CDCDCD00D1D1D100CECECE00A4A4A4006262
      62007171710083808000969495008F94A60032418A00020F7100000766000004
      600000035A00000154000001500024308100C7CADC00F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E0E0E000C0C0C000E7E7E7000000
      000000000000000000000000000000000000000000008D9CF7001C59F8000074
      FD000069FE000050FD000053FE000055FE000057FE000059FE00005BFE0000A6
      FF00005AF9005F79F900CED6FD00F6F8FF00D9E0FD007A93FA000142F90000BC
      FE00009EFF000078FF00006CFF00006DFF00006EFF00006EFF000070FF000070
      FF000070FF000070FF000070FF000070FF000071FF00007CFF00009BFF0001B2
      FF000A40FB005C7BFA00DDE4FE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E9EDFF003349F9000079FC00007CFE000055
      FE000051FE00004EFD00004BFD000048FC000045FC00005FFE000053FD003C69
      FA00ADB9FB000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FAFBFB00EEEF
      F000CACDD0008185880046331800995D0200AE7502009C7203008E6904007C53
      03006B390200733903008D4703009F490300923603007428020046271200716B
      6C00C4C4C600F7F7F700000000000000000000000000FAFAFA00C9CCC9004873
      48002EB42F002FAA300032B5360035C23D0034C43D002EC237002BBD32002ABA
      32002BBD32002CC034002CC136002DC137002EC0370030C2380038C741003FC2
      49002FA434002E93290033972D0039B33D0032B93C00426B4500C0B7C000F8F5
      F800000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C8C8
      C800CCCCCC00EDEDED00F5F5F500F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D7D7D700B1B1B100E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F8F800E0E0E000C3C3C30000000000F5F5F500F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F1F1F100D9D9
      DB0064647B0063637F009D9DAC00C5C5C900CFCFCF00A4A4A4007B7B7B00A2A2
      A200CCCCCC00A7A7A70099A2AC0026378600020F7200000A6D0000096A000007
      640000035B000001530000045400BCC0D600EDEEF100F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E0E0E000C0C0C000E7E7E7000000
      00000000000000000000000000000000000000000000C5CDFB002A4DF700007C
      FC000079FE000057FE000059FE00005BFE00005DFE00005FFF000061FF00008F
      FF000090FF000D62F9006883F900B0BFFC005C7AF9000046FA0000D4FF0000A2
      FF000079FF000071FF000072FF000073FF000075FF000075FF000075FF000075
      FF000077FF000077FF000077FF000077FF000081FF0000A6FF0000B6FE000945
      FC005573FA00ECEFFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5B6FC002363FD00007CFE000073FE000057
      FE000055FE000053FE000051FE00004EFD00004AFD00006DFF000047FB005674
      FA00C7D0FC000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFE00F8F8F900E3E4
      E700AAA8A8006D5134008D5406007F4F0200693D0200693503006C3404006E33
      0200652A0300501C030043190300491E0300642903007E3D0200965804006D3D
      1F0071656800D7D7DA00FCFCFC0000000000FDFCFD00DFDFDE006A886A002D9E
      2F002FB5310032BC370027BB300020B32A001FB1290022B52B002BBE310035C4
      3C003CC945003CC5460039C5450037C4430034C13E002DBB370027B72F002BBA
      330039C446004BC7520050C552004EC04C0044C94E002BB93600476F4A00D3D4
      D300FBFAFB000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C8C8
      C800CCCCCC00EDEDED00F5F5F500F1F1F100F1F1F100F1F1F100F1F1F1008686
      8600686868006B6B6B006C6C6C006F6F6F007171710073737300737373007373
      73007373730073737300737373007272720070707000707070006E6E6E006B6B
      6B0069696900D3D3D300F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D7D7D700B1B1B100E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F8F800E1E1E100C6C6C60000000000F5F5F500F4F4
      F400F4F4F400F4F4F400DDDDDD00AFAFAF008C8C8C008E8E8E008F8F8F009292
      9200929292009393930093939300939393009393930093939300939393009393
      930092929200909090008E8E8E008D8D8D00A3A3A300D1D1D100F4F4F400EDED
      EF00BDBDCA00595977007474880095959C00AAAAAA00BDBDBD00D9D9D900ECEC
      EC00CCCED1007485A9002033840005127300000E7600000E7700000C71000007
      6700000257000A0C5A005765AE00DFE1EA00F3F3F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E0E0E000C1C1C100E7E7E7000000
      00000000000000000000000000000000000000000000F9FAFF003741F3000078
      FA000084FF00005EFF00005DFF00005FFF000061FF000063FF000066FF000071
      FF0000A5FF000194FE000B64FD001359FC000A79FD0000C2FE0000A7FF00007E
      FF000077FF000076FF000077FF000078FF000079FF000079FF00007BFF00007B
      FF00007BFF00007BFF00007CFF000088FF0000AFFF0000ACFE00105CFC005D7E
      FB00EBEFFE00FDFDFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002D58F900047AFD000085FF00006EFF00005B
      FF000059FE000057FE000055FE000053FE000050FE00007EFF00003DFA007885
      FB00EAEDFE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F2F400C7C9CB009C97
      9400674D33007B460500844902007E470300864503008E470200904A0200914E
      0300924F0300904B0300864403007A3D03007239030076430300895F03009866
      0200623D1E0089878B00E5E7EA00FDFDFE00EEEBEF00B0B5B100439647002CB3
      330029B4310022B629001BB0250020B3280025B82C002CC0340039C843004AD2
      550057D563005AD5660056D4630051D25E0048CD55003DC6490031BD3A0027B5
      2F0029B633003AC6480044CE52004DD156004ECF580031CC4000279C2D0093A2
      9300E6E3E6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C8C8
      C800CCCCCC00EDEDED00F5F5F500F1F1F100F1F1F100F1F1F100F1F1F100D7D7
      D700CFCFCF00D0D0D000D0D0D000D1D1D100D2D2D200D2D2D200D2D2D200D2D2
      D200D2D2D200D2D2D200D2D2D200D2D2D200D1D1D100D1D1D100D1D1D100D0D0
      D000D0D0D000EAEAEA00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D8D8D800B3B3B300E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F8F800E1E1E100C6C6C60000000000F5F5F500F4F4
      F400F4F4F400F4F4F400EEEEEE00E3E3E300DADADA00DBDBDB00DBDBDB00DCDC
      DC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDC
      DC00DCDCDC00DCDCDC00DBDBDB00DBDBDB00E0E0E000EBEBEB00F4F4F400F3F3
      F300EAEAED00C9C9CF009D9DA7008484920091919E00B9B9C000D6D6D600B7BD
      C9004D639E0018267D0004127700001681000016840000138000000C71000005
      5E000D1261004D5AA100D3D7E700F0F1F200F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E0E0E000C1C1C100E7E7E7000000
      00000000000000000000000000000000000000000000000000006173F7001173
      FC000083FF000071FF000062FF000065FF000067FF000069FF00006CFF00006F
      FF00007FFF00009CFF0000AFFF0000B1FE0000ADFF0000A1FF000082FF00007C
      FF00007BFF00007CFF00007DFF00007EFF00007EFF00007FFF00007FFF000081
      FF000081FF000081FF00008EFF0000B7FF0000A6FE00166EFC006287FC00DEE4
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F8FF00B1C1FD001552FB000094FE000082FF000067FF000061
      FF00005EFF00005DFF00005BFE000057FE000064FF00007BFF000C51FA0092A3
      FC00FBFCFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFEFF00DFE1E4008C867C006B58
      3C0072470D008A4C0200843F03007F37030082370300873C03008A4103008D46
      03008E4603008D4503008A4203008A4203008E480300925303009D6F0300AB8A
      02009B6706005F4B3D00C2C7CC00F4F7F900DEDFDE00849B860039A9400020A8
      290028AE2E0021B729001EB2260024B82C002ABE320034C73D0045D051005FDA
      6B0074E07F0078E1840070DE7E0067DB770059D569004BCE57003AC248002FBD
      39002AB7330030BC3C0035C042003CC547004FD25A0047CD50001EB026005D88
      5F00D2D7D200FFFEFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C9C9
      C900CDCDCD00EEEEEE00F5F5F500F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D8D8D800B3B3B300E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F8F800E1E1E100C7C7C70000000000F5F5F500F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F0F0F000C5C5CD009494A3008B8D9F00838DAA00606EA1003843
      8A000E207D0000198600011E9000001F9300001C8F0000117B0000076300070C
      610039438D00C3C8DF00F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E0E0E000C3C3C300E8E8E8000000
      00000000000000000000000000000000000000000000000000009AAAF9002A6B
      FA000082FD000089FF000068FF00006AFF00006CFF00006EFF000070FF000072
      FF000075FF000084FF000093FF000097FF000091FF000085FF00007EFF00007F
      FF000080FF000080FF000082FF000084FF000085FF000085FF000085FF000086
      FF000086FF000093FF0000C3FF0000B4FF001983FD00678DFC00D3DCFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9EEFE003566FA000680FD000096FF00007AFF000068FF000066
      FF000064FF000062FF00005FFF00005DFF00007AFF000063FE004174FB00B9C6
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9FAFB00CBCACB0075664F006042
      1600804C050089470200813603007D2F03007F340300863D03008C450300914D
      0300924E03008E49030088420300893F03008F43030098500300A6700300B293
      0300B8830100643B1D00A3A2A600E9EBED00D8DED800729A750033AB3B00199D
      22002CB0310022B82B0020B5290027BB2F002EC237003ACB44004DD459006ADE
      770081E58D0085E592007BE28B0071DF820060D973004FD15E003DC34C0032BE
      3D002CB834002FB93A0031BA3D0035BF400048D0530053D0590023B72C004484
      4800C0C8C000F6F1F500FDFCFD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C9C9
      C900CDCDCD00EEEEEE00F5F5F500F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D9D9D900B4B4B400E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F8F800E1E1E100C7C7C70000000000F5F5F500F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400E5E5E900ACB3CA00636D9E002E3B8400132884000420
      8D000424910002289C000229A0000022980000158000000865000A116600414B
      9100AAB0D000F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E2E2E200C5C5C500E9E9E9000000
      0000000000000000000000000000000000000000000000000000D6DDFC004465
      F800007AFB000099FF000072FF00006EFF000071FF000073FF000076FF000077
      FF000079FF00007BFF00007DFF00007FFF000080FF000082FF000083FF000084
      FF000085FF000086FF000088FF00008AFF00008AFF00008BFF00008CFF00008C
      FF000097FF0000C5FF0000BFFF001A92FE006999FD00CDD8FE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEF3FE009FBAFD000153FC0000A9FF00008CFF000075FF00006DFF00006B
      FF000069FF000066FF000064FF000065FF00008FFF000048FB007B94FC00E0E6
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000A9A2940075552C006F40
      0500864701007F370300742503007D2F03008C4503009D5B0300A6690300AE76
      0300AF780300A86C030099570300894203007F320300853903009C5E0300B289
      0300BD9002008E4A0E0079626100CAC7CB00CADCCD0069AD6D0029A02F001695
      1B0036BC3B0025B92C0023B92C002BC0350033C63D0040CE4B0052D6600072E1
      81008BE6980090E79E0087E596007CE28D0067DC7E0053D3670041C7510033BC
      41002BB6350030B73B0033BA3E0033BF3D0038C83F0056D65B0038C24200348C
      39009FAC9F00DACFDA00F7F5F700000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBCB
      CB00CECECE00EEEEEE00F5F5F500F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D9D9D900B5B5B500E8E8E800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F8F800E1E1E100C7C7C70000000000F5F5F500F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400D3DAE9007C88BC002631850002137900072C
      9C00093CAC000530A4000220910000157D000008630013196B004D579800A9B0
      D100F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E3E3E300C5C5C500E9E9E9000000
      0000000000000000000000000000000000000000000000000000F8FAFE006C7F
      F9001073FB000098FF00008AFF000073FF000077FF000079FF00007BFF00007C
      FF00007EFF000080FF000083FF000084FF000085FF000088FF000089FF00008A
      FF00008BFF00008CFF00008EFF00008FFF000090FF000090FF000093FF00009C
      FF0000C6FF0000C7FF001998FE006A9FFD00CAD7FE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F8
      FF00BFD0FE003B75FC000090FF0000ABFF000083FF000075FF000073FF000071
      FF00006EFF00006BFF00006BFF000079FF00008CFF001752FA00A8B6FC00F8F9
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFEFF00E2E2E000907C560081471100823B
      0100803E03007B33030078290300893F03009F5F0300B27B0300BD8B0300CA9B
      0300CC9D0300C28C0300AC71030097540300863C0300843A0300904D03009B6A
      0300AB7C0300B173050072403000897E870087A7950050B159001B9721001EA4
      250037BF420027BD2E0025BE2D0028BF31002CBF350035C23F0049D05E0077E4
      88009EEBA900AAF3B600A2F2B20096EEA90080E4980069DB7E0053D2620040C6
      4C002FB73B002DB537002EB839002EBC390029BA2D0041CF450041CF4F002895
      2E007B9A7C00BAB9BA00F1F0F100000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD00CFCFCF00EEEEEE00F5F5F500F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D9D9D900B5B5B500E8E8E800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F8F800E1E1E100C8C8C80000000000F5F5F500F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400D2D8E8007C86B900232F8400051C
      8100072D910005228800010C6C0001065D00222670006069A400B6BDD900F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E3E3E300C5C5C500E9E9E9000000
      000000000000000000000000000000000000000000000000000000000000ACBB
      FB003A72FB000083FE0000A9FF00007CFF00007BFF00007DFF00007FFF000082
      FF000083FF000086FF000088FF00008AFF00008AFF00008CFF00008EFF00008F
      FF000091FF000092FF000093FF000095FF000096FF000098FF0000A3FF0000C9
      FF0000D3FF001797FE00689FFD00CDDAFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8FAFF00CAD9
      FE006396FE000073FD0000C3FF000094FF00007FFF00007AFF000078FF000075
      FF000073FF000070FF000074FF000099FF00006AFE005482FC00CED8FD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFCFC00D4D1CA0079512B007B3003008839
      01008E4D0300813A03007E3003008B3D0300A4610300B9810300C6940300D5AA
      0300DCBC0300D4AD0300BF8A0300A6660300914803008A3E03008C4303009457
      03008B500300B78302007A421200473D3C00365E48002D9C3A0022AC2B0027B6
      2D0035BC3D001FB2270014A31E0017A6240022B22F003CC9480061DA730093E8
      9A00ABF0B400AAF5BE00A5F8BE009FF7B90091EEA80079E18C0060DA72004DCF
      5D0040C64C003CC744003AC3420035B7410026B02F0028B42C0036CD4100229A
      2A00608E62009EAA9E00EBEDEB00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD00CFCFCF00EEEEEE00F5F5F500F1F1F100F1F1F100F1F1F100EFEFEF00EBEB
      EB00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EEEEEE00F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D9D9D900B5B5B500E8E8E800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F8F800E2E2E200CACACA0000000000F5F5F500F4F4
      F400F4F4F400F4F4F400F2F2F200EFEFEF00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00CED3E3007C84B5002428
      72000E126100070B5B001A1E65002E3479007E88B600CED2E200EEEEEE00EEEE
      EE00EFEFEF00F1F1F100F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E3E3E300C5C5C500E9E9E9000000
      000000000000000000000000000000000000000000000000000000000000EFF2
      FE007181FA000A6DFB0000B3FF000091FF000080FF000082FF000084FF000087
      FF000089FF00008BFF00008DFF00008FFF000090FF000092FF000093FF000096
      FF000097FF000098FF00009AFF00009BFF00009EFF0000A9FF0002C7FF0000E6
      FF001194FF00649BFD00D3DFFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFEFF00D6E4FF006FA2
      FD000073FD0000BCFF0000AAFF000088FF000081FF000080FF00007CFF00007A
      FF000077FF000078FF000083FF0000A8FF00094FFC00A1B7FD00EEF2FE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F8F700C5BDB50075402000833D0000954E
      010097520300762D03006A15030082320300AC6C0300C7940300D4AB0300E2C5
      0200EFD90300EBD30300D1A90300B9810300A76603009C580300965303009D5F
      03007F380300945803007D3F03002A1809000C2E11001B8A240035C33D002DC0
      320025AC2D000E8F1500149E1E0023B8310032C841004AD65B006BDE820093ED
      A000A1F7AD0098F8B30097F9B80096F7B4008DEFA5007CE6920065D9790051CD
      630044C953003DC3490039B9430037B1400038C63E0026AE2A0028BA30001A8A
      2100466E4800858D8500E6E7E600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD00D0D0D000EEEEEE00F5F5F500F1F1F100F1F1F100F1F1F100E9E9E900D2D2
      D200CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00D0D0D000D0D0D000D0D0
      D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0
      D000CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CECECE00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00E1E1E100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D9D9D900B5B5B500E8E8E800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F900E4E4E400CACACA0000000000F5F5F500F4F4
      F400F4F4F400F4F4F400EAEAEA00DADADA00D5D5D500D5D5D500D6D6D600D6D6
      D600D6D6D600D6D6D600D7D7D700D8D8D800D8D8D800D8D8D800D8D8D800D8D8
      D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8
      D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800CECFD400A3A9
      C2004A579500313D83007A86B100C4C6CF00D6D6D600D6D6D600D6D6D600D5D5
      D500D9D9D900E6E6E600F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E3E3E300C5C5C500E9E9E9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A9B8FC00387BFC000090FE0000B8FF000089FF000089FF00008BFF00008D
      FF00008FFF000091FF000093FF000095FF000095FF000097FF00009BFF00009D
      FF00009DFF00009FFF0000A0FF0000A1FF0001ACFF0003C9FF0007E8FF000A8F
      FF005E97FD00DDE8FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFDFF00E5EEFF0081B1FE001088
      FE0000B8FF0000C0FF00008BFF000089FF000087FF000084FF000082FF000080
      FF00007DFF000083FF00009CFF000080FF003874FB00D4E0FE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F000A0969600612D1900894E02009C5F
      0200884603005B1203006610030093470300BD820300D6AB0200E3C20200EED8
      0200F5E00200E9D20300D2A90300BC850300AB6E0300A26203009D5E0300A86D
      0300904E03007F3703007A390000281200000622060016811E003CC9440028B6
      300013981B00109818001AA9250024BC31002FC83F0045D35A0062DC7E0081EC
      A10093F8B00087FAA7007CF59E007CF19B0082EB9A0078E6900065D6790056CF
      660048CF57003EC84A0036C0410031BB3B0039CB420027B42F0021B027001A81
      1D004E7250008C948D00E7E9E700000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD00D0D0D000EEEEEE00F5F5F500F1F1F100F1F1F100F1F1F100DDDDDD00A1A1
      A100919191009292920093939300959595009696960098989800989898009898
      98009A9A9A009B9B9B009B9B9B009B9B9B009C9C9C009D9D9D009D9D9D009D9D
      9D009D9D9D009D9D9D009D9D9D009D9D9D009D9D9D009D9D9D009D9D9D009D9D
      9D009B9B9B009B9B9B009B9B9B009B9B9B009999990098989800989898009797
      97009595950095959500959595009393930092929200C7C7C700F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100DADADA00B8B8B800E8E8E800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F900E4E4E400CACACA0000000000F5F5F500F4F4
      F400F4F4F400F4F4F400DADADA00B4B4B400A9A9A900A9A9A900ACACAC00ACAC
      AC00ACACAC00ADADAD00ADADAD00ADADAD00AEAEAE00B0B0B000B0B0B000B0B0
      B000B0B0B000B1B1B100B1B1B100B1B1B100B1B1B100B1B1B100B1B1B100B1B1
      B100B1B1B100B1B1B100B1B1B100B1B1B100B0B0B000B0B0B000B0B0B000B0B0
      B000B0B0B000ADADAD00ADADAD00ADADAD00ACACAC00ACACAC00ABABAB00A9A9
      A900B1B1B100D2D2D200F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E3E3E300C7C7C700EAEAEA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEF1FE007D96FB000067FA0000CBFF0000A2FF00008DFF00008FFF000091
      FF000093FF000095FF000098FF00009BFF00009DFF00009FFF0000A1FF0000A1
      FF0000A3FF0000A3FF0000A4FF0000A9FF0005C8FF000CE8FF000993FF00578D
      FD00ECF2FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEECFF005C95FE000081FE0000C5
      FF0000D1FF000099FF000091FF00008FFF00008DFF00008AFF000087FF000084
      FF000086FF000097FF0000AEFF000042FC00A9C1FE00F1F5FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F100A09598005C291A00824702008D51
      02006E2B03005A0903006B10030093460300BE840300D8B00200E6C90200F5E1
      0200F4DD0200E0BE0300CE9F0300BC840300AD6F0300A46503009F5E0300A365
      0300975B03007B3202007030000023100000031E05001175190037C23E001AA1
      2100119C1B0012A11E0012A11F001EB92B002BC63C0043CE5B005ED97A006CE6
      92007CF0A2007DF69E006BEF8C0069E9890075E4910074E18A0065D8760058D4
      680049CF57003FC84A0039C2440033BE42003BCD45002AB830001FAC23001C7E
      200061846400A0A8A100EBEDEB00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD00D0D0D000EEEEEE00F5F5F500F1F1F100F1F1F100F1F1F100EFEFEF00E8E8
      E800E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700ECECEC00F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100DADADA00B8B8B800E8E8E800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F900E4E4E400CBCBCB0000000000F5F5F500F4F4
      F400F4F4F400F4F4F400F1F1F100EDEDED00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00EDEDED00F0F0F000F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E3E3E300C7C7C700EAEAEA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFF00BBC8FD00467BFC000081FE0000DBFF00009AFF000096FF000098
      FF00009AFF00009DFF00009FFF0000A1FF0000A2FF0000A3FF0000A5FF0000A6
      FF0000A7FF0000A9FF0000ABFF0000BEFF0001D4FF000ABFFF003F88FD00ECF2
      FF00FDFEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BCD5FF004891FF000A98FF0000C9FF0000D1
      FF0000A6FF00009AFF000095FF000093FF000091FF00008FFF00008DFF00008A
      FF000098FF0000AEFF000A86FF005C8FFD00E6EEFF00FDFEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F400ADA3A6005D2A1D00793C02008041
      0200621D03005A0803006B100300964A0300C1890300D6AF0200E2C50200F0DA
      0300EDD30200D7AE0300CB970300BC840300AD710300A56703009F5F0300A060
      0300995E03007C3101006B2D04002D180F001127140015721D0030BA3700139A
      1A00119F1D00119E1E00109E1C0021BA2F0032C945004CD2670064DD810068E5
      8C006CEA920070F0940060E783005EE27F006CE0880072E0860065DA750057D5
      680048CF560040C949003AC3440035BE45003ECE47002AB92F001DA822001E79
      23006F8D7100AEB4AF00EEEFEE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD00D0D0D000EEEEEE00F5F5F500F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100DADADA00B9B9B900E8E8E800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F900E4E4E400CBCBCB0000000000F5F5F500F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E3E3E300C9C9C900EBEBEB000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F4FF009CB5FD000E66FC0000B5FF0000CCFF0000A0FF00009D
      FF00009FFF0000A1FF0000A3FF0000A5FF0000A7FF0000A9FF0000ABFF0000AC
      FF0000ADFF0000AFFF0000B0FF0002C7FF0002D7FF0014B7FF006EA4FE00FEFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFF00E8F0FF006EA9FF003090FF000CB5FF0000D2FF0000C9FF0000AE
      FF0000A3FF00009FFF00009DFF00009AFF000096FF000094FF000091FF00009D
      FF0000ADFF00019DFF001B75FD00D1E0FF00FAFCFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9FA00C4BBC0005C2B23006F290000762C
      01005C140300560703006B180300AA680300CEA00300D7B20300DBB70300DEBC
      0200DAB60300C9960300C58D0300B97F0300AC710300A56903009F620300A15F
      03009B6103007C2F0100662C0F00553B3E00444E48002C79320024AD2B0013A0
      1B000F9F1A000E97180018A8240036C548004FD565006DE2890080EA9F0075E8
      91005AE27C0056E37E004EDC730050D96F0060DD77006FE1810063DB730054D2
      640048D1530040CA46003AC3400037BF410040D0480028B82E00189F1F002570
      290085988600C3C2C200F3F2F200000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CE00D1D1D100EFEFEF00F5F5F500F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100DADADA00B9B9B900E8E8E800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F900E5E5E500CDCDCD0000000000F5F5F500F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E3E3E300C9C9C900EBEBEB000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DBE4FE00729CFD000072FD0000DDFF0000C2FF0000A9
      FF0000A4FF0000A7FF0000A9FF0000ABFF0000ADFF0000AEFF0000B0FF0000B1
      FF0000B3FF0000B3FF0000B4FF0001C5FF000BDFFF001ED1FF00388BFF00DFED
      FF00FCFDFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8FBFF00D7E8
      FF0088BBFF004B97FF0017A5FF0004C9FF0000D5FF0000C9FF0000B5FF0000A8
      FF0000A6FF0000A4FF0000A2FF00009FFF00009CFF00009AFF0000A1FF0000B4
      FF0000A9FF001C81FE008FB7FE00FAFBFF00FEFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFDFD00D3D0D2005C393300651E05006E1D
      01005C1003005A0B030090430300D6AE0200EAD20300E6C90300DCB70300C795
      0300B97E0300B4740300BE860300B47A0300AB6F0300A56803009C5C03009A5A
      03009C65030073290100582D210094838B00999D9E0056885800169B1C0014B0
      1F000E9C170011A61E0032C5410065E1780088EF9A00B0F9BB00B9FACB008BEF
      AC0051DA73003BD35B0035D053003BD056004FD5660065DC7A005AD96A004FD7
      5C0049D44F003BBE410035B43C0038BC400041D44A0025B62C00118216003666
      3900A9ADA900E2DBE100F9F8F900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFCF
      CF00D2D2D200EFEFEF00F5F5F500F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100DBDBDB00BBBBBB00EAEAEA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F900E5E5E500CECECE0000000000F5F5F500F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E4E4E400CBCBCB00ECECEC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8FAFF00CAD8FF004D86FD000191FE0000DCFF0000C5
      FF0000B0FF0000ACFF0000AEFF0000B0FF0000B1FF0000B2FF0000B4FF0000B5
      FF0000B8FF0000B9FF0000B9FF0000C0FF000DDAFF0023EFFF0022B8FF005CA2
      FF009AC5FF00CEE4FF00F3F9FF00000000000000000000000000000000000000
      0000000000000000000000000000EEF6FF00D0E6FF00A3CEFF0077B8FF0056B1
      FF0023B4FF0007BFFF0001D3FF0000D9FF0000C8FF0000B6FF0000AFFF0000AD
      FF0000ABFF0000A8FF0000A5FF0000A3FF0000A1FF0000A5FF0000B9FF0000B4
      FF001A97FF006FA4FF00E6EFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E6007B6F7000431E1A004006
      01005C070200781F0300C0810300F2E20400FAF00400F2DB0300DCB60300AD6B
      0300904103009B530300B47A0300AD720300A9710300A2670300935103009A5D
      03009A5D0200511905004E3A3A00C1BDBF00D8D9DA0083938400186E1B000BAA
      170011AA1E0020BE320058E06C009FF6A700C5FDC700E3FFE500E1FEE8009CF4
      B50044D2610026C13F0022BD39002CC2410047D35B005EE06C0055DC60004DD8
      570045D24A0032B438002FAE37003EC3460042D649001DA62300115C14005F74
      6000CFD1D000FBF9FB00FEFEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0D0
      D000D3D3D300EFEFEF00F5F5F500F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100DCDCDC00BDBDBD00EBEBEB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F900E5E5E500CECECE0000000000F5F5F500F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E5E5E500CCCCCC00ECECEC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F6FF00B7CDFE003677FE0006B0FF0002DA
      FF0001CBFF0000B7FF0000B3FF0000B5FF0000B7FF0000B8FF0000B9FF0000BB
      FF0000BDFF0000BEFF0000BFFF0000C0FF0006CDFF0018E9FF002CF3FF002DAF
      FF003DB5FF0060BAFF0082BDFF0095C5FF009ECDFF00A4CFFF00A4CFFF00A4CF
      FF00A4D0FF009CCCFF0091C3FF007CC1FF0060C2FF0037BBFF0016B5FF000DBF
      FF0005DAFF0007E7FF0001DAFF0000C3FF0000B8FF0000B5FF0000B3FF0000B2
      FF0000B0FF0000AEFF0000ABFF0000A9FF0000ABFF0000BCFF0000B9FF00119D
      FF0059A3FF00CDE1FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F8F800B9BBBB0046424200230E
      0E00490D0300984C0200E4BE0500FCF11300F7EB0F00E0BF0400BE8901007F31
      03006A170300954E0300B07B0300A76D03009E650300945903008A4B0300A672
      03007E3E0100341F1700817D7F00DFDEDF00F8F6F800C9C6C800355A35000876
      0D0015BC23003EDA520088F1A000C4FCD000E1FFE600F5FFF700E8FEEE008CF1
      A2002CC2400015AC230017B2250025BE330044D3530055DE60004DD9570048D8
      4F0039C4410028A230002EA6360049CE500036CA41000E701100274D2700B2B4
      B200F1F0F1000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D2D2
      D200D5D5D500EFEFEF00F5F5F500F1F1F100F1F1F100F1F1F100EDEDED00E3E3
      E300E0E0E000E0E0E000E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1
      E100E1E1E100E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E1E1
      E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E0E0E000E0E0
      E000DDDDDD00D5D5D500F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100DCDCDC00BDBDBD00EBEBEB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F900E5E5E500CECECE0000000000F5F5F500F4F4
      F400F4F4F400F4F4F400EFEFEF00E8E8E800E6E6E600E6E6E600E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E6E6E600E0E0E000E6E6E600EFEFEF00F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E5E5E500CCCCCC00ECECEC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F8FF00A5C1FE002C7EFE0009BA
      FF0006DCFF0003D1FF0000BEFF0000BAFF0000BCFF0000BDFF0000BEFF0000C1
      FF0000C2FF0000C3FF0000C4FF0000C6FF0000C7FF0006CFFF001FEFFF0044F3
      FF002AE2FF0023BFFF002BA5FF0033A8FF0039B4FF003EB8FF003CB8FF003AB8
      FF0038B9FF002DB3FF0023A5FF001AB1FF0011C9FF000EDEFF0012E9FF0014EB
      FF0007E2FF0000C8FF0000C1FF0000BEFF0000BDFF0000BAFF0000B8FF0000B6
      FF0000B4FF0000B2FF0000B0FF0000B5FF0000C4FF0000C4FF0010A3FF0050A1
      FF00B5D5FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00E5E6E600959899005B5C
      5D00321E1A007D3B0200E1C30500F7E50D00D3B00800966302006D350100470F
      0300601903009C610300A57103009D6403008C500300844903008A5003009262
      020036230A00524E5000D2D2D300FAFAFA00FFFEFF00EAE7E9007E817E001846
      19000DA115004AE46000ABF9BF00DBFEE500EAFFEF00EAFEEE00C2F7CE0056D8
      680010A01B000999140017AF23002AC1350048D551004CDA560044D64D003DD2
      47002EB3370031A738003FB845004DD854001F942700113E130063706300E1E1
      E100FEFDFE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D2D2
      D200D5D5D500EFEFEF00F5F5F500F1F1F100F1F1F100F1F1F100E6E6E600C6C6
      C600BDBDBD00BFBFBF00C0C0C000C0C0C000C0C0C000C2C2C200C2C2C200C2C2
      C200C2C2C200C4C4C400C5C5C500C5C5C500C5C5C500C5C5C500C6C6C600C6C6
      C600C6C6C600C7C7C700C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8
      C800C6C6C600C6C6C600C6C6C600C5C5C500C5C5C500C5C5C500C4C4C400C3C3
      C300C3C3C300C2C2C200C2C2C200C0C0C000C0C0C000C0C0C000BFBFBF00BDBD
      BD00B4B4B4009F9F9F00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100DCDCDC00BDBDBD00EBEBEB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F900E5E5E500CECECE0000000000F5F5F500F4F4
      F400F4F4F400F4F4F400E6E6E600D0D0D000C9C9C900CACACA00CCCCCC00CCCC
      CC00CCCCCC00CDCDCD00CECECE00CECECE00CFCFCF00CFCFCF00D1D1D100D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D2D2D200D2D2D200D2D2
      D200D2D2D200D2D2D200D2D2D200D2D2D200D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D1D1D100D1D1D100CFCFCF00CECECE00CECECE00CECECE00CDCD
      CD00CCCCCC00CCCCCC00CCCCCC00CACACA00B9B9B900C9C9C900E6E6E600F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E5E5E500CCCCCC00ECECEC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008AB2FD002A84
      FF0011BFFF000AE3FF0005D7FF0002C5FF0000C0FF0000C2FF0000C4FF0000C6
      FF0000C7FF0000C8FF0000CAFF0000CBFF0000CCFF0000CCFF0000CFFF0000D8
      FF0025F2FF0047F5FF0064F5FF005EF8FF004CFBFF0044FCFF0040FBFF003BFB
      FF0036FBFF0038FBFF0046F6FF003BF5FF0025F5FF0010ECFF0002D8FF0000C9
      FF0000C7FF0000C6FF0000C5FF0000C3FF0000C1FF0000BFFF0000BDFF0000BB
      FF0000B9FF0000B7FF0000BCFF0000CFFF0000D3FF000DA5FF004EA5FF00B7D7
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9FAFA00E4E5E500AEB0
      B100424242003D200800B57A0200E2AA030094590200462002002B0B0200360A
      030076360300A46F03009F6C03009D6703009159030087500300764401004225
      01002A251F00B1B0B100F6F6F6000000000000000000FAF9FA00C5C3C5003744
      37000A660F0034D348009FFAB700E2FFED00EAFEF200C4FAD20076E5880020AB
      2A00037E070007900F001EB4270030C8380043D64B0042D74C003AD1440033C7
      3C00259B2B0040B946004CD154003EC447000F4D1300213A2300B7BDB800F8F8
      F800000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D4D4
      D400D5D5D500F0F0F000F7F7F700F1F1F100F1F1F100F1F1F100E7E7E700CBCB
      CB00C5C5C500C6C6C600C6C6C600C6C6C600C7C7C700C7C7C700C7C7C700C7C7
      C700C9C9C900CACACA00CACACA00CACACA00CACACA00CBCBCB00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CBCBCB00CACACA00CACACA00CACACA00CACA
      CA00CACACA00C7C7C700C7C7C700C7C7C700C6C6C600C6C6C600C6C6C600C5C5
      C500BBBBBB00A8A8A800F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100DCDCDC00BEBEBE00EDEDED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00E7E7E700CECECE0000000000F6F6F600F4F4
      F400F4F4F400F4F4F400E8E8E800D4D4D400CFCFCF00D1D1D100D1D1D100D1D1
      D100D2D2D200D2D2D200D2D2D200D3D3D300D5D5D500D5D5D500D5D5D500D5D5
      D500D5D5D500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D5D5
      D500D5D5D500D5D5D500D5D5D500D5D5D500D3D3D300D2D2D200D2D2D200D2D2
      D200D2D2D200D1D1D100D1D1D100D1D1D100C1C1C100CFCFCF00E8E8E800F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400E4E4E400CDCDCD00EDEDED000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008BB5
      FE002F8CFF0017BDFF0016EFFF000CE4FF0004CBFF0000C7FF0000C8FF0000CB
      FF0000CDFF0000CEFF0000D0FF0000D1FF0000D2FF0000D2FF0000D3FF0000D3
      FF0000D4FF0000D4FF0000D4FF0004DEFF000AEAFF000DEEFF000CEDFF000BEB
      FF000AEBFF000AE9FF0002D8FF0000D3FF0000D2FF0000D1FF0000D0FF0000CF
      FF0000CDFF0000CBFF0000CBFF0000C9FF0000C7FF0000C4FF0000C2FF0000C1
      FF0000C0FF0000C4FF0000DCFF0000E8FF0009A5FF004BA6FF00BDDCFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9DA
      DB0071757700332A21007F470400B16C0000762C010043140300371303004B1F
      0300864E0300A7770300A5750300A97403009C620200875002005A3202002817
      100055525300E1E1E10000000000000000000000000000000000E6E5E600676A
      6700114814001FAB30007BEF9500C2FDD500CBFDDB009BF4AF0046D057000A8C
      0F00027704000F9B18002BC234003BD2430044D94C0040D749003AD0430034C5
      3B0026942B003DAF440042BB4A002B9733001134120051605200E1E3E1000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEDE
      DE00D5D5D500EAEAEA00F8F8F800F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100D6D6D600B4B4B400FBFBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00EDEDED00C3C3C30000000000F8F8F800F5F5
      F500F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400D8D8D800D5D5D500F1F1F1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFD7FF004792FF000FA7FF0028F8FF0027F6FF0000D6FF0000CFFF0000D1
      FF0000D1FF0000D2FF0000D4FF0000D5FF0000D6FF0000D7FF0000D7FF0000D7
      FF0000DAFF0000DAFF0000DAFF0000DAFF0000DAFF0000DAFF0000DAFF0000DA
      FF0000DAFF0000DAFF0000D8FF0000D7FF0000D6FF0000D5FF0000D4FF0000D3
      FF0000D3FF0000D1FF0000CFFF0000CDFF0000CBFF0000C8FF0000C6FF0000C6
      FF0000D0FF0000EFFF0000EBFF000198FF0053ADFF00CDE6FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F800D0D1D2006C6E6E00423224004D1C06005B110100772A0300833D03008750
      030097680300A4750300AA7C0300A57502009057010072410600412D1B005550
      5300BEBFC000F7F7F70000000000000000000000000000000000FAFAFA00C6C7
      C6003F4F4000125B180035B9470067E5800072EE8C0054E1690018AE24000579
      0B0007840B0021B32A003ED1490049D9520049D74E0043D4490044D34A0043CE
      48002EA0350026812B001E6A2200154716003C4F3C00BABDBB00F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECEC
      EC00CECECE00DADADA00FAFAFA00F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100E6E6
      E600CBCBCB00C2C2C20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200C9C9C900EBEBEB00F7F7F700F5F5
      F500F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400C4C4C400DDDDDD00F6F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8FBFF00CCE1FF0061ABFF000B9AFF0027DDFF0055FBFF001FF8FF0004D9
      FF0000D6FF0000D8FF0000D9FF0000DAFF0000DBFF0000DCFF0000DEFF0000DE
      FF0000DFFF0000DFFF0000DFFF0000DFFF0000DFFF0000DFFF0000DFFF0000DF
      FF0000DFFF0000DEFF0000DEFF0000DCFF0000DBFF0000DBFF0000DAFF0000D8
      FF0000D7FF0000D5FF0000D4FF0000D2FF0000D1FF0000CFFF0000D7FF0001EA
      FF0002EFFF0000C5FF000093FF008ACCFF00DCEFFF00FAFCFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB00DEDFDF009B9C9E00433C41003E2923006D3A170086491100925D
      0C00945F0C00864E0C006D3E11004E381F00473626005A4C4200918C8D00D5D5
      D700F8F8F800000000000000000000000000000000000000000000000000F9F8
      F900C4C2C400495349001D472000157F1B00139C1B0011AA1B000AB1180022AD
      330026A02D0029AB300032B73B0037BC40003CC1430042CB48004CD8530047D4
      50002AA432001B591D001F3D1E0048564800BDC0BD00F6F5F600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00D2D2D200CDCDCD00F1F1F100F5F5F500F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100EFEFEF00D5D5
      D500C0C0C000DEDEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F8F800DEDEDE00D2D2D200F9F9F900F6F6
      F600F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F2F2F200DEDEDE00C0C0C000ECECEC00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7FBFF00DAEAFF0091C9FF0033A9FF001DAFFF0052FFFF006DF7
      FF0032F6FF000BE6FF0000DFFF0000DFFF0000E0FF0000E2FF0000E2FF0000E4
      FF0000E4FF0000E4FF0000E4FF0000E5FF0000E5FF0000E5FF0000E4FF0000E4
      FF0000E4FF0000E4FF0000E4FF0000E2FF0000E1FF0000E1FF0000DFFF0000DE
      FF0000DDFF0000DAFF0000D9FF0000D7FF0000DFFF0007ECFF000AF2FF0004DD
      FF000AB8FF0038B6FF00AFDCFF00E7F4FF00FBFDFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00F1F1F200D7D9DA00B8B9BA008F8C8B007A7470006D63
      5D006E6059006A5E5A00746F7000ABABAE00CFCECF00DFDDDD00EEEDEE00FDFC
      FD00000000000000000000000000000000000000000000000000000000000000
      0000F9F9F900D2D1D200818181003E503E00244724001666190017B7260058D1
      6D006AD5740054D6610047D2560042D0530041CE51003EC94A002CBA35002585
      280038613A00647365008E968F00D0D2D000F8F7F80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700D1D1D100DBDBDB00F8F8F800F4F4F400F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100DFDFDF00C3C3
      C300C8C8C800F6F6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00F2F2F200C9C9C900EAEAEA00F7F7
      F700F5F5F500F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F2F2F200E7E7E700C4C4C400D7D7D700F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFEFF00E7F3FF00B1D8FF006CBEFF0028B2FF0035CA
      FF0060F4FF007AF8FF0057F5FF001EEFFF0000E8FF0000E7FF0000E7FF0000E8
      FF0000E9FF0000E9FF0000E9FF0000E9FF0000EAFF0000E9FF0000E9FF0000E9
      FF0000E9FF0000E8FF0000E8FF0000E7FF0000E6FF0000E5FF0000E4FF0000E3
      FF0000E2FF0000E3FF000AEDFF001BF1FF001BF5FF000EE8FF0004CDFF0025BE
      FF007ECDFF00C2E6FF00F5FBFF00FEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00F7F8F800ECEDED00E5E6E700E1E1
      E300E2E1E300E1E1E300E6E6E700F4F5F500FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00EBEAEB00DCDCDC00C2C1C10081848000395A3C003667
      3900338335002E9234002D9433002B903000287F2D002D6230003A573C007D84
      7C00CBCDCB00E5E5E500EFEFEF00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F900DFDFDF00CECECE00E7E7E700FAFAFA00F4F4F400F2F2F200F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100EFEFEF00DBDBDB00C2C2C200C3C3
      C300E3E3E3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00DFDFDF00D5D5D500F0F0
      F000F8F8F800F6F6F600F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F0F0F000E1E1E100CDCDCD00C9C9C900F0F0F000FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7FBFF00D4EBFF0094CCFF0064C6
      FF004BC5FF0058D5FF006BEFFF007FFBFF0083F7FF0062F5FF003AF5FF0012F5
      FF0002EFFF0000EEFF0000EEFF0000EEFF0000EEFF0000EEFF0000EEFF0000EE
      FF0000EEFF0000EDFF0000EDFF0000ECFF0000EBFF0001EDFF0008F0FF001AF4
      FF002FF3FF0042F4FF0025FBFF0017E4FF0012D2FF002ECDFF0062CEFF00A1DA
      FF00DFF1FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAF9FA00EBE9EB00D7D6D700C0BB
      BF009D9A9C009294920091969100939693009C9A9C00BDB8BD00D6D5D600EAE8
      EA00FCFBFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F200DADADA00D0D0D000E4E4E400F6F6F600F6F6F600F3F3
      F300F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F2F2F200EEEEEE00DADADA00BEBEBE00BFBFBF00DCDC
      DC00F9F9F9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00F8F8F800DCDCDC00DCDC
      DC00EAEAEA00F5F5F500F8F8F800F5F5F500F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F5F5F500F0F0
      F000E0E0E000CBCBCB00C9C9C900E7E7E700FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0E9
      FF008BCDFF0060C9FF0063D6FF007CDBFF008ADFFF0086F4FF0090FFFF0084FF
      FF0074F8FF0072F7FF0065F7FF0052F7FF0047F7FF0045F7FF0042F7FF003FF7
      FF003BF7FF0038F7FF0041F7FF004AF6FF0056F5FF0055F7FF0046FBFF003AFC
      FF003AEFFF0042DCFF0035E1FF0043D3FF0063CEFF0098DAFF00D3EEFF00FAFC
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFDFE00F6F2
      F600E9E4E900E5DFE500E5E0E500E6E0E600EAE4EA00F5F1F500FEFDFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3F3F300D7D7D700CBCBCB00E2E2E200ECECEC00F1F1
      F100F5F5F500F5F5F500F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F3F3F300F0F0F000E5E5E500D5D5D500BFBFBF00C0C0C000DEDEDE00F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700DADA
      DA00D9D9D900E6E6E600F0F0F000F4F4F400F7F7F700F7F7F700F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F2F2F200EAEAEA00DDDD
      DD00CECECE00CDCDCD00E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6EDFF00A1D8FF006FC8FF0054CAFF0066E0FF0098E8FF00AEE3
      FF00AAE5FF00B6F1FF00B3FBFF00A8FEFF00A0FFFF009BFFFF0094FFFF008EFF
      FF0085FFFF007DFFFF0082FEFF007FF7FF0084EDFF007EE7FF0066E7FF004FE9
      FF0043DDFF004CC8FF0077D2FF00B1E4FF00EAF8FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFAFA00E2E2E200C7C7C700D3D3D300E1E1
      E100EBEBEB00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00ECEC
      EC00E8E8E800DFDFDF00C9C9C900B9B9B900C7C7C700E9E9E900FCFCFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00E4E4E400D7D7D700DBDBDB00E7E7E700EFEFEF00F3F3F300F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F0F0F000ECECEC00E3E3E300D3D3D300CACA
      CA00D5D5D500EEEEEE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFDFF00DFF3FF00A7DEFF006ECBFF0044BF
      FF0038C2FF004CDCFF0067EEFF0088F5FF0098F6FF0094F6FF008FF7FF008AF7
      FF0083F7FF007DF7FF0069F6FF004DE7FF0039D3FF0035C6FF004DC9FF0080D7
      FF00AEE7FF00E8F7FF00FDFEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FBFBFB00E0E0E000C8C8
      C800BEBEBE00C3C3C300CACACA00CACACA00CACACA00CACACA00CACACA00CACA
      CA00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00CACA
      CA00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00C9C9C900C7C7
      C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7
      C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C1C1
      C100B8B8B800B8B8B800CCCCCC00EAEAEA00FBFBFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8F8F800E7E7E700D3D3D300C9C9C900D1D1D100D5D5D500D5D5
      D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5
      D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5
      D500D5D5D500D5D5D500D3D3D300D2D2D200D2D2D200D2D2D200D2D2D200D2D2
      D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2
      D200D2D2D200D2D2D200D2D2D200CECECE00C5C5C500C8C8C800D7D7D700EDED
      ED00FCFCFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4FBFF00D2F1FF00AAE5FF0093DEFF008CDCFF008CDCFF008CDEFF008CDE
      FF008CDEFF008CDEFF0097E2FF00BAEBFF00D9F4FF00F1FBFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00F3F3F300EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00ECEC
      EC00F3F3F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00F2F2F200F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100EFEFEF00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00F8F8F800FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FBFBFB00F8F8F800F5F5F500F1F1
      F100EEEEEE00E8E8E800E4E4E400DFDFDF00DADADA00D6D6D600D1D1D100CFCF
      CF00D1D1D100E1E1E100F5F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FEFE
      FE00FEFEFE00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BF6E6000665430006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006652300066523000665230006652300066523000665230006652
      3000665230006051300064513000665432006F593600785F3C0081633C00A170
      4A00B4785400BD7C5E00C7806400CC836700F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F4F4F400F1F1F100EDED
      ED00E8E8E800E4E4E400E0E0E000DDDDDD00D9D9D900D4D4D400CFCFCF00CACA
      CA00C7C7C700C3C3C300C0C0C000BFBFBF00BCBCBC00BCBCBC00BABABA00B9B9
      B900BABABA00C1C1C100D3D3D300E7E7E700F2F2F200F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F4F4
      F400F4F4F400F2F2F200EFEFEF00EBEBEB00E6E6E600E0E0E000D1D1D100BABA
      BA00A9A9A9009F9F9F009C9C9C009A9A9A009A9A9A009A9A9A00A1A1A100B3B3
      B300CACACA00D9D9D900E3E3E300E8E8E800EDEDED00F1F1F100F2F2F200F4F4
      F400F5F5F500F5F5F500F5F5F500F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FCFCFC00F9F9
      F900F9F9F900FAFAFA00FCFCFC00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00F7F7F700F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F6F6
      F600FBFBFB00FEFEFE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DE7B61000E510000005800000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000580000005800000059000000590000005600000056
      000000590000005600000058000000590000F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200EBEBEB00DADA
      DA00C9C9C900C0C0C000BDBDBD00BABABA00B9B9B900B6B6B600B6B6B600B5B5
      B500B5B5B500B5B5B500B3B3B300B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B9B9B900C7C7C700DDDDDD00EEEEEE00F4F4F400F4F4
      F400F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F4F4F400F2F2
      F200EEEEEE00E6E6E600D9D9D900CACACA00B7B7B700999999007B7B7B007777
      770089898900959595009E9E9E009F9F9F00999999008C8C8C007C7C7C006565
      6500666666008A8A8A00AEAEAE00C1C1C100D0D0D000DFDFDF00EAEAEA00F1F1
      F100F2F2F200F2F2F200F2F2F200F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00F8F8F800F3F3F300EFEF
      EF00F4F4F400F7F7F700F9F9F900FBFBFB00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9D9
      D900AFAFAF00A6A6A600A7A7A700A7A7A700A7A7A700A7A7A700A8A8A800A8A8
      A800A8A8A800A8A8A800A8A8A800A8A8A800A9A9A900A9A9A900A9A9A900A9A9
      A900A9A9A900A9A9A900A9A9A900A9A9A900AAAAAA00AAAAAA00AAAAAA00AAAA
      AA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00A9A9A900A9A9A900A9A9A900A9A9
      A900A9A9A900A9A9A900A9A9A900A9A9A900A8A8A800A8A8A800A8A8A800A8A8
      A800A8A8A800A8A8A800A7A7A700A7A7A700A7A7A700A7A7A700A6A6A600ABAB
      AB00D1D1D100FEFEFE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786B00144F0100005900000059
      0000005900000055000000560000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005A00000058
      0000005800000059000000590000005900000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200DDDDDD00CACACA00C1C1C100BFBFBF00C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C3C3C300D1D1D100E7E7E700F9F9F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F900E8E8E800CFCFCF00AFAFAF00969696009C9C9C00B7B6B700D7D7
      D900EAE8EA00EDE8ED00E7E1E700E3DDE400E3DDE400E4E0E400E0DFE000D0CF
      D000AAAAAA008B8B8B00898989009F9F9F00BCBCBC00D9D9D900EFEFEF00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FCFCFC00F7F7F700EDEDED00E2E2E200B8B8
      B800121211002A2A2A0091919100E8E8E800FBFBFB00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D5D5
      D500F1F1F100E6E6E600E4E4E400E4E4E400E5E5E500E5E5E500E6E6E600E8E8
      E800E8E8E800E9E9E900E9E9E900EAEAEA00EAEAEA00ECECEC00EDEDED00EDED
      ED00EEEEEE00EEEEEE00EFEFEF00EFEFEF00F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100EFEFEF00EFEFEF00EFEFEF00EEEE
      EE00EEEEEE00EDEDED00EDEDED00ECECEC00EAEAEA00EAEAEA00E9E9E900E8E8
      E800E8E8E800E6E6E600E5E5E500E4E4E400E4E4E400E4E4E400E5E5E500FAFA
      FA00D1D1D1000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005900000059
      0000005900000056000000560000005600000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005800000058
      000000580000005800000058000000580000005800000058000000590000005A
      000000590000005900000059000000590000F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100EFEF
      EF00E7E7E700D7D7D700C6C6C600BCBCBC00B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B9B9B900C1C1C100D3D3D300E6E6
      E600EFEFEF00F1F2F200F2F2F200F2F2F200F2F2F200F4F4F400F2F4F200F1F2
      F100EAEAEA00D9D9D900B7B6B700A1A1A100B3B3B200D6D6D700E1DDE300D4CF
      D400B3B3B300919F910081958000788E770082948100919E9100B3B2B300D4CF
      D400E4E0E400D4D4D400ADAEAD0098999900A9A9A900C6C7C600DDDDDD00EAEA
      EA00EFEFEF00F1F1F100F1F1F100F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FBFBFB00F6F6F600EAEAEA00DBDBDB00CBCBCB003E3B
      3A00171616000D0D0D000B0B0B00101010008080800000000000FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEDE
      DE00D8D8D800E5E5E500E0E0E000E0E0E000E1E1E100E3E3E300E3E3E300E4E4
      E400E4E4E400E5E5E500E6E6E600E6E6E600E8E8E800E9E9E900E9E9E900EAEA
      EA00ECECEC00ECECEC00EDEDED00EDEDED00EDEDED00EDEDED00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EDEDED00EDEDED00EDEDED00ECECEC00ECEC
      EC00EAEAEA00EAEAEA00E9E9E900E8E8E800E8E8E800E6E6E600E5E5E500E5E5
      E500E4E4E400E3E3E300E1E1E100E0E0E000E0E0E000E0E0E000E3E3E300EAEA
      EA00DADADA000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005900000059
      000000590000005A000000600000005F00000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      000000600000006000000060000000600000006000000060000000630000005C
      000000580000005900000059000000590000F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F2F2F200E6E6E600D1D1D100C0C0C000B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B9B9B900B9B9B900B9B9B900C0C0C000D1D1
      D100E7E7E700F7F7F700FBFBFB00F8F8F800F5F5F500F1F1F100EAEAEA00DCDD
      DD00C9CACA00A9A9A900A3A3A300BCBCBC00D9D7DA00D0CCD00085948400356B
      2E0014620C000C6903000B7402000B7701000C7302000C69040018641000406F
      39008F9B8E00D4D0D600DFDDDF00CAC9C900BDBDBD00D7D9D900E7E8E800F2F2
      F200F7F7F700F8F8F800F8F8F800F8F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FBFBFB00F5F5F500E9E9E900DADADA00C9C9C9009A9A9A004B47
      47001514140013131300090909000B0B0B000B0B0B003D3D3D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8E8
      E800D1D1D100EAEAEA00DDDDDD00DDDDDD00DFDFDF00E0E0E000E1E1E100E1E1
      E100E3E3E300E4E4E400E4E4E400E5E5E500E6E6E600E8E8E800E8E8E800E9E9
      E900E9E9E900EAEAEA00EAEAEA00ECECEC00ECECEC00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00ECECEC00ECECEC00ECECEC00EAEAEA00EAEA
      EA00E9E9E900E8E8E800E8E8E800E6E6E600E5E5E500E4E4E400E4E4E400E3E3
      E300E3E3E300E1E1E100E0E0E000DFDFDF00DDDDDD00DDDDDD00E4E4E400D4D4
      D400DFDFDF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005900000058
      0000007000000C832900268A1E002C8A1C002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100208821002088
      2100208821002088210020882100208821002088210020882100238B1E001183
      2700007915000063000000590000005800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700E4E4E400D1D1D100C4C4C400C0C0
      C000C0C0C000C1C1C100C1C1C100C1C1C100C1C1C100C3C3C300C3C3C300C4C4
      C400C4C4C400C4C4C400C3C3C300C3C3C300C0C0C000BCBCBC00B7B7B700B3B3
      B500B7B7B700BCBDBF00B9BABC00A9AAAB009596990086878700777777006867
      66005554510077757500B9B7B900D9D4D900B3B6B30041723A000E6603000D81
      0000169B06001CAD0C001EB510001FB611001FB510001CAD0C00169B06000C7F
      000011650700537A4D00C6C4C600E7E3E600CDCDCD00E1E1E300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FAFAFA00F3F3F300E7E7E700D7D7D700C5C5C500B5B5B5003C3A39002323
      2200151515002222210024232200111111000A0A0A00090909006F6F6E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00CFCFCF00F2F2F200DDDDDD00DDDDDD00E0E0E000E1E1E100E1E1E100E3E3
      E300E4E4E400E4E4E400E5E5E500E6E6E600E8E8E800E9E9E900E9E9E900EAEA
      EA00EAEAEA00ECECEC00EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EFEF
      EF00EFEFEF00EFEFEF00EEEEEE00EEEEEE00EDEDED00EDEDED00EDEDED00ECEC
      EC00EAEAEA00EAEAEA00E9E9E900E8E8E800E6E6E600E6E6E600E4E4E400E4E4
      E400E3E3E300E1E1E100E1E1E100E0E0E000DFDFDF00DDDDDD00ECECEC00CFCF
      CF00ECECEC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005900000055
      000060BA7700DBF4EB00C2EDD000C5EECB00BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEA
      D800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800BDEAD800C2E9D000D3F4
      E700C5EAC400007A0E000058000000580000EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EFEFEF00EFEFEF00EBEBEB00E0E0E000D0D0D000C0C0
      C000BAB9BA00B9B7B900B9B7B700B7B7B700B6B6B600B3B3B300AFAFAF00AAAA
      AB00A3A3A300999A9A008E8F8F0082838400777879006B6B6B00606060005656
      56004F4D4D00514D4A00544E4800564E4700564C4200564940005A4A40005B48
      3B0073665E00A3A0A000BDB9C00098A0960025671D00107402001F960B0024A8
      110027A9180036A8260046AB3A004EAD430043AB380032AD23002CAF1B0028A9
      16001D950B0011720400316D2700A8AEA800CCC7CC00B0B0B000DFDFDF00F1F1
      F100EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F9F9
      F900F2F2F200E4E4E400D3D3D300C1C1C100B1B1B100838383004F4C4E001312
      12001D1C1B002D2B2A0022222000282826001D1D1D0015141400CAC8C800FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0D0D000F5F5F500DDDDDD00DFDFDF00E0E0E000E1E1E100E3E3E300E3E3
      E300E4E4E400E5E5E500E6E6E600E8E8E800E8E8E800E9E9E900EAEAEA00ECEC
      EC00EDEDED00EEEEEE00EEEEEE00EFEFEF00EFEFEF00F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100EFEFEF00EEEEEE00EEEEEE00EDED
      ED00ECECEC00EAEAEA00EAEAEA00E9E9E900E8E8E800E6E6E600E5E5E500E4E4
      E400E3E3E300E3E3E300E1E1E100E0E0E000DFDFDF00DDDDDD00F2F2F200CFCF
      CF00FEFEFE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005C00000058
      00008AC99B00006A0300006D0000006A00000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000007100000071
      0000007100000071000000710000007100000071000000710000006F00000C81
      3C00EAFBFF0000762400005A000000580000FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FEFCFC00FEFEFE00FEFEFE000000
      000000000000FFFEFE00FBFBFB00F8F7F800F7F1F500EFE8EE00DFD4DD00C3BA
      C100A8A4A80099969900908D90008483840077777700676768005A5A5A004D4D
      4D00454242003E3A38003A3431003A322F003A312A0041362C0045362C004D3A
      2F00503D2F00564132005E46370061493800654D3900664E3D00684F3E006F59
      4A00918E8C00AFADB00096A19600165E0C00056F0000159400001A9A04003A9B
      250077A16D0098A39100A3A39E00A6A4A100A1A39B0094A08E0054A4460021B5
      10001EA8090015930100046C00001E621600AFB6AF00B7B5B700AFAEAE00F8F8
      F800FCFCFC00FCFCFC00FCFCFC00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F9F9F900EFEF
      EF00E2E2E200D1D1D100BEBEBE00AFAFAF00ACACAC0049454500242323001A19
      18002A2726002D2D2B002726260021202000161516005151510000000000FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D7D7D700EDEDED00DCDCDC00DDDDDD00DFDFDF00E0E0E000E0E0E000E3E3
      E300E3E3E300E4E4E400E5E5E500E6E6E600E8E8E800E9E9E900EAEAEA00ECEC
      EC00EDEDED00EEEEEE00EEEEEE00EFEFEF00EFEFEF00F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100EFEFEF00F1F1F100EFEFEF00EEEEEE00EDED
      ED00ECECEC00EAEAEA00E9E9E900E9E9E900E8E8E800E5E5E500E5E5E500E4E4
      E400E3E3E300E1E1E100E1E1E100E0E0E000DFDFDF00DCDCDC00F3F3F300D1D1
      D100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D00000071
      000075C07A00005500000058000000590000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A00000071
      0E00D5F7ED00037E1C00005A0000005600000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFF00FFF5FE00F9EE
      F800EEE4EE00E0D4DF00CAC0CA00B0AEAF0099A19900829684006D9071005189
      590038894200278032003550370046373A00463A3800463A35004D3E36005342
      3800584639005E493E00614A4000684F43006B5345006C5547006F594900725C
      4E00776153007A6659007F6B5F008372650087776B008D7C71009A867900998F
      8A009C9C9F00B0AFB20032712800076C00001A910200209309006FA55E00B9B6
      B600C4B5C100BCAFB700BAADB500B7A9B200BFA9B900A0A89C004FB9450031CC
      1D002DB9160025A50C001B910400086800004E7F4600C3C0C4009F9E9F00D3D3
      D300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FCFCFC00F7F7F700EEEEEE00E0E0
      E000CECECE00BCBCBC00ADADAD00A2A2A200767575005553500015141400211F
      1F003C383700292726002D2B2B001D1D1D0017171700C6C5C500FAFAFA00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCDCDC00D8D8D800DFDFDF00DCDCDC00DCDCDC00DDDDDD00DFDFDF00E0E0
      E000E1E1E100E1E1E100E4E4E400E4E4E400E5E5E500E8E8E800E9E9E900EAEA
      EA00EAEAEA00ECECEC00EDEDED00EDEDED00EEEEEE00EFEFEF00EFEFEF00EEEE
      EE00EEEEEE00EFEFEF00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDEDED00ECEC
      EC00EAEAEA00E9E9E900E8E8E800E6E6E600E5E5E500E4E4E400E3E3E300E1E1
      E100E0E0E000DFDFDF00DDDDDD00DDDDDD00DCDCDC00DCDCDC00E8E8E800D7D7
      D700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000067C
      000069BC6A000058000000590000005C00000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005A00000073
      0900BDF4D80006831500005A000000560000EDEDED00EDEDED00EDEDED00F1EE
      F100FCF4FB00F7EBF500E0D1DF00BDB5BD00A1A8A3008D9E8E007C9980006795
      6C00549C5B00429E4A0035A33E0027A1320021A12A0019A3230013A61E0011A4
      1D0010A01C000E9A1B00138A1D003F6B3200725B4F0072584D006F5A4D00735E
      5300786456007B685E00806E6400857469008A796E008C7C73008F8177009383
      7A0094847E0094857F0095878000998981009F8F8600AD9A9000AE9E93008C8A
      8A00A09CA100698B6500095F0000188402001F85090083A37700C7BAC700B9B0
      B600B9B0B600B6ADB300A4A6A100A0A49E0085A5840042BF3F0035D4290037C7
      220034B71A0027A40E001F900600188303000E5F010083997F00A4A0A4009A99
      9900E8E8E800EEEEEE00EDEDED00EDEDED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FCFCFC00F7F7F700ECECEC00DFDFDF00CECE
      CE00BBBBBB00ADADAD00A2A2A200A5A5A5005A575600252424001C1C1B003531
      300035313000302E2E00252424001A1A1A0056545400FCFCFC00FCFCFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E4E4E400CACACA00E0E0E000D7D7D700D7D7D700D8D8D800D9D9D900DBDB
      DB00DCDCDC00DDDDDD00DFDFDF00E0E0E000E1E1E100E3E3E300E4E4E400E5E5
      E500E6E6E600E6E6E600E8E8E800E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900EAEAEA00E9E9E900E9E9E900E9E9E900E9E9E900E8E8E800E8E8E800E6E6
      E600E5E5E500E5E5E500E4E4E400E3E3E300E0E0E000DFDFDF00DDDDDD00DCDC
      DC00DBDBDB00D9D9D900D8D8D800D8D8D800D7D7D700DBDBDB00CDCDCD00DCDC
      DC00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000000000000000000000000000F1FB
      F200ADE1B60080CD8A004CAD580029A0380020AA2A001AB7230014C91F0012CF
      1D0011D31D0011D11C0010CF1A000EC91A000EC11A000CB918000BAF18000AA8
      1600089E130006951300028E100002820D002C772800958B7900A48A83009986
      7F0098897F0099897F0096897F00968A7F00998980009A8A81009A8A80009987
      7E0096857A0095827700988375009C847400A6867300B28C75009C8A7E008786
      8B00A0A6A00018640F00016500000B79000062994900DDD1DD00C9C4C900CCC3
      CA00A0B59C0060B25A0045C7430043D3460037DA39002FEA29002EDA22002ACC
      180022B70A00429A2400428C25000E7E0000006100002C722200AFAFAF008987
      8A00DADADA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FCFCFC00F6F6F600ECECEC00DDDDDD00CCCCCC00BBBB
      BB00ADADAD00A3A3A3009D9D9D00717070005654530017161600242324004643
      4300302E2D00353333002020200017161600D7D7D700FBFBFB00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6F6F600C5C5C500DCDCDC00CCCCCC00CDCDCD00CDCDCD00CFCFCF00D0D0
      D000D1D1D100D3D3D300D4D4D400D7D7D700D8D8D800D9D9D900DBDBDB00DCDC
      DC00DDDDDD00DDDDDD00E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000DFDFDF00DDDD
      DD00DCDCDC00DCDCDC00DBDBDB00D8D8D800D7D7D700D5D5D500D3D3D300D1D1
      D100D0D0D000D0D0D000CFCFCF00CDCDCD00CCCCCC00D7D7D700C2C2C200E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FBF9FB00FBFBFB00FCFBFB00ADDD
      B500089618000BA91A000EBF1D0014D122001ADA26001DDF29001EDD2A001ED9
      2A001DD429001DD029001DCA28001DC426001ABD250018B6240016AF220014A8
      1F0013A01F0011981D000E901B000B89180006801300318A3900B3B29B00D6B5
      AE00BCA59B00AF998E00A48E8100998474008E796800846C5C007C625100785C
      4800795A43007E5C450085624900916F58009E7A6100956F540091857E009591
      9900879F8400095A00001179000027801100C7CFC100DAD3D900D9D0D9009CB6
      93003BB0290032D726003BE834003DEB39003DE838003DDD31003AD3270035CA
      1B0030A4180098A48F00ABA9A500277E11000E770000126106009CAB9B00908C
      9000B7B7B700FBFBFB00FBFBFB00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FBFBFB00F5F5F500EAEAEA00DBDBDB00CBCBCB00BABABA00ADAD
      AD00A5A5A5009F9F9F009D9D9D00625E5D00242322001F1E1E00403E3B00403C
      3B003B3C3B002A2928001C1B1C005E5D5B00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FEFE
      FE00FDFDFD00FAFAFA00F4F4F400F0F0F000F0F0F000F0F0F000F0F0F000F2F2
      F200F5F5F500BFBFBF00D1D1D100BEBEBE00BFBFBF00C0C0C000C1C1C100C2C2
      C200C3C3C300C5C5C500C7C7C700C8C8C800CACACA00CACACA00CBCBCB00CCCC
      CC00CDCDCD00CFCFCF00D0D0D000D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D3D3D300D1D1D100D1D1D100D1D1D100D0D0D000D0D0D000D0D0D000CDCD
      CD00CDCDCD00CBCBCB00CBCBCB00CACACA00C8C8C800C7C7C700C5C5C500C5C5
      C500C2C2C200C2C2C200C0C0C000C0C0C000BFBFBF00CFCFCF00BABABA00EBEB
      EB00F3F3F300F0F0F000F0F0F000F0F0F000F1F1F100F4F4F400F9F9F900FDFD
      FD00FEFEFE00FEFEFE000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000EFEEEE00EEEEEE00F2EFF2009FD4
      A800059B15000DB01D0013BD210018C724001ACF25001BD126001CD026001CCD
      25001ACA25001BC625001AC0240018BA220017B5220015AD200013A61F00119F
      1D000E981B000D8F1A000C8918000A821600087B1500006E0D0011721B007180
      4E00AA7B65009975600096776000967B6700967F6E009683770098897F009F93
      8C00B0A8A100C4BDB700D7D0CC00DFDDDC00E1DCD600A99385008F8D8D009996
      9B0056855000015100000968000068985300E6DDE800D7D0D700AABCA3002D9E
      160029C3150035C9210036CD250037D0280036CF260035C7220032C31D0026AA
      11006F996000B3A6B000B3A6B0008094730011690000045600006F936C009591
      960099999900EFEFEF00EEEEEE00EEEEEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FBFBFB00F4F4F400EAEAEA00DADADA00CACACA00BABABA00AFAFAF00A7A7
      A700A2A2A200A0A0A00075747400545150001B1A1A002A282A0054504E003739
      34003C393900262424001B1B1B00ECECEC00FEFEFE0000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FCFCFC00F8F8
      F800E9E9E900D7D7D700CACACA00C3C3C300C1C1C100C0C0C000C0C0C000C1C1
      C100C9C9C900A5A5A500BDBDBD00B0B0B000B1B1B100B2B2B200B3B3B300B4B4
      B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9B900B9B9B900BBBBBB00BBBB
      BB00BCBCBC00BCBCBC00BEBEBE00BEBEBE00BEBEBE00BFBFBF00BFBFBF00C0C0
      C000BFBFBF00BFBFBF00BFBFBF00BEBEBE00BEBEBE00BEBEBE00BDBDBD00BCBC
      BC00BCBCBC00BBBBBB00BABABA00B9B9B900B9B9B900B7B7B700B6B6B600B5B5
      B500B5B5B500B3B3B300B2B2B200B1B1B100B0B0B000BFBFBF00A7A7A700C7C7
      C700C2C2C200C0C0C000C0C0C000C1C1C100C4C4C400CBCBCB00D7D7D700E6E6
      E600F6F6F600FBFBFB00FDFDFD00FEFEFE00E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000000000000000000000000000A9E3
      B50000A30F0008BA18000DC71D0011D41F0014DC210015DD210015DA210014D7
      1F0013D31E0012CD1D0010C61A000EBF1A000CB718000BAE17000BA8170009A1
      1600099B16000794140003850E00017E0D0000750C00006D0A0000620500004D
      000056834800F2F1EA00FBF1F100EFEFEF00EFEFF100EAEBED00E4E6E700E4E6
      E700EAEDED00EEF1F200EDEEEF00EBEEF100EDE6E100A48B7B0087838300A4A4
      A5002F742600014A00000F5C0000A1BF9800F9F4FB00F4EBF50077A465002294
      0B002CB3130028C4130029CA17002CCD18002CCC17002AC7140021BA0900439C
      2700B6B2B200B9AFB300B3ABAE00BDB0B900437C2E0000400000548B4D00A6A3
      A800939193000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00FAFA
      FA00F4F4F400E8E8E800DADADA00CACACA00BCBCBC00B1B1B100A9A9A900A5A5
      A500A3A3A3009C9C9C00625E5D0021202000222020004B4746004A4645004544
      43002F2D2D001D1C1C006A696700000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FCFCFC00F7F7F700E0E0
      E000BDBDBD00AAAAAA0097979700848484007A7A7A0078787800777777007777
      77007D7D7D006A6C6C00A2A2A200A2A2A200A1A1A100A2A2A200A2A2A200A3A3
      A300A5A5A500A5A5A500A6A6A600A7A7A700A8A8A800A8A8A800AAAAAA00AAAA
      AA00ABABAB00ACACAC00ACACAC00ACACAC00ADADAD00ADADAD00AEAEAE00ADAD
      AD00ADADAD00AEAEAE00ADADAD00ADADAD00ADADAD00ACACAC00ABABAB00ABAB
      AB00ABABAB00AAAAAA00A9A9A900A8A8A800A7A7A700A7A7A700A6A6A600A5A5
      A500A4A4A400A3A3A300A2A2A200A2A2A200A1A1A100A9A9A900717171007D7D
      7D007878780077777700787878007B7B7B008787870097979700A7A7A700B7B7
      B700D4D4D400F1F1F100FAFAFA00FEFEFE00E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F7F7F700F7F7F700F8F7F800A9DD
      B2000CA91D0015BF24001ACA29001ED42D001FD92D0020D72D0021D32E0022D3
      300027D337002ED43E0036D3450039CD490039CD4A0038CD4A0032C6450029BF
      3B0022B731001CAF2800149C20000C8319000B79180009741600086D15000465
      110000560D004A8E5B00E3EEEA00F9F2F900E7E6E700E8E7E800E8E6E700E8E6
      E800EAE7EA00EBE8EA00EEEAED00F1EDF100F5E8E700AE9385008A868500A5A9
      A60036712D00A0BD9800D7DDD300E3E6E300E7E6E700E3E1E300C9CFC300CCD3
      C70065AA4D002AAF110035BA1A0036BC1A0036BA1A0031B91600359E19009EAD
      9500C4B9C400B6B2B200B3AEAF00B9AFB500ABABA50015550B0043823D00A9A6
      A900908F9000EFEFEF00F7F7F700F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00FDFDFD00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FAFAFA00F3F3
      F300E8E8E800DADADA00CBCBCB00BDBDBD00B3B3B300ADADAD00A8A8A800A6A6
      A600A8A8A80076747400555150001D1C1C00373333005B57570041413E004341
      4100292627001F1F1E00F0EFF000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00F8F8F800EDEDED00C4C4
      C400989898007171710062605E00595856005352510053525100515050004F4F
      4F004E4E4E004C4C4C0082828200898989008888880088888800898989008A8A
      8A008C8C8C008C8C8C008E8E8E008F8F8F009090900091919100939393009494
      9400959595009696960097979700979797009898980098989800989898009898
      9800989898009898980098989800989898009797970096969600969696009696
      960094949400939393009292920091919100909090008F8F8F008D8D8D008C8C
      8C008B8B8B008A8A8A0089898900888888008888880088888800525151004D4D
      4D0050504F0050504F005352510054535100595757005F5E5D006D6C6B008C8C
      8C00B0B0B000DDDDDD00F5F5F500FCFCFC00E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F1F2F200F2F2F200F5F2F5009FD9
      A80005A6140011B91F0015C0210018C424001FC72C0027CC380037D4470042DA
      54004CDA5E0049D65C003DCA4E002DBF3F001FB02D0016A621000E9F1A000999
      150006961200069511000B9F16000C9B1800057A110001660D0001620D00005B
      0C0000540900003F00000D561A00A8C6AF00FCF8FC00F7F4F500F4F2F200E8EB
      EA00DFE3E000D7DDD900C1D0C600AAC1B30099AF9800677153007E7C7B00A8A6
      A8001E5F1800487E3D0000000000EEEDEE00E6E6E600E1E1E300F2EAF400BACA
      B200278C0E0023A3060026A50B0026A60C0026A60B001F9B04006EA05600D0C4
      CF00B7B5B300B5B2B200B0AEAE00B2AEAF00C6B9C10068845E003B743600A1A1
      A3008C8B8C00EDEDED00F2F2F200F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00F4F4F400DFDFDF00E2E2E200F2F2F200F8F8F800FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FAFAFA00F3F3F300E8E8
      E800DADADA00CCCCCC00C0C0C000B6B6B600B0B0B000ABABAB00A9A9A900A8A8
      A800A3A2A200656160001E1D1D002625250056504F00504E4D004B4847003534
      33001E1D1D007573730000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00F5F5F500E5E5E500ACAC
      AC006D6C6A006C6866007873700078747000787370007D797600545251003737
      37003C3B3B003535340058585800676767006565650066666600676767006A6A
      6A006B6B6B006C6C6C006F6F6F00727272007373730076767600777777007A7A
      7A007C7C7C007E7E7E007F7F7F00808080008181810082828200828282008282
      820083838300828282008282820081818100808080007F7F7F007E7E7E007C7C
      7C007A7A7A0078787800777777007373730072727200707070006E6E6E006C6C
      6C006A6A6A00686868006767670065656500666666005F5F5F00373636003B3A
      39003A393900403F3F00736F6C00797673007874720077736F006B6765006967
      65008B8A8A00D5D5D500EFEFEF00FBFBFB00E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000058000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005800000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000590000067F1F000C832A000C85
      2900005800000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000000000000000000000000000C9EF
      CF0012A51F0001A00D00059F1100089E1300099E16000A9C17000BA117000AA3
      1600069E110003990E0000980B0000980A0000990B00019A0C00029B0C00039C
      0E00039E0E00049E0E00039C0E0005A1100009A4150004801000005B06000055
      0600004F0500004804000037000000450B004C895B00427C50002C6B3B001A59
      25000C47190005380F00002A070000220100001B0000001F00006C776F00B5AF
      B5002A732500002A0000A3BF9B0000000000FCFCFE00FCFBFE00FBF9F9004E95
      2C001C93000025A0060027A3080027A4080027A40800259F05003B981900428A
      22008FA68100D6CFD600D3CAD100839A7A001F5F12000846030058895100ABA8
      AB00999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00E8E8E8006E6E6E00CDCDCD00ABA9A70081808000DCDCDC00EDED
      ED00F8F8F800FDFDFD00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00F9F9F900F2F2F200E7E7E700DADA
      DA00CDCDCD00C1C1C100B8B8B800B4B4B400B0B0B000ADADAD00ACACAC00AEAE
      AE0083838300514F4D00201E1E003D39380064606000484645004C4A48002E2E
      2B0023222200E8E8E80000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00F3F3F300E4E4E4008B8A
      8900807E7A0076726F00767370007774720077747200807E7A003B3939000D0D
      0C00141413000E0E0D0040404000626262005C5C5C005D5D5D005F5F5F006161
      6100626262006464640065656500676767006A6A6A006C6C6C006F6F6F007272
      7200737374007676760078787800797979007C7C7C007C7C7C007C7C7C007D7D
      7D007D7D7D007D7D7D007C7C7C007C7C7C007A7A7A0078787800767676007474
      7400727272006F6F6F006E6E6E006A6A6A006767670066666600656565006262
      620061616100606060005E5E5E005C5C5C00606060004B4B4B0010100F001413
      1300111110001A1919006E6B68007A787600777472007673700076726F007D79
      77006D6A6900C1C1C100F0F0F000F9F9F900E0786E00144F0300005D0000087B
      000069BC690000590000005900000059000000560000005D0000006D0000006D
      0000006D0000006C0000006C0000006C0000006C0000006C0000006C0000006C
      0000006A0000006C000000640000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000AFDFBA00BDEAD400BFF0
      D100005600000058000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F2F2F200F2F2F200F2F2F200F7F4
      F700B2D0AF002E8D2E000E8D18000B8F16000C9117000B9117000B9117000E99
      18000FA11A0010A31A0010A11A0011A11B0011A31A0011A31A0011A31A0011A3
      1A0011A31A0011A31A0011A31A0010A11A0011A41B0019AE2400169022000660
      130003530E0004541100044E0F0000430A0000350300002F0200002A02000029
      020000280300002804000027040000290500002A0600002907005C736400B0A9
      AF00628D5E00014300002A6D1D00E3E8E100F5F4F500F9F7FB0094B685002886
      0B00379A13003A9B16003A9E16003B9F17003B9F16003A9E16002D980C003185
      1400B3BFAA00D3CCD100D9D0D7005B8A4900095B0000004500007C9B7A009B99
      9C00A6A6A600F4F4F400F2F2F200F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00F9F9F9009E9E9E0000000000FCFCFC00D1D3D600AC9D9200A1998F007D7C
      7C00DFDFDF00EEEEEE00F9F9F900FDFDFD000000000000000000000000000000
      000000000000FEFEFE00FDFDFD00F8F8F800F1F1F100E7E7E700DBDBDB00CECE
      CE00C3C3C300BCBCBC00B7B7B700B4B4B400B2B2B200B1B1B100B2B2B200B6B6
      B6006A646300201F1E002D2A28005F5B590059555400504E4C003C3B38001F1F
      1F00828181000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00F2F2F200DCDCDC008481
      7F00827E7C007A7774007C7876007C7876007C78760084817F00383737000808
      08000E0D0D000C0C0C001717170021212100201F1F0020201F0020201F002120
      2000212020002121210022212100222221002222220023222200232323002423
      2300242323002424240024242400242424002524240024242400242424002524
      2400252424002524240024242400252424002424240024242400242424002424
      2300242323002323230023232200232222002221210022212100212121002120
      2000212020002020200020201F00201F1F0021212000191919000C0B0B000E0D
      0D000C0B0B0017161500706C6A007F7C79007C7876007C7876007C7876007976
      7300817E7C00B3B2B200F3F3F300F9F9F900E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005600000C7E1F00EFEECF00C7F3
      EF00C7F3EE00C5F1ED00C5F1ED00C5F1ED00C5F1ED00C5F1ED00C5F1ED00C5F1
      ED00C2F0EE00B4E7D6004CAF3500005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000CCECE400D3FBFD00C7FC
      FA00005C000000600000005C0000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F5F7F500F7F5F500F5F5F500F7F7
      F800F2DDE000AA917F003DA93A00069E1200038F0E0005930F00059310000591
      100005941000079C110009A3130008A3120008A1110008A1120008A1120008A1
      120008A3120008A1120008A1120008A1120008A1110007A1110010B01B0019A8
      250001600D0000390100003D04000038030000320200002E0100002900000025
      00000023000000210000002000000020000000200000001A0000295335009E96
      9E008BA48A000C5605000B5B00005E8D4D0000000000D1DDCA002A7B1100298C
      0C003190110035931100359611003496110034961000298E09002D8210009FB7
      9100E6E0E700DDD6DC00C1C9BD00266F160012670400135C0C009CAF9C008A86
      8A00C3C3C300F7F7F700F5F5F500F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00C7C7C700E3E3E300F0F0F000DDDDDD00B3B5B800BDAC9C00AF9F9300B5A5
      9800978D85008C8C8A00DADADA00F1F1F100F9F9F900FEFEFE00000000000000
      0000FEFEFE00FCFCFC00F8F8F800F0F0F000E5E5E500DBDBDB00CFCFCF00C6C6
      C600C0C0C000BABABA00B8B8B800B6B6B600B5B5B500B6B6B600BCBCBC008884
      84004B49470022212000423E3D00706B68004F4D4C004F4E4D00313130002524
      2300F3F3F3000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00F2F2F200DADADA008684
      8200858180007E7A78007E7A78007E7A78007E7A780086838100373736000A09
      0900141414001716160014141400131212001312120013121200131212001312
      1200131212001312120013121100131211001312110012111100121111001211
      1100121111001211110012111100121111001211110012111100121111001211
      1000121111001211110012111100121111001211110012111100121111001211
      1100121111001211110012111100131111001312110013121100131212001312
      1200131212001312120013121200131212001312120014141300171615001414
      14000F0F0E0015141400706E6B00817F7C007E7A78007E7A78007E7A78007E7C
      780084817F00B4B4B300F2F2F200F8F8F800E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005800000C802D00DDFBF000D5FF
      FE00D5FFFE00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FF
      FD00D3FFFF00BFF4E20057B53F00005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000CFEBE600D3FFFF00C7FF
      FF00005D0000005F0000005A00000059000000580000005A0000005A0000005A
      0000005A00000059000000580000005800000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F5E6E300A59B7C0025D4310017DD240010B91C00089E1300079A1300089E
      1300089C1300089C130009A113000BAD16000BAE16000CAD16000CAD16000BAD
      16000BAE16000BAD16000BAD16000CAD16000BAD16000BAE160009AB140011B7
      1C0025C437000E7A1D00003500000032010000320200002E0000002800000025
      000000220000001F0000001E0000001D0000001D000000180000062D10008D8C
      8E00ADB2AD002A712500176D0C00206E1300A6C39C006D9E56002A8511003B93
      1A003E961B003B9619003A9119003D911A0042931E00659F4600BCD4B000F9F5
      FB00EDEAED00FBF5FC0080A472001E710D0017690C003D7A3700B3B7B5009494
      9400F2F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F7F7
      F700A7A7A700FCFCFC00F4F4F400F3F3F2009D968F00D4BDAD00C4B5A400BFAD
      9F00AB9B9000BBA89B009489800099969600D6D6D600F2F2F200F9F9F900FCFC
      FC00FBFBFB00F7F7F700F0F0F000E5E5E500DBDBDB00D1D1D100C8C8C800C2C2
      C200BFBFBF00BBBBBB00BABABA00BABABA00BBBBBB00C1C1C100CACACA007270
      6C002221200034302F006B6464005D5A590055515100413E3D00252423009A9A
      9A00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00F3F3F300DADADA008B87
      850087858300807D7A00807D7A00807D7A00817E7C0086838100333231001110
      1000181716001716150017161500171615001716150017161500171615001716
      1500171615001716150017161500171615001716150017161500171615001716
      1500171615001716150017161500171615001716150017161500171615001716
      1500171615001716150017161500171615001716150017161500171615001716
      1500171615001716150017161500171615001716150017161500171615001716
      1500171615001716150017161500171615001716150017161500171616001717
      160017161500151414006664620086838100807D7A00807D7A00807D7A00817D
      7C0087858300B5B4B400F3F3F300F9F9F900E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005A00000C832F00D1F9F600D1FF
      FD00D1FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FFFD00D3FF
      FD00D5FFFD00BFF3E20064B34500005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000C5EBE700D3FFFF00CFFF
      FF00005A0000005C0000005A0000005800000056000000560000005800000058
      000000580000005800000056000000560000005C0000005A0000005900000073
      0700B4F5D500038414000059000000560000EEEEEE00EEEEEE00EEEEEE00EFEF
      EF00E6D4D3009F9A7B0027CA32001FD72A0022D62F001DC4290016AB2100139E
      1D00139E1D00149F1E00139F1D0017AB200018B0210018AF210018AF210018AF
      210018AF200018AF210018AF200018AF210018AF210018AF210018AF210016AD
      1E0019B2220038D34D002D9C3F0004460F00002D0400002A0300002704000028
      050000290600002C080001320900033A0A0005410B0003470A00004D09006284
      6800A9A1A9006D8B6D00256E1F003A832A003A7E270042862A004A8F30004D93
      310048912A0056913B00A8C19C00BCCCB500C9D4C300EBEAEB00F1EDF400E4E3
      E600F1EDF200ABC0A50040802D003A852900256D1F0080968000A39FA400AFAF
      AF00F2F2F200EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F900B3B3
      B300F3F3F300FEFEFE00E9E9E900989DA100DFCCB800DCC6B400CFBBAB00C7B3
      A300C1B4A100BBA79900A8998D00B5A594008E847B0096959400DDDDDD00F0F0
      F000F3F3F300EEEEEE00E6E6E600DBDBDB00D3D3D300CBCBCB00C5C5C500C2C2
      C200BFBFBF00BDBDBD00BEBEBE00C0C0C000C5C5C500CFCFCF00959393004240
      3F00242322004D4847007E76750054515000514F4E00353433002A292900F6F6
      F600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00F3F3F300DADADA008C8A
      89008887850082807E0082807E0082807E0083817F00868482002D2C2C001212
      1200171716001717160017171600171716001717160017171600171716001717
      1600171716001717160017171600171716001717160017171600171716001717
      1600171716001717160017171600171716001717160017171600171716001717
      1600171716001717160017171600171716001717160017171600171716001717
      1600171716001717160017171600171716001717160017171600171716001717
      1600171716001717160017171600171716001717160017171600171716001717
      1600161616001414130062615F008886840082807E0082807E0082807E008381
      7E0088878500B7B5B500F4F4F400F9F9F900E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D3FF
      FD0000590000005C0000005A00000067000000802C00148A4A001A8E4D00178E
      4D00178E4D001D8E4D00238F4E001A8C4100005F0000005A0000005900000073
      0700B4F5D500038414000059000000560000FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00EEDDDC009F9877001DCF260012D91F0016D4200016D4210016CF200011B9
      1A000BA416000A9E15000BA016000FAE1A0011B51A0011B51A0011B31A0011B3
      1A0011B31A0011B31A0011B31A0011B31A0011B21A0011B21A0011B21A0010B0
      190011BC1F0011C7260028E0460038C04E001B7F2800258C3800319B45002DA3
      420028A83E0023AD36001BAA2A0014A922000EAA1D000CAE1D0031BA450096BF
      9B00999399009A9E9A002D642C0034812900428A3400458C3200498F36004A90
      320062984D00D0DDC9000000000000000000FFFEFF00FBF8FB00FCF9FE00FCFB
      FC00AFC9A800488638003F8A2F002E7B25003B693900AFAEB000A19FA100E8E8
      E800FBFBFB00FBFBFB00FBFBFB00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F0F0F000BDBD
      BD00FCFCFC00E1E1E100E4E4E400B5AB9F00E9D1BD00DCC4B300DCC4B300DCC4
      B300CAB4A400C1AD9C00BFAC9C00B5A39400A8948600AB9C8D0096887D008A8B
      8B00DADADA00DBDBDB00D9D9D900D2D2D200CCCCCC00C8C8C800C4C4C400C3C3
      C300C1C1C100C2C2C200C5C5C500CACACA00D3D3D300DADADA00797471002322
      21003935340079726D005F5B5A005C595900454343002A2828008F8F8F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00F4F4F400DCDCDC00908D
      8C008B89880085838100858381008583810086848200888784002C2B2B001212
      1200171717001717170017171700171717001717170017171700171717001717
      1700171717001717170017171700171717001717170017171700171717001717
      1700171717001717170017171700171717001717170017171700171717001717
      1700171717001717170017171700171717001717170017171700171717001717
      1700171717001717170017171700171717001717170017171700171717001717
      1700171717001717170017171700171717001717170017171700171717001717
      17001616160014141400656362008B8887008583810085838100858381008684
      81008B898800B9B9B800F6F6F600FAFAFA00E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D3FF
      FD0000580000005C0000005A0000007D1F009BDDBD00D3FCFF00D7FFFF00D3FF
      FF00D3FFFF00D9FFFF00DEFFFF00D7FBED0000600000005A0000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F5E4E400A9A1800025D7300019E126001CDA27001AD7240019D1230019CD
      230018C1230017AF220015A91F0017AB220018B023001AB524001BB925001DBD
      26001DBF27001DC027001DC027001EBF26001DBF26001DBF26001DBD25001DC6
      2D001FD33A001ED13A001ACD35002ADD48004FF469004CF1670040E85E0031DC
      4F0026D345001FCD3D001ACC370013C72F0024C6400071BC6F00F2FFF8000000
      0000BDC0C100AFADB000808D810028642500599B5000619E5600609C5100619A
      5000BDD4B6000000000000000000000000000000000000000000DDE7DA0094B6
      8C005B944E005F9F510053984A002A6027009BA39B00BCB9BC00D4D4D4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA009E9E9E00F8F8
      F800ECECEC00F4F4F400A9ACAF00E8D0BB00DCC6B100DFC6B500D6BFAC00CAB8
      A700D0B9A700CDB7A400BCA99800B7A38F00B4A39200AC9B8B00A3908300A594
      84008F8278007C7B7A00C3C3C300C6C6C600C7C7C700C6C6C600C6C6C600C6C6
      C600C5C5C500C8C8C800CECECE00D7D7D700E9E9E9009E9B9A003D3B3A002826
      250056525000817C79005A565500555151003C38390032323100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00F5F5F500DEDEDE009390
      8F008E8B8900888583008885830088858300888684008B8887002D2C2B001412
      1200191717001917170019171700191717001917170019171700191717001917
      1700191717001917170019171700191717001917170019171700191717001917
      1700191717001917170019171700191717001917170019171700191717001917
      1700191717001917170019171700191717001917170019171700191717001917
      1700191717001917170019171700191717001917170019171700191717001917
      1700191717001917170019171700191717001917170019171700191717001917
      17001816160014141400676564008E8B89008885830088858300888583008886
      84008E8B8900BCBABA00F7F7F700FAFAFA00E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D3FF
      FE00004C0000005D0000005800000C7D1500B2DD9E00C2FFF000D3FDFE00D1FF
      FD00CFFCFA00CFFCFD00CFFDFF00CAF7E6000063000000510000005400000073
      0700B4F5D500038414000059000000560000EDEDED00EDEDED00EDEDED00EEEF
      EF00E6D6D400A19E7F001DBC260015C1220021C934002ACA3D0039D04A0046D6
      580053DC65005EDC6D0040C44F0021A52F0021A5300021A5300021A62F0022A8
      300023A9310024AD310026B0340029B535002AB7360029B9370029C13F0029CA
      460027CA460027C9450028C9460025C9430022C03F001FBC3A001DB739001FB9
      3B001FBA3B001CBD3A0024B33D0066B66C00B6BA9B00B98E7F00CCA99C00BCA0
      8E00AE917F009B8F8600B3B2B6007381740030602F005F985B0077A96F0072A1
      6900779F6E0087A9800095B390009BB7960094B38F0087AA8200719B67006B9B
      600075AA6F00568F5300325C31008B938C00C4C1C400C6C6C600EEEEEE00EEEE
      EE00EDEDED00EDEDED00EDEDED00EDEDED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00E3E3E300BFBFBF00FCFC
      FC00F3F3F300CFD0D100A0968A00D9C1B100D0BCAB00C7B3A100C4AFA000C9B1
      A000C0AB9900BCA59300BDA79600B9A39200B0988A00A8968600AB988900A190
      8300948575009B897A006D615B007C7C7B00B8B8B800C2C2C200C5C5C500C9C9
      C900CCCCCC00D2D2D200DCDCDC00E6E6E600E2E1E10077716F00222020003E3B
      3800807C7B00645F5D005F5C5B004846450027262500A29F9E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00F7F7F700E2E2E2009694
      9200918E8C008A8886008A8886008A8886008B8887008E8B89002E2D2D001413
      1300191818001918180019181800191818001918180019181800191818001918
      1800191818001918180019181800191818001918180019181800191818001918
      1800191818001918180019181800191818001918180019181800191818001918
      1800191818001918180019181800191818001918180019181800191818001918
      1800191818001918180019181800191818001918180019181800191818001918
      1800191818001918180019181800191818001918180019181800191818001918
      180018171700141414006B686600918E8C008887850088868400888684008B88
      8700928F8C00BFBEBE00FAFAFA00FCFCFC00E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE800D5FFFF00D7FF
      FF00005400000058000000580000087B15009BD59E00D3F7F400CFFCF700DBFF
      FA00DBFFFA00DBFFFA00D7FDFA00CFF5E4000061000000540000005600000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F1E4E000AE9B81006CB360004CA941002F9825002EAE350030BA41002EC1
      430028BF410026B73D0025B3380020AD300021AB300021AB300021AB2F0021AB
      300021AB300021AA300021AA2F0021AB2F0021B2320022C33B0022CD430023CF
      450025D1470026D3480025D1460021CA41001EC33E001EC33E001EC43E001AC1
      3A001BC03B0042B34E008A946000BC8F7A00BD8E7B00AA7F6100BF9A8400C0A0
      8C00C7AA9600D3C3B700C1C1C100C7C4C7008089820029512900437B400072A8
      6D007FB378007BAF740078AA6E0077A96E0078AA6F007CAF74007EB378006DA4
      68003D743A003053300094999500DCD7DA00DADADA00FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB009696960000000000E8E8
      E800E0DFDF00B0B0B000DDC7B500BBAC9D00BDA99900BCA99800B7A39300AD9D
      8900B19D8E00B49F8F00B09B8A00AD988800AF998900AD978800A48F7E00A08B
      7A009C8E7E0093806F00806E5F00897767005550490086858500B6B6B600C8C8
      C800D4D4D400DEDEDE00EAEAEA00FAFAFA00989694003C3838002D2928005D5C
      590086807E005B56570056555400424040003735340000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00F9F9F900E6E6E6009998
      9600949290008D8B89008D8B89008D8B89008E8C8A00918F8D002F2F2E001414
      1400191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      190018181800141414006E6B6800959290009A989700A6A5A4009E9C9B00908E
      8C0094929000C2C2C200FEFEFE00FCFCFC00E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000580000BDECE900D5FFFF00D5FF
      FF005BB37B00006A000000590000067B150098D4A100D9F8F70098D7B00060B7
      670066B8680066B8680064B867005BB35B000058000000560000005800000073
      0700B4F5D500038414000059000000560000FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00EDE4DD00BC9B8A00EAC6BC00DDAA8E0074320D00693E0F005A5416004D6E
      2000468A2F0040A340003BB34A003ABC500037B74C0031B0420034B2450037B3
      480038B3490038B34A0038B74A0036C04E0034C7540032C9550031C7540032C7
      540034C9540035CC560034CA550031C7530032C954002EC9500027C34A0041C7
      610099E1A800E8E7DF00F8E7E700F5EFEE00EFEAE300C1AB9B00FBFBFB00F5F8
      FB00F2F5F800F2F4F500E8E8E800D0D0D000D9D7DA00B5B5B5005F716000395F
      3A00437442005A8C59006D9E69006FA06C006C9C6900598A5600427141003A5E
      3A006D7A6E00C7C7CC00E3E3E400E4E3E300FCFCFC00FEFEFE00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00C5C5C500F7F7F700E7E7E700F0F0
      F000DFE1E30092867D00B4A39600B7A59700B3A19300A9988A00AB988A00B09D
      8D00AC998A00AB968300AB978800AF998900A9948400A8928000A9938100A790
      7E009C88750094806E00907D6B00867263007764560085756400655950008988
      8800CDCDCD00E2E2E200F1F1F100D6D5D50075716F0021201F00403C3B008984
      83006A6564005D5B5A004B48470025252400B0AEAE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FBFBFB00ECECEC009F9C
      9B0098979500918F8D00928F8D00928F8D0093908E009693910031302F001414
      1300191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      19001919180015151400726F6C0097959300C2C0C000F5F5F500D5D4D3009794
      930097949200C9C8C80000000000FDFDFD00E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000095D4A400C5F7E600D3FF
      FD00DBF9F20043AB670026913F00007B15009ED6A100D3F9F6005BB47500006D
      0000006F00000070000000700000006F00000055000000580000005900000073
      0700B4F5D500038414000059000000560000EEEEEE00EEEEEE00EEEEEE00EEEF
      EF00E1D7D100B3968500D0B7A900D6A58B00A65E3500AE643D00B36B4500B76C
      4700B5724C00AB825600A58B5A0090864F0080965C0079BC7E005FB66F0047B2
      5E0037B6540031BA510030BF550031C3590035C35A0037C35C0039C35C0038C3
      5B0038C35B0037C15B0039C35C0037C35B002EBF54003FBF60008AD39A00D9E6
      DC00F1E7EF00E7E4E700E1E4E600E1E4E600DFDAD700B7A39300E4E3E000E1E0
      E100E0E0E000DFDFDF00DFDFDF00E0E0E000D6D4D400D4D3D400D3D0D300B6B5
      B7008E958E006F807100617362006574660061736200718072008F959000BDBD
      C100DAD9DC00C7B3A600BDA48F00EFEFEE00EEEFEF00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00FCFCFC00A1A1A10000000000FBFBFB00DDDD
      DD0093909300BFAC9B00B1A19400AC9B8D00AC998800B09D9000B19F9000AD9B
      8B00AD9C8A00B59F8F00B39D8D00AC998900AF998900B39C8A00AD978400A892
      8000A7928000A38B780097836F008F7A64008E7A670089746300867265009481
      6E008B7D6F0093939300EFEFEF009694910034302F002C2C290067615E008883
      8100615E5C005653510043414000323031000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00F2F2F200A19E
      9E0099979500918F8D00918F8D00918F8D0092908E009593910031302F001413
      1300191919001919190019191900191919001919190019191800191919001919
      1900191919001919180019191800191918001919180019191800191918001919
      1800191918001919180019191800191919001919190019191900191919001919
      1800191919001919190019191900191919001919190019191900191919001919
      1900191918001919180019191800191918001919180019191800191918001919
      1900191919001919190019191900191919001919180019191900191919001919
      19001918180015141400706F6C0098969400A09D9C00ACABAA00A3A2A1009492
      900096949100CDCDCC0000000000FEFEFE00E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000590000005A000037920F007BD09600BAF1
      E400D9FFFF00D5FFFF00D7F9DD00208C4200A1D9A500C2F5F4003AA976000056
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F2E8E100BF9B8A00DCC1B000E6B09300B0683800AA5F2F00A35827009B4D
      1F00934118008C361100862C0C00781D0100AE6F4A0000000000F4FCF800D3F5
      DD00B0EEC3008FE1A4006FDA8B0055D3780042CC690037CC600031CC5C0034CD
      600036D0620037CF610034CD5E0038CA610072DA8D00D0F2D900FFFBFF00FBF5
      F900F5F5F500F5F5F500F4F4F400F4F5F700F1EBE700C3AA9800F8F5F200F1F2
      F400F2F2F200F2F1F100EFEFEF00EFEFEF00F1F1F100EEEEEE00E7E7E700E3E1
      E300E3E1E300DCD9DC00D3CFD100D3CDD000D0CCCF00D6D0D100DDDADC00D3C3
      B500B7917400AE7A5000C1967800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00ADADAD00FEFEFE00F0F0F000DADADA00D6D9
      DA00998E8500AFA09400AD9D9200B3A19400B7A59800B8A59600B8A49400C0AB
      9B00C3AC9D00BDA59600BFA89300C4AC9900C3AC9600B9A19000BBA38F00B9A3
      8F00B4998800AC938000A88F7D00A08A770099836E0096806C00998571009C88
      7400A18D7A00B0998600867A710056555400252423004A4443008D8684006A63
      6100635F5E004B49470025252500C1C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F7F7F700A3A2
      A0009C9997009492900094929000949290009492900097959400333232001616
      15001C1B1B001C1C1B001C1C1C001C1C1C001C1C1C001C1C1C001C1C1C001D1C
      1C001C1C1C001D1C1C001D1C1C001D1D1D001E1D1D001D1D1D001D1D1D001E1D
      1D001D1D1D001D1D1D001E1D1D001E1E1E001E1D1D001E1D1D001E1D1D001E1D
      1D001E1D1D001E1D1D001E1D1D001E1D1D001E1D1D001E1D1D001E1D1D001E1D
      1D001E1D1D001E1D1D001D1D1D001D1D1D001D1D1C001D1C1C001D1C1C001C1C
      1C001C1C1C001C1C1C001C1C1B001C1C1C001D1C1C001C1C1C001C1B1B001C1C
      1C001B1B1A0018171700767370009A989700928F8E00908E8C00918F8D009593
      910097969400D3D3D20000000000FEFEFE00E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005900000059000000590000005500000055000040A8
      7500C2FFFA00E2FFFA00D1FFEE00E6F5F300B4E2C600C7F9F70040AB77000056
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F8F8F800F8F8F800F8F8F800F8F8
      F800EBE3DC00C0A08E00DAC3B500DAA98D008336120083320E00843210008232
      10008232100082321000823210007A270900AD795600F9F8F800F8F7FB00FEF7
      FB00FFF8FF00FFF8FE00F7F5F700E8F2EB00CDEBD600ABE3BD008DDAA30071CD
      89005EC778004FC9740062CD8100ADE3BD00F4F4F400F9F1F700EFEEEE00EBEB
      ED00EBEBEB00EDEDED00EDEDED00EBEDED00E8E4DF00C0AB9B00EFEDEB00EAEA
      EA00E8EAEA00EAEAEA00E8EAEA00E8E8E800E7E7E800E7E8EA00EAEAEB00EAEB
      ED00E7E8EA00E4E7EA00E6E7E700B59A8B00CFB9AB00D9C6BA00E8DAD000CCAA
      9100AA794F00B3805900C39E8200F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F6F6F600C0C0C000F4F4F400ECECEC00E8E8E8008585
      8400B4A39600B5A59800BCAC9F00BFAC9F00C1B09F00CAB7A500D0BBA900CFB8
      A700CFB8A500D3BCA900D7BBA800D1B5A100D1B5A100D6BBA400CFB39D00C4AB
      9600C3A79300C1A59200B49C8800AD938000AB907D00A48D7700A1897400A58D
      7A00B0988600B8A088006A615E0033322F00383434006F69680097908E00625F
      5F00545150003B383A00312F2E00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00B8B6
      B500B3B1AF00AAA9A700ABA9A800ACABA900ADACAA00B0AFAD004B4B4B002D2D
      2C00363635003737370038383800393939003A3A3B003C3C3C003E3E3D00403F
      3F00414040004242420043444300454444004545450047474600484747004949
      48004A4A49004B4B4A004B4B4B004B4B4B004C4C4C004C4C4C004D4C4C004D4C
      4C004D4C4C004D4C4C004D4C4C004C4C4C004C4C4B004B4B4B004B4B4B004B4B
      4B004A4A4A004949490048484700474746004646450045444400444444004343
      420042414100404040003F3E3E003D3C3C003B3B3B003A393900383838003737
      3700353636002F2F2F0094939200B6B4B200ADACAB00ACACAA00ACABA900ADAC
      AB00ACAAA900E0E0E00000000000FEFEFE00E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000590000005A000000580000005C0000006C
      0000D3FBE800CCFFF700DBFFF200D7FCFE00DDF9EA00D1FFFD0040A976000056
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F1F1F100F1F1F100F1F1F100F1F1
      F200E4DCD400B99B8900D6BDAD00D6A589008638130086351000853510008434
      10008331100082310E00812F0D0077250700A8745000F2F1EF00EDEEEF00EDED
      ED00EDEDED00EDEDEE00EEEDEE00EFEDEF00F4EEF200F8EFF500FBF4FB00E3D9
      D000C9BAA400D4EBE000E1EAE600F5EDF200EBE8EA00E7E7E700E7E8E800E7E8
      EA00E7E8EA00E6E7E800E7E8EA00E7EBEE00E6E3E000BFA99B00EDEEEF00EAED
      EF00EAEDEE00EAEDEE00EBEDED00EAEAE800E7E6E400E3E0DF00E0DCD900DDD6
      D000DACFC600D4C7BC00D4BFB000A57B5E00D0AF9C00D7C0B200E3D3CA00C9A8
      8F00A8774E00AB7A5100BC967A00F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFA0096969600FEFEFE00FCFCFC00E0E0DF00C7C7CA00A79B
      8F00C1B3A500C1B1A500C7B5A700D0BDAF00D9C6B400D9C3B100D9C1B000E0C7
      B500E0C7B800DCC0AB00DABFA900E5C9AF00E0C3AD00D9BBA400D9BBA400DAC0
      A900D4B7A000CAAC9600C6A99400C1A58F00B4998400AC927D00AC927D00AD93
      7E00AD937E00B89F88005554530029272700514C4C009F989800756F6C006C68
      6500504E4D0029292700D1CFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C8C7
      C600C8C7C500BCBAB900BDBBBA00BEBDBC00C1BFBE00C6C5C3005C5B5B003A3A
      3A004444440045464500484848004A4A4A004C4B4B004E4E4D00505050005252
      5100545454005656560057575700595959005B5A5B005D5C5C005F5E5E006060
      5F00626262006363630065656400656565006666660066666600676767006767
      6700676767006867670067676700676666006666660065656500656565006464
      6400636363006161610060605F005E5E5D005C5C5B005A5A5A00585858005757
      57005555550053535300525151004F4F4F004D4D4D004B4B4B004A4949004747
      4700444444003E3F3E00A7A6A500CDCBCA00C2C0BF00C1BFBE00BFBEBD00C2C0
      BF00BCBAB900E9E9E9000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005900000059000000580000007A
      1500067F1B000058000000580000005800000058000000580000005800000058
      0000005800000058000000580000005800000058000000580000005600000056
      0000005800000055000000560000005800000058000000580000005900000058
      000037AB6200A1F0D100D1FFEF00D3FFFF00D9FFFC00C7FBFC0046AB75000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F5EDE400C6A49000E7CCB900E7AF8F0087310D00872F0A00862F0B00852D
      0A00842C0900822A080082290800771F0000AF784F0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7EA
      E300E6CAB70000000000000000000000000000000000FCFFFF00FBFBFB00FBF7
      F400F8F2ED00F2EDE600EFE6DC00EEDFD400E7D0BF00C1A08700E0C6B300DABC
      AA00D4B39F00CCAA9400C6A38B00C49E8500C3998100BD947B00B7907800B790
      7800B98F7900B7917A00B7917A00A97A5900E0BDAB00E4CCBD00F4E4DA00D6B2
      9600AB784D00B07B5000C49B7E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00E9E9E900D2D2D200FAFAFA00DADADA00D3D3D3008B898B00C6B7
      AC00C7B8AB00D1C0B300E3C9BB00E0CCBB00DFCAB800E4CDBC00ECD6C300E5CC
      B900E0C1AD00E7C9B100E8C9B700E0C3AC00DFBCAB00E3C6AC00E4C6B000DCBC
      A400DCBBA400E1BCA400D6B79F00C4AB9300C4A79000BCA18B00B1978100AD93
      7A00B3988100C0A38B0047423B003B3738007D787500A19B97006E6A68005F5C
      5B00413F3D0039393900EFEFEF00F8F8F800FDFDFD00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDCC
      CB00C7C6C300B9B8B600BAB9B700BBBAB900BDBBBB00C6C5C300504F4F001A1A
      1A00232323002323230024232300242423002424230024242400242424002424
      2400242424002424240024242400242424002424240024242400242424002424
      2400242424002424240024242400242424002424240024242400242424002424
      2400242424002424240024242400242424002424240024242400242424002424
      2400242424002424240024242400242424002424240024232400232424002324
      2300242323002423230024232300232323002323230023232300232322002322
      22002020200022232200A5A3A300C8C6C500BEBDBC00BDBCBB00BCBBBA00BFBE
      BD00BBB9B800F1F0F0000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005600005EB4
      7A004FA4530000690000006A0000006A0000006A0000006A0000006A0000006A
      0000006A0000006A0000006A0000006A0000006A000000690000006A00000061
      0000005A00000066000000690000006A0000006A0000006A0000006A00000069
      0000006C000092E8B700CAFDEE00D3FFFD00CCFFFC00BDF9F90043A66B000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F4F4F400F4F4F400F4F4F400F4F4
      F400E8DFD900C3A49400DCC4B500DDAD90008E411A008C3D16008B3D1700893A
      160086371300843612008332110079270900AE7B5A00F8FBFE00F7F9FC00F5F5
      F500F4F2EF00F2EEEA00F2EAE700EEE6DF00EAE1D700E6DCD000E4D7CD00DDC1
      AF00D0AE9600DCC7B700D9BDAB00D6B6A400D1B09E00CCAB9600C6A69000C6A4
      8D00C3A08A00C09E8900C09C8600C09C8500C19B8200B78F7500BF9F8900C1A4
      8F00C7AA9800CCB0A000CFB7A900D3BFB000D9C7BA00DFD0C400E0D9CF00E4DC
      D600E6DFDC00E8E6E600EEEDEB00B2907A00D3B3A500DAC4B900E7D9D000CDAD
      9600AB7E5500B0805900BF9A8000F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC008E8E8E00F7F7F700E9E9E900E5E5E500C4C4C400B7AB9D00D4C3
      B700DDCDBF00E5D0C100E1D0C000E7D4C100EBD6C400E9D3BF00E5CDBB00E9D1
      BD00E8CDB800E3C7B000DFC4AD00E4C6B100E9C9B000E0C1A900DABCA500ECCC
      B300F8DFC300F3D7BB00F4D7B800DFBCA400C4A89200CDAC9400CCAC9300C7A8
      8F00CAA88F00B7977D00B4AFAF00968E8B009B9390007B777700746E6E00514F
      4E0023242400A49082009B8A7D00B8B9B900F7F7F700F9F9F900FDFDFD00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0CE
      CD00BDBBBA00AEADAC00AFADAC00B0AEAD00B1AFAD00BAB8B700656463002B2A
      2A00333333003333320032323200323232003131310032313100313030003130
      300030302F0030302F002F2F2F002F2F2E002F2F2E002E2E2E002E2E2E002D2D
      2D002D2C2C002D2C2C002C2C2C002C2C2B002C2B2B002B2B2B002B2B2B002B2B
      2B002B2B2A002B2A2A002A2A29002A2929002A29290029292900292928002828
      2800282827002827270027272700272626002626260026262600262525002625
      2500252524002525240025242400242424002424240024242400242424002423
      230020201F002B2B2A00A6A5A400B6B5B300B1B0AE00B1AFAE00B0AEAD00B5B3
      B200B4B2B100F7F7F6000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB148000059000000590000005F000000751800BFE5
      D90084BF79003D9917003D9A17003D9A17003D9A17003D9A17003D9A17003D9A
      17003D9A17003D9A17003D9A17003D9A17003D9A17003D991700499D18000E7B
      0000006700001A951800329917003D9A17003D9A1700409918003D9A17003596
      1700067E2F00B4EDCB00D1FFF200D3FFFA00D1FFF300BFFFF90026913E000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F4F4F400F4F4F400F4F4F400F5F5
      F500E7DFD700C0A18E00DCC3B200DDAA8C008D4017009042180095481D009A4E
      22009E542600A35B2D00A8613500A9613500C68C6700DDBAA300D4B39C00D7AE
      9500D6AB9000D1A88D00CFA58A00CFA68B00CFA88D00CFA98F00CCAB9500CDA6
      8E00CCA38700D7BCA900D7C0AE00DCC6B600E0CCBD00E4D4C700E6DCD000EAE0
      D700EBE4DF00EEE8E600EFEEED00F1F1F100EDE8E300C6AF9F00F4F4F400EFF2
      F400EEF1F200EDEFF200EDEFF200EBEEF100E8EBEE00E7EAEB00E7E8EA00E7E8
      EA00E4E6E700E3E4E700E7E6E300AF8A7300D1B2A000DAC0B600E7D7D100CCA9
      9100A6744A00AB784E00BC947700F5F5F500F4F5F500F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F4000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00D7D7D700E1E1E100FAFAFA00E7E7E700CACACC008B898900E5D4C700E1D3
      C300E3D3C600E8D6C600EDDACA00EBD7C900E8D3C100E9D4C300EBD4C100E8D3
      C000E1C4AF00E3C7B300E7C9B300E1C3AB00EBCFB700EDCCB300B9A893007B68
      5E0049423C0027252400181819001415150011121200161616001C1C1C003433
      340047444000857B74009F949300FBF8F700FBFAFA00A8A5A100686461003837
      3A0036363300D7B79B00BDA48D00C0A58F0097897F00BBBBBB00F7F7F700F9F9
      F900FEFEFE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D4D3
      D200B4B2B000A8A7A500A8A7A500A8A7A600A8A7A600B1AFAD00727270003130
      3000383838003838370037373700373737003737370037373600363636003636
      3500353535003535350034343400343434003333330033333300333332003332
      31003232310032313100313130003030300030302F002F2F2F002F2F2E002F2E
      2E002E2E2D002E2D2D002D2D2C002D2D2C002D2C2C002C2C2B002C2B2B002B2B
      2B002B2B2B002B2B2B002B2B2A002A2A2A002A2929002A292900292929002928
      2800282828002828280027272700272727002727260026262600262625002626
      25002222210035343400A6A4A200ABA9A800A8A7A600A8A7A600A8A7A600AEAC
      AB00B3B2B000FBFBFB000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005C0000005C000000710E00EAFDFF00CCFF
      FD00CFFDFD00D9FFF900D9FFF900D9FFF900D9FFF900D9FFF900D9FFF900D9FF
      F900D9FFF900D9FFF900D9FFF900D9FFF900D9FFFA00D9FCFD00E6FFFF0066B0
      880000743000D3FDFF00D7FFFC00D9FFFA00D7FDF900DDFBFF00CFFFFC00DBFF
      F900F5FFFF00E0FFFC00D7FFFD00DDFFFC00EFFDF900CFFFFF00005600000059
      0000005C00000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F5EEE600CAAB9600E7CDBA00F2C09F00D38B5E00D68C6000D48B5F00CF85
      5900C97F5100C37A4D00BD744500AE643200CD8E6900F2DFCC00F2E4D400F7EA
      DC00FBEFE400FEF5EE00FEF9F500FEFBF800FFFEFB000000000000000000F8EE
      E400E8D1BC0000000000000000000000000000000000FEFFFF00FCFEFF00FEFE
      FF00FBFEFE00F9FBFC00F9F9FB00F9FBFE00F7F2EE00CFB6A500FBF8F700F7F7
      F800F7F7F700F7F5F500F5F5F500F5F5F500F5F5F500F4F4F400F4F4F400F4F4
      F400F4F4F400F2F4F400F5F4F100BA917A00DFBDA900E6CFC000F4E7DF00D7B2
      9900AD774D00AF7B4F00C19A7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB009C9C9C0000000000E0E0E000D1D0D000B5B8B700D4C3B900E1D4C700E9D7
      CC00EFDFD000EDDCCF00E9D7C700ECD7C700EDDAC900EBD6C400E7D0BD00E7CD
      B900E5CAB700E5C6B100E4C7AF00D7C4AC00776860002D2D2D003A3A3C005553
      4F005F5A5800615C5E006B676500726E6C0065616000413D3D002A2827002B29
      28004A4645003A363700ADA59F000000000000000000FFFEFE00A3A5A700DABC
      A300E0BDA000CAAC9200C9AB9200BDA38B00B99D8800C4A98B0083786F00C9C9
      C800F1F1F100F9F9F900FEFEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DBDA
      D900B1AFAD00A7A5A300A7A5A300A7A5A300A7A5A300ACABA90081807E003838
      38003E3E3E003E3E3D003D3D3C003D3C3C003C3C3C003C3C3B003B3B3B003B3B
      3A003B3A3A003A3A390039393900393938003938380038383700383737003737
      3700373737003737360037363600363635003635350035353400353434003434
      3300343333003333320033323200323232003231310031313100313030003030
      300030302F00302F2F002F2F2F002F2E2E002E2E2E002E2D2D002E2D2D002D2D
      2D002D2C2C002C2C2C002C2C2C002C2B2B002B2B2B002B2B2B002B2B2B002B2B
      2A002424240044434300A8A7A500A7A6A400A7A5A300A7A5A300A7A5A300AEAC
      AB00B8B7B500000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005A000000590000006700006CBA6100C5FB
      F400CAFFF100CCFFF700CCFFF700CCFFF700CCFFF700CCFFF700CCFFF700CCFF
      F700CCFFF700CCFFF700CCFFF700CCFFF700CCFFF700CCFFFA00DBFFFF005EB1
      880000763000C7FDFF00CAFFFC00CFFFF700D3FFFA00D5FFFA00CFFFF900D1FD
      F900CAFCEF00D5FDFE00D3FFFF00D1FDFF00BFF3F0006CC46B0000590000005A
      000000590000005A000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000EFEFEF00EFEFEF00EFEFEF00F1F1
      F100E6DFD700C4A89500DCC4B300DFB094009850240091471D008E421A008C40
      19008A3D170087381500853713007C2C0B00B27F5E00F5F7F900F2F5F800F1F2
      F500EFF2F400EFF1F200EFF1F200EEEFF100EDEDEE00EBEDED00EEEFF100E4DA
      D100D9C3B000EEF1F100EBEBEB00EBEBEB00EBEBEB00EAEAEB00E8E8E800E7E8
      E800E7E8E800E8E8E800E7E7E700E7E8E800E6E1DD00C6B2A100EAE7E600E4E4
      E400E6E4E400E6E6E600E4E4E400E3E3E300E3E3E300E4E4E400E3E3E300E3E3
      E300E3E3E300E3E3E400E7E4E100B6937C00D4B5A400D9C4B600E6DAD000CCAB
      9500AA795300AB7C5500BA967A00F1F1F100EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00B0B0
      B000FBFBFB00E5E5E500E9E9E900DDDDDD0098949000F3E3D700EFE0D400EFE0
      D300ECDCCF00ECDCCD00EFDFCF00EFDCCA00E9D4C400E9D3C300ECD7C600E8CC
      B800E5C7AF00DFC6AF004A454300413F42005E5A5900615E5B006E6867007A75
      7400837E7D00807D7A007D77750072727100747271007B777500807B7A006F6C
      6B00686564007D78770086838100FEFCFB0000000000F3F2EF007E7D7A00ECC4
      A500DABB9F00D9B79B00CFAF9300CAAB9000C7A99200BCA18600B3967500C4A7
      7E007D726500D0D1D100F2F2F200FBFBFB00FEFEFE0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4E3
      E300B0AEAC00A7A6A400A7A6A400A7A6A400A7A6A400ACABA9008E8D8B004343
      4200464545004545440045444400444444004444440044444300444343004443
      4200434242004242410042414100414140004140400040403F00403F3F003F3F
      3E003F3E3E003E3E3D003E3D3D003D3D3C003D3C3C003C3C3B003C3B3B003B3B
      3A003B3A3A003A3A39003A393900393838003938380038383700383737003737
      3700373737003737360037363600373635003635350036353500353534003534
      3400353433003433330033333200333332003332320032323100323231003131
      31002A2A290055545300ADACAA00A7A6A400A7A6A400A7A6A400A7A6A400B1AF
      AD00C0BFBE00000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB148000059000000590000005F00000377000072CE
      82005BBE78002094560023945600269456002694560026945600269456002694
      56002694560026945600269456002694560026945600269456002F955A000E77
      1F00006700001A8F5B001D925700209456003DA56A00C2FDE900D1FFF400D1FF
      F300C5FBEF00D1FFF700D1FFFD00D5FFFF00CAF1E60014800F00005900000058
      000000580000005A000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F9F9F900F9F9F900F9F9F900F9F9
      F900EDE4DF00CAA89400E3C9B700E3AF8F008E3A11008C360E008C370F008B36
      0E008A340E0089320E0087310D007E250600B57C5600F9F9F900F8F9F900F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700F5F5F500F7F8F900EBE1
      D700E0C7B300F8F9F900F4F4F400F2F4F400F4F4F400F4F4F400F4F4F400F1F1
      F100EFF1F100F1F1F100EFF1F100EFF1F200EEE8E300CAB3A100F2F2EF00EEEE
      EF00EDEDED00EDEDED00EDEDED00EDEDED00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EAEAEA00E8EAEB00EDEDEA00B7907800D9B6A400DFC6B700EEE0D700CFAB
      9300A5714500A9734700B9917300F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F9000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD0000000000B1B1
      B10000000000F2F2F200C6C6C60093969700E5D6CC00EDE3D400EFE0D400EDDF
      D100EFE0D300EFE0D100ECDCCC00E9D7C700EBDAC900EDD9C700E9CFC000F6E0
      C6005B5551004A4747005B585800605C5B0068646300716B6C006C6865007E78
      7500ABA7A400DCD7D600EFEDED00F7F6F700FBFCFE00FCFEFF00FCFEFF00FBFC
      FE00F7F7F800ECEBEC00D0CCC900A19B99009F9B9800858383002F2F2D002425
      2800C7B09800DFB99B00DCB89B00D7B59700CFAB8F00C9A98E00C6A78F00BC9D
      7D00B8986B00B99C6E00947E6A00D8D8D900F8F8F800FDFDFD00000000000000
      000000000000000000000000000000000000000000000000000000000000EBEB
      EB00ACABAA00AAA8A700A9A7A600A9A7A600A9A7A600ACABAA009A9897004E4D
      4D004D4D4C004D4D4C004D4C4C004C4C4B004C4B4B004B4B4B004B4B4B004B4B
      4A004B4A4A004A4A49004A494900494948004948480048484700484747004747
      4600464645004646450045454400454544004444440044444400444443004443
      430043434200434242004242410042414100414140004140400040403F00403F
      3F003F3F3E003F3E3E003E3E3D003E3E3D003D3D3C003D3D3C003C3C3C003C3C
      3B003B3B3B003B3B3A003B3A3A003A3A39003A3A39003A393900393938003938
      38003131300067666500B0AEAC00A9A7A600A9A7A600A9A7A600A9A7A600B5B3
      B100C9C9C800000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB148000059000000590000005F00000377000072CE
      82005BBE78002094560023945600269456002694560026945600269456002694
      56002694560026945600269456002694560026945600269456002F955A000E77
      1F00006700001A8F5B001D925700209456003DA56A00C2FDE900D1FFF400D1FF
      F300C5FBEF00D1FFF700D1FFFD00D5FFFF00CAF1E60014800F00005900000058
      000000580000005A000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F5EDE700D3B09B00EDD1C100EDB9990096451800953F140094401500913F
      1400913D13008F3B12008E391300842D0A00BF85600000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5EA
      E000E8D1BD0000000000FEFEFE00FCFCFC00FCFCFC00FCFCFB00FCFCFC00FBFC
      FC00F9F9F900F8F9F900F8F9F900F8FBFC00F7F2EE00D3BDAB00FBFBFB00F8FB
      FC00F8F9FB00F7F9FB00F7F9FB00F8FBFC00F8FBFE00F8FBFE00F8FBFE00F9FB
      FE00F8FCFE00F7FCFF00FCFEFE00C19A8200E0BFAA00E7D0C100F7E8E300D6B3
      9B00AA774A00AE784D00C0967A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA00959595000000
      0000E8E8E800CFCFCF00D7D6D600B0A9A500F6EBE100EFE3D900F2E4DA00F2E3
      D700EFE0D100ECDCCF00EDDDCF00EDDDCD00ECD9C700EDDCCC00D7C6B800423D
      3F00595351005A5655005F5A59006A6564007A747100B5B0AC00E8E7E5000000
      0000F6EDE700E8D4C100E0C0A900D3B19800D3AD9000D4AF9300D9B39600D9B4
      9600DCB99D00DCC0AC00E8D6C900FBF8F600F7F8F800C4C1C1008F8D8A007D77
      7500494A4C009F8F7E00E5BC9F00D9B49600DAB59700D7B19400CDA98D00CAA7
      8800C6A48500BB9B6F00BF9D6700B1976700A7A2960000000000FEFEFE000000
      000000000000000000000000000000000000000000000000000000000000F4F3
      F300ACA9A900ADACAB00ABA9A800ABA9A800ABA9A800ACACAA00A3A2A1005A5A
      5900555454005656550055555500555554005454540054545300535353005352
      52005252520052515100515151005150500050505000504F4F004F4F4F004F4E
      4E004E4E4D004E4D4D004D4D4C004D4C4C004C4C4B004B4B4B004B4B4B004B4B
      4A004B4B4A004A4A4A004A4A4900494949004948480048484800484747004747
      4700474646004646460046454500454545004544440044444400444444004444
      4400444443004443430043434200434242004242410042414100414140004140
      4000383837007F7D7D00B2B0AF00ABA9A800ABA9A800ABA9A800ABA9A800B8B7
      B500D4D3D300000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005A0000005A0000005900000E8B
      0E00007901000055000000550000005500000055000000550000005500000055
      0000005500000055000000550000005500000055000000550000005500000058
      000000590000005100000054000000550000006F0000BDF5E400D1FFF600D1FF
      F400CFFDF700D1FFF700D1FFFE00B4EBDB0069B87B0000610000007A0E001A86
      2100006A0000005A000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00E4DDD600C9A99800DDC4B700DFAF9400964C1F0095471D0094471D009347
      1D0093461B0091431A008F421A0086381300B7846200F1EFEE00EEEEEE00EEEE
      EE00EEEEEE00EDEDED00EDEDED00EDEDEE00EDEDEE00EDEEEE00EEEFF100E6DC
      D600DCC6B500EFF2F400EDEEF100EDEFF200EDF1F200EBEFF200EDF1F400EDF1
      F200EEEFF100EDEEEE00EBEDED00EBEDEB00EAE3DD00CAB3A000E7E1DD00E1DD
      D900E1D9D300E0D3C900DCCCC000D9C4B600D6BFAF00D3B9A600CDB2A000C9AD
      9A00C4A89400BFA38F00BD9E8900B58A6D00D4B9A800D9C1B500E6D9D300CAAB
      9400A6754D00A9784E00B7907500EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00EEEEEE00D6D6D600EFEF
      EF00E8E8E800D7D7D7008F949600E8DDD700F2E5DA00F4E7DD00F0E4D900EFE0
      D600EFE1D400F0E1D400ECDDCD00E9D7C700F7E4D600B0A59F00302E30005F5B
      580055535100656160007D787700BBB4B100FCFCFC00F7F2EC00E3CCBC00CAA4
      8500CFA58600D7B39600D9B59800DAB59B00D7B39600D4AF9300D3AF9200D7B3
      9700DAB59800DDB79900D9AF9000CFA38100D3B39B00EDE4DA0000000000BCBB
      B80084817E0054545500A5928100E5BF9F00DAB49600D7B09300D9B79300D4B0
      9200CCA88100C9A57E00C2A17500BD875F00B57A4F00EDE1D900000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00B5B4B200B2B1AE00ACABA900ACABA900ACABA900ADACAB00ABA9A7006767
      67005B5B5B005D5D5D005D5D5D005C5C5C005C5C5C005B5B5B005B5B5B005A5A
      5A005A5A5A005959590059595900585858005858580057575700575757005757
      5700565656005656560055555500555555005454540054545400535353005353
      53005252520052525200515151005151510050505000505050004F4F4F004F4F
      4F004E4E4E004E4E4E004D4D4D004D4D4D004C4C4C004C4C4C004B4B4B004B4B
      4B004B4B4B004B4B4B004A4A4A004A4A4A004A4A490049494900494948004848
      4800434343008E8D8B00B3B1AF00ACABA900ACABA900ACABA900ACABA900B9B7
      B400E0DFDF00000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005500000060
      0000005D00000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005A0000005A000000710000C5F1E700CCFFFA00CFFF
      FC00D3FFFE00D3FFFE00D5FFFF007ECEA400005C00000059000060B76900A6DB
      9D002F972900005F000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00F1E8E300D3AF9B00E8CFBF00EAB39400953E130091390F0090380F008F37
      0E008D350C008A320B00872F09007C220200BA80590000000000000000000000
      00000000000000000000FEFFFE00FCFCFB00FCFBF900FCF8F500FBF5F100EFE0
      D000E4C6AD00F2E8DF00EFE0D300EEDACA00EBD4C100E7CFBA00E3C7B300E3C3
      AB00E0BDA600DCB7A000D7B29900D3AD9300D4A98D00CC9B7B00D1A88B00CDA4
      8900CAA48700CDA48B00CDA58C00CFA68F00CDA89000CDAA9400D1AF9900D4B3
      9F00D7B7A500D9BFAD00DCC6B200BC907300DFBDA900E3C9BC00F2E7DF00D1AF
      9600A56E4100A9714300B98F6F00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA008383830000000000F3F3
      F300D0D0D000B7B7B700B0A8A300F8F0E700F2E7DF00F0E5DC00F2E5DC00F2E5
      DA00EFE1D400EDDFD100EDDDD000F7E7D7009B938B003C3A3C00555151005A55
      5500746F6F00A8A19F00FFFEFE00FAF7F700CFB09400D6AD8D00DCB59800DAB5
      9700D6B09400D3AF9200D3AF9200D6B19300DAB59800DCB59700D6B19400D4AF
      9200D4AF9200D6B09300DCB49800DAB59700D9B39400D1AC8A00CDA88B00F4F2
      F200FBFAFA007E7878005F636100B79F8900DFB79700DDB79700D7B09200D6AF
      8E00D7B39200D4AE8D00D1A06800D49E6C00A87B5C00FFFBFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0BEBD00B8B6B500AEACAC00AEACAC00AEACAC00AFADAC00AEADAC007979
      7800636363006666660066656500656565006564640064646400646363006363
      6300636262006262620062616100616160006160600060605F00605F5F005F5F
      5E005E5E5E005E5E5D005E5D5D005D5D5C005D5C5C005C5C5B005B5B5B005B5B
      5A005A5A5A005A59590059595900595858005858580058575700575757005757
      5700575757005756560056565600565555005555550055545400545454005453
      5300535353005352520052525200525151005151510051505000505050004F4F
      4E004D4D4D009B9A9900B3B1B000AEACAC00AEACAC00AEACAC00AFADAC00B4B2
      B100EBEAEA00000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005600000056
      0000005400000058000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005A0000005A000000710000C5F1E700CCFFFA00CFFF
      FC00D3FFFE00D3FFFE00DBFFF40095C59A00005500000056000081D28C00C2FD
      FD00ACF3DC00006B000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00F4EBE400D7B5A000EBD3C400EBBA9B009C4E1F009E4C1F009B5021009F54
      2400A3592800A85F2E00AB643200AB623200D4997400F4DCCA00EDD6C100EAD0
      B900E8CAB200E8C7AE00EAC4A800E6C0A400E1BA9F00E1B99C00E1B99E00E3B5
      9800E3AF9100DFB9A000DFBAA000E1BDA400E4C0A600E4C3AB00E1C7AF00E4CC
      B500E7D0BC00EBD4C300EEDACD00EDE0D600EDDDCF00D7BAA400F5EBE300F7EF
      EA00F7F4EE00F7F4F100F8F7F500F9F8F800F9F9FB00F7F9FC00F7F9FC00F7F9
      FC00F7F9FB00F5F8FC00F9FBF900C6A08900E0C0AD00E4CDBF00F4EAE100D4B3
      9B00AB744C00AE784D00BD957700FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000FDFDFD00DCDCDC00EDEDED00EDEDED00CDCD
      CD00CFCDCD00A1A3A400F3EFE800F2E7DF00F3E9E000F4E9E000F3E7DD00EFE3
      D700EFE3D700F2E3D700F3E3D600948E8600474544005653510067616000756C
      6B00E5E0DF0000000000E5D7CA00EDD3C000D0AF9300D3AF9200D3AD9000D6B1
      9400D9B49700DAB49700D7B39300D3AD8F00D3AD9000D6B09300D9B49400DAB3
      9600DAB19400D4AF9000D4AF9000D4AF9000D9B39300D9B39400D9B09200D0A5
      8000E1D9CF00FFFEFE00969092004C505400D1AF9300D3AC8F00D7B09000DAB3
      9300D9B19700D4AB7100DCAD7200E1AD6F00E9D8CA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCCBC900BDBBBA00B0AEAD00B0AEAD00B0AEAD00B0AEAD00B3B2B0008887
      86006C6C6B007270700070706F00706F6F006F6F6E006F6F6E006F6E6E006E6C
      6C006E6C6C006C6B6B006C6B6B006B6A6A006B6A6A006A6868006A6868006867
      6700676766006766660066666500666565006665650065646400656464006463
      630063636200636262006262610062616100616160006160600060605F00605F
      5F00605F5F005F5E5E005E5E5D005E5D5D005D5C5C005D5C5C005C5C5B005C5B
      5B005B5B5A005B5A5A005B5A5A005A5959005A59590059585800595858005757
      56005A595900A7A5A300B3B1B000B0AEAD00B0AEAD00B0AEAD00B3B2B000B2B1
      AF00F5F4F400000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005900000059000000560000005C
      0000005F0000005A000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005A0000005A000000710000C5F1E600CCFFFA00CFFF
      FC00D1FFFE00D3FFFE00CAFCFF000066000000520000004F0000C2F1EE00D1FB
      FF00CAE9E900005A000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00E6DDD700CCAD9A00DDC4B500E6BA9E00D7936B00D6936800D0916800CC8D
      6500C7895F00C3845A00C0815600B6784C00CF997700E6CDBC00E6D1C000E8D4
      C400EAD7CA00EADACD00EBDDD100EBE0D600EBE3DA00EAE4DD00EDE8E400E7DA
      CF00E0C9B600F1F2F400EEF1F200EEF1F100EEF1F100EEF1F200EEF2F400EEF1
      F400EDEFF200EDEEF100EBEEF100EBEEF100E8E7E400CDB9A900EAEAEA00E6E8
      EA00E6E7E800E6E7E700E4E6E600E4E6E600E4E6E600E4E4E400E3E3E300E3E3
      E300E3E3E300E1E3E400E6E4E100BF9A8300D3B6A400D7C1B500E7DCD400C9AA
      9400A36F4900A5724A00B38D7200EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C00EDEDED00E7E7E700DADA
      DA00BBBCBC00A9A19D00F6EDE300F6ECE400F3E9E100F2E7DD00F2E5DD00F3E7
      DD00F0E4DA00F0E3D600D1C7C000444142005C5858006B65630088817E00F4F2
      F000F2EFEC00E4D1C100E8D3C000E8D4C100DDB59B00D7B19400D4AF9200D0AB
      8F00D3AF9000D6B19200D9B19600D9B39600D6B19300D3AD8F00D3AC8E00D4AF
      9000D9B19400D9B39400D6B09200D3AD8E00D1AB8D00D3AD8E00D7B09000D6B1
      9200D1A48300DDCFC9000000000098969300635F5C00F0C39C00D9B19000D4AB
      8900D6AE8500DBAF7200DDB17400B78C6900FFFEFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9D9D800C1BFBE00B1B0AF00B2B0AF00B2B0AF00B1B0AF00B6B4B3009392
      9100777776007C7A7A007A7A7A007A7A79007979790079797800787878007878
      7700777777007777760077767600767674007674740074747300747373007373
      720073727200727270007270700070706F00706F6F006F6F6E006F6E6E006E6E
      6C006E6C6C006C6C6B006C6B6B006B6B6A006B6A6A006A6868006A6868006868
      6700686767006767660067666600666665006665650065656400656464006464
      6300646363006363620063626200626261006261610061616000616060005E5D
      5D0068676700ADACAB00B4B2B100B2B0AF00B2B0AF00B2B0AF00B9B7B600BBB9
      B800FDFDFD00000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB1480000590000005900000059000000580000005A
      0000005C00000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000580000005600000056000000710000C7F8ED00CFFFFF00D1FF
      FF00CCFCFF00D5FFFD00CCFCFF0060C69B0064C5A10064C69B00C7FDFF008CDD
      CD001A9147000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F5EEE700DAB7A100EED4C300EFBC9A00A44F1F009F4718009B421600993F
      1300953D11008F380F008E350C0082250400C1855F0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8EE
      E600EED7C300000000000000000000000000FEFEFE00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FBFBFB00FCFCFE00F9F5EF00D9C4B000FCFCF900F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F7F7F700F7F7F700F7F7F700F4F4
      F400F4F4F400F4F4F500F8F7F400C9A08500E1C1AA00E4CFBF00F8EDE700D4AF
      9900A36B3F00A66D4100B78D6F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00BCBCBC00FEFEFE00F8F8F800D6D6D600BCBB
      BB009B9B9B00FFFBF600F4ECE500F3EBE300F3E9E100F4EBE300F3E8DF00F0E5
      DA00EFE3D700EDE7DF002D2B2C005F5B5A006B6564008F888500FFFFFE00F0EB
      E800ECD9CA00ECDACC00E8D6C400E5D1C000D9B59C00D4B09200D9B39700D7B3
      9400D4AF9200D3AC8E00D1AD8E00D4AF9200D9B39400D9B19300D4AF9000D1AC
      8E00D1AB8E00D4AD8F00D7B19200D9B09200D4AD8E00D1AC8D00D0A88900D3A9
      8800D1AB8B00CFA38000E3DDDF000000000072747500A38B7700D3AB8A00DCB7
      9800D5A97100DBAF7500D8A96C00F6EAE0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6E6E500BFBDBB00B4B3B100B4B2B000B4B2B000B4B2B000B8B6B4009D9B
      9A00807F7F008382820083828200828282008281810081818100818080008080
      8000807F7F007F7F7F007F7F7F007F7E7E007E7E7E007E7D7D007D7D7D007D7C
      7C007C7C7C007C7A7A007A7A7A007A7979007979790079797900797878007878
      7800787777007776760077767600767474007674740074737300747373007372
      7200737272007270700072707000706F6F00706F6F006F6E6E006F6E6E006E6C
      6C006E6C6C006C6C6B006C6B6B006B6A6A006B6A6A006A6868006A6868006464
      64007A797800B4B3B100B4B3B100B4B2B000B4B2B000B4B2B000BFBEBC00C8C6
      C50000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000058000000560000006E0000B7E9CE008FD9A80095D9
      9D00BFFBFF00CFFFFD00D5FFFF00C7FFFC00C7FFFF00CAFFFC00B7F0DD0057BD
      7B00005F00000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F9F9F900F9F9F900F9F9F900F9F9
      F900F1E8E100D9B9A500EAD3C400E8B99B00A0512100A04E1E009F4E1F009E4C
      1F009E4A1E009B4A1D0098491D00903E1500C68E6B00F9F9F900F9F9F900F8F9
      F900F9F9F900F9F9F800F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F2E8
      E000EAD4C100F9F9F900F8F7F800F7F8F800F8F8F800F7F7F700F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F4F5F500F2EEEA00D9C3B200F7F5F400F2F2
      F400F1F1F100F1F1F100F1F1F100F1F1F100EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EEEEEE00EDEDEE00F1EFEE00CCA48C00DFC0AD00E0CCBD00F1E8E100D0B2
      9B00A6734A00A9744D00B9907700F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F9000000000000000000000000000000
      000000000000FEFEFE00FAFAFA00AAAAAA00F7F7F700D1D1D100CCCCCC00BCBC
      BC00ADA9A500F3E9E300F6EDE800F7EDE700F4EBE400F3E9E100F3E8E000F4E8
      E000FFF6EC006C646300645F5E00746E6B00857E7A00FFFEFE00EFECEB00EDDF
      CF00EDDDCF00ECDCCD00ECD9C900E9D6C400E0C4AF00CFA78A00D1AC8F00D6B0
      9200D7B39400D7B09400D3AD8F00D1AB8D00D0A98D00D4AF9000D7B19300D7B0
      9200D4AF9000D1AB8D00D0A98A00D1AB8B00D4AD8E00D6AF8E00D3AB8B00CFA5
      8600C9A18300C49D7B00C6A07E00F2EDEF00E5E3E0005B595900ECBB9700D1A5
      7300D8AB7200E4B17400BB977B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3F3F300B6B5B400B7B6B500B5B3B200B5B3B200B5B3B200B8B7B600A4A4
      A300868686008888880088888800888888008888880088888800878787008787
      8700878686008686860086868600858585008585850084848400848484008383
      8300838383008282820082828200828282008181810081818100808080008080
      80007F7F7F007F7F7F007E7E7E007E7E7E007D7D7D007D7D7D007C7C7C007C7C
      7C007A7A7A007A7A7A0079797900797979007979790078787800777777007777
      7700767676007676760076767600747474007474740073737300727272006C6C
      6C0087878700B8B7B500B5B3B200B5B3B200B5B3B200B5B3B200C5C2C100D6D6
      D50000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005C0000005C0000006D00001A8B2900B2DFB4005EBA610060B1
      4700CAF8F300D3FFFF00E0FFFF00D5FFFF00D7FFFF00D1FFFE009BD5A200238E
      2700005800000058000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000EFEFEF00EFEFEF00EFEFEF00EFF1
      F100E8E0D900D3B3A000E3CABD00E1B095009F4F20009F4C1D009C4C1D009B49
      1D0099471C0099461A0096461A008C3A1300C08A6600F2F1F100EFEFF100EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFF1F100EAE0
      D700E3CDB900EFF1F100EEEEEE00EDEEEE00EEEEEE00EEEEEE00EDEDEE00EBEB
      ED00EBEBED00EBEBED00EBEDED00EBEDEE00EAE6E300D1BDAD00EEEDED00EBEB
      EE00EAEBED00EAEAEB00E8EAEB00E8EBED00EAEBEE00E8EBED00E8EBEE00E8ED
      EE00EAEDEF00E8EDEF00EDEEEE00C6A18900D7B6A500D9C1B300E8E1DA00C7A9
      93009F694100A16C4200AF8A6D00F1F1F100EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF000000000000000000000000000000
      000000000000FBFBFB00A0A0A00000000000EBEBEB00E3E3E300BDBDBD008685
      8500FAF6F000F6EDE800F6EFE900F4ECE500F4ECE500F6ECE400F4E9E100EDE3
      D900C4BDB8003B3A3A00746E6C006E676400F2EDEC00F0EFEC00F4E5DA00F0E3
      D700ECDDD000E9D9CA00E9D7C700EBD7C700EBD6C600D4AD9000D1AB8E00D0AB
      8D00D0AB8D00D4B09000D7B09200D7B09300D3AD8E00D0A98D00D0A98B00D3AD
      8E00D7B09000D6AF8F00D4AC8D00CFA88900D0A78800CFA88800D3A98A00D0A8
      8900CAA38300BF987700AD846100D9D0CA00FFFEFF0093929400C09C8400D8A9
      7200DAAC7500CC9B6700FBF0E900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00BFBEBC00BEBCBB00B7B5B400B7B5B400B7B5B400B9B8B600AAA9
      A9008C8C8C008E8E8E008D8D8D008D8D8D008D8D8D008C8C8C008C8C8C008C8C
      8C008B8B8B008B8B8B008B8A8B008A8A8A008A8A8A0089898900898989008888
      8800888888008888880088888800888888008787870087878700868686008686
      8600868686008585850085858500848484008484840083838300838383008282
      820082828200818181008181810080808000808080007F7F7F007F7F7F007F7F
      7F007E7E7E007E7E7E007D7D7D007D7D7D007C7C7C007C7C7C007A7A7A007474
      740094939200BBBAB800B6B5B400B7B5B400B7B5B400B7B5B400C5C2C100E5E4
      E40000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      00000059000000590000005F00005EA96100DBFBE800D9FFFE00D3FFFE00ACE2
      CD00EAE7C400E4F9F200E2FCFF00E2FBFF00E0F9FF00D5FBFC006CA874000054
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F9F1EB00E3BFA900F5DCCA00F2BD9B00A44C1B00A3471700A1481800A046
      17009E4316009B4115009B4013008F340B00CA8D670000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCF4
      ED00F4DFCC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFBF500E0CCB500FFFCF700FCF8
      F500FBF7F200FBF5EE00F8EEE700F8EBE100F4E7DC00F2E3D700EFDFD100EDDA
      CC00EDD6C600EBD1C000E8CCB600D09F7F00E8C7B500EBD4C700FEF7F100D3B0
      9800A1653900A4673B00B68B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FBFBFB00C7C7C700FCFCFC00DFDFDF00B9B9B900ADAFB100C3BD
      B900EFE7E400F3EDE800F6EFE900F7EFE900F7ECE500F3EBE300F3E9E100FFFA
      F40058545100726E6B0067605E00E3E0DD00F6F6F700ECE1D900F2E5DC00F2E5
      DA00F0E1D400EDDDCF00E9D7C900E8D6C400E9D7C900D7AF9300D6B09300D4AF
      9200D0AB8E00D0AB8B00D0A98B00D3AC8E00D6AF9000D4AF8F00D1AB8D00D0A8
      8A00D0A88900D1AB8B00D6AD8E00D3AC8D00D1A88900CCA78400C9A18100C79F
      7E00C39C7B00BB977700B5906E00CCB5A300F0ECED00E3E4E50072675800DAAB
      7100E7B47600C8A88F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CDCBCA00C6C5C200B8B6B500B8B6B500B8B6B500BAB8B700B1AF
      AE00939392009392920093929200939292009292910092919100929191009191
      90009190900090909000908F8F00908F8F008F8F8F008F8E8E008F8E8E008E8D
      8D008E8D8D008D8D8D008D8C8C008D8C8C008C8B8B008C8B8B008C8B8B008B8A
      8A008B8A8A008A8A89008A898900898888008988880088888800888888008888
      8800888787008887870087868600878686008686850086858500858584008584
      8400848483008483830083838200838282008282810082818100828181007C7C
      7C009E9C9C00BDBBB900B8B6B500B8B6B500B8B6B500BAB8B700BBB9B700F1F1
      F10000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005800000055000037A57200CCFFFF00D3FFFE00D3FFFE00BFFB
      F700006F000000700400006E0600006F060000710600006B0600006100000058
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F5F5F500F5F5F500F5F5F500F5F5
      F500EEE6E000DDBAA600EAD4C400E6B79A00A1532300A04E1F009F4F1F009C4D
      1F009B4A1D0099481C0099471C008F3E1500C48E6D00F9F8F800F8F7F500F8F5
      F200F8F4F100F7F2ED00F5EFEA00F4EEE800F2EBE400F2E8E100F1E7DF00EDDA
      C900E8CAB000EFE1D600EEDDCF00EBDACA00EAD7C700EAD3C300EAD0BD00E7CD
      B900E4C9B300E3C4AF00DFC0AB00DDBDA900DFBAA300DAAE9100DCB79F00D9B5
      9E00D7B29B00D4B09900D6B09800D7AF9600D4AE9500D4AE9400D3AD9300CFAD
      9300D0AE9500D1B09A00D6B39C00CC9F8200E1C7B700E4D1C600F1EAE700CCAE
      9800A36C4500A46F4600B58C7100F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F5000000000000000000000000000000
      0000FEFEFE00FAFAFA00E1E1E100D6D6D600CDCDCD00C3C3C30089868600E9E4
      DF00ECE7E300F6EFE900F8F2EB00F6EDE800F4ECE700F6ECE500F4EBE400D9D0
      CC0047444400746E6C00A098960000000000EBE4E000F4EBE400F2E5DD00F0E3
      D900EFE0D400EDDFD100ECDDCF00EBD7C900E7D3C300D4B49C00D1A88A00D4AD
      8F00D6AF8F00D3AD8F00D0A98B00CDA78900CFA88900D1AC8D00D6AC8E00D4AD
      8E00D1AB8A00CFA58800CDA58500CFA78800D0A88800D0A88600C9A08100BF98
      7800B5906E00AD896800A78464009C785900E4DFDD0000000000676A7000DFAD
      7600B88A5D00FBF4EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDE00D1D0CF00B9B8B700B9B8B800B9B9B800BBBAB900B6B5
      B400989797009595950096969600969696009695950096959500959595009595
      9400949494009494940094949400939393009393930093939200939292009292
      9200929291009191910091919100919190009090900090909000908F8F008F8F
      8F008F8F8E008E8E8E008E8E8D008D8D8D008D8D8D008D8D8C008C8C8C008C8C
      8B008B8B8B008B8B8A008A8A8A008A8A8A008A8A890089898900898988008888
      8800888888008888880088888700878787008787860086868600868686008282
      8100A6A6A500BEBDBC00B9B9B800B9B8B800B9B8B700C6C5C300C0BFBF00FDFE
      FD0000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C00000C842F00D3F9F400D1FD
      FD00D1FFFD00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FFFE00D3FF
      FE00D9FFFD00C2F1E3006FB14800005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A0000005A00003DA97200CAFFFF00D3FFFE00D3FFFE00C7FF
      FF00006000000059000000550000005600000059000000560000005600000059
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F2F2F200F2F2F200F2F2F200F4F4
      F400EBE3DD00D9B7A300E7CFBF00E7B99A00BF784800C17A4A00C67F5000C981
      5400CD865900D08A5E00D38C6000D18A6000E3A58000EEC4A600E8C0A500E7BD
      A100E7BDA000E7BDA000E6BDA100E6BDA100E3BDA300E1BFA300DFBFA500E3BD
      9F00E4B99A00E3C4AF00E6C7AF00E4CAB300E3CAB600E4CDBA00E7D0BF00E8D4
      C300EAD7C700EBDCCC00EBDDD100EAE0D600EADFCF00D9BFA800F1E7E000F1E8
      E400F1EBE700F1EDEB00F1EEED00F2EFEE00F1EFEE00EFEFEE00EFF1F100F1F2
      F200F1F2F200EEF1F400F1F4F200CFA88E00DFC3AF00E0CDC100EFEAE600C6A8
      9000996137009E643900AD846600F4F4F400F2F4F400F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F2000000000000000000000000000000
      0000FEFEFE00F8F8F800EDEDED00E8E8E800BFBFBF00A8A8A900C0BCB800E3DF
      DC00ECE7E400F4EFE900F7F0EB00F6F0EB00F7EDE800F3EBE500F7F0E900615E
      5B00716B6A006F686400FFFCFC00E3DDE000F6F0EB00F4ECE400F4E9E000F2E5
      DC00EFE0D600ECDFD000EBDCCD00EBDACC00EBD6C600E5D0BD00CCA38300CDA8
      8900CFA98A00D3AB8D00D3AD8F00D4AC8D00D1A98A00CDA58600CCA78800D1A8
      8900D3AB8A00D4AB8A00CFA58600CAA18300C79F7E00C79D7D00C19B7B00BC96
      7500B18B6B00A48160009C7859008A5E4200E7E1E000FAF3F600ACB0B500DCAB
      7100D9C3B1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFA00C3C2C100CCCBCA00C0BFBD00BEBDBC00BFBEBC00BDBC
      BA00A0A0A0009796960097979700969696009595940095949500959494009494
      9400949493009393930093939200929292009292910091919100919190009090
      900090908F008F8F8F008F8F8E008F8E8E008E8E8D008E8D8D008D8D8D008D8D
      8C008C8C8C008C8C8B008B8B8B008B8B8B008B8B8A008B8A8A008A8A8A008A8A
      89008A8989008989890089898800898988008988880088888800888888008888
      8800888888008888880087878700878787008787870088888800868686008787
      8700B0AFAE00C1C0BF00BEBDBC00BFBEBC00C5C3C200C1BFBE00E5E4E4000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005A0000117F1F00CFEDCE00CAF0
      E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0E000C7F0
      E000C7F0DE00B7E7C9005BAB3500005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A0000005C00004CA96700DBFFEF00D9FFFE00D3FDFD00C7F5
      E60000610000005A000000580000005800000059000000590000005800000059
      0000005800000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000FBF2ED00E7C6AE00F5DDCA00F8C7A600DA8C5E00D6875900D1835300CC80
      4E00C67B4900C0784500BD713E00B3622F00DC9B7700FFF4E800FFF7ED00FFF8
      F100FFFBF400FFFCF700FFFEF900FFFFFC00000000000000000000000000FEF7
      ED00F7E3CF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFEF800E4D3BF00000000000000
      000000000000FEFFFF00FEFFFF00FEFFFF00FEFFFF00FCFEFE00FBFBFC00FBFB
      FC00FBFBFC00FBFCFC00FCFCFB00DAB09400EBCFBC00EDDCCF00FFF9F800D0AE
      98009B5F3400A0623600B2866600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00F3F3F300D8D8D800D0D0D000908F8D00D3CDCA00DDD9
      D300EBE5E100F6EFEB00F8F2EC00F6EFE900F6EFE800F7EFE800FCF8F6004B46
      4700746C6B00ABA5A300FCFCFC00F7EDE800F6EFE800F4EBE500F4EBE300F3E8
      DF00F2E4DA00EDE1D400E9DACD00E9D9C700E9D6C600EDDACD00D7B39800D3AC
      8D00CFA88800CCA58800CDA58600D0A98A00D3AB8D00D3AB8D00CFA78800CDA4
      8500CCA48300CDA48400CFA58500CFA48400C49D7D00BC947400B38D6B00AD88
      6500A8846300A07D5E009D785A00885C4000EFE8E500E0D7D400EBEBEB009B77
      5900FFFEFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F500CCCCCC00B9B7B600B6B5B400B3B1B100B5B2
      B100A09F9F00929190008F8E8D00929292009696950096959500959595009595
      9500959595009595950096959500959595009595950095959400969594009595
      9500959595009594940095959400959494009594940094949300949393009493
      9300939393009392920093929200929291009292910091919100919190009090
      9000908F8F008F8F8F008F8E8E008E8E8D008D8D8D008D8D8C008D8C8C008C8B
      8B008B8B8B008B8A8A008B8A8A008A8A89008887870082818100878786008989
      8800B0AEAD00B3B2B100B5B3B200B8B6B500C0BFBE00E2E2E200000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC690000590000005900000059000000580000007100007EBF6B0078C0
      800075C0800072BF7F0072BF7F0072BF7F0072BF7F0072BF7F0072BF7F0072BF
      7F006FC07E006FB972001D8B0900005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000580000298E3600ACD6A100CFEEE300B4E2C6008ACA
      8A00005D0000005A0000005A0000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F1F1F100F1F1F100F1F1F100F1F1
      F200EBE3DC00DCBDAA00E7D3C600E3B69900A5562500A5532200A4532300A151
      2100A0502100A04F20009F4E200095451800C48F6D00F4F5F700F1F4F500F1F2
      F500F1F2F400F1F2F400F1F2F400F1F1F200F1F1F200F1F1F200F1F1F200EDE4
      DC00E8D3C100F1F2F200EFF1F100EFF1F100F1F1F100F1F1F100EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFF100EEEAE600DCC7B500EFEEED00EDED
      ED00EDEDED00EDEDED00EBEBEB00EDEBEB00EBEBEB00EBEBEB00EBEBEB00EAEA
      EA00EAEAEA00EAEAEB00EDEBE800D1AD9400DFC4B500DFCFC400EEE8E700C6A9
      94009A663E009E684000AE866B00F2F2F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F1000000000000000000000000000000
      000000000000FEFEFE00FBFBFB00F3F3F300DFDFDF00A09E9900D1D1CC00D9D6
      D100E8E1E000F2ECE800F6F0EB00F8F2EC00F8F2EB00F7F0E900E8E0DA00635C
      5C006E656300F8F7F300E0DDDD00FAF3EF00F8F2EC00F4EDE800F3EBE300F3E7
      DF00F2E5DA00F0E3D700EFE0D400ECDDCD00E8D6C600E7D1C000E3C9B500D0A4
      8500D3AB8D00D3A98D00CDA58800CCA38500CCA58500D1A88900D3A98900D1A7
      8800CCA48500C79F7E00C39B7A00C0997800BD977500B8927100AD8A6700A37E
      5E009B77580097725500987555008F644400F4F0EC00D7CDCA00F8F8F800D2C8
      C200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE000000
      0000D3D2D1008B8988007A77740096959500ABABAB00AAAAAA00ACACAC00ADAD
      AD00AFAFAF00B1B1B100B4B4B400B6B6B600B8B8B800BABABA00BDBDBD00BFBF
      BF00C1C1C100C3C3C300C6C6C600C8C8C800CACACA00CBCBCB00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CBCBCB00CACACA00C8C8C800C7C7C700C3C3C300C2C2
      C200C0C0C000BEBDBE00BBBBBB00B9B9B900B6B6B600B4B4B400B2B2B200AFAF
      AF00ADADAD00ACACAC00ABABAB00A8A8A9009A9A9A007673720094918F00A4A1
      A10000000000FEFEFE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000056000000560000005C0000005D
      0000005D0000005C0000005C0000005C0000005C0000005C0000005C0000005C
      0000005900000055000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005600000054000000560000006D000081CA860043A01C00006E
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F8F8F800F8F8F800F8F8F800F8F8
      F800F1E8E100E1BDA800EDD6C600E8B79800A9552100A9501E00A9511F00A64F
      1D00A44D1D00A34C1C00A1491A00983F1300C98D6700F9F8F800F7F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F2E8
      E000EED7C300F8F8F800F7F8F800F7F8F800F8F8F800F8F8F800F8F8F800F7F7
      F700F5F5F700F7F7F700F7F7F700F7F7F800F4F1ED00DDCAB700F5F5F400F2F4
      F400F4F4F400F4F4F400F4F4F400F2F2F200F2F2F200F2F2F200F2F2F200F1F1
      F100EFEFEF00EEEFF100F2F1EF00D6AD9100E3C7B600E3D0C700F5EFED00C4A5
      8E0093582C00965A2F00A97F5F00F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F8000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FDFDFD00B0AEAD00D3CECA00D8D4
      CD00E3DDDA00F0EBE700F6F0EC00F7F0EB00F6EFEB00FAF3ED00A7A09C00716B
      6800938A860000000000E4E0DD00F8F3F000F7F2EC00F7F0E900F6ECE500F3E8
      E100F0E4DA00EDE1D700EDDFD300EDDFD000ECD9CC00E9D6C400E8D3C400CFAB
      8E00CDA48600D0A88900D1A98A00D1A98900CFA48600C9A18100C7A08100C9A0
      8100CAA38100C6A08000BF987800B58F6C00B0896700A8846300A5816000A07D
      5B0099745600966F5100966F50008D5F3F00F7F2EC00D4CCC900FAFAFA00C3C2
      C300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDDBDA009593920085838100A5A5A400B7B7B700B6B6B600B8B8B800BABA
      BA00BCBCBC00BEBEBE00C0C0C000C3C3C300C5C5C500C8C8C800CBCBCB00CDCD
      CD00CFCFCF00D1D3D300D4D4D400D7D7D700D8D8D800D8D8D800D9D9D900DBDB
      DB00DBDBDB00D9D9D900D9D9D900D8D8D800D7D7D700D5D5D500D3D3D300D0D0
      D000CDCDCD00CCCCCC00C8C8C800C6C6C600C3C3C300C1C1C100BFBFBF00BDBD
      BD00BBBBBB00B9B9B900B7B7B700B6B6B600A8A8A800848281009A999700ADAC
      AB00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC690000590000005900000059000000600000005F0000005C00000058
      0000005800000059000000590000005900000059000000590000005900000059
      000000590000005A000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005600000058000000590000005C00000068000000630000005D
      0000005D00000058000000580000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000FBF2EB00EDC9B000F7E1D000F1C09E00B05B2500B0582200AF592200AE56
      2200AB542100AA531F00A9501F009F461700D1946F0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCF2
      EA00F7E1CF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFCF700E7D7C300000000000000
      0000FEFEFF00FEFEFF00FEFFFF00FEFFFF00FEFFFF00FCFEFF00FEFEFF00FCFE
      FF00FCFFFF00FBFEFF00FEFEFE00E0B79C00EDD1C000EDDAD000FFFBF800CCAB
      9500995A2F009A5E3100AE826200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D2CE00CFCD
      CA00DEDBD800EAE5E100F3EDEA00F8F3ED00F7F2EC00FBF4EF00716A68006863
      6100C3BCBB00F3F3F300FEFAF800F8F4F000F7F2ED00F7EFE900F6EDE500F4EB
      E400F3E7DF00EFE4DA00ECDFD400EBDDCD00E9D9CA00E9D7C700E8D4C300E8D1
      C000C99C7A00C7A08100C9A38100CDA58500CFA58800CCA48400C69D8000C099
      7800BC947400BB937200B7906E00B08B6A00A78361009D785A00987153009671
      530096715300997556009D785600966A4600F7EFEF00DAD0CD00FBFBFB00C5C5
      C400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDDDDC009F9D9B008F8D8B00B4B4B300C3C3C300C3C3C300C5C5C500C7C7
      C700CACACA00CBCBCB00CDCDCD00D0D0D000D3D3D300D5D5D500D7D7D700D9D9
      D900DBDBDB00DDDDDD00E0E0E000E1E1E100E3E3E300E3E3E300E4E4E400E5E5
      E500E5E5E500E4E4E400E4E4E400E3E3E300E1E1E100E0E0E000DFDFDF00DCDC
      DC00D9D9D900D8D8D800D5D5D500D3D3D300D0D0D000CFCFCF00CCCCCC00CACA
      CA00C7C7C700C6C6C600C3C3C300C3C3C300B5B5B500908F8E00A2A19F00B5B3
      B200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC6900005900000059000000590000005C0000005C0000005A00000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005A000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000058000000590000005900000059000000590000005900000059
      0000005A00000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000EEEEEE00EEEEEE00EEEEEE00EEEF
      EF00EAE1DA00DFBDA800E7D1C300E1B59900AE622F00AE5E2A00AD5F2C00AB5E
      2A00AA5B2A00A95A2800A65826009F4E1F00C7916E00F1EFEF00EEEFEF00EEEF
      EF00EEEFEF00EEEFF100EEEFF100EEEFF100EFEFF200EFF1F200EFF1F400EBE3
      DD00E6D3C100EFF2F500EEF2F500EEF2F500EEF2F500EFF2F700EFF4F700EFF4
      F700EFF4F700EFF4F700EEF2F500EEF4F700EEEEEB00DCCCBA00F1F4F400EFF4
      F500EEF1F100EEEFEF00EEEFEF00EEEFEE00EEEFEE00EDEEED00EDEDEB00EEEB
      E800EFEAE600EFE8E400F2E7DF00D7AF9500DDC4B600DCCCC300EDEAE600C1A5
      8F00945E350098603700A9816400EFEFEF00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0E9
      E700DBD6D200E3E1DF00EEEAE600F5EDE900F7F2ED00FEFBF60059545100645C
      5A00E5E1DF00E9E8E700FFFCFB00FAF6F300F8F3EF00F6F0EB00F4EDE500F3EB
      E400F3E8E000F2E5DD00F0E1D700ECDFD000E8D9CA00E7D4C600E5D3C100E5CF
      C000DFC7B300CAA18100C6A08100C39C7D00C39B7B00C19C7B00C09C7B00BD97
      7700B48E6E00AC886500A5835F00A17D5C00A07A5B009B77580096715300936C
      4F00946E4F0098715100A37D5900B18E6A00F4F2F000DDD6D100FAFAFA00DBDA
      DA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0E0DF00A6A4A30099979700C2C2C200D0D0D000D0D0D000D1D1D100D4D4
      D400D5D5D500D8D8D800DBDBDB00DCDCDC00DDDDDD00E0E0E000E3E3E300E4E4
      E400E5E5E500E6E6E600E9E9E900EAEAEA00EAEAEA00ECECEC00EDEDED00EDED
      ED00EDEDED00EDEDED00ECECEC00ECECEC00EAEAEA00E9E9E900E8E8E800E6E6
      E600E5E5E500E4E4E400E1E1E100DFDFDF00DCDCDC00DBDBDB00D8D8D800D7D7
      D700D4D4D400D3D3D300D0D0D000D0D0D000C0C1C1009B9A9900A8A7A600BBB9
      B900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00F5EDE700E7C4AD00F2DCCA00EDB99800AA531F00AA4E1B00A84D1B00A64D
      1A00A54C1A00A44A1A00A3491900993E1200CC8E6800FCFFFF00FCFFFF00FCFF
      FF00FEFEFC00FEFEFB00FEFCF900FCFCF800FCFBF500FCFBF400FCFBF500F9EB
      DA00F5D9BD00FFF8EE00FFF4E700FFF2E600FFF1E100FFEFE000FFEEDF00FFEB
      D900FFE7D300FEE3CD00FBE0C900F8DAC100F4D3B600EBBD9B00EECDB000EDC7
      AA00EDC3A300EABD9B00E8B79600E6B09000E1AB8B00DFA88500DAA37F00D69C
      7900D3967200CC8F6C00C9896400DA9C7900EBD3C400E7D4CA00F9F7F200C4A5
      8D008E4F230093532600A67A5900FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFBFB00E4DAD200F0ECEA00F7F3ED00F9F7F10056514F00675E
      5C00FBF7F600E0DFDD00FBF8F700F8F6F300F8F3F000F7F0EC00F4EFE900F3EB
      E500F0E7E000EFE4DA00EDE1D700EDE0D600ECDDCD00E8D9C900E4D0C000E1CA
      BC00E0CAB900CCA99000C49C7B00C1997D00BB967400B48E6C00B18B6A00AD89
      6800AC896700A58361009F7A5A0097725400926E5000936E4F00977153009974
      54009D7755009F775500A77D5600D9C3B300EBE4E300E5E0DC00F6F6F600EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E3E2E200ACAAA800A2A1A000CFCFCF00D9D9D900D8D8D800DBDBDB00DDDD
      DD00DFDFDF00E1E1E100E3E3E300E5E5E500E6E6E600E8E8E800EAEAEA00ECEC
      EC00EDEDED00EEEEEE00EFEFEF00F1F1F100F2F2F200F2F2F200F2F2F200F3F3
      F300F3F3F300F2F2F200F2F2F200F2F2F200F1F1F100EFEFEF00EEEEEE00EDED
      ED00ECECEC00EAEAEA00E9E9E900E6E6E600E5E5E500E4E4E400E1E1E100DFDF
      DF00DDDDDD00DCDCDC00D9D9D900D8D8D800CBCBCB00A5A4A300AEACAB00BFBE
      BE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F8EFEA00EBCCB500F5DFCF00F4C6A500D68C5E00D98E6100D9906600DC91
      6700DD936800E0956900E3986C00E1966B00EEB08900F8CDAD00F7CAAA00F4C3
      A300F2BF9E00EFBA9600EBB39100E6AF8C00E3AA8500E0A58200DA9F7C00E0A1
      7C00E4A57F00D08E6700CD8B6100CA865A00C6815400C07C4F00BA754900B771
      4200B36B3B00AE643400A65E2D00A3582700A55F3000D18D6200A4603400A35E
      3000A05A2D009A56290098512600954F2400914C22008E481F008C461D008943
      1C0086401A00843E18007F391500CF906C00F4DFD000EDDCD000FCFBF700CAA9
      930095552C00995A2F00AD806000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFBFA00EFEAE600F1E8E4005B5453006F67
      640000000000DCDAD900FBFAF800F8F6F400F6F3F000F4F0EC00F3EDE900F3EC
      E700F0E8E100EDE5DD00ECE0D600E8DCD300E7D9CC00E5D6C700E4D3C400E0CC
      BC00DCC7B700DAC4B500B9977B00B58D6C00B18E6E00AD896800A5836100A07B
      5B0099775800997556009874560098725400966E4F00926B4E00946C4F009B71
      5100A47B5900AC845F00AC7D5100F4EFEB00DDD4D000F3EFEF00ECEBEB00F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5E5E400B1AFAE00AAA9A800D7D7D800DFDFDF00DFDFDF00E1E1E100E3E3
      E300E5E5E500E6E6E600E8E8E800EAEAEA00ECECEC00EDEDED00EEEEEE00F1F1
      F100F2F2F200F2F2F200F5F5F500F5F5F500F6F6F600F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F6F6F600F6F6F600F5F5F500F3F3F300F2F2
      F200F1F1F100EFEFEF00EEEEEE00EDEDED00EAEAEA00E9E9E900E8E8E800E5E5
      E500E4E4E400E1E1E100E0E0E000E0E0E000D3D3D300ACABAB00B3B2B000C5C3
      C200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000EDEDED00EDEDED00EDEDED00EEEE
      EE00E8E0DA00DFBFAB00E7D1C300E4B69B00C6835600C6815400C3805100C37C
      4E00C1794A00BF754800BC734300B36E3E00CD8D6400AF673800A95B2900A659
      2800A4562500A15422009F5020009C4D1F009A481D0098471B00913F1700A158
      2A00B5734600893611008B3D16008A3914008737130085351100823210008230
      0F0081310F0083361300873E19008B451D0091512700BC8159008C4922008E4A
      22008D4922008C4822008B4821008A4821008A4720008A472000894720008746
      1F0086451F0086451E0082401C00C78E6C00E6D0C300DDCDC300EDEAE700BDA0
      8D008F552E0093593000A57B5E00EEEEEE00EDEEEE00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000716D6C007B6E
      6A0000000000DAD9D700FBFAF800F8F7F400F7F3F200F4F0EC00F3EDE900F0EB
      E500EFE7E100ECE4DF00ECE0D900E8DDD000E4D6CC00E1D3C600DFCDC000DCCA
      BB00DAC6B700D3BFAF00D3BFAF00A98A6C009C7B5C00A07D5E00A07B5C009C78
      590097715400906C4F00926B4E00936C4F00976F51009C7554009F775500A178
      5600A77D5600AD835B00AF83590000000000D4C7C40000000000BEBCBA00FBFB
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6E5E500BEBCBA00B0AEAD00DFDFDF00E1E1E100E4E4E400E5E5E500E6E6
      E600E8E8E800EAEAEA00ECECEC00EDEDED00EFEFEF00F1F1F100F2F2F200F3F3
      F300F5F5F500F6F6F600F7F7F700F7F7F700F9F9F900F9F9F900F9F9F900FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00F9F9F900F9F9F900F7F7F700F6F6F600F6F6
      F600F5F5F500F2F2F200F1F1F100EFEFEF00EEEEEE00ECECEC00EAEAEA00E9E9
      E900E6E6E600E5E5E500E4E4E400E3E3E300D8D8D800B0AFAF00BEBCBA00C5C3
      C300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000F9F1EA00EDC9B000F8E0D000EFB99900B2582100B3551F00B3551F00B054
      1F00AF531D00AD501D00AB4F1C00A4491800CC825000AB562300A4461700A448
      1800A1461700A04616009F4516009E4215009B411400993F1300953A0F00A955
      2400BF7342008B310A0090370E008D350D008C350D008C370E008E3A12009341
      180096481D009A4D20009A4D2100964C1F0098502400C682550090461D009047
      1D008E461C008D431B008E411A008C401A008A3F1900893F1800873E1800863B
      1700853B1600843A16007F351100D1906900F4DDD000EDDAD000FFFCFB00C4A4
      8D008B4820008E4C2200A5775500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099969600786B
      680000000000DCD7D400FCFBFB00FAF7F700F8F4F200F6F2F000F3EFEB00F0EB
      E700ECE5E100E9E3DC00E8DFD900E7DDD300E3D6CD00E0D1C600D9CABF00D6C3
      B700D1BFB100D0BBAC00CAB5A500CAB7A800A1806400906C4E00936E5300936E
      51009471530097715300946E5000946E4E00976F4F009F755300A77E5A00AF85
      5E00B4896100B3805600EFE9E400EFE8E700E1D9D30000000000ADAAAB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDEDED00BDBDBC00C2C1C100E3E3E300E4E4E400E4E4E400E6E6E600E9E9
      E900EAEAEA00ECECEC00EDEDED00EEEEEE00EFEFEF00F1F1F100F2F2F200F5F5
      F500F6F6F600F6F6F600F7F7F700F9F9F900F9F9F900FAFAFA00FAFAFA00FBFB
      FB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00F9F9F900F7F7F700F7F7F700F6F6
      F600F5F5F500F3F3F300F2F2F200F1F1F100EEEEEE00EDEDED00ECECEC00EAEA
      EA00E9E9E900E8E8E800E5E5E500E4E4E400DDDDDD00C3C3C300C1C0BF00D6D5
      D400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0786E00144F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00F5EEE700EACAB600F4DFD000EDBA9C00BA673100BA652E00BA652F00B964
      2E00B7642E00B6622D00B35F2C00AD5A2600D08B5E00B2663400AD582500AB56
      2500A9562300A8542200A5532100A3502000A14F1F009F4D1E009A471A00AD61
      3100C07C500095431A009C4E21009E552500A15A2A00A45F3000A6603400A561
      3500A35F3200A05C30009E5A2E009E592A009F5E3200C78A6100985428009954
      2800955328009553260095512600944E2500914E2500914D24008F4C23008E4A
      22008D4A22008B49210087431D00D3987400EFDDCF00E7D7CF00F9F8F800C6A8
      910091542C0096582F00A97F6000FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFCDCC006860
      5E0000000000D6D4D400FEFEFC00FBF8F800F7F6F400F7F3F000F4EFEC00F2EC
      E900EDE8E300EBE4DD00E5DDD700E4DAD000E1D6CC00DDD1C700DACABF00D4C4
      B800CFBFB000C9B7A900C6B4A400C1AD9F00C0AF9D00AC8F7A008F684B00926B
      4F00926C4F00986F53009C775500A17A5900A57B5800A77B5800A9805900B185
      5C00B98A6100BF96740000000000DCCFCA00F2EDED00EBE9E900EEEEEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600F5F5F500E3E3E300E4E4E400E5E5E500E6E6E600E9E9
      E900EAEAEA00ECECEC00EDEDED00EFEFEF00EFEFEF00F2F2F200F3F3F300F5F5
      F500F6F6F600F6F6F600F7F7F700F9F9F900F9F9F900FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00F9F9F900F9F9F900F7F7F700F6F6
      F600F5F5F500F3F3F300F2F2F200F1F1F100EFEFEF00EEEEEE00EDEDED00ECEC
      EC00E9E9E900E6E6E600E5E5E500E4E4E400E1E1E100F3F3F300E6E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796F0014510300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000EEEEEE00EEEEEE00EEEEEE00EFEF
      EF00EAE3DF00E1C9B500EBDACC00E3B69A00BD713F00BA6C3800B7683600B566
      3200B2622F00B0612C00AF5F2A00A8582600C9855900AE643200A8582500A659
      2600A5562600A5582600A5582700A4582800A55A2900A65C2C00A55B2C00B371
      4300C4865C00A45E3000A8623700A4623700A3613500A35F3400A15C31009F5B
      2F009C5A2E009C592D009B592D009A562A009B5C3000C1845C00945126009551
      27009451250093502500914F2500904E24008E4E24008F4C22008D4922008C48
      22008B4821008A471F0085411D00CD936F00E6D3C400DDCFC600EEEDEB00BDA0
      8B008D51290090552D00A37A5B00EFEFEF00EEEFEF00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB005951
      5000F8F6F400DFDDDC0000000000FCFBFA00FAF8F700F7F4F200F3F2F000F2ED
      EB00EFE9E500ECE7E100E8E1DC00E4DCD300E0D6CC00DCCFC700D7CAC000D4C7
      BB00D1C0B500CCB9AD00C6B4A500C0AD9D00BDA89800BCA79300BBA490009C6F
      5400997250009B725300A0755400A77D5900AF855E00B4896100B7896000B586
      6000AF7A4C00FCFEFE00F8F3F000D7CCC60000000000D6D3D300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECECEC00F9F9F900E3E3E300E4E4E400E5E5E500E6E6E600E8E8
      E800EAEAEA00ECECEC00EDEDED00EEEEEE00EFEFEF00F1F1F100F2F2F200F3F3
      F300F5F5F500F6F6F600F7F7F700F7F7F700F9F9F900F9F9F900FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00F9F9F900F9F9F900F9F9F900F7F7F700F6F6F600F5F5
      F500F5F5F500F3F3F300F1F1F100F1F1F100EEEEEE00EEEEEE00ECECEC00EAEA
      EA00E8E8E800E6E6E600E5E5E500E4E4E400E3E3E300FAFAFA00E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796F0014510300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D5000384140000590000005600000000000000000000000000000000
      0000FCF5EF00F2D9C300FBEBDF00F5C4A400CD7E4900CC7C4800CC7B4800CA79
      4700C7774200C6743E00C1733D00BA6D3700DD936500C3774300BA6C3600BC6C
      3900BA6B3900BC6B3900B96B3800B5693800B5683800B3673500AF643000C075
      4700D18A5B00A65B2800AA5E2F00A95C2D00A65B2C00A55A2A00A4592800A158
      27009F5525009E5425009E5325009A5022009E562700CA865A00964C1F009549
      1F0094491F0093481E0091471D008F461C008D461C008D431A008D411A008A40
      1900893E1800863D160083371300DA986F00F9E3D400EEDFD30000000000C9A8
      90008F4E220094512500A97B5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B63
      6200DDD7D700E8E5E50000000000FCFCFC00FCFAFA00FAF7F400F7F4F000F3EF
      EC00EFEBE700ECE7E300EBE3DF00E7DFD900E3DAD100E0D3C900DACDC100D3C6
      BB00D3C1B700CFBFB000CDB9AC00C7B5A500C4AC9C00C0A89400BDA49200C1A7
      9000BB997D00A8805A00AC805900AD835B00B0845B00B5895F00BC8B6300B981
      4F00E0D0C400FCFBFB00D4CAC600F3F0EF0000000000CDCDCD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB00F7F7F700E3E3E300E3E3E300E4E4E400E5E5E500E6E6
      E600E9E9E900ECECEC00ECECEC00EEEEEE00EEEEEE00F1F1F100F1F1F100F2F2
      F200F3F3F300F5F5F500F6F6F600F6F6F600F7F7F700F7F7F700F9F9F900F9F9
      F900F9F9F900F9F9F900F7F7F700F7F7F700F7F7F700F6F6F600F5F5F500F3F3
      F300F3F3F300F2F2F200F1F1F100EFEFEF00EEEEEE00EDEDED00ECECEC00E9E9
      E900E8E8E800E6E6E600E5E5E500E4E4E400E3E3E300F9F9F900E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796E00114F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F7F7F700F7F7F700F7F7F700F7F7
      F700F1EAE600E8D0BF00F1E1D700EABFA300C7804F00C7804F00C6805000C67E
      5000C47B4E00C17B4D00C07B4C00BA774800D7966E00C07F5100BA754600BA74
      4700B7724500B7724500B6714300B36E4100B06E4100B06D3F00AD683B00B97A
      4E00CA8B6200A8643600AA663A00A8653800A9653900A8653900A5643700A564
      3700A4623700A1613500A1603500A05F3400A4663A00C98C65009C5E32009F5F
      32009E5E34009C5C31009C5C30009E5E32009C5C31009B5A30009C5C31009C5E
      31009A5A2F009A592E0098582D00D79E7900EED9CC00E7D6CD00F5F2F200C6A9
      9500965E350099613700AD846600F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AEAA
      AB00B1ABA800F3F2F200F8F8F800FEFCFC00FCFBFA00FBF8F800FAF6F300F7F3
      F000F3EDEB00F0EBE500ECE5E000E9E1DC00E7DDD600E4DAD000E0D4CA00DCCD
      C100D7C6BB00D3C1B500D0BDAF00CFBBAB00CDB8A500CCB39F00C7AD9700C3A7
      9000C6A58D00CAA98F00C49D7D00BD8F6A00B9895F00B8885B00B4805000CDB4
      9F0000000000E5D9D700E3D9D60000000000CECCCB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB00F7F7F700E3E3E300E3E3E300E4E4E400E5E5E500E6E6
      E600E8E8E800E9E9E900ECECEC00EDEDED00EEEEEE00EFEFEF00EFEFEF00F1F1
      F100F2F2F200F3F3F300F5F5F500F5F5F500F6F6F600F6F6F600F6F6F600F7F7
      F700F7F7F700F7F7F700F6F6F600F6F6F600F6F6F600F5F5F500F3F3F300F3F3
      F300F2F2F200F1F1F100EFEFEF00EEEEEE00EDEDED00ECECEC00EAEAEA00E8E8
      E800E6E6E600E5E5E500E4E4E400E3E3E300E3E3E300F9F9F900E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2796E00114F0300005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B4F5D500038414000059000000560000F2F2F200F2F2F200F2F2F200F2F2
      F200EDE6E000E3CCB700EDDDD100E6BC9F00D68E6400D7906600D4916800D793
      6B00D6916900D4916900D6946B00D4936B00DFA07A00D7967100D7966E00D796
      6E00D6956D00D9987100DC997400DA997300D9997200DC9C7700DD9B7800DFA0
      7B00E4A68100E0A07C00E0A17C00DFA17C00E0A37E00E3A48100E1A48000E1A4
      8100E4A68300E3A88400E3A88300E4A98500E7AB8900E7B08D00E4AB8900E7AE
      8C00E7AF8F00E8B08F00E8B28F00EBB59300EAB69500EAB69600EBB79600EBB7
      9800EAB99900E8B99900E8B99900E4B99A00E4D0C100E1D1C600F1EEEB00C3A6
      9000955C3100995F3500AB826200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000746D680000000000D1CFCF0000000000FEFCFB00FBFAF800FAF8F600F8F6
      F200F7F2ED00F3EFEB00F2E9E500EDE7DF00E9E0D700E5DCD400E4D7CF00E3D4
      C900E0D0C300DACCBD00D7C3B400D3BDAD00D3BCA800D3B9A500D3B7A100D0B4
      9C00CDAC9400CAA78E00C9A38600CCA78A00CCA48500C9976F00C0A48E000000
      0000EFE5E300DFD4D00000000000F2F2F200E3E3E30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB00F6F6F600E1E1E100E3E3E300E3E3E300E4E4E400E6E6
      E600E6E6E600E8E8E800E9E9E900ECECEC00EDEDED00EEEEEE00EEEEEE00EFEF
      EF00F1F1F100F2F2F200F3F3F300F3F3F300F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F3F3F300F3F3F300F2F2F200F1F1
      F100F1F1F100EFEFEF00EEEEEE00EDEDED00ECECEC00EAEAEA00E8E8E800E8E8
      E800E6E6E600E5E5E500E4E4E400E3E3E300E1E1E100F9F9F900E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E87C71001A540600005D0000087B
      000069BC69000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000073
      0700B2F5D5000384140000590000005600000000000000000000000000000000
      0000FEF7EF00F4D9C300FBEADA00FBE1CD00FED9BC00FEDCC000FEDFC300FFDF
      C400FFDDC400FEDFC700FEE0CA00FEE0CA00FBDDC600FCE1CA00FEE1CC00FEE1
      CC00FEE1CA00FEE3CD00FEE3CF00FFE4CF00FFE4CF00FFE4D100FFE4D300FFE3
      D000FEE1D000FFE6D600FFE6D600FFE6D400FFE6D600FEE7D900FEE7D900FEE7
      D900FCE8D700FBE7D700FCE6D700FCE6D700FBE4D700F9E4D600FBE6D700F9E4
      D700FBE4D900FBE6D900F9E6D900F9E6D700F9E6D900FBE4DA00F9E4D900F9E3
      D900F8E6DA00F8E6DC00F7E6D900F7E4D600F2E3D700F1E0D400FFFEFB00D3B2
      9A00A0663900A5693D00B98D6D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A09D9C00D6CCCA00ECEBEB00F7F7F600FFFEFE00FEFCFB00FCFAF800FAF7
      F400F8F4F000F6F0ED00F4EDE800F3EBE500EFE7E000ECE1DA00E7DDD300E7D7
      CA00E4D4C700E3D1C300E1CDBD00DDC6B700D9C0AD00D6BCA700D4B9A300D6B7
      9F00D6B59B00D3B09400CDAB8D00C7A38400C6977200C6B5A700FFFCFA00FAED
      EB00D9D0CD00FBFAF80000000000D5D5D5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB00F6F6F600E1E1E100E1E1E100E3E3E300E4E4E400E4E4
      E400E6E6E600E8E8E800E8E8E800EAEAEA00ECECEC00EDEDED00EEEEEE00EFEF
      EF00EFEFEF00F1F1F100F2F2F200F2F2F200F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F2F2F200F2F2F200F1F1F100F1F1
      F100EFEFEF00EEEEEE00EEEEEE00ECECEC00EAEAEA00E9E9E900E8E8E800E6E6
      E600E5E5E500E4E4E400E3E3E300E3E3E300E1E1E100F7F7F700E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EF8075002056070000600000067B
      000075BA68000059000000540000005800000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005800000070
      0A00D9E5E3000C8018000059000000580000F2F2F200F2F2F200F2F2F200F2F2
      F200EEE7E100E8CDBA00EBDACD00EDE4DF00EBE4DF00EBE4DF00EBE6DF00EBE4
      DD00EDE3DF00EDE1DF00EDE1DF00EDE1DF00EDE1DD00EBE1DC00EBE1DA00EBE1
      DA00EAE0DA00EADFDA00EADFD900EAE0D900EADFD900EADFD700EADFD700EBDF
      D700EBDDD700EADDD700EADDD700EADDD700EADDD700EADCD600EADDD600EBDD
      D600EADDD600E7DDD400E7DAD300E7D9D300E7DAD100E7DAD300E7DAD100E7DA
      D100E7D9D000E6D7D100E6D9D000E6D9D000E6D9D000E6D7CF00E6D6D000E6D6
      D000E6D6CF00E6D6CF00E6D6CF00E6D6CD00E4D6CA00E3D4C900EEEAE600CDB2
      9B00A8785100AB7B5400BA957A00F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000837A770000000000B3AFAD00FBFAFB00FEFCFC00FEFBFB00FCFA
      F700FAF7F400F7F3EF00F7EFEC00F4EDE800F2E9E300F0E7E000EDE3D900EBDD
      D100E7D7CA00E4D1C400E3CFBF00E3CDBB00E1C9B500DFC3AF00D9BCA700D3B5
      9D00D3B19800D1AF9300D6AF9000C79F7E00D4D1CF00FAF2EB00F7F2E900E0D9
      D400F7F2F00000000000BBB9B900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB00F5F5F500E0E0E000E1E1E100E1E1E100E3E3E300E4E4
      E400E5E5E500E6E6E600E6E6E600E8E8E800E9E9E900ECECEC00EDEDED00EEEE
      EE00EEEEEE00EFEFEF00EFEFEF00F1F1F100F1F1F100F1F1F100F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F1F1F100F1F1F100F1F1F100EFEFEF00EEEE
      EE00EEEEEE00EDEDED00ECECEC00EAEAEA00E9E9E900E8E8E800E6E6E600E5E5
      E500E4E4E400E4E4E400E3E3E300E1E1E100E0E0E000F6F6F600E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8A7D0026590A00005A0000006E
      000084C38700005500000054000000580000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005800000071
      1100F7F0FA0006771F000058000000560000F5F5F500F5F5F500F5F5F500F7F7
      F700F1EAE400E8CDBA00EFDACD00F1E4DC00EDE3DA00EEE3DA00EEE3DA00EEE3
      D900EDE3DA00EDE3DA00EEE1DA00EFE0DA00EFE0DC00EFE0DA00EEE0D900EEE0
      D600EEE0D700EDDFD600EDDFD600EDDFD400EDDFD400EDDFD400EDDFD400EDDF
      D400EDDDD400EDDDD400EDDDD400EDDFD400EDDFD400EDDFD400EDDDD300EDDC
      D300EDDCD300EDDCD300EBDDD300EBDCD000EADAD000EADAD000EAD9D100EADA
      D000EADCCF00E8D9D000E8D7CF00E8D9CF00E8D9CF00E8D9CF00E8D7D000E7D6
      CF00E8D6CF00EAD6CF00E8D7CD00E7D7CF00E7D7CD00E4D4C900F1EAE300D3B5
      9C00AE7F5500B0815800C09B7E00F7F7F700F5F7F700F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DAD9D900BCB5B300FEFEFC00B1AFAF0000000000FCFBFA00FCFB
      F800FBF7F400FAF6F200F8F2EF00F7EFE900F3EBE400F0E7E000EFE4DA00EDE1
      D700ECDFD100E8D7CA00E4D1C100E1CCB900E0C7B400DFC4B000DFC1AC00DCBC
      A400D6B59C00D6AF9000B8A79700DDD7DA00F8F0EB00F0E9E500E5DCDA00F8F4
      F30000000000C5C3C30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB00F5F5F500DFDFDF00E0E0E000E1E1E100E3E3E300E4E4
      E400E4E4E400E5E5E500E6E6E600E8E8E800E8E8E800E9E9E900EAEAEA00EDED
      ED00EDEDED00EEEEEE00EEEEEE00EFEFEF00EFEFEF00EFEFEF00F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100EFEFEF00EFEFEF00EFEFEF00EEEEEE00EEEE
      EE00EDEDED00ECECEC00E9E9E900E9E9E900E8E8E800E6E6E600E5E5E500E4E4
      E400E4E4E400E3E3E300E1E1E100E1E1E100DFDFDF00F6F6F600E6E6E6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9586002C5D0F00005A0000005D
      00007BC79700178E4E001A8C3C001A8F3900208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F
      3E00208F3E00208F3E00208F3E00208F3E00208F3E00208F3E00148F3F004FA8
      7200F9FDF2000E751C0000580000005500000000000000000000000000000000
      0000FCF7F100F2D9C700FBE7DA00FEF1E700FCEEE600FBEFE600F9EFE600F9EF
      E600FBEFE600FBEFE600FBEFE600FBEDE600FCEBE700FBEDE700FBEDE700FBED
      E400F9EDE100FBEDE300F9EBE100F8EBE100F8EAE100F8EBE100F8EBE100F8EB
      E100F8EAE100F8EAE100F9EAE100F8EBE100F8EAE100F8EBE100F8EAE100F9E8
      E000F9E8E000F9E8E000F9E8E000F8EAE000F7E7DD00F5E6DD00F5E4DD00F7E6
      DD00F7E6DC00F7E7DC00F5E4DC00F4E4DC00F5E3DC00F5E4DC00F5E4DC00F4E3
      DA00F2E3DA00F5E3DA00F7E3D900F4E3D900F4E3DA00F1E1D700FCF2ED00E1C4
      A900C3936900C4946C00D1AD8D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0BFBE00E5E3E300F8F7F600ABA9A800F0F0F000FEFE
      FB00FAF8F600FAF6F300F8F3F000F7F2EC00F6EDE800F3EBE300EFE4DC00EDE1
      D700ECDFD300EBDCCD00E9D7C700E5D1C000E0C9B700DDC4B000E0C3AB00DDBC
      A500C7B3A000ACABAD00E7E0DD00F7EDE800F2EBE700F2E8E500FAF6F3000000
      0000C9C9C9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB00F3F3F300DFDFDF00DFDFDF00E0E0E000E1E1E100E3E3
      E300E4E4E400E4E4E400E5E5E500E6E6E600E6E6E600E8E8E800E9E9E900EAEA
      EA00ECECEC00EDEDED00EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDEDED00EDEDED00ECEC
      EC00EAEAEA00E9E9E900E9E9E900E8E8E800E6E6E600E5E5E500E5E5E500E4E4
      E400E3E3E300E3E3E300E1E1E100DFDFDF00DFDFDF00F5F5F500E6E6E6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFA090003A631500006100000058
      00003DAF6B00A3E1D100A6DDAC009EE0A6009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDB
      B2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009EDBB2009BDEB300BAE3
      D000B7DEA600147706000058000000560000EEEEEE00EEEEEE00EEEEEE00EFEF
      EF00EBE4E000E4CABA00EAD7CA00EBDFD900EADDD600E8DDD600E7DDD600E7DF
      D600E7DFD600E7DFD600E7DDD600E7DDD600E8DCD400E8DCD600E8DCD600E8DC
      D600E8DAD400E7DCD100E7DCD100E6DCD100E6D9D100E6D9D100E6D9D100E6D9
      D100E6D9D100E6D9D100E6D9D100E6D9D100E6DAD100E6D9D000E6DAD000E7DA
      D000E7D9CF00E7D9D000E7D9D000E7D9D000E6D9D000E4D7CF00E6D6CD00E6D6
      CD00E6D6CD00E4D6CD00E4D7CC00E4D4CC00E4D4CC00E3D6CC00E4D6CC00E4D4
      CC00E3D4CD00E3D3CC00E3D3CC00E4D3CC00E3D3CC00E3D3CA00E8DFD900D6BD
      A600C19B7A00C49E7B00CFAF9400EFEFEF00EEEFEF00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A19F9F00E7E5E400F8F7F700ABA7A500D6D3
      D100FAFAFA00F7F6F400F8F4F000F7F2EF00F6F0E900F4ECE700F3E9E100F0E4
      DA00EDE0D600E9DACC00E9D7C700EBD4C100EBD3C000DDC6B400B4ABA7009DA1
      A300B3AFAD00F4EBE500F8F2EF00F8F6F600F4EDEB00FAFAF800FAFAFA00C6C5
      C500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB00F3F3F300DDDDDD00DFDFDF00DFDFDF00E1E1E100E3E3
      E300E3E3E300E4E4E400E4E4E400E5E5E500E5E5E500E6E6E600E8E8E800E8E8
      E800E9E9E900EAEAEA00EAEAEA00ECECEC00ECECEC00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00ECECEC00EAEAEA00EAEAEA00E9E9
      E900E9E9E900E8E8E800E8E8E800E6E6E600E5E5E500E4E4E400E4E4E400E3E3
      E300E3E3E300E1E1E100DFDFDF00DFDFDF00DFDFDF00F5F5F500E6E6E6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFAD9B004F691B00006100000055
      0000005900000068000006730000067300000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C7400000C7400000C74
      00000C7400000C7400000C7400000C7400000C7400000C740000007700000063
      0000005C0000005A00000059000000590000FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00F7F1ED00EFD7C700F1D7C700F7E8E000F7E8DF00F5E6DD00F4E7DD00F2E7
      DD00F2E7DD00F1E7DD00F2E6DD00F2E7DD00F1E7DD00F4E6DD00F4E3DF00F4E4
      DF00F4E4DF00F2E4DD00F2E4D900F1E4DA00F1E4D900F1E1D900F1E1D900F1E3
      D900F1E3D900F1E3D900F1E3D900F1E3D900F1E3D700F1E3D700F1E3D900F1E3
      D900F1E3D700F1E1D700F1E0D600F1E0D600F1E0D700EFE0D700EEE1D400EEDD
      D300EEDDD300EEDDD400EEDDD400EDDFD300EDDDD300EDDCD300EDDCD300EDDC
      D300EDDCD300EDDCD300EBDAD100EBDAD100EDDAD100EDDAD100EFE1DC00DDC0
      A300D1A98200D3A98200D7BC9E00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9C9C800DCD7D600FBFBFA00D7D1
      D100A5A1A000B8B4B400E9E9E900F7F7F600E9EDEF00E0E1DF00E3DDDA00E0D9
      D300D9D0CC00CCC4BF00BDBCBB00BBBDBB00C0BDC100A4A4A4007B767600C3B9
      B500F7EFEC00FCFCFC00F8F6F400F2EBE70000000000EFECEC00E9E8E8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB0000000000EDEDED00EDEDED00EEEEEE00EEEEEE00F1F1
      F100F1F1F100F2F2F200F3F3F300F3F3F300F5F5F500F5F5F500F6F6F600F7F7
      F700F7F7F700F7F7F700F9F9F900F9F9F900FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00F9F9F900F9F9F900F9F9F900F7F7
      F700F7F7F700F6F6F600F6F6F600F5F5F500F3F3F300F3F3F300F2F2F200F2F2
      F200F1F1F100EEEEEE00EEEEEE00EDEDED00EDEDED0000000000E5E5E5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFB09E0052691B00005A00000058
      000000590000005C0000005D0000006100000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006400000059
      0000005C0000005A000000590000005900000000000000000000000000000000
      0000FEFCFB00F8E8DF00F7DFD000F7E4D600FBEEE600FBEEE600FBEDE400FBED
      E400F8EDE400F7EDE400F8EDE400F7EDE400F8EDE400F8EDE400F8EBE400F9EA
      E400F9EAE600F9EAE600F9EAE400F8EAE100F8EAE100F8EAE000F7E8E000F7E8
      E000F7E8E000F7E8E000F7E8E000F7E8E000F7E8E000F7E8E000F7E8E000F7EA
      E000F7E8E000F7EAE000F7E7DF00F7E6DF00F7E7DF00F7E7DF00F7E7DF00F4E7
      DD00F4E4DA00F4E3DC00F4E3DC00F4E4DC00F4E6DA00F4E4DA00F2E3DA00F2E3
      DA00F2E1DA00F2E1DA00F2E3DA00F1E1D900F1E0D900F5E4DD00F5E3D600E0BF
      9C00E3BC9400DAB28D00EDE0D000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8E7E700B5B2AF000000
      0000F0EDEC00D4D0CF00C6C1BF00B8B1B100B8B1AF00B8B5B400B0ADAD00ABA7
      A8009D9B9800A09B990099949200787372005D5A5900968B8900E4DFDF00FFFF
      FE00EFEBE900F2EBE800FEFEFC00EBE9E900CFCFCE00F5F4F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00F0F0F000DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00E0E0E000E0E0E000E0E0E000E0E0E000E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E0E0E000E0E0E000E0E0E000E0E0E000DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00F0F0F000EAEAEA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFB49E00466A1B00005600000059
      0000005900000059000000580000005A00000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005A00000059
      0000005A0000005900000059000000590000EDEDED00EDEDED00EDEDED00EDED
      ED00EEEEEE00EAE6E300E7D9D000E4D4CA00E6D7CF00E7D9D100E7D9D000E7D7
      CF00E6D7CF00E6D7D000E4D9D000E4D7D000E4D7D000E4D9CF00E4D9CD00E6D7
      CD00E6D6CF00E6D6CD00E6D6CF00E6D6CD00E4D6CC00E4D6CC00E4D6CA00E3D4
      CC00E3D3CD00E3D3CD00E3D3CC00E3D4CC00E3D3CC00E3D4CC00E4D4CC00E3D3
      CA00E3D3CA00E3D3CA00E3D4CA00E3D4CA00E4D3C900E3D3C900E3D3C900E3D1
      CA00E1D3C900E1D1C700E1D0C700E1D1C700E1D1C700E3D1C600E3D1C600E1D0
      C600E1D0C700E0D0C700E1D0C600E1D1C600E3D1C600DABFB000B58C6F00AE82
      5B00B38B6900D1BCA600EEEEED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00C2C0
      BF00CCCACA0000000000F6F0F000ECEBE700E4E0DC00D7D1CF00D9D3D100E5DD
      DD00F0ECE900E8E5E400DAD4D400D7CFCD00F4EDEB00F4F0F000F3EFEC00F2ED
      EC0000000000E1E1E000D7D5D300EBEBEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFB59B00436A1800005500000058
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      0000005900000059000000590000005900000059000000590000005900000059
      000000590000005900000059000000590000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE0000000000FCF9F800F9F4F100F9F4F100F9F4EF00F9F4EF00F9F4
      EE00F9F1ED00F9F1ED00F8F2ED00F8F1EE00F8F1ED00F8F2ED00F8F2EB00F8F1
      EA00F7EFEA00F7EFE800F8EFE800F8EFEA00F7EFEA00F7EEE800F7EDE600F7EE
      E700F5EDE800F5EDE700F5EDE600F5EDE700F5EDE600F4EBE400F5EAE400F5E8
      E400F4EAE300F4EAE300F4EAE300F2E8E100F2E7E000F2E6E000F2E7E000F2E6
      E000F1E7E000F1E7DF00F1E4DC00F1E4DC00F1E4DC00F1E4DC00F1E4DC00F1E3
      DA00EEE1DA00EDE0D900EDE0D700EDE0D600DDCCBF00B0917C00966E4E00A580
      6400D6C1AF00FCFCFC0000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0BFBF00C9C4C200F0F0F000FAFAFA00FFFFFE00F4F2EF00E8E4
      E300E9E5E400E9E3E100E9E5E400F6F3F200FFFCFB00F8F8F800F1F3F300DEDC
      DC00C1C1C1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFBEAB0081753500005C0000005F
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000060000000600000006000000060
      0000006000000060000000600000006000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECECEC00C5C3C100B4B3B100B9B5
      B400B8B7B500B8B5B400BCBAB700BCB9B900CECBCB00F5F5F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFE2E900FFABA400E27A7900E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A7700E27A
      7700E27A7700E27A7700E27A7700E27A7600424D3E000000000000003E000000
      2800000020010000200100000100010000000000802800000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000800000000000000000FFFFFFF007FFFF
      FFFFF80000000007FFFFFF000000000000000000000000000000000000FFFFFF
      F8007FFFFFFFE00000000000FFFFFF0000000000000000000000000000000000
      00FFFFFFF00003FFFFFFC000000000007FFFFF00000000000000000080000000
      0000000000FFFFFFE000001FFFFF8000000000003FFFFF000000000000000000
      000000000000000000FFFFFFC0000001FFFF8000000000001FFFFF0000000000
      00000000000000000000000000FFFFFF8000000007FF0000000000001FFFFF00
      0000000000000000800000000000000000FFFFFF80000000007F000000000000
      1FFFFF000000000000000000000000000000000000FFFFC60000000000070000
      000000001FFFFF000000000000000000000000000000000000FFFFC600000000
      00030000000000001FFFFF000000000000000000000000000000000000FFFF84
      0000000000000000000000001FFFFF0000000000000000000000000000000000
      00FFFF000000000000000000000000001FFFFF00000000000000000000000000
      0000000000FFFC000000000000000000000000001FFFFF000000000000000000
      000000000000000000FFF8000000000000000000000000001FFFFF0000000000
      00000000000000000000000000FFF8000000000000000000000000001FFFFF00
      0000000000000000000000000000000000FFE000000000000000000000000000
      1FFFFF000000000000000000000000000000000000FFE0000000000000000000
      000000001FFFFF000000000000000000000000000000000000FFE00000000000
      00000000000000001FFFFF000000000000000000000000000000000000FFC000
      0000000000000000000000001FFFFF0000000000000000000000000000000000
      00FF80000000000000000000000000001FFFFF00000000000000000000000000
      0000000000FF00000000000000000000000000001FFFFF000000000000000000
      000000000000000000FC00000000000000030000000000001FFFFF0000000000
      00000000000000000000000000F8000000000000000F0000000000001FFFFF00
      0000000000000000010000000000000000F8000000000000000F000000000000
      1FFFFF000000000000000000800000000000000000F0000000000000003F0000
      000000001FFFFF000000000000000000800000000000000000F0000000000000
      00FF0000000000001FFFFF000000000000000000800000000000000000E00000
      0000000003FF0000000000001FFFFF0000000000000000008000000000000000
      00C000000000000003FF0000000000001FFFFF00000000000000000080080000
      00000000008000000000000003FF0000000000001FFFFF000000000000000000
      C000000000000000000000000000000003FF0000000000001FFFFF0000000000
      00000000C000000000000000000000000000000003FF0000000000001FFFFF00
      0000000000000000C200000000000000040000000000000003FF000000000000
      1FFFFF0000000000000000009400000000000000180000000000000003FF0000
      000000001FFFFF0000000000000000009498000000000000B200000000000000
      07FF0000000000001FFFFF00000000000000000086B80000000000008A000000
      0000000007FF0000000000001FFFFF00000000000000000087F0000000000000
      04000000000000001FFF0000000000001FFFFF00000000000000000080D00000
      0000000041000000000000003FFF0000000000001FFFFF000000000000000000
      820000020000000000000000000000007FFF0000000000001FFFFF0000000000
      0000000080000003800000000000000000000001FFFF0000000000001FFFFF00
      000000000000000080000000000000000000000000000003FFFF000000000000
      1FFFFF00000000000000000080000000480000000000000000000003FFFF0000
      000000001FFFFF00000000000000000080000000000000000000000000000003
      FFFF0000000000001FFC00000000000000000000800000000000000000000000
      00000007FFFF8000000000001FFC000000000000000000000000000000000000
      000000000000000FFFFF8000000000003FFC0000000000000000000080000000
      0000000000F000000000001FFFFFC000000000003FFC00000000000000000000
      800000000000000000F800000000001FFFFFC000000000007FFC000000000000
      00000000000000000000000001F000000000003FFFFFC000000000007FFC0000
      0000000000000000800000000000000000F000000000007FFFFFF00000000000
      FFFC00000000000000000000800000000000000000F00000000000FFFFFFFFFF
      FFFE007FFFFC00000000000000000000800000000000000001F00000000001FF
      FFFFFFFFFFFE007FFFFC00000000000000000000800000000000000000F00000
      000001FFFFFFFFFFFFFF003FFFFC000000000000000000008000000000000000
      00F00000000001FFFFFFFFFFFFFF003FFFFC0000000000000000000080000000
      0000000001F00000000003FFFFFFFFFFFFFF003FFFFC00000000000000000000
      800000000000000000F00000000003FFFFFFFFFFFFFF003FFFF8000000000000
      00000000800000000000000000F00000000007FFFFFFFFFFFFFF003FFFF80100
      0000000000000000800000000000000001F00000000007FFFFFFFFFFFFFF003F
      FFF801000000000000000000800000000000000000F0000000000FFFFFFFFFFF
      FFFF003FFFF801000000000000000000800000000000000000F0000000000FFF
      FFFFFFFFFFFF001FFFF001000000000000000000800000000000000001FC0000
      00001FFFFFFFFFFFFFFF801FFFF0010000000000000000008000000000000000
      00FC000000001FFFFFFFFFFFFFFF800FFFE00100000000000000000080000000
      0000000000FC000000003FFFFFFFFFFFFFFF8007FFC003000000000000000000
      000000000000000001FC000000007FFFFFFFFFFFFFFF8001FF80030000000000
      00000000800000200000000000F0000000007FFFFFFFFFFFFFFFC00000000300
      0000000000000000800000000000000001F000000000FFFFFFFFFFFFFFFFC000
      000007000000000000000000000000000000000000F000000000FFFFFFFFFFFF
      FFFFE000000007000000000000000000800000000000000000F000000001FFFF
      FFFFFFFFFFFFF00000000F000000000000000000800074000000000001F00002
      0001FFFFFFFFFFFFFFFFF80000000F0000000000000000000000000000000000
      00F00007FE07FFFFFFFFFFFFFFFFFC0000001F00000000000000000080000000
      0000000000F00007FFFFFFFFFFFFFFFFFFFFFE0000003F000000000000000000
      800000000000000000F00007FFFFFFFFFFFFFFFFFFFFFF000001FF0000000000
      00000000000000000000000001F00007FFFFFFFFFFFFFFFFFFFFFFE00007FF00
      0000000000000000800000000000000000F00007FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF000000000000000000000000000000000000F0000FFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80061FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFFFFFFFFC0000001FFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000001FFFFFFFFFFFFFFFC0000000F
      FFC0000000007FFFFFFF00000000000FFFFFFFFFF80000003FFFFFFFFFFFFFC0
      00000003FE00000000001FFFFFFE000000000003FFFFFFFF800000000FFFFFFF
      FFFFFC0000000000FC00000000000FFFFFFE000000000000FFFFFFFF00000000
      07FFFFFFFFFFF00000000000F8000000000007FFFFFE0000000000007FFFFFFC
      0000000000FFFFFFFFFFC00000000000F8000000000007FFFFFE000000000000
      7FFFFFFC0000000000FFFFFFFFFFC00000000000F0000000000003FFFFFE0000
      000000003FFFFFF800000000007FFFFFFFFC000000000000F0000000000000FF
      FFFE0000000000001FFFFFF000000000003FFFFFFFFC000000000000E0000000
      000000FFFFFE0000000000000FFFFFE000000000001FFFFFFFF8000000000000
      E00000000000007FFFFE00000000000007FFFFC000000000000FFFFFFFF80000
      00000000E00000000000003FFFFC00000000000007FFFF00000000000007FFFF
      FE00000000000000E00000000000001FFFFC40000000000003FFFE0000000000
      0003FFFF8000000000000000E00000000000001FFFFC40000000000001FFFC00
      0001FE000001FFFC0000000000000000E00000000000000FFFFC400000000000
      01FFFC00001FFF800000FFF00000000000000000E00000000000000FFFFC4000
      0000000001FFFC00007FFF8000007FE00000000000000000E00000000000000F
      FFFC400000000000007FF800007FFF8000007FC00000000000000000E0000000
      00000007FFFC400000000000007FF00001FFFF0000003F800000000000000000
      E000000000000007FFFC400000000000003FF00003FFFE0000003F0000000000
      00000000E000000000000003FFFC400000000000003FE00007FFFC0000001F00
      0000000000000000E000000000000003FFFC400000000000003FE0000FFFF800
      00001F000000000000000001E000000000000003FFFC400000000000001FC000
      3FFFE00000000F000000000000000001E000000000000001FFFC400000000000
      001FC0007FFFC00000000F000000000000000001E000000000000001FFFC4000
      00000000001FC0007FFF800000000F000000000000000003E000000000000001
      FFFC400000000000001FC000FFFF800000000F000000000000000003E0000000
      00000001FFFC400000000000001FC000FFFF0000000007000000000000000003
      E000000000000001FFFC400000000000001F8001FFFE00000000070000000000
      0000000FE000000000000001FFFC400000000000001F8001FFFC000000000700
      000000000000000FE000000000000001FFFC400000000000001F8001FFF80000
      0E000780000000000000001FE000000000000001FFFC400000000000001F8003
      FFF000001F000780000000000000003FE000000000000001FFFC400000000000
      001F8003FFC000003F000780000000000000003FE000000000000001FFFC4000
      00000000001F8003FF8000007F000780000000000000003FE000000000000001
      FFFC400000000000001F8003FF000000FF0003C0000000000000007FE0000000
      00000001FFFC400000000000001F8003FF000001FF0003C000000000000000FF
      E000000000000001FFFC400000000000001F8003FE000001FF0003F000000000
      000001FFE000000000000001FFFC400000000000001F8003FC000007FF0003F8
      00000000000007FFE000000000000001FFFC400000000000001F8003F800000F
      FF0003F80000000000000FFFE000000000000001FFFC400000000000001F8003
      F000001FFF0007FC0000000000003FFFE000000000000001FFFC400000000000
      001F8003E000003FFF0007FE0000002000003FFFE000000000000001FFFC4000
      00000000001F80038000007FFF0007FE0000000000001FFFE000000000000001
      FFFC400000000000001F8001000000FFFE0007FF000000C000000FFFE0000000
      00000001FFFC400000000000001F8000000001FFFE0007FF8000038000000FFF
      E000000000000001FFFC400000000000001F8000000003FFFE0007FF80000100
      000007FFE000000000000001FFFC400000000000001F8000000003FFFE0007FF
      80000000000007FFE000000000000001FFFC400000000000001FC00000000FFF
      F80007FF00000000000003FFE000000000000001FFFC400000000000001FC000
      00001FFFF8000FFF00000000000001FFE000000000000001FFFC400000000000
      001FC00000003FFFF0000FFF00000000000001FFE000000000000001FFFC4000
      00000000001FC00000007FFFE0000FFE00000000000001FFE000000000000001
      FFFC400000000000001FE0000000FFFFC0001FFE00000000000001FFE0000000
      00000001FFFC400000000000001FE0000001FFFF80001FFE00000000000001FF
      E000000000000001FFFC400000000000001FF0000003FFFF00003FFE00000000
      000001FFE000000000000001FFFC400000000000001FF0000007FFFF00003FFE
      00000000000001FFE000000000000001FFFC400000000000001FF0000007FFFE
      00003FFE00000000000001FFE000000000000001FFFC400000000000001FF800
      000FFFF000007FFE00000000000001FFE000000000000001FFFC400000000000
      001FFC000007FFC000007FFE00000000000001FFE000000000000001FFFC4000
      00000000001FFC000001FE000001FFFF00000000000001FFE000000000000001
      FFFC400000000000001FFE00000000000003FFFF00000000000007FFE0000000
      00000001FFFC400000000000001FFF00000000000007FFFF00000000000007FF
      E000000000000001FFFC400000000000001FFFC000000000000FFFFF80000180
      00000FFFE000000000000001FFFC400000000000001FFFE000000000001FFFFF
      E00003C000001FFFE000000000000001FFFC400000000000001FFFF000000000
      003FFFFFE00003C000001FFFE000000000000003FFFE000000000000001FFFF0
      00000000003FFFFFF00007E000003FFFE000000000000003FFFE000000000000
      001FFFF800000000007FFFFFF8000FF000007FFFF000000000000003FFFE0000
      00000000003FFFFC0000000000FFFFFFFE007FF80000FFFFF000000000000007
      FFFF000000000000003FFFFF0000000007FFFFFFFFFFFFFF0007FFFFF8000000
      00000007FFFF000000000000007FFFFFE00000000FFFFFFFFFFFFFFFC01FFFFF
      FC0000000000000FFFFFC0000000000001FFFFFFF80000007FFFFFFFFFFFFFFF
      FFFFFFFFFE0000000000001FFFFFE0000000000003FFFFFFFE000001FFFFFFFF
      FFFFFFFFFFFFFFFFFF0000000000007FFFFFF8000000000007FFFFFFFFF0003F
      FFFFFFFFFFFFFFFFFFFFFFFFFFF00000000007FFFFFFFF00000000003FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001FFFFF01FFFFFFFFFFFFFFFFF
      C3FFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000FFFFFF
      FFFFFFFF80FFFFE0000000000003FF0000000000000000000000000000000000
      00FFFFFFFFFFFFFF007FFFE0000000000003FF000000000000000000FFE00000
      1FF000000FFFFFFFFFFFFFFC003FFFE0000000000007FF000000000000000000
      000000000000000000FFFFFFFFFFFFF8005FFFE0000000000007FF0000000000
      00000000000000000000000000FFFFFFFFFFFFF0003FFFE0000000000007FF00
      0000000000000000FFFE0000000000003FFFFFFFFFFFFFE0001FFFE000000000
      0007FF000000000000000000000000000000000000FFFFFFFFFFFFC0000FFFF0
      000000000007FF000000000000000000001800000000000000FFFFFFFFFFFF80
      002FFFF000000000000FFF000000000000000000FF800000000000000FFFFFFF
      FFFFFE00000FFFF000000000000FFF0000000000000000000000000000000000
      00FFFFFFFFFFFC00001FFFF000000000000FFF000000000000000000E0000000
      0000000007FFFFFFFFFFF800001FFFF000000000000FFF000000000000000000
      000000000000000000FFFFFFFFFFF000003FC000000000000000030000000000
      00000000000000000000000000FFFFFFFFFFE000007F80000000000000000000
      0000000000000000E00000000000000007FFFFFFFFFFC00001FF000000000000
      000000000000000000000000000000000000000000FFFFFC3FFF800001FF0000
      00000000000000000000000000000000000000000002000000FFFFF80FFF0000
      03FF000000000000000000000000000000000000E00000000001000007FFFFF0
      01FE000003FF0000000000000000000000000000000000000000000000000000
      00FFFFE200F8000007FF00000000000000000000000000000000000000000000
      0000800000FFFFE00030000007FF000000000000000000000000000000000000
      F00000000000000007FFFFC0000000000FFF0000000000000000000000000000
      00000000000000000000000000FFFFC0000000000FFF00000000000000000000
      0000000000000000000000000000030000FFFF80000000001FFF000000000000
      000000000000000000000000F0000000001007C01FFFFF80000000003FFF0000
      00000000000000000000000000000000000000000000000000FFFF0000000000
      3FFF000000000000000000000000000000000000F0000000000000003FFFFF20
      000000007FFF0000000000000000000000000000000000000000000000000000
      00FFFE00000000007FFF00000000000000000200000000000000000000000000
      0000000000FFFC4000000000FFFF800000000000000002000000000000000000
      F000400000000001FFFFFC0000000000FFFF8000000000000000020000000000
      00000000000000000000000000FFF80000000000FFFFC0000000000000000200
      0000000000000000000000000000000000FFF80000000001FFFFE00000000000
      000003000000000000000000F0007FE780000001FFFFF000000000003FFFE000
      00000000000003000000000000000000000000000000000000FFF00000000000
      0FFFE00000000000000003000000000000000000000000000000000000FFE000
      0000000007FFE00000000000000003000000000000000000F000006780000001
      FFFFE4000000018001FFE0000000000000000700000000000000000000000000
      0000000000FFC00000000080007FE00000000000000007000000000000000000
      000000000000000000FFA80000000000003FE000000000000000070000000000
      00000000F0007FE400000001FFFF900000100000005FE0000000000000000700
      0000000000000000000000000000000000FF000000000020003FE00000000000
      00000700000000000000000000007C000000000000FF200000000000003FF000
      00000000000007000000000000000000000000000000000000FE000004000000
      007FF00000000000000007000000000000000000000000000000000000FF0000
      00000002007FF00000000000000007000000000000000000F0007FE700000001
      FFFC00000000000100FFF0000000000000000F00000000000000000000000000
      0000000000F800000000000001FFF0000000000000000F000000000000000000
      000000000000000000F900000000000001FFF0000000000000000F0000000000
      00000000F0007FE7FF000001FFF000000000000003FFF8000000000000000F00
      0000000000000000000000000000000000F000010000000043FFF80000000000
      00000F000000000000000000000000000000000000F000000000000007FFF800
      0000000000001F000000000000000000F00000E7FF380001FFF8000000000000
      07FFFC000000000000003F000000000000000000000000000000000000F80000
      000000000FFFFFD000000000000BFF0000000000000000000000000000000000
      00FE0004000000000FFFFFF000000000000FFF000000000000000000F0007FE7
      FF300001FFFFC000000000000FFFFFF000000000000FFF000000000000000000
      000000000000000000FFE000000000000FFFFFF000000000000FFF0000000000
      00000000000000000000000000FFF800000000000FFFFFF000000000000FFF00
      0000000000000000F000000000000001FFFFFE08000000000FFFFFF000000000
      000FFF000000000000000000000000000000000000FFFFC8000000014FFFFFF0
      00000000000FFF000000000000000000F000000000000001FFFFFFC800000000
      5FFFFFF000000000000FFF000000000000000000000000000000000000FFFFC8
      000000021FFFFFF800000000001FFF0000000000000000000000000000000000
      00FFFFC200000000BFFFFFF800000000001FFF000000000000000000F0000000
      00000021FFFFFFE200000000BFFFFFF800000000001FFF000000000000000000
      000000000000000000FFFFE0000000097FFFFFF800000000001FFF0000000000
      00000000000000000000000000FFFFF5000000127FFFFFF800000000001FFF00
      0000000000000000F000000000000001FFFFFFF000000002FFFFFFF800000000
      001FFF000000000000000000000000000000000000FFFFFA00000005FFFFFFF8
      00000000001FFF000000000000000000000000000000000000FFFFF84000000B
      FFFFFFF800000000001FFF000000000000000000F000000000000001FFFFFFFC
      00000017FFFFFFF800000000001FFF0000000000000000000000000000000000
      00FFFFFE0000000FFFFFFFF800000000001FFF00000000000000000000000000
      0000000000FFFFFF0000009FFFFFFFFA00000000005FFF000000000000000000
      F000000000000001FFFFFFFF9000003FFFFFFFF800000000001FFF0000000000
      00000000000000000000000000FFFFFFC40008FFFFFFFFFFFFFFFFFFFFFFFF00
      0000000000000000040000000000000200FFFFFFF80007FFFFFFFFFFFFFFFFFF
      FFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF003FFFFFFFFFFF
      FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited Cadastro: TIBQuery
    AfterScroll = CadastroAfterScroll
    BufferChunks = 4500
    SQL.Strings = (
      'WITH RECURSIVE PK'
      'AS ('
      'SELECT   PK.ID  ,PK.EP_ID,PK.IDEV,'
      
        '         PK.IDPK,PK.DEPK ,PK.DTPK,PK.HTPK,PK.API_B2B_IDPK,PK.API' +
        '_B2B_DEPK,PK.API_B2B_DTPK,PK.API_B2B_HTPK,'
      '         PK.CTNR,PK.CDCX ,'
      ''
      '         PK.CD_ID,PK.CD_NO,PK.CD_NO_RZ,PK.CD_CNPJ,'
      '         PK.CR_ID,PK.CR_NO,'
      '         PK.CV_ID,PK.CV_NO,'
      ''
      '         PK.QTDE,PK.QTRL,'
      '         PK.TSDE,PK.TCDE,'
      '         PK.TDSC,PK.VDSC,PK.PDSC,'
      ''
      '         PK.CT_ID,PK.CT_NO,'
      
        '         PK.FRT_MODELO,PK.FRT_NO,PK.FRT_VFRT,PK.FRT_PSBR,PK.FRT_' +
        'PSLQ,'
      ''
      '         PK.TPD_ID,PK.TPD_NO,'
      '         PK.TCO_ID,PK.TCO_NO,PK.TCO_NO_PRZ,PK.PRZ_ID,'
      '         PK.CDST,PK.REST,PK.DEST,PK.STA_NO_ABREV,'
      '         PK.BXD_IDPK,PK.BXD_DTPK,'
      ''
      '         PK.INFADCAD'
      ''
      'FROM     VW_PSQ_PED_PDP_ADM AS PK'
      ''
      'WHERE (PK.CDST = 116'
      
        'OR     PK.DTPK BETWEEN (DATEADD(1 - EXTRACT(DAY FROM CURRENT_DAT' +
        'E) DAY TO CURRENT_DATE )) AND (DATEADD(-EXTRACT(DAY FROM DATEADD' +
        '(1 MONTH TO CURRENT_DATE )) DAY TO DATEADD(1 MONTH TO CURRENT_DA' +
        'TE))))'
      ''
      '),'
      'CTE_PSQ'
      'AS ('
      'SELECT PK.* FROM PK'
      ')'
      'SELECT   DISTINCT PK.* FROM CTE_PSQ AS PK'
      'ORDER BY PK.ID DESC')
    Top = 224
    object CadastroID: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"VW_PSQ_PED_PDP_ADM"."ID"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0'
    end
    object CadastroEP_ID: TSmallintField
      FieldName = 'EP_ID'
      Origin = '"VW_PSQ_PED_PDP_ADM"."EP_ID"'
    end
    object CadastroIDEV: TLargeintField
      FieldName = 'IDEV'
      Origin = '"VW_PSQ_PED_PDP_ADM"."IDEV"'
    end
    object CadastroIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."IDPK"'
    end
    object CadastroDEPK: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'DEPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."DEPK"'
      Size = 30
    end
    object CadastroDTPK: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."DTPK"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy'
    end
    object CadastroHTPK: TTimeField
      DisplayLabel = 'Hora'
      FieldKind = fkInternalCalc
      FieldName = 'HTPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."HTPK"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'hh:mm'
    end
    object CadastroAPI_B2B_IDPK: TLargeintField
      FieldName = 'API_B2B_IDPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."API_B2B_IDPK"'
    end
    object CadastroAPI_B2B_DEPK: TIBStringField
      DisplayLabel = 'B2B'
      FieldName = 'API_B2B_DEPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."API_B2B_DEPK"'
      Size = 30
    end
    object CadastroAPI_B2B_DTPK: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'API_B2B_DTPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."API_B2B_DTPK"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy'
    end
    object CadastroAPI_B2B_HTPK: TTimeField
      DisplayLabel = 'Hora'
      FieldKind = fkInternalCalc
      FieldName = 'API_B2B_HTPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."API_B2B_HTPK"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'hh:mm'
    end
    object CadastroCTNR: TIBStringField
      FieldName = 'CTNR'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CTNR"'
    end
    object CadastroCDCX: TLargeintField
      FieldName = 'CDCX'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CDCX"'
    end
    object CadastroCD_ID: TIntegerField
      FieldName = 'CD_ID'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CD_ID"'
    end
    object CadastroCD_NO: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CD_NO'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CD_NO"'
      Size = 60
    end
    object CadastroCD_NO_RZ: TIBStringField
      FieldName = 'CD_NO_RZ'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CD_NO_RZ"'
      Size = 60
    end
    object CadastroCD_CNPJ: TIBStringField
      FieldName = 'CD_CNPJ'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CD_CNPJ"'
      Size = 14
    end
    object CadastroCR_ID: TSmallintField
      FieldName = 'CR_ID'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CR_ID"'
    end
    object CadastroCR_NO: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'CR_NO'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CR_NO"'
      Size = 60
    end
    object CadastroCV_ID: TSmallintField
      FieldName = 'CV_ID'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CV_ID"'
    end
    object CadastroCV_NO: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'CV_NO'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CV_NO"'
      Size = 30
    end
    object CadastroQTDE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'QTDE'
      Origin = '"VW_PSQ_PED_PDP_ADM"."QTDE"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 4
    end
    object CadastroQTRL: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldKind = fkInternalCalc
      FieldName = 'QTRL'
      Origin = '"VW_PSQ_PED_PDP_ADM"."QTRL"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0'
    end
    object CadastroTSDE: TIBBCDField
      DisplayLabel = 'Sub Total'
      FieldKind = fkInternalCalc
      FieldName = 'TSDE'
      Origin = '"VW_PSQ_PED_PDP_ADM"."TSDE"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroTCDE: TIBBCDField
      DisplayLabel = 'Total'
      FieldKind = fkInternalCalc
      FieldName = 'TCDE'
      Origin = '"VW_PSQ_PED_PDP_ADM"."TCDE"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroTDSC: TIBStringField
      FieldName = 'TDSC'
      Origin = '"VW_PSQ_PED_PDP_ADM"."TDSC"'
      FixedChar = True
      Size = 1
    end
    object CadastroVDSC: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'VDSC'
      Origin = '"VW_PSQ_PED_PDP_ADM"."VDSC"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroPDSC: TIBBCDField
      FieldName = 'PDSC'
      Origin = '"VW_PSQ_PED_PDP_ADM"."PDSC"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 9
      Size = 2
    end
    object CadastroCT_ID: TSmallintField
      FieldName = 'CT_ID'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CT_ID"'
    end
    object CadastroCT_NO: TIBStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'CT_NO'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CT_NO"'
      Size = 60
    end
    object CadastroFRT_MODELO: TSmallintField
      FieldName = 'FRT_MODELO'
      Origin = '"VW_PSQ_PED_PDP_ADM"."FRT_MODELO"'
    end
    object CadastroFRT_NO: TIBStringField
      DisplayLabel = 'Frete'
      FieldName = 'FRT_NO'
      Origin = '"VW_PSQ_PED_PDP_ADM"."FRT_NO"'
      Size = 60
    end
    object CadastroFRT_VFRT: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'FRT_VFRT'
      Origin = '"VW_PSQ_PED_PDP_ADM"."FRT_VFRT"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroFRT_PSBR: TIBBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'FRT_PSBR'
      Origin = '"VW_PSQ_PED_PDP_ADM"."FRT_PSBR"'
      DisplayFormat = ',##,0.000'
      Precision = 18
      Size = 3
    end
    object CadastroFRT_PSLQ: TIBBCDField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'FRT_PSLQ'
      Origin = '"VW_PSQ_PED_PDP_ADM"."FRT_PSLQ"'
      DisplayFormat = ',##,0.000'
      Precision = 18
      Size = 3
    end
    object CadastroTPD_ID: TSmallintField
      FieldName = 'TPD_ID'
      Origin = '"VW_PSQ_PED_PDP_ADM"."TPD_ID"'
    end
    object CadastroTPD_NO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TPD_NO'
      Origin = '"VW_PSQ_PED_PDP_ADM"."TPD_NO"'
      Size = 60
    end
    object CadastroTCO_ID: TSmallintField
      FieldName = 'TCO_ID'
      Origin = '"VW_PSQ_PED_PDP_ADM"."TCO_ID"'
    end
    object CadastroTCO_NO: TIBStringField
      FieldName = 'TCO_NO'
      Origin = '"VW_PSQ_PED_PDP_ADM"."TCO_NO"'
      Size = 60
    end
    object CadastroTCO_NO_PRZ: TIBStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldKind = fkInternalCalc
      FieldName = 'TCO_NO_PRZ'
      Origin = '"VW_PSQ_PED_PDP_ADM"."TCO_NO_PRZ"'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object CadastroPRZ_ID: TSmallintField
      FieldName = 'PRZ_ID'
      Origin = '"VW_PSQ_PED_PDP_ADM"."PRZ_ID"'
    end
    object CadastroCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"VW_PSQ_PED_PDP_ADM"."CDST"'
    end
    object CadastroREST: TIBStringField
      FieldName = 'REST'
      Origin = '"VW_PSQ_PED_PDP_ADM"."REST"'
      Size = 10
    end
    object CadastroDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'DEST'
      Origin = '"VW_PSQ_PED_PDP_ADM"."DEST"'
      Size = 30
    end
    object CadastroSTA_NO_ABREV: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'STA_NO_ABREV'
      Origin = '"VW_PSQ_PED_PDP_ADM"."STA_NO_ABREV"'
      Size = 30
    end
    object CadastroBXD_IDPK: TLargeintField
      FieldName = 'BXD_IDPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."BXD_IDPK"'
    end
    object CadastroBXD_DTPK: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'BXD_DTPK'
      Origin = '"VW_PSQ_PED_PDP_ADM"."BXD_DTPK"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CadastroINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_PSQ_PED_PDP_ADM"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 768
    end
  end
  inherited TEdicao: TIBTransaction
    Left = 200
  end
  inherited SQLEdicao: TIBSQL
    Left = 232
  end
  inherited SPEdicao: TIBStoredProc
    Left = 264
  end
  inherited TEvent: TIBTransaction
    Left = 296
  end
  inherited DMMain: TdxDockingManager
    Left = 1184
    Top = 176
  end
  inherited BMMain: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 1216
    Top = 176
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object FKCadastro: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    AutoCalcFields = False
    AfterOpen = FKCadastroAfterOpen
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT    PK.ID    ,PK.IDEP,'
      '          PK.IDPK  ,PK.ITEM,PK.CTNR,'
      '          PK.IDCP  ,CP.IDEP AS SKU_IDEP,EP.FANTASIA AS SKU_DEEP,'
      '          CP.ARTIGO,CP.SKU ,CP.CEAN,'
      '          PK.DECP  ,PK.DGCP,'
      '          PK.UCOM  ,PK.UCON,PK.QTDE,PK.QTRL,'
      
        '          PK.VPRC_PAD_INI,PK.VPRC_PAD_FIM,PK.VPRC_PAD,PK.PDSC,PK' +
        '.VDSC,PK.VPRC_COM,'
      '          PK.NCM ,PK.PIPI,PK.VIPI,'
      '          PK.TSDE,PK.TCDE,'
      '          PK.PSBR,PK.PSLQ,'
      '          PK.STFI,'
      
        '          CAST(IIF(SKU.IMG_PAD IS NULL,ART.ID,SKU.ID) AS BIGINT)' +
        ' AS IMG_ID,IIF(SKU.IMG_PAD IS NULL,ART.IMG_PAD,SKU.IMG_PAD) AS I' +
        'MG_PAD'
      'FROM      ped_prg_ite AS PK'
      'JOIN      CAD_PRO     AS CP ON (CP.ID = PK.IDCP)'
      'JOIN      TAB_PAR_SIS AS EP ON (EP.ID = CP.IDEP)'
      'LEFT JOIN CAD_PRO_IMG_ART AS ART ON (ART.ID = CP.IDAK)'
      'LEFT JOIN CAD_PRO_IMG_SKU AS SKU ON (SKU.ID = CP.ID  )'
      'WHERE     PK.IDPK = :ID'
      'ORDER BY  PK.ITEM')
    Left = 104
    Top = 256
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'ID'
        ParamType = ptUnknown
        Size = 8
      end>
    object FKCadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"PED_PRG_ITE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FKCadastroIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"PED_PRG_ITE"."IDEP"'
    end
    object FKCadastroIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"PED_PRG_ITE"."IDPK"'
    end
    object FKCadastroITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Origin = '"PED_PRG_ITE"."ITEM"'
      DisplayFormat = '0'
    end
    object FKCadastroCTNR: TIBStringField
      FieldName = 'CTNR'
      Origin = '"PED_PRG_ITE"."CTNR"'
    end
    object FKCadastroIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"PED_PRG_ITE"."IDCP"'
    end
    object FKCadastroSKU_IDEP: TSmallintField
      FieldName = 'SKU_IDEP'
      Origin = '"CAD_PRO"."IDEP"'
    end
    object FKCadastroSKU_DEEP: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'SKU_DEEP'
      Origin = '"TAB_PAR_SIS"."FANTASIA"'
      Size = 60
    end
    object FKCadastroARTIGO: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'ARTIGO'
      Origin = '"CAD_PRO"."ARTIGO"'
      Size = 30
    end
    object FKCadastroSKU: TIBStringField
      FieldName = 'SKU'
      Origin = '"CAD_PRO"."SKU"'
      Size = 30
    end
    object FKCadastroCEAN: TIBStringField
      FieldName = 'CEAN'
      Origin = '"CAD_PRO"."CEAN"'
    end
    object FKCadastroDECP: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DECP'
      Origin = '"PED_PRG_ITE"."DECP"'
      Size = 120
    end
    object FKCadastroDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'DGCP'
      Origin = '"PED_PRG_ITE"."DGCP"'
      Size = 60
    end
    object FKCadastroUCOM: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UCOM'
      Origin = '"PED_PRG_ITE"."UCOM"'
      Size = 10
    end
    object FKCadastroUCON: TIBStringField
      DisplayLabel = 'Conte'#250'do'
      FieldName = 'UCON'
      Origin = '"PED_PRG_ITE"."UCON"'
      Size = 40
    end
    object FKCadastroQTDE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = '"PED_PRG_ITE"."QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FKCadastroQTRL: TIntegerField
      DisplayLabel = 'Rolo'
      FieldName = 'QTRL'
      Origin = '"PED_PRG_ITE"."QTRL"'
      DisplayFormat = '0'
    end
    object FKCadastroVPRC_PAD_INI: TFloatField
      FieldName = 'VPRC_PAD_INI'
      Origin = '"PED_PRG_ITE"."VPRC_PAD_INI"'
      DisplayFormat = ',##,0.00###'
    end
    object FKCadastroVPRC_PAD_FIM: TFloatField
      FieldName = 'VPRC_PAD_FIM'
      Origin = '"PED_PRG_ITE"."VPRC_PAD_FIM"'
      DisplayFormat = ',##,0.00###'
    end
    object FKCadastroVPRC_PAD: TFloatField
      FieldName = 'VPRC_PAD'
      Origin = '"PED_PRG_ITE"."VPRC_PAD"'
      DisplayFormat = ',##,0.00###'
    end
    object FKCadastroPDSC: TIBBCDField
      DisplayLabel = 'Desc %'
      FieldName = 'PDSC'
      Origin = '"PED_PRG_ITE"."PDSC"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object FKCadastroVDSC: TFloatField
      DisplayLabel = 'Desc R$'
      FieldName = 'VDSC'
      Origin = '"PED_PRG_ITE"."VDSC"'
      DisplayFormat = ',##,0.00'
    end
    object FKCadastroVPRC_COM: TFloatField
      DisplayLabel = 'Vl. Unit'#225'rio'
      FieldName = 'VPRC_COM'
      Origin = '"PED_PRG_ITE"."VPRC_COM"'
      DisplayFormat = ',##,0.00###'
    end
    object FKCadastroNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"PED_PRG_ITE"."NCM"'
      FixedChar = True
      Size = 8
    end
    object FKCadastroPIPI: TIBBCDField
      DisplayLabel = 'IPI %'
      FieldName = 'PIPI'
      Origin = '"PED_PRG_ITE"."PIPI"'
      DisplayFormat = ',##,0.00'
      Precision = 9
      Size = 2
    end
    object FKCadastroVIPI: TFloatField
      DisplayLabel = 'IPI R$'
      FieldName = 'VIPI'
      Origin = '"PED_PRG_ITE"."VIPI"'
      DisplayFormat = ',##,0.00'
    end
    object FKCadastroTSDE: TIBBCDField
      DisplayLabel = 'Sub Total'
      FieldName = 'TSDE'
      Origin = '"PED_PRG_ITE"."TSDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FKCadastroTCDE: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TCDE'
      Origin = '"PED_PRG_ITE"."TCDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FKCadastroPSBR: TIBBCDField
      DisplayLabel = 'Peso BR'
      FieldName = 'PSBR'
      Origin = '"PED_PRG_ITE"."PSBR"'
      DisplayFormat = ',##,0.000'
      Precision = 18
      Size = 3
    end
    object FKCadastroPSLQ: TIBBCDField
      DisplayLabel = 'Peso LQ'
      FieldName = 'PSLQ'
      Origin = '"PED_PRG_ITE"."PSLQ"'
      DisplayFormat = ',##,0.000'
      Precision = 18
      Size = 3
    end
    object FKCadastroSTFI: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'STFI'
      Origin = '"PED_PRG_ITE"."STFI"'
      Size = 60
    end
    object FKCadastroIMG_ID: TLargeintField
      FieldName = 'IMG_ID'
      ProviderFlags = []
    end
    object FKCadastroIMG_PAD: TBlobField
      FieldName = 'IMG_PAD'
      ProviderFlags = []
      Size = 8
    end
  end
  object DTSFKCadastro: TDataSource
    DataSet = FKCadastro
    OnDataChange = DTSFKCadastroDataChange
    Left = 136
    Top = 256
  end
  object cli_sta: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    SQL.Strings = (
      'SELECT FIN_TITU,FIN_DVEN,FIN_VALO FROM FIN_REC_BAN_BAI'
      'WHERE  FIN_STFI LIKE :FIN_STFI'
      'AND    FIN_CCLI = :FIN_CCLI'
      'UNION'
      'SELECT FIN_TITU,FIN_DVEN,FIN_VALO FROM FIN_REC_BAN_BAI_003'
      'WHERE  FIN_STFI LIKE :FIN_STFI'
      'AND    FIN_CCLI = :FIN_CCLI'
      'UNION'
      'SELECT FIN_TITU,FIN_DVEN,FIN_VALO FROM FIN_REC_BAN_BAI_004'
      'WHERE  FIN_STFI LIKE :FIN_STFI'
      'AND    FIN_CCLI = :FIN_CCLI'
      'UNION'
      'SELECT FIN_TITU,FIN_DVEN,FIN_VALO FROM FIN_REC_BAN_BAI_005'
      'WHERE  FIN_STFI LIKE :FIN_STFI'
      'AND    FIN_CCLI = :FIN_CCLI'
      'UNION'
      'SELECT FIN_TITU,FIN_DVEN,FIN_VALO FROM FIN_REC_CAR_BAI'
      'WHERE  FIN_STFI LIKE :FIN_STFI'
      'AND    FIN_CCLI = :FIN_CCLI'
      'UNION'
      'SELECT FIN_TITU,FIN_DVEN,FIN_VALO FROM FIN_REC_CAR_BAI_003'
      'WHERE  FIN_STFI LIKE :FIN_STFI'
      'AND    FIN_CCLI = :FIN_CCLI'
      'UNION'
      'SELECT FIN_TITU,FIN_DVEN,FIN_VALO FROM FIN_REC_CAR_BAI_004'
      'WHERE  FIN_STFI LIKE :FIN_STFI'
      'AND    FIN_CCLI = :FIN_CCLI'
      'UNION'
      'SELECT FIN_TITU,FIN_DVEN,FIN_VALO FROM FIN_REC_CAR_BAI_005'
      'WHERE  FIN_STFI LIKE :FIN_STFI'
      'AND    FIN_CCLI = :FIN_CCLI')
    Left = 104
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'FIN_STFI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_STFI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_STFI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_STFI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_STFI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_STFI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_STFI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIN_STFI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIN_CCLI'
        ParamType = ptInput
      end>
    object cli_staFIN_TITU: TIBStringField
      FieldName = 'FIN_TITU'
      Origin = '"FIN_REC_BAN_BAI"."FIN_TITU"'
      Size = 30
    end
    object cli_staFIN_DVEN: TDateField
      FieldName = 'FIN_DVEN'
      Origin = '"FIN_REC_BAN_BAI"."FIN_DVEN"'
    end
    object cli_staFIN_VALO: TIBBCDField
      FieldName = 'FIN_VALO'
      Origin = '"FIN_REC_BAN_BAI"."FIN_VALO"'
      Precision = 18
      Size = 2
    end
  end
  object cad_cli_crd: TIBDataSet
    Database = FBird.DBERP
    Transaction = TEdicao
    DeleteSQL.Strings = (
      'delete from CAD_CLI_CRD'
      'where'
      '  ID = :OLD_ID')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  IDEP,'
      '  IDCA,'
      '  DTCA,'
      '  IDED,'
      '  DTED,'
      '  IDST,'
      '  DTST,'
      '  CDST,'
      '  REST,'
      '  DEST,'
      '  IDCD,'
      '  NAFA,'
      '  VCRD,'
      '  SCRD,'
      '  PDSC,'
      '  VDSC,'
      '  INFADCAD_L1,'
      '  INFADCAD_L2,'
      '  PDSC_001,'
      '  VDSC_INI_001,'
      '  VDSC_FIM_001,'
      '  INFADCAD_L1_001,'
      '  INFADCAD_L2_001,'
      '  PDSC_002,'
      '  VDSC_INI_002,'
      '  VDSC_FIM_002,'
      '  INFADCAD_L1_002,'
      '  INFADCAD_L2_002,'
      '  PDSC_003,'
      '  VDSC_INI_003,'
      '  VDSC_FIM_003,'
      '  INFADCAD_L1_003,'
      '  INFADCAD_L2_003,'
      '  FLAG,'
      '  VDUP,'
      '  VCAR,'
      '  VPED,'
      '  PED_TCDE,'
      '  PED_VTFA,'
      '  PED_QTDE,'
      '  PED_QTRL,'
      '  PED_DTIN,'
      '  PED_DTFN,'
      '  PED_PEN_TCDE,'
      '  PED_PEN_QTDE,'
      '  PED_PEN_QTRL,'
      '  PED_PEN_PERC,'
      '  PED_TKT_TCDE,'
      '  PED_TKT_VTFA,'
      '  BAN_VDUP,'
      '  BAN_QTDE,'
      '  BAN_PERC,'
      '  BAN_PEN_VDUP,'
      '  BAN_PEN_QTDE,'
      '  BAN_PEN_PERC,'
      '  BAN_PAG_VDUP,'
      '  BAN_PAG_QTDE,'
      '  BAN_PAG_PERC,'
      '  BAN_AVC_VDUP,'
      '  BAN_AVC_QTDE,'
      '  BAN_AVC_PERC,'
      '  BAN_NVC_VDUP,'
      '  BAN_NVC_QTDE,'
      '  BAN_NVC_PERC,'
      '  BAN_DVC_VDUP,'
      '  BAN_DVC_QTDE,'
      '  BAN_DVC_PERC,'
      '  CAR_VDUP,'
      '  CAR_QTDE,'
      '  CAR_PERC,'
      '  CAR_PEN_VDUP,'
      '  CAR_PEN_QTDE,'
      '  CAR_PEN_PERC,'
      '  CAR_PAG_VDUP,'
      '  CAR_PAG_QTDE,'
      '  CAR_PAG_PERC,'
      '  CAR_AVC_VDUP,'
      '  CAR_AVC_QTDE,'
      '  CAR_AVC_PERC,'
      '  CAR_NVC_VDUP,'
      '  CAR_NVC_QTDE,'
      '  CAR_NVC_PERC,'
      '  CAR_DVC_VDUP,'
      '  CAR_DVC_QTDE,'
      '  CAR_DVC_PERC'
      'from CAD_CLI_CRD '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM CAD_CLI_CRD')
    ModifySQL.Strings = (
      'update CAD_CLI_CRD'
      'set'
      '  BAN_AVC_PERC = :BAN_AVC_PERC,'
      '  BAN_AVC_QTDE = :BAN_AVC_QTDE,'
      '  BAN_AVC_VDUP = :BAN_AVC_VDUP,'
      '  BAN_DVC_PERC = :BAN_DVC_PERC,'
      '  BAN_DVC_QTDE = :BAN_DVC_QTDE,'
      '  BAN_DVC_VDUP = :BAN_DVC_VDUP,'
      '  BAN_NVC_PERC = :BAN_NVC_PERC,'
      '  BAN_NVC_QTDE = :BAN_NVC_QTDE,'
      '  BAN_NVC_VDUP = :BAN_NVC_VDUP,'
      '  BAN_PAG_PERC = :BAN_PAG_PERC,'
      '  BAN_PAG_QTDE = :BAN_PAG_QTDE,'
      '  BAN_PAG_VDUP = :BAN_PAG_VDUP,'
      '  BAN_PEN_PERC = :BAN_PEN_PERC,'
      '  BAN_PEN_QTDE = :BAN_PEN_QTDE,'
      '  BAN_PEN_VDUP = :BAN_PEN_VDUP,'
      '  BAN_PERC = :BAN_PERC,'
      '  BAN_QTDE = :BAN_QTDE,'
      '  BAN_VDUP = :BAN_VDUP,'
      '  CAR_AVC_PERC = :CAR_AVC_PERC,'
      '  CAR_AVC_QTDE = :CAR_AVC_QTDE,'
      '  CAR_AVC_VDUP = :CAR_AVC_VDUP,'
      '  CAR_DVC_PERC = :CAR_DVC_PERC,'
      '  CAR_DVC_QTDE = :CAR_DVC_QTDE,'
      '  CAR_DVC_VDUP = :CAR_DVC_VDUP,'
      '  CAR_NVC_PERC = :CAR_NVC_PERC,'
      '  CAR_NVC_QTDE = :CAR_NVC_QTDE,'
      '  CAR_NVC_VDUP = :CAR_NVC_VDUP,'
      '  CAR_PAG_PERC = :CAR_PAG_PERC,'
      '  CAR_PAG_QTDE = :CAR_PAG_QTDE,'
      '  CAR_PAG_VDUP = :CAR_PAG_VDUP,'
      '  CAR_PEN_PERC = :CAR_PEN_PERC,'
      '  CAR_PEN_QTDE = :CAR_PEN_QTDE,'
      '  CAR_PEN_VDUP = :CAR_PEN_VDUP,'
      '  CAR_PERC = :CAR_PERC,'
      '  CAR_QTDE = :CAR_QTDE,'
      '  CAR_VDUP = :CAR_VDUP,'
      '  CDST = :CDST,'
      '  DEST = :DEST,'
      '  DTCA = :DTCA,'
      '  DTED = :DTED,'
      '  DTST = :DTST,'
      '  FLAG = :FLAG,'
      '  ID = :ID,'
      '  IDCA = :IDCA,'
      '  IDCD = :IDCD,'
      '  IDED = :IDED,'
      '  IDEP = :IDEP,'
      '  IDST = :IDST,'
      '  INFADCAD_L1 = :INFADCAD_L1,'
      '  INFADCAD_L1_001 = :INFADCAD_L1_001,'
      '  INFADCAD_L1_002 = :INFADCAD_L1_002,'
      '  INFADCAD_L1_003 = :INFADCAD_L1_003,'
      '  INFADCAD_L2 = :INFADCAD_L2,'
      '  INFADCAD_L2_001 = :INFADCAD_L2_001,'
      '  INFADCAD_L2_002 = :INFADCAD_L2_002,'
      '  INFADCAD_L2_003 = :INFADCAD_L2_003,'
      '  NAFA = :NAFA,'
      '  PDSC = :PDSC,'
      '  PDSC_001 = :PDSC_001,'
      '  PDSC_002 = :PDSC_002,'
      '  PDSC_003 = :PDSC_003,'
      '  PED_DTFN = :PED_DTFN,'
      '  PED_DTIN = :PED_DTIN,'
      '  PED_PEN_PERC = :PED_PEN_PERC,'
      '  PED_PEN_QTDE = :PED_PEN_QTDE,'
      '  PED_PEN_QTRL = :PED_PEN_QTRL,'
      '  PED_PEN_TCDE = :PED_PEN_TCDE,'
      '  PED_QTDE = :PED_QTDE,'
      '  PED_QTRL = :PED_QTRL,'
      '  PED_TCDE = :PED_TCDE,'
      '  PED_TKT_TCDE = :PED_TKT_TCDE,'
      '  PED_TKT_VTFA = :PED_TKT_VTFA,'
      '  PED_VTFA = :PED_VTFA,'
      '  REST = :REST,'
      '  SCRD = :SCRD,'
      '  VCAR = :VCAR,'
      '  VCRD = :VCRD,'
      '  VDSC = :VDSC,'
      '  VDSC_FIM_001 = :VDSC_FIM_001,'
      '  VDSC_FIM_002 = :VDSC_FIM_002,'
      '  VDSC_FIM_003 = :VDSC_FIM_003,'
      '  VDSC_INI_001 = :VDSC_INI_001,'
      '  VDSC_INI_002 = :VDSC_INI_002,'
      '  VDSC_INI_003 = :VDSC_INI_003,'
      '  VDUP = :VDUP,'
      '  VPED = :VPED'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 224
    object cad_cli_crdID: TIntegerField
      FieldName = 'ID'
      Origin = '"CAD_CLI_CRD"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cad_cli_crdIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"CAD_CLI_CRD"."IDEP"'
    end
    object cad_cli_crdIDCA: TSmallintField
      FieldName = 'IDCA'
      Origin = '"CAD_CLI_CRD"."IDCA"'
    end
    object cad_cli_crdDTCA: TDateTimeField
      FieldName = 'DTCA'
      Origin = '"CAD_CLI_CRD"."DTCA"'
    end
    object cad_cli_crdIDED: TSmallintField
      FieldName = 'IDED'
      Origin = '"CAD_CLI_CRD"."IDED"'
    end
    object cad_cli_crdDTED: TDateTimeField
      FieldName = 'DTED'
      Origin = '"CAD_CLI_CRD"."DTED"'
    end
    object cad_cli_crdIDST: TSmallintField
      FieldName = 'IDST'
      Origin = '"CAD_CLI_CRD"."IDST"'
    end
    object cad_cli_crdDTST: TDateTimeField
      FieldName = 'DTST'
      Origin = '"CAD_CLI_CRD"."DTST"'
    end
    object cad_cli_crdCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"CAD_CLI_CRD"."CDST"'
    end
    object cad_cli_crdREST: TIBStringField
      FieldName = 'REST'
      Origin = '"CAD_CLI_CRD"."REST"'
      Size = 10
    end
    object cad_cli_crdDEST: TIBStringField
      FieldName = 'DEST'
      Origin = '"CAD_CLI_CRD"."DEST"'
      Size = 60
    end
    object cad_cli_crdIDCD: TIntegerField
      FieldName = 'IDCD'
      Origin = '"CAD_CLI_CRD"."IDCD"'
    end
    object cad_cli_crdNAFA: TSmallintField
      FieldName = 'NAFA'
      Origin = '"CAD_CLI_CRD"."NAFA"'
    end
    object cad_cli_crdVCRD: TIBBCDField
      FieldName = 'VCRD'
      Origin = '"CAD_CLI_CRD"."VCRD"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdSCRD: TIBBCDField
      FieldName = 'SCRD'
      Origin = '"CAD_CLI_CRD"."SCRD"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdPDSC: TIBBCDField
      FieldName = 'PDSC'
      Origin = '"CAD_CLI_CRD"."PDSC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdVDSC: TIBBCDField
      FieldName = 'VDSC'
      Origin = '"CAD_CLI_CRD"."VDSC"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdINFADCAD_L1: TIBStringField
      FieldName = 'INFADCAD_L1'
      Origin = '"CAD_CLI_CRD"."INFADCAD_L1"'
      Size = 60
    end
    object cad_cli_crdINFADCAD_L2: TIBStringField
      FieldName = 'INFADCAD_L2'
      Origin = '"CAD_CLI_CRD"."INFADCAD_L2"'
      Size = 60
    end
    object cad_cli_crdPDSC_001: TIBBCDField
      FieldName = 'PDSC_001'
      Origin = '"CAD_CLI_CRD"."PDSC_001"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdVDSC_INI_001: TIBBCDField
      FieldName = 'VDSC_INI_001'
      Origin = '"CAD_CLI_CRD"."VDSC_INI_001"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdVDSC_FIM_001: TIBBCDField
      FieldName = 'VDSC_FIM_001'
      Origin = '"CAD_CLI_CRD"."VDSC_FIM_001"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdINFADCAD_L1_001: TIBStringField
      FieldName = 'INFADCAD_L1_001'
      Origin = '"CAD_CLI_CRD"."INFADCAD_L1_001"'
      Size = 60
    end
    object cad_cli_crdINFADCAD_L2_001: TIBStringField
      FieldName = 'INFADCAD_L2_001'
      Origin = '"CAD_CLI_CRD"."INFADCAD_L2_001"'
      Size = 60
    end
    object cad_cli_crdPDSC_002: TIBBCDField
      FieldName = 'PDSC_002'
      Origin = '"CAD_CLI_CRD"."PDSC_002"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdVDSC_INI_002: TIBBCDField
      FieldName = 'VDSC_INI_002'
      Origin = '"CAD_CLI_CRD"."VDSC_INI_002"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdVDSC_FIM_002: TIBBCDField
      FieldName = 'VDSC_FIM_002'
      Origin = '"CAD_CLI_CRD"."VDSC_FIM_002"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdINFADCAD_L1_002: TIBStringField
      FieldName = 'INFADCAD_L1_002'
      Origin = '"CAD_CLI_CRD"."INFADCAD_L1_002"'
      Size = 60
    end
    object cad_cli_crdINFADCAD_L2_002: TIBStringField
      FieldName = 'INFADCAD_L2_002'
      Origin = '"CAD_CLI_CRD"."INFADCAD_L2_002"'
      Size = 60
    end
    object cad_cli_crdPDSC_003: TIBBCDField
      FieldName = 'PDSC_003'
      Origin = '"CAD_CLI_CRD"."PDSC_003"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdVDSC_INI_003: TIBBCDField
      FieldName = 'VDSC_INI_003'
      Origin = '"CAD_CLI_CRD"."VDSC_INI_003"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdVDSC_FIM_003: TIBBCDField
      FieldName = 'VDSC_FIM_003'
      Origin = '"CAD_CLI_CRD"."VDSC_FIM_003"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdINFADCAD_L1_003: TIBStringField
      FieldName = 'INFADCAD_L1_003'
      Origin = '"CAD_CLI_CRD"."INFADCAD_L1_003"'
      Size = 60
    end
    object cad_cli_crdINFADCAD_L2_003: TIBStringField
      FieldName = 'INFADCAD_L2_003'
      Origin = '"CAD_CLI_CRD"."INFADCAD_L2_003"'
      Size = 60
    end
    object cad_cli_crdFLAG: TSmallintField
      FieldName = 'FLAG'
      Origin = '"CAD_CLI_CRD"."FLAG"'
    end
    object cad_cli_crdVDUP: TIBBCDField
      FieldName = 'VDUP'
      Origin = '"CAD_CLI_CRD"."VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdVCAR: TIBBCDField
      FieldName = 'VCAR'
      Origin = '"CAD_CLI_CRD"."VCAR"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdVPED: TIBBCDField
      FieldName = 'VPED'
      Origin = '"CAD_CLI_CRD"."VPED"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdPED_TCDE: TIBBCDField
      FieldName = 'PED_TCDE'
      Origin = '"CAD_CLI_CRD"."PED_TCDE"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdPED_VTFA: TIBBCDField
      FieldName = 'PED_VTFA'
      Origin = '"CAD_CLI_CRD"."PED_VTFA"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdPED_QTDE: TIntegerField
      FieldName = 'PED_QTDE'
      Origin = '"CAD_CLI_CRD"."PED_QTDE"'
    end
    object cad_cli_crdPED_QTRL: TLargeintField
      FieldName = 'PED_QTRL'
      Origin = '"CAD_CLI_CRD"."PED_QTRL"'
    end
    object cad_cli_crdPED_DTIN: TDateField
      FieldName = 'PED_DTIN'
      Origin = '"CAD_CLI_CRD"."PED_DTIN"'
    end
    object cad_cli_crdPED_DTFN: TDateField
      FieldName = 'PED_DTFN'
      Origin = '"CAD_CLI_CRD"."PED_DTFN"'
    end
    object cad_cli_crdPED_PEN_TCDE: TIBBCDField
      FieldName = 'PED_PEN_TCDE'
      Origin = '"CAD_CLI_CRD"."PED_PEN_TCDE"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdPED_PEN_QTDE: TIntegerField
      FieldName = 'PED_PEN_QTDE'
      Origin = '"CAD_CLI_CRD"."PED_PEN_QTDE"'
    end
    object cad_cli_crdPED_PEN_QTRL: TLargeintField
      FieldName = 'PED_PEN_QTRL'
      Origin = '"CAD_CLI_CRD"."PED_PEN_QTRL"'
    end
    object cad_cli_crdPED_PEN_PERC: TIBBCDField
      FieldName = 'PED_PEN_PERC'
      Origin = '"CAD_CLI_CRD"."PED_PEN_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdPED_TKT_TCDE: TIBBCDField
      FieldName = 'PED_TKT_TCDE'
      Origin = '"CAD_CLI_CRD"."PED_TKT_TCDE"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdPED_TKT_VTFA: TIBBCDField
      FieldName = 'PED_TKT_VTFA'
      Origin = '"CAD_CLI_CRD"."PED_TKT_VTFA"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdBAN_VDUP: TIBBCDField
      FieldName = 'BAN_VDUP'
      Origin = '"CAD_CLI_CRD"."BAN_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdBAN_QTDE: TIntegerField
      FieldName = 'BAN_QTDE'
      Origin = '"CAD_CLI_CRD"."BAN_QTDE"'
    end
    object cad_cli_crdBAN_PERC: TIBBCDField
      FieldName = 'BAN_PERC'
      Origin = '"CAD_CLI_CRD"."BAN_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdBAN_PEN_VDUP: TIBBCDField
      FieldName = 'BAN_PEN_VDUP'
      Origin = '"CAD_CLI_CRD"."BAN_PEN_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdBAN_PEN_QTDE: TIntegerField
      FieldName = 'BAN_PEN_QTDE'
      Origin = '"CAD_CLI_CRD"."BAN_PEN_QTDE"'
    end
    object cad_cli_crdBAN_PEN_PERC: TIBBCDField
      FieldName = 'BAN_PEN_PERC'
      Origin = '"CAD_CLI_CRD"."BAN_PEN_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdBAN_PAG_VDUP: TIBBCDField
      FieldName = 'BAN_PAG_VDUP'
      Origin = '"CAD_CLI_CRD"."BAN_PAG_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdBAN_PAG_QTDE: TIntegerField
      FieldName = 'BAN_PAG_QTDE'
      Origin = '"CAD_CLI_CRD"."BAN_PAG_QTDE"'
    end
    object cad_cli_crdBAN_PAG_PERC: TIBBCDField
      FieldName = 'BAN_PAG_PERC'
      Origin = '"CAD_CLI_CRD"."BAN_PAG_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdBAN_AVC_VDUP: TIBBCDField
      FieldName = 'BAN_AVC_VDUP'
      Origin = '"CAD_CLI_CRD"."BAN_AVC_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdBAN_AVC_QTDE: TIntegerField
      FieldName = 'BAN_AVC_QTDE'
      Origin = '"CAD_CLI_CRD"."BAN_AVC_QTDE"'
    end
    object cad_cli_crdBAN_AVC_PERC: TIBBCDField
      FieldName = 'BAN_AVC_PERC'
      Origin = '"CAD_CLI_CRD"."BAN_AVC_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdBAN_NVC_VDUP: TIBBCDField
      FieldName = 'BAN_NVC_VDUP'
      Origin = '"CAD_CLI_CRD"."BAN_NVC_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdBAN_NVC_QTDE: TIntegerField
      FieldName = 'BAN_NVC_QTDE'
      Origin = '"CAD_CLI_CRD"."BAN_NVC_QTDE"'
    end
    object cad_cli_crdBAN_NVC_PERC: TIBBCDField
      FieldName = 'BAN_NVC_PERC'
      Origin = '"CAD_CLI_CRD"."BAN_NVC_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdBAN_DVC_VDUP: TIBBCDField
      FieldName = 'BAN_DVC_VDUP'
      Origin = '"CAD_CLI_CRD"."BAN_DVC_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdBAN_DVC_QTDE: TIntegerField
      FieldName = 'BAN_DVC_QTDE'
      Origin = '"CAD_CLI_CRD"."BAN_DVC_QTDE"'
    end
    object cad_cli_crdBAN_DVC_PERC: TIBBCDField
      FieldName = 'BAN_DVC_PERC'
      Origin = '"CAD_CLI_CRD"."BAN_DVC_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdCAR_VDUP: TIBBCDField
      FieldName = 'CAR_VDUP'
      Origin = '"CAD_CLI_CRD"."CAR_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdCAR_QTDE: TIntegerField
      FieldName = 'CAR_QTDE'
      Origin = '"CAD_CLI_CRD"."CAR_QTDE"'
    end
    object cad_cli_crdCAR_PERC: TIBBCDField
      FieldName = 'CAR_PERC'
      Origin = '"CAD_CLI_CRD"."CAR_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdCAR_PEN_VDUP: TIBBCDField
      FieldName = 'CAR_PEN_VDUP'
      Origin = '"CAD_CLI_CRD"."CAR_PEN_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdCAR_PEN_QTDE: TIntegerField
      FieldName = 'CAR_PEN_QTDE'
      Origin = '"CAD_CLI_CRD"."CAR_PEN_QTDE"'
    end
    object cad_cli_crdCAR_PEN_PERC: TIBBCDField
      FieldName = 'CAR_PEN_PERC'
      Origin = '"CAD_CLI_CRD"."CAR_PEN_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdCAR_PAG_VDUP: TIBBCDField
      FieldName = 'CAR_PAG_VDUP'
      Origin = '"CAD_CLI_CRD"."CAR_PAG_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdCAR_PAG_QTDE: TIntegerField
      FieldName = 'CAR_PAG_QTDE'
      Origin = '"CAD_CLI_CRD"."CAR_PAG_QTDE"'
    end
    object cad_cli_crdCAR_PAG_PERC: TIBBCDField
      FieldName = 'CAR_PAG_PERC'
      Origin = '"CAD_CLI_CRD"."CAR_PAG_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdCAR_AVC_VDUP: TIBBCDField
      FieldName = 'CAR_AVC_VDUP'
      Origin = '"CAD_CLI_CRD"."CAR_AVC_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdCAR_AVC_QTDE: TIntegerField
      FieldName = 'CAR_AVC_QTDE'
      Origin = '"CAD_CLI_CRD"."CAR_AVC_QTDE"'
    end
    object cad_cli_crdCAR_AVC_PERC: TIBBCDField
      FieldName = 'CAR_AVC_PERC'
      Origin = '"CAD_CLI_CRD"."CAR_AVC_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdCAR_NVC_VDUP: TIBBCDField
      FieldName = 'CAR_NVC_VDUP'
      Origin = '"CAD_CLI_CRD"."CAR_NVC_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdCAR_NVC_QTDE: TIntegerField
      FieldName = 'CAR_NVC_QTDE'
      Origin = '"CAD_CLI_CRD"."CAR_NVC_QTDE"'
    end
    object cad_cli_crdCAR_NVC_PERC: TIBBCDField
      FieldName = 'CAR_NVC_PERC'
      Origin = '"CAD_CLI_CRD"."CAR_NVC_PERC"'
      Precision = 9
      Size = 2
    end
    object cad_cli_crdCAR_DVC_VDUP: TIBBCDField
      FieldName = 'CAR_DVC_VDUP'
      Origin = '"CAD_CLI_CRD"."CAR_DVC_VDUP"'
      Precision = 18
      Size = 2
    end
    object cad_cli_crdCAR_DVC_QTDE: TIntegerField
      FieldName = 'CAR_DVC_QTDE'
      Origin = '"CAD_CLI_CRD"."CAR_DVC_QTDE"'
    end
    object cad_cli_crdCAR_DVC_PERC: TIBBCDField
      FieldName = 'CAR_DVC_PERC'
      Origin = '"CAD_CLI_CRD"."CAR_DVC_PERC"'
      Precision = 9
      Size = 2
    end
  end
  object SQLFKConsulta: TIBSQL
    Database = FBird.DBERP
    Transaction = TConsulta
    Left = 168
    Top = 192
  end
  object CAD_PRO_IMG: TIBQuery
    Database = FBird.DBERP
    Transaction = TConsulta
    DataSource = DTSFKCadastro
    SQL.Strings = (
      'SELECT CDN.IMG_ID  ,CDN.IMG_NO  ,CDN.IMG_PAD,'
      
        '       CDN.ILA_BMP1,CDN.ILA_INS1,CDN.D_ILA_INS1,CDN.ILA_BMP2,CDN' +
        '.ILA_INS2,CDN.D_ILA_INS2,CDN.ILA_BMP3,CDN.ILA_INS3,CDN.D_ILA_INS' +
        '3,'
      
        '       CDN.ILA_BMP4,CDN.ILA_INS4,CDN.D_ILA_INS4,CDN.ILA_BMP5,CDN' +
        '.ILA_INS5,CDN.D_ILA_INS5,CDN.ILA_BMP6,CDN.ILA_INS6,CDN.D_ILA_INS' +
        '6,'
      
        '       CDN.ILA_BMP7,CDN.ILA_INS7,CDN.D_ILA_INS7,CDN.ILA_BMP8,CDN' +
        '.ILA_INS8,CDN.D_ILA_INS8'
      'FROM   VW_PSQ_CAD_PRO_IMG AS CDN'
      'WHERE  CDN.CP_ID = :IDCP')
    Left = 104
    Top = 288
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDCP'
        ParamType = ptUnknown
        Size = 4
      end>
    object CAD_PRO_IMGIMG_ID: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'IMG_ID'
      Origin = '"VW_CAD_PRO_IMG_CDN"."IMG_ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object CAD_PRO_IMGIMG_NO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'IMG_NO'
      Origin = '"VW_CAD_PRO_IMG_CDN"."IMG_NO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object CAD_PRO_IMGIMG_PAD: TBlobField
      Tag = 1
      FieldKind = fkInternalCalc
      FieldName = 'IMG_PAD'
      Origin = '"VW_CAD_PRO_IMG_CDN"."IMG_PAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object CAD_PRO_IMGILA_BMP1: TBlobField
      FieldName = 'ILA_BMP1'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_BMP1"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMGILA_INS1: TIBStringField
      FieldName = 'ILA_INS1'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_INS1"'
      Size = 120
    end
    object CAD_PRO_IMGD_ILA_INS1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_ILA_INS1'
      Origin = '"VW_CAD_PRO_IMG_CDN"."D_ILA_INS1"'
      ProviderFlags = []
      ReadOnly = True
      Size = 155
    end
    object CAD_PRO_IMGILA_BMP2: TBlobField
      FieldName = 'ILA_BMP2'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_BMP2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMGILA_INS2: TIBStringField
      FieldName = 'ILA_INS2'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_INS2"'
      Size = 120
    end
    object CAD_PRO_IMGD_ILA_INS2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_ILA_INS2'
      Origin = '"VW_CAD_PRO_IMG_CDN"."D_ILA_INS2"'
      ProviderFlags = []
      ReadOnly = True
      Size = 155
    end
    object CAD_PRO_IMGILA_BMP3: TBlobField
      FieldName = 'ILA_BMP3'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_BMP3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMGILA_INS3: TIBStringField
      FieldName = 'ILA_INS3'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_INS3"'
      Size = 120
    end
    object CAD_PRO_IMGD_ILA_INS3: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_ILA_INS3'
      Origin = '"VW_CAD_PRO_IMG_CDN"."D_ILA_INS3"'
      ProviderFlags = []
      ReadOnly = True
      Size = 155
    end
    object CAD_PRO_IMGILA_BMP4: TBlobField
      FieldName = 'ILA_BMP4'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_BMP4"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMGILA_INS4: TIBStringField
      FieldName = 'ILA_INS4'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_INS4"'
      Size = 120
    end
    object CAD_PRO_IMGD_ILA_INS4: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_ILA_INS4'
      Origin = '"VW_CAD_PRO_IMG_CDN"."D_ILA_INS4"'
      ProviderFlags = []
      ReadOnly = True
      Size = 155
    end
    object CAD_PRO_IMGILA_BMP5: TBlobField
      FieldName = 'ILA_BMP5'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_BMP5"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMGILA_INS5: TIBStringField
      FieldName = 'ILA_INS5'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_INS5"'
      Size = 120
    end
    object CAD_PRO_IMGD_ILA_INS5: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_ILA_INS5'
      Origin = '"VW_CAD_PRO_IMG_CDN"."D_ILA_INS5"'
      ProviderFlags = []
      ReadOnly = True
      Size = 155
    end
    object CAD_PRO_IMGILA_BMP6: TBlobField
      FieldName = 'ILA_BMP6'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_BMP6"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMGILA_INS6: TIBStringField
      FieldName = 'ILA_INS6'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_INS6"'
      Size = 120
    end
    object CAD_PRO_IMGD_ILA_INS6: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_ILA_INS6'
      Origin = '"VW_CAD_PRO_IMG_CDN"."D_ILA_INS6"'
      ProviderFlags = []
      ReadOnly = True
      Size = 155
    end
    object CAD_PRO_IMGILA_BMP7: TBlobField
      FieldName = 'ILA_BMP7'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_BMP7"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMGILA_INS7: TIBStringField
      FieldName = 'ILA_INS7'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_INS7"'
      Size = 120
    end
    object CAD_PRO_IMGD_ILA_INS7: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_ILA_INS7'
      Origin = '"VW_CAD_PRO_IMG_CDN"."D_ILA_INS7"'
      ProviderFlags = []
      ReadOnly = True
      Size = 155
    end
    object CAD_PRO_IMGILA_BMP8: TBlobField
      FieldName = 'ILA_BMP8'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_BMP8"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CAD_PRO_IMGILA_INS8: TIBStringField
      FieldName = 'ILA_INS8'
      Origin = '"VW_CAD_PRO_IMG_CDN"."ILA_INS8"'
      Size = 120
    end
    object CAD_PRO_IMGD_ILA_INS8: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'D_ILA_INS8'
      Origin = '"VW_CAD_PRO_IMG_CDN"."D_ILA_INS8"'
      ProviderFlags = []
      ReadOnly = True
      Size = 155
    end
  end
  object DTSCAD_PRO_IMG: TDataSource
    AutoEdit = False
    DataSet = CAD_PRO_IMG
    OnDataChange = DTSCAD_PRO_IMGDataChange
    Left = 136
    Top = 288
  end
end
