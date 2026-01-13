inherited frmfin_rec_con: Tfrmfin_rec_con
  Left = 173
  Top = 22
  AlphaBlendValue = 0
  ClientHeight = 752
  ClientWidth = 1672
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBRodape: TdxStatusBar
    Top = 731
    Width = 1672
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 80
        Text = 'Consulta'
        Width = 80
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 0
        Width = 1440
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
  inherited PNLForm: TPanel
    Width = 1672
    Height = 666
    inherited PNLPrincipal: TPanel
      Width = 1672
      Height = 666
      inherited PNLPrincipalRodape: TPanel
        Top = 666
        Width = 1672
      end
      inherited PNLPrincipalME: TPanel
        Height = 666
      end
      inherited PNLPrincipalMD: TPanel
        Left = 1672
        Height = 666
      end
      inherited PNLCadastro: TPanel
        Width = 1672
        Height = 666
        inherited PNLCadastroCabecalho: TPanel
          Width = 1672
        end
        inherited PNLCustomize: TPanel
          Width = 1672
          Height = 666
          inherited PNLCustomizeSumario: TPanel
            Top = 666
            Width = 1672
          end
          inherited PNLCustomizeConsulta: TPanel
            Width = 1672
            Height = 666
            inherited GBCadastro: TGroupBox
              Width = 1618
              Height = 666
              Caption = '  Consulta  '
              inherited PCConsulta: TdxPageControl
                Width = 1614
                Height = 645
                inherited TSConsulta: TdxTabSheet
                  inherited DBGConsulta: TdxDBGrid
                    Tag = 1
                    Width = 1614
                    Height = 645
                    Bands = <
                      item
                        Caption = 'Faturas'
                        Fixed = bfLeft
                      end
                      item
                        Caption = 'Acr'#233'scimos R$'
                        Visible = False
                      end
                      item
                        Caption = 'Descontos R$'
                        Visible = False
                        Width = 106
                      end
                      item
                        Caption = 'Recebimentos R$'
                      end
                      item
                        Caption = 'Instru'#231#245'es Banc'#225'rias'
                        Visible = False
                      end
                      item
                        Caption = 'Vendedores'
                      end
                      item
                        Caption = 'Empresa'
                      end>
                    DefaultLayout = False
                    KeyField = 'ID'
                    ShowSummaryFooter = True
                    PopupMenu = PMPrincipal
                    BandColor = clGray
                    BandFont.Color = clWhite
                    Filter.Active = True
                    Filter.Criteria = {00000000}
                    IndentDesc = 10
                    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
                    OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
                    PreviewLines = 3
                    ShowBands = True
                    OnCustomDrawCell = dbgConsultaCustomDrawCell
                    object DBGConsultaC_ID: TdxDBGridColumn
                      DisableEditor = True
                      Visible = False
                      Width = 67
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'C_ID'
                    end
                    object DBGConsultaDOCUMENTO: TdxDBGridMaskColumn
                      Color = clGray
                      DisableEditor = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWhite
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      MinWidth = 70
                      Width = 70
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'DOCUMENTO'
                      SummaryFooterType = cstCount
                      SummaryFooterField = 'ID'
                      SummaryFooterFormat = '0'
                    end
                    object DBGConsultaCTNR: TdxDBGridMaskColumn
                      DisableEditor = True
                      Visible = False
                      Width = 80
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CTNR'
                    end
                    object DBGConsultaSTPD: TdxDBGridMaskColumn
                      DisableEditor = True
                      Width = 100
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'STPD'
                    end
                    object DBGConsultaRECO: TdxDBGridMaskColumn
                      Alignment = taCenter
                      DisableEditor = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      HeaderAlignment = taCenter
                      Width = 50
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'RECO'
                    end
                    object DBGConsultaDECD: TdxDBGridMaskColumn
                      DisableEditor = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Width = 250
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'DECD'
                    end
                    object DBGConsultaIDCD: TdxDBGridMaskColumn
                      DisableEditor = True
                      HeaderAlignment = taRightJustify
                      Width = 47
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'IDCD'
                      DisableFilter = True
                    end
                    object DBGConsultaGRUPO: TdxDBGridMaskColumn
                      DisableEditor = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      Visible = False
                      Width = 100
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'GRUPO'
                    end
                    object DBGConsultaTITULO: TdxDBGridMaskColumn
                      DisableEditor = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      MinWidth = 70
                      Width = 70
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TITULO'
                    end
                    object DBGConsultaDTFA: TdxDBGridDateColumn
                      DisableEditor = True
                      Width = 70
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'DTFA'
                    end
                    object DBGConsultaDTVC: TdxDBGridDateColumn
                      DisableEditor = True
                      Width = 70
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'DTVC'
                    end
                    object DBGConsultaVDUP: TdxDBGridMaskColumn
                      DisableEditor = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWhite
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      HeaderAlignment = taRightJustify
                      Width = 92
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'VDUP'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'VDUP'
                      SummaryFooterFormat = ',##,0.00;-,##,0.00'
                      DisableFilter = True
                    end
                    object DBGConsultaNAFA: TdxDBGridMaskColumn
                      DisableEditor = True
                      Visible = False
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'NAFA'
                    end
                    object DBGConsultaVJUR: TdxDBGridMaskColumn
                      DisableEditor = True
                      HeaderAlignment = taRightJustify
                      Width = 60
                      BandIndex = 1
                      RowIndex = 0
                      FieldName = 'VJUR'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'VJUR'
                      SummaryFooterFormat = ',##,0.00;-,##,0.00'
                      DisableFilter = True
                    end
                    object DBGConsultaVMUL: TdxDBGridMaskColumn
                      DisableEditor = True
                      HeaderAlignment = taRightJustify
                      Width = 60
                      BandIndex = 1
                      RowIndex = 0
                      FieldName = 'VMUL'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'VMUL'
                      SummaryFooterFormat = ',##,0.00;-,##,0.00'
                      DisableFilter = True
                    end
                    object DBGConsultaVDSC: TdxDBGridMaskColumn
                      DisableEditor = True
                      HeaderAlignment = taRightJustify
                      Width = 85
                      BandIndex = 2
                      RowIndex = 0
                      FieldName = 'VDSC'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'VDSC'
                      SummaryFooterFormat = ',##,0.00;-,##,0.00'
                      DisableFilter = True
                    end
                    object DBGConsultaDTPG: TdxDBGridDateColumn
                      DisableEditor = True
                      Visible = False
                      Width = 86
                      BandIndex = 3
                      RowIndex = 0
                      FieldName = 'DTPG'
                    end
                    object DBGConsultaVPAG: TdxDBGridMaskColumn
                      DisableEditor = True
                      HeaderAlignment = taRightJustify
                      Visible = False
                      Width = 92
                      BandIndex = 3
                      RowIndex = 0
                      FieldName = 'VPAG'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'VPAG'
                      SummaryFooterFormat = ',##,0.00;-,##,0.00'
                      DisableFilter = True
                    end
                    object DBGConsultaVPEN: TdxDBGridMaskColumn
                      DisableEditor = True
                      HeaderAlignment = taRightJustify
                      Width = 92
                      BandIndex = 3
                      RowIndex = 0
                      FieldName = 'VPEN'
                      SummaryFooterType = cstSum
                      SummaryFooterField = 'VPEN'
                      SummaryFooterFormat = ',##,0.00;-,##,0.00'
                      DisableFilter = True
                    end
                    object DBGConsultaDEST: TdxDBGridMaskColumn
                      DisableEditor = True
                      MinWidth = 100
                      Width = 100
                      BandIndex = 3
                      RowIndex = 0
                      FieldName = 'DEST'
                    end
                    object DBGConsultaDTBX: TdxDBGridDateColumn
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      Visible = False
                      Width = 72
                      BandIndex = 3
                      RowIndex = 0
                      FieldName = 'DTBX'
                    end
                    object DBGConsultaAPI_CA: TdxDBGridMaskColumn
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      Width = 55
                      BandIndex = 4
                      RowIndex = 0
                      FieldName = 'API_CA'
                    end
                    object DBGConsultaAPI_DTCA: TdxDBGridDateColumn
                      Width = 95
                      BandIndex = 4
                      RowIndex = 0
                      FieldName = 'API_DTCA'
                    end
                    object DBGConsultaCDDP: TdxDBGridMaskColumn
                      DisableEditor = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      Width = 55
                      BandIndex = 4
                      RowIndex = 0
                      FieldName = 'CDDP'
                    end
                    object DBGConsultaDTDP: TdxDBGridDateColumn
                      DisableEditor = True
                      Width = 95
                      BandIndex = 4
                      RowIndex = 0
                      FieldName = 'DTDP'
                    end
                    object DBGConsultaAPI_NN: TdxDBGridColumn
                      Alignment = taLeftJustify
                      DisableEditor = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      MinWidth = 60
                      Width = 60
                      BandIndex = 4
                      RowIndex = 0
                      FieldName = 'API_NN'
                      DisableFilter = True
                    end
                    object DBGConsultaAPI_INFADCAD: TdxDBGridBlobColumn
                      Alignment = taCenter
                      HeaderAlignment = taCenter
                      Width = 30
                      BandIndex = 4
                      RowIndex = 0
                      FieldName = 'API_INFADCAD'
                      MaxDisplayLength = 1000
                      MemoSelectionBar = True
                      PopupBorder = pbFlat
                      PopupHeight = 600
                      PopupWidth = 500
                    end
                    object DBGConsultaAPI_ST: TdxDBGridMaskColumn
                      DisableEditor = True
                      MinWidth = 100
                      Width = 100
                      BandIndex = 4
                      RowIndex = 0
                      FieldName = 'API_ST'
                    end
                    object DBGConsultaAPI_MT: TdxDBGridMaskColumn
                      DisableEditor = True
                      MinWidth = 100
                      Width = 100
                      BandIndex = 4
                      RowIndex = 0
                      FieldName = 'API_MT'
                    end
                    object DBGConsultaAPI_DTED: TdxDBGridDateColumn
                      DisableEditor = True
                      Width = 95
                      BandIndex = 4
                      RowIndex = 0
                      FieldName = 'API_DTED'
                    end
                    object DBGConsultaDECV: TdxDBGridMaskColumn
                      DisableEditor = True
                      Width = 100
                      BandIndex = 5
                      RowIndex = 0
                      FieldName = 'DECV'
                    end
                    object DBGConsultaDECR: TdxDBGridMaskColumn
                      DisableEditor = True
                      MinWidth = 105
                      Width = 105
                      BandIndex = 5
                      RowIndex = 0
                      FieldName = 'DECR'
                    end
                    object DBGConsultaDEEP: TdxDBGridMaskColumn
                      DisableEditor = True
                      Width = 100
                      BandIndex = 6
                      RowIndex = 0
                      FieldName = 'DEEP'
                    end
                  end
                  object PNLINFADCAD: TPanel
                    Left = 0
                    Top = 645
                    Width = 1614
                    Height = 0
                    Cursor = crHandPoint
                    Hint = 'Informa'#231#245'es Adicionais'
                    Align = alBottom
                    Alignment = taLeftJustify
                    BevelOuter = bvNone
                    Color = clInfoBk
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -12
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold, fsItalic]
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 1
                    object Bevel2: TBevel
                      Left = 0
                      Top = 0
                      Width = 1614
                      Height = 0
                      Align = alClient
                    end
                    object DBINFADCAD: TdxDBMemo
                      Left = 0
                      Top = 0
                      Width = 1614
                      Cursor = crHandPoint
                      Hint = 'Informa'#231#245'es Adicionais'
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
                      HideSelection = False
                      ReadOnly = False
                      HideScrollBars = False
                      ScrollBars = ssVertical
                      Height = 0
                      StoredValues = 64
                    end
                  end
                end
              end
            end
            inherited PNLCustomizeCabecalho: TPanel
              Width = 1672
            end
            inherited PNLCustomizeRodape: TPanel
              Top = 666
              Width = 1672
            end
            inherited GBMenuEdicao: TGroupBox
              Height = 666
              inherited SBMenuEdicao: TSpeedBar
                Height = 645
              end
            end
          end
        end
      end
    end
    inherited PNLFormRodape: TPanel
      Tag = 245
      Top = 666
      Width = 1672
      Visible = False
      inherited PNLFormRodapeME: TPanel
        TabOrder = 1
      end
      inherited PNLFormRodapeMD: TPanel
        Left = 1672
        TabOrder = 0
      end
    end
  end
  inherited SBMenuPrincipal: TSpeedBar
    Width = 1672
  end
  inherited TConsulta: TIBTransaction
    DefaultAction = TARollback
    AutoStopAction = saNone
    Left = 592
    Top = 320
  end
  inherited SQLConsulta: TIBSQL
    Left = 624
    Top = 320
  end
  inherited QConsulta: TIBQuery
    Left = 592
    Top = 352
  end
  inherited Cadastro: TIBQuery
    AfterScroll = CadastroAfterScroll
    OnCalcFields = CadastroCalcFields
    BufferChunks = 4500
    SQL.Strings = (
      
        'SELECT    CAST(PK.ID AS BIGINT) AS ID,PK.IDEP,EP.FANTASIA AS DEE' +
        'P,'
      
        '          PK.DOCUMENTO,PK.DTFA,PK.CTNR,PK.STPD,PK.TPCO,PK.RECO,P' +
        'K.CDCX,'
      '          PK.TITULO,PK.DTVC,PK.VDUP,'
      
        '          PK.IDCD,IIF(POSITION(LEFT(CD.FANTASIA,10) IN CD.RAZAO)' +
        ' > 0,CD.FANTASIA,CD.FANTASIA||'#39' '#39'||CD.RAZAO) AS DECD,CD.GRUPO,CO' +
        'ALESCE(CRD.VCRD,0) AS VCRD,COALESCE(CRD.NAFA,0) AS NAFA,'
      '          PK.IDCV,CV.LOGIN AS DECV,PK.IDCR,CR.FANTASIA AS DECR,'
      '          PK.VJUR,PK.VMUL,PK.VDSC,'
      '          PK.DTPG,PK.VPAG,PK.VPEN,PK.DEST,'
      '          PK.CDBX,PK.DTBX,'
      '          PK.CDDP,PK.DTDP,'
      
        '          PK.API_ID,PK.API_CA,PK.API_DTCA,PK.API_DTED,PK.API_NN,' +
        'PK.API_ST,PK.API_MT,PK.API_INFADCAD,'
      
        '          NULLIF(TRIM(CAST(SUBSTRING(PK.INFADCAD     FROM 1 FOR ' +
        '1064) AS VARCHAR(1064))),'#39#39') AS INFADCAD'
      'FROM      FIN_REC_BAN_BAI_004 AS PK'
      'JOIN      TAB_PAR_SIS         AS EP ON (EP.ID = PK.IDEP)'
      'JOIN      CAD_CLI             AS CD ON (CD.ID = PK.IDCD)'
      'JOIN      TAB_USER            AS CV ON (CV.ID = PK.IDCV)'
      
        'JOIN      CAD_REP             AS CR ON (CAST(CR.ID AS SMALLINT) ' +
        '= PK.IDCR)'
      
        'LEFT JOIN CAD_CLI_CRD AS CRD ON (CRD.IDEP = PK.IDEP AND CRD.IDCD' +
        ' = PK.IDCD)'
      'WHERE     CAST(PK.API_DTED AS DATE) >= CURRENT_DATE-1'
      'ORDER BY  TITULO')
    Left = 592
    Top = 384
    object CadastroID: TLargeintField
      FieldName = 'ID'
      ProviderFlags = []
    end
    object CadastroIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"FIN_REC_BAN_BAI_004"."IDEP"'
    end
    object CadastroDEEP: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'DEEP'
      Origin = '"TAB_PAR_SIS"."FANTASIA"'
      Size = 60
    end
    object CadastroDOCUMENTO: TIBStringField
      DisplayLabel = 'Fatura'
      FieldName = 'DOCUMENTO'
      Origin = '"FIN_REC_BAN_BAI_004"."DOCUMENTO"'
      Size = 30
    end
    object CadastroDTFA: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTFA'
      Origin = '"FIN_REC_BAN_BAI_004"."DTFA"'
      DisplayFormat = 'dd/mm/yy'
    end
    object CadastroCTNR: TIBStringField
      DisplayLabel = 'Container'
      FieldName = 'CTNR'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_CTNR"'
      Size = 30
    end
    object CadastroSTPD: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'STPD'
      Origin = '"FIN_REC_BAN_BAI_004"."STPD"'
      Size = 60
    end
    object CadastroTPCO: TSmallintField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'TPCO'
      Origin = '"FIN_REC_BAN_BAI_004"."TPCO"'
    end
    object CadastroRECO: TIBStringField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'RECO'
      Origin = '"FIN_REC_BAN_BAI_004"."RECO"'
      Size = 3
    end
    object CadastroCDCX: TLargeintField
      DisplayLabel = 'Caixa'
      FieldName = 'CDCX'
      Origin = '"FIN_REC_BAN_BAI_004"."CDCX"'
    end
    object CadastroTITULO: TIBStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'TITULO'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_TITU"'
      Size = 30
    end
    object CadastroDTVC: TDateField
      DisplayLabel = 'Vencto'
      FieldName = 'DTVC'
      Origin = '"FIN_REC_BAN_BAI_004"."DTVC"'
      DisplayFormat = 'dd/mm/yy'
    end
    object CadastroVDUP: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VDUP'
      Origin = '"FIN_REC_BAN_BAI_004"."VDUP"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroIDCD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCD'
      Origin = '"FIN_REC_BAN_BAI_004"."IDCD"'
    end
    object CadastroDECD: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'DECD'
      ProviderFlags = []
      Size = 121
    end
    object CadastroGRUPO: TIBStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      Origin = '"CAD_CLI"."CLI_DEGP"'
      Size = 30
    end
    object CadastroVCRD: TIBBCDField
      FieldName = 'VCRD'
      Origin = '"CAD_CLI_CRD"."VCRD"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroNAFA: TSmallintField
      FieldName = 'NAFA'
      Origin = '"CAD_CLI_CRD"."NAFA"'
    end
    object CadastroIDCV: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCV'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_CVEN"'
    end
    object CadastroDECV: TIBStringField
      DisplayLabel = 'Interno'
      FieldName = 'DECV'
      Origin = '"TAB_USER"."LOGIN"'
      Size = 30
    end
    object CadastroIDCR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCR'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_CREP"'
    end
    object CadastroDECR: TIBStringField
      DisplayLabel = 'Externo'
      FieldName = 'DECR'
      Origin = '"CAD_REP"."REP_FANT"'
      Size = 60
    end
    object CadastroVJUR: TIBBCDField
      DisplayLabel = 'Vl. Juros'
      FieldName = 'VJUR'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_VJUR"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroVMUL: TIBBCDField
      DisplayLabel = 'Vl. Multa'
      FieldName = 'VMUL'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_VMUL"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroVDSC: TIBBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VDSC'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_VDES"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroDTPG: TDateField
      DisplayLabel = 'Pagamento'
      FieldName = 'DTPG'
      Origin = '"FIN_REC_BAN_BAI_004"."DTPG"'
      DisplayFormat = 'dd/mm/yy'
    end
    object CadastroVPAG: TIBBCDField
      DisplayLabel = 'Vl. Pago'
      FieldName = 'VPAG'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_VPAG"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroVPEN: TIBBCDField
      DisplayLabel = 'Vl. Pendente'
      FieldName = 'VPEN'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_VPEN"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'DEST'
      Origin = '"FIN_REC_BAN_BAI_004"."DEST"'
      Size = 30
    end
    object CadastroCDBX: TLargeintField
      FieldName = 'CDBX'
      Origin = '"FIN_REC_BAN_BAI_004"."CDBX"'
    end
    object CadastroDTBX: TDateField
      DisplayLabel = 'Baixa'
      FieldName = 'DTBX'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_DBAI"'
      DisplayFormat = 'dd/mm/yy'
    end
    object CadastroCDDP: TSmallintField
      DisplayLabel = 'Envio'
      FieldName = 'CDDP'
      Origin = '"FIN_REC_BAN_BAI_004"."CDDP"'
      DisplayFormat = '0'
    end
    object CadastroDTDP: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTDP'
      Origin = '"FIN_REC_BAN_BAI_004"."FIN_DTDP"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object CadastroAPI_ID: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'API_ID'
      Origin = '"FIN_REC_BAN_BAI_004"."API_ID"'
    end
    object CadastroAPI_CA: TSmallintField
      DisplayLabel = 'Carteira'
      FieldName = 'API_CA'
      Origin = '"FIN_REC_BAN_BAI_004"."API_CA"'
      DisplayFormat = '0'
    end
    object CadastroAPI_DTCA: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'API_DTCA'
      Origin = '"FIN_REC_BAN_BAI_004"."API_DTCA"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object CadastroAPI_DTED: TDateTimeField
      DisplayLabel = 'Atualiza'#231#227'o'
      FieldName = 'API_DTED'
      Origin = '"FIN_REC_BAN_BAI_004"."API_DTED"'
      DisplayFormat = 'dd/mm/yy hh:mm'
    end
    object CadastroAPI_NN: TLargeintField
      DisplayLabel = 'Nosso N'#186
      FieldName = 'API_NN'
      Origin = '"FIN_REC_BAN_BAI_004"."API_NN"'
    end
    object CadastroAPI_ST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'API_ST'
      Origin = '"FIN_REC_BAN_BAI_004"."API_ST"'
      Size = 30
    end
    object CadastroAPI_MT: TIBStringField
      DisplayLabel = 'Motivo'
      FieldName = 'API_MT'
      Origin = '"FIN_REC_BAN_BAI_004"."API_MT"'
      Size = 120
    end
    object CadastroAPI_INFADCAD: TMemoField
      DisplayLabel = 'obs'
      FieldName = 'API_INFADCAD'
      Origin = '"FIN_REC_BAN_BAI_004"."API_INFADCAD"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object CadastroINFADCAD: TIBStringField
      DisplayLabel = 'obs'
      FieldName = 'INFADCAD'
      ProviderFlags = []
      Size = 1064
    end
    object CadastroC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'C_ID'
      Calculated = True
    end
  end
  inherited DTSCadastro: TDataSource
    Left = 624
    Top = 384
  end
  inherited TEdicao: TIBTransaction
    Left = 656
    Top = 320
  end
  inherited SQLEdicao: TIBSQL
    Left = 688
    Top = 320
  end
  inherited SPEdicao: TIBStoredProc
    Left = 720
    Top = 320
  end
  inherited QEdicao: TIBQuery
    Left = 656
    Top = 352
  end
  inherited TEvent: TIBTransaction
    Left = 752
    Top = 320
  end
  inherited SPEvent: TIBStoredProc
    Left = 784
    Top = 320
  end
  inherited EEvent: TIBEvents
    Left = 816
    Top = 320
  end
  inherited TSEdicao: TIBTransaction
    Left = 848
    Top = 320
  end
  inherited SQLSEdicao: TIBSQL
    Left = 880
    Top = 320
  end
  inherited QSEdicao: TIBQuery
    Left = 848
    Top = 352
  end
  inherited SQLEvent: TIBSQL
    Left = 624
    Top = 352
  end
  inherited ALPrincipal: TActionList
    object ACTCAD_CLI_INF: TAction
      Category = 'Sistema'
      Caption = 'ACTCAD_CLI_INF'
      OnExecute = ACTCAD_CLI_INFExecute
    end
    object ACTCAD_CLI_EDI: TAction
      Category = 'Sistema'
      Caption = 'ACTCAD_CLI_EDI'
      OnExecute = ACTCAD_CLI_EDIExecute
    end
    object ACTFIN_REC_INS: TAction
      Category = 'Sistema'
      Caption = 'ACTFIN_REC_INS'
      OnExecute = ACTFIN_REC_INSExecute
    end
    object ACTFIN_REC_EDI: TAction
      Category = 'Sistema'
      Caption = 'ACTFIN_REC_EDI'
      OnExecute = ACTFIN_REC_EDIExecute
    end
    object ACTFIN_REC_DEL: TAction
      Category = 'Sistema'
      Caption = 'ACTFIN_REC_DEL'
      OnExecute = ACTFIN_REC_DELExecute
    end
    object ACTFIN_REC_BXD: TAction
      Category = 'Sistema'
      Caption = 'ACTFIN_REC_BXD'
      OnExecute = ACTFIN_REC_BXDExecute
    end
  end
  object PMPrincipal: TPopupMenu
    Left = 592
    Top = 416
    object ExpXLS: TMenuItem
      Caption = 'Gerar Excel'
    end
  end
end
