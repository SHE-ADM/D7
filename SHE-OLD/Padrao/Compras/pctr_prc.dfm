inherited frmctr_prc: Tfrmctr_prc
  Left = -144
  Top = 104
  AlphaBlendValue = 0
  Caption = 'Controle de Programa'#231#245'es de Compras'
  ClientHeight = 919
  ClientWidth = 1904
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object Label23: TLabel [0]
    Left = 240
    Top = 272
    Width = 56
    Height = 14
    Caption = 'ROM_CCLI'
  end
  inherited SpeedBar2: TSpeedBar
    Width = 1904
    inherited siPSQ: TSpeedItem [4]
    end
    inherited siREF: TSpeedItem [5]
      Hint = 'Atualiza Pedidos'
    end
    inherited siREL: TSpeedItem
      Hint = 'Imprime e Visualiza Relat'#243'rios'
      Left = 663
    end
    inherited siSAIR: TSpeedItem
      Left = 773
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
      Hint = 'Altera'#231#227'o de Pedidos'
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
      Hint = 'Cancelamentos'
      ImageIndex = 6
      Spacing = -3
      Left = 443
      Top = 3
      Visible = True
      OnClick = siCROClick
      SectionName = 'Movimento'
    end
    object siBRO: TSpeedItem
      BtnCaption = 'Finalizar'
      Hint = 'Finaliza'#231#227'o de pedido'
      ImageIndex = 7
      Spacing = -3
      Left = 553
      Top = 3
      Visible = True
      OnClick = siBROClick
      SectionName = 'Movimento'
    end
  end
  inherited pnlbot: TPanel
    Top = 483
    Width = 1904
    Height = 0
    Visible = True
  end
  inherited pnldbg: TPanel
    Width = 1904
    Height = 386
    inherited DSConsulta: TdxDockSite
      Width = 1904
      Height = 386
      DockType = 0
      OriginalWidth = 768
      OriginalHeight = 448
      inherited LDSConsulta: TdxLayoutDockSite
        Width = 1904
        Height = 386
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 430
      end
      inherited DPConsulta: TdxDockPanel
        Width = 1904
        Height = 386
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 430
        inherited gbDET: TGroupBox
          Width = 1900
          Height = 382
          object PNLINFADCAD: TPanel [0]
            Left = 2
            Top = 380
            Width = 1896
            Height = 0
            Cursor = crHandPoint
            Hint = 'Informa'#231#245'es adicionais da compra ...'
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
              Hint = 'Informa'#231#245'es adicionais da compra ...'
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
              Height = 46
              StoredValues = 64
            end
          end
          inherited DBGConsulta: TdxDBGrid
            Width = 1896
            Height = 361
            KeyField = 'ID'
            ShowSummaryFooter = True
            PopupMenu = PPSheild
            Filter.Active = True
            Filter.Criteria = {00000000}
            OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHideFocusRect, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
            ShowRowFooter = True
            object DBGConsultaIDPK: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'IDPK'
            end
            object DBGConsultaDEPK: TdxDBGridMaskColumn
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEPK'
              SummaryFooterType = cstCount
              SummaryFooterField = 'ID'
              SummaryFooterFormat = '0'
            end
            object DBGConsultaDTPK: TdxDBGridColumn
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DTPK'
            end
            object DBGConsultaTPD_NO: TdxDBGridMaskColumn
              Width = 70
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TPD_NO'
            end
            object DBGConsultaTCO_NO_PRZ: TdxDBGridMaskColumn
              Width = 130
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TCO_NO_PRZ'
            end
            object DBGConsultaDEST: TdxDBGridMaskColumn
              Width = 129
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEST'
            end
            object DBGConsultaCD_NO: TdxDBGridMaskColumn
              Width = 250
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CD_NO'
            end
            object DBGConsultaCR_NO: TdxDBGridMaskColumn
              Width = 200
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CR_NO'
            end
            object DBGConsultaCV_NO: TdxDBGridMaskColumn
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CV_NO'
            end
            object DBGConsultaTSDE: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TSDE'
            end
            object DBGConsultaC_TSDE: TdxDBGridMaskColumn
              Alignment = taRightJustify
              HeaderAlignment = taRightJustify
              Width = 105
              BandIndex = 0
              RowIndex = 0
              FieldName = 'C_TSDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'TSDE'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGConsultaTCDE: TdxDBGridMaskColumn
              Alignment = taRightJustify
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TCDE'
            end
            object DBGConsultaC_TCDE: TdxDBGridMaskColumn
              Alignment = taRightJustify
              HeaderAlignment = taRightJustify
              Width = 105
              BandIndex = 0
              RowIndex = 0
              FieldName = 'C_TCDE'
              SummaryFooterType = cstSum
              SummaryFooterField = 'TCDE'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGConsultaQTRL: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'QTRL'
              SummaryFooterType = cstSum
              SummaryFooterField = 'QTRL'
              SummaryFooterFormat = ',##,0'
              DisableFilter = True
            end
            object DBGConsultaVDSC: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 56
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VDSC'
              SummaryFooterType = cstSum
              SummaryFooterField = 'VDSC'
              SummaryFooterFormat = ',##,0.00'
              DisableFilter = True
            end
            object DBGConsultaCT_NO: TdxDBGridMaskColumn
              Width = 230
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CT_NO'
            end
            object DBGConsultaFRT_NO: TdxDBGridMaskColumn
              Width = 172
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FRT_NO'
            end
            object DBGConsultaFRT_VFRT: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 90
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FRT_VFRT'
              SummaryFooterType = cstSum
              SummaryFooterField = 'FRT_VFRT'
              SummaryFooterFormat = ',##,0.00'
            end
            object DBGConsultaFRT_PSBR: TdxDBGridMaskColumn
              HeaderAlignment = taRightJustify
              Width = 80
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
              Width = 80
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
  inherited PNLSBRodape: TPanel
    Top = 894
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
    end
  end
  object PNLIT: TPanel [5]
    Left = 0
    Top = 483
    Width = 1904
    Height = 411
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object GBItens: TGroupBox
      Left = 0
      Top = 0
      Width = 1584
      Height = 411
      Align = alClient
      Caption = '  Itens  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
      object DBGItem: TdxDBGrid
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
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        AutoSearchColor = 9395
        AutoSearchTextColor = clWhite
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clBlack
        BandFont.Height = -13
        BandFont.Name = 'Segoe UI'
        BandFont.Style = [fsItalic]
        DataSource = DTSFKCadastro
        Filter.Criteria = {00000000}
        GridLineColor = clSilver
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clBlack
        HeaderFont.Height = -13
        HeaderFont.Name = 'Segoe UI'
        HeaderFont.Style = [fsItalic]
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoCollapsedReload, edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoSeekDetail, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
        OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoPreview, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlack
        PreviewFont.Height = -11
        PreviewFont.Name = 'Segoe UI Semibold'
        PreviewFont.Style = [fsBold, fsItalic]
        OnCustomDrawCell = DBGItemCustomDrawCell
        object DBGItemITEM: TdxDBGridMaskColumn
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM'
          SummaryFooterType = cstCount
          SummaryFooterField = 'ID'
          SummaryFooterFormat = '0'
        end
        object DBGItemROM_STAV: TdxDBGridMaskColumn
          Color = 16316664
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_STAV'
        end
        object DBGItemSKU: TdxDBGridMaskColumn
          MinWidth = 60
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SKU'
        end
        object DBGItemDECP: TdxDBGridMaskColumn
          Tag = 450
          MinWidth = 200
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DECP'
        end
        object DBGItemDGCP: TdxDBGridMaskColumn
          MinWidth = 130
          Width = 130
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DGCP'
        end
        object DBGItemDECOL: TdxDBGridMaskColumn
          MinWidth = 130
          Width = 130
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DECOL'
        end
        object DBGItemROM_DUNI: TdxDBGridMaskColumn
          Width = 52
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_DUNI'
        end
        object DBGItemROM_QTDE: TdxDBGridMaskColumn
          Color = clGrayText
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlightText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_QTDE'
          SummaryFooterType = cstSum
          SummaryFooterField = 'ROM_QTDE'
          SummaryFooterFormat = '#,0.00'
        end
        object DBGItemROM_QTRL: TdxDBGridMaskColumn
          Color = clGrayText
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlightText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_QTRL'
          DisableFilter = True
        end
        object DBGItemROM_QTPD: TdxDBGridMaskColumn
          Color = clGray
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_QTPD'
          SummaryFooterType = cstSum
          SummaryFooterField = 'ROM_QTPD'
          SummaryFooterFormat = '#,0.00'
        end
        object DBGItemROM_RLPD: TdxDBGridMaskColumn
          Color = clGray
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_RLPD'
          DisableFilter = True
        end
        object DBGItemROM_UNIT: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_UNIT'
          SummaryFooterType = cstAvg
          SummaryFooterField = 'ROM_UNIT'
          SummaryFooterFormat = '#,0.00'
        end
        object DBGItemROM_TOTA: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_TOTA'
          SummaryFooterType = cstSum
          SummaryFooterField = 'ROM_TOTA'
          SummaryFooterFormat = '#,0.00'
        end
        object DBGItemPSLQ: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PSLQ'
          SummaryFooterType = cstSum
          SummaryFooterField = 'PSLQ'
          SummaryFooterFormat = ',##,0.000'
          DisableFilter = True
        end
        object DBGItemPSBR: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PSBR'
          SummaryFooterType = cstSum
          SummaryFooterField = 'PSBR'
          SummaryFooterFormat = ',##,0.000'
          DisableFilter = True
        end
        object DBGItemROM_CDNF: TdxDBGridMaskColumn
          HeaderAlignment = taRightJustify
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_CDNF'
        end
        object DBGItemROM_CTNR: TdxDBGridMaskColumn
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_CTNR'
        end
        object DBGItemROM_DROM: TdxDBGridDateColumn
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_DROM'
        end
        object DBGItemROM_DPRD: TdxDBGridDateColumn
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_DPRD'
        end
        object DBGItemROM_DEMB: TdxDBGridDateColumn
          Width = 95
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_DEMB'
        end
        object DBGItemROM_DDES: TdxDBGridDateColumn
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_DDES'
        end
        object DBGItemROM_DEXP: TdxDBGridDateColumn
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_DEXP'
        end
        object DBGItemROM_DBAI: TdxDBGridDateColumn
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_DBAI'
        end
        object DBGItemROM_NFCI: TdxDBGridMaskColumn
          Visible = False
          Width = 250
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROM_NFCI'
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
  inherited imageOPC: TImageList
    Left = 456
    Top = 192
    Bitmap = {
      494C010109000E00040048004800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009AC5AD00115A2100005E1500119C
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000066A783000C591D000068190011A0
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000066A983000C5B1F0000701B00024D
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000066AB84000C5E1F0000751D00003A
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000067AC84000C61200000791F000038
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000067AD85000C632100007E2300003B
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000067AF86000C65220000842D00003D
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000067B088000C682300028A37000141
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000067B288000C6B230005913F000245
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000067B489000C6E240007984500034C
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000068B489000C6F25000A9C4E000466
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000068B58A000C7226000FA255000783
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000069B68A000C74270014A85C00098A
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000069B88B000C76270018AE63000A8F
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000069BA8C000C78280021B369000E93
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000069BA8D000C7A29002CB871001396
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FBFB
      FB00FBFBFB00FBFBFB00F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F9F9F900F9F9
      F900F9F9F900F9F9F900FBFBFB00FBFBFB00FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE000000000000000000FEFEFE00FCFCFC00FBFB
      FB00FCFCFC00F8F8F800F9F9F900F7F7F700F9F9F900FCFCFC00FEFEFE00F4F4
      F400F4F4F400F7F7F700F4F4F400F4F4F400F2F2F200F2F2F200F1F1F100F1F1
      F100F4F4F400F2F2F200F2F2F200F5F5F500F4F4F400F4F4F400F5F5F500F5F5
      F500F7F7F700F8F8F800F8F8F800F9F9F900FBFBFB00F9F9F900FBFBFB00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000FEFEFE00FCFCFC00FCFCFC00FBFBFB00F9F9F900F9F9F900FBFBFB00F9F9
      F900F9F9F900F1F1F100F4F4F400F9F9F900F2F2F200F1F1F100F0F0F000F0F0
      F000EBEBEB00EAEAEA00F1F1F100F0F0F000F4F4F400F0F0F000EAEAEA00EBEB
      EB00EAEAEA00EBEBEB00EBEBEB00EEEEEE00EDEDED00EEEEEE00F1F1F100F1F1
      F100F4F4F400F4F4F400F4F4F400F5F5F500F7F7F700F8F8F800F9F9F900F9F9
      F900FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FCFCFC00FCFCFC00FBFBFB00FBFBFB00F7F7F700F4F4F400F0F0F000EAEA
      EA00E5E5E500DADADA00CDCDCD00C5C5C500D9D9D900DADADA00D9D9D900D9D9
      D900DCDCDC00DADADA00D8D8D800DEDEDE00DDDDDD00DEDEDE00E3E3E300E1E1
      E100E1E1E100E3E3E300E5E5E500E5E5E500E7E7E700EAEAEA00EDEDED00EEEE
      EE00F0F0F000F0F0F000F1F1F100F2F2F200F2F2F200F5F5F500F5F5F500F7F7
      F700F9F9F900F9F9F900F9F9F900F9F9F900FBFBFB00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000FEFEFE0000000000FEFEFE00FCFC
      FC00FCFCFC00F9F9F900F8F8F800F7F7F700F1F1F100EEEEEE00E8E8E800DDDD
      DD00CACACA00AFAFAF00BABABA00BCBCBC00BABABA00BCBCBC00A0A0A0008080
      80007575750090909000868686007272720087878700949494009A9A9A00A3A3
      A300C4C4C400D9D9D900DFDFDF00DFDFDF00E1E1E100E5E5E500E8E8E800EAEA
      EA00EEEEEE00EEEEEE00EEEEEE00F0F0F000F1F1F100F5F5F500F7F7F700F7F7
      F700F5F5F500F5F5F500F8F8F800F9F9F900FBFBFB00FCFCFC00FEFEFE00FEFE
      FE00FEFEFE00FCFCFC00FEFEFE0000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000FEFEFE0000000000FEFEFE00FBFB
      FB00FBFBFB00F8F8F800F7F7F700F5F5F500F0F0F000EDEDED00E3E3E300E4E4
      E400B7B7B700C9C9C900CACACA00C9C9C900C4C4C400C1C1C100C6C6C600BCBC
      BC00A4A4A400AEAEAE006D6D6D00B4B4B400AEAEAE00BBBBBB00BCBCBC00B6B6
      B6009B9B9B00B7B7B700C7C7C700DADADA00DBDBDB00DFDFDF00E3E3E300E5E5
      E500E8E8E800EAEAEA00EDEDED00EEEEEE00EEEEEE00F0F0F000F1F1F100F2F2
      F200F4F4F400F7F7F700F4F4F400F7F7F700F8F8F800F9F9F900F9F9F900F9F9
      F900F9F9F900FBFBFB00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000FEFEFE0000000000FEFEFE00FBFB
      FB00F9F9F900F7F7F700F5F5F500F4F4F400EEEEEE00EDEDED00E4E5E500E1E1
      E100C2C2C200CECECE00CECECE00CDCDCD00CACACA00CACACA00C7C7C700C3C3
      C300B8B8B8000F0F0F009F9F9F00BFBFBF00BFBFBF00C3C3C300BFBFBF00C2C2
      C200B8B8B800BCBCBC00DCDCDC00DADADA00DBDBDB00DFDFDF00E1E1E100E3E3
      E300E7E7E700E8E8E800EAEAEA00EBEBEB00EBEBEB00EEEEEE00F0F0F000F0F0
      F000F1F0EE00F0F0F000F5F5F500F1F1F100F4F4F400F4F4F400F8F8F800F8F8
      F800F7F8F800F7F7F700F8F8F800F9F9F900FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000FEFEFE00FCFCFC00FCFC
      FC00FBFBFB00F5F5F500F5F4F400F5F2F200F0EDED00EEEBEB00EBE4E500E4DE
      DF00CEC9CA00CFCFCF00CBCBCB00CACACA00CBCBCB00CACACA00C9C9C900C3C3
      C300C5C5C5001C1C1C00AAAAAA00C2C2C200C7C7C700C7C4C200C7C5C500C3C5
      C600BFC1C500B6BBBC00CFD3D300DCDADA00DFDAD900E0DADA00DCD8D700DADA
      D800D8DDDC00D9DEDD00DEE0E000E0E3E300DFE3E300E3E7E700E4E7E700E8EB
      EE00E3E5EB00E3E5E700EEF0ED00F1F0F000F8F1F800F8F0F900F2F4F100F2F0
      EE00FBF5F400F8F5F200EEF4F100EAF9F500F0F7F700F1F7F800F5F8F900F5F8
      FB00FBF9FC00FEFBFE00FFF9FB00FFFBFC000000000000000000FCFFFF00F9FF
      FF00FBFFFF000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000FEFEFE00FCFCFC00FCFCFC00FBFB
      FB00F8F8F800F4F4F400F2F1F100F2F0F000EDEAEA00EDE8E800E8E1E300E3DD
      DE00CAC7C700CECECE00CBCBCB00C9C9C900CBCBCB00CACACA00C9C9C900C9C9
      C900BFBFBF001C1C1C00AAAAAA00C2C2C200C7C7C700CBC5C600C7C6C600C5C5
      C700BFC2C600B8BFC200BBC0C200BCC1C300C2C1C700C7C4CB00C5C3C900C1C5
      CA00BFC7CB00C1CBD000C7CFD600D3DCE300D7DEE500D9E0E800E0EBF400D6DD
      E500D8DEE700D6DBDE00E5EDEA00E1E5E100E4E3E300EAE7EB00E3E7E400F0EB
      EA00F1E8E800F0EAE700EAEAE700E5EEEB00EAEEED00EBF0EE00F1F1F200F4F1
      F000F8F2F100F9F2F200FCF5F700FEF5F800FBF9F900FBFBFB00F8FBFB00F5FE
      FC00FBFEFE000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000FCFCFC00FCFCFC00FBFBFB00F7F7
      F700F5F5F500F0F0F000F1F0F000EEEDED00EAE8E800E8E7E700E3E1E100DCDC
      DC00C5C5C500CDCDCD00CACACA00C7C7C700CBCBCB00CACACA00C9C9C900C9C9
      C900BCBCBC001C1C1C00AAAAAA00C2C2C200C7C7C700CBC6C700CAC7C700C7C6
      C900C3C6C600B8C0C5008E959B007D89910074828B00647181004E5767004652
      6000384C5900364859003B4C5F0046566B00495B740053667D00677C8B00667C
      8B00929BAB00BFCAD300BBC6C600C5CECA00CED6CF00D0D6CF00D5D9D700DBDA
      DA00E0DDDC00E4DEDE00EAE3E100EBE4E400E7E7E100EAEBE500F1F0EA00F2EE
      E800F5EEEA00F7F0EB00FBF4F500F8F5F500F8F7F700F8F8F800F8F9F900FBFE
      FE00FEFEFE000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000FEFEFE00FEFEFE00F8F8F800F7F7
      F700F1F1F100F1F1F100EDEDED00DEDEDE00E3E5E500EAEBEB00D0D6D500D3DA
      D900C7CECD00C9C9C900CDCDCD00C9C9C900C9C9C900CACACA00C7C7C700CACA
      CA00C1C1C1001E1E1E00A8A8A800C4C4C400CACACA00C7C6C900CAC7C700CAC7
      C600C2C5C700B4BFC6004654660038536D003B54750041567500435474004157
      770040597A00425C7C0048638200486383004D698500506F89005B7B8F006180
      92006D8694005F7B8A0085929800A8BABA00AEBDB600BBC6BD00C6CED000CCD1
      D300D0D2D700D6D7DB00DBD8DC00DFD9DE00D9DDDD00DEE0E000E5E8E800E4E3
      E300E3DFDF00F1EBED00E7E7E700F2F2F200EDEDED00F4F4F400F1F1F100F7F7
      F700FBFBFB00FCFCFC00FCFCFC00FEFEFE00000000000000000000000000F2F2
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
      000000000000000000000000000000000000FCFCFC00FBFBFB00F5F5F500F4F4
      F400EBEBEB00E7E7E700DFDFDF00E1E1E100DBDEDE00D9DFDD00D7E1E000C7D3
      D100ACBAB700CBCBCB00C9C9C900C9C9C900C9C9C900CACACA00C7C7C700CBCB
      CB00BFBFBF001D1D1D00A8A8A800C4C4C400CACACA00C5C6CB00CAC7C700CCC7
      C600C4C5C500B2BFC7003F546B002F54750033567A0039567A003C547A003C56
      7B003D5B7F003D5B81004561850045618500496789004C6B8A0056789100597F
      94005B83960052758D0060808E0071848E009DAEAF0096A2A10075828B008591
      990089949C008D98A2009AA3B000ABB2C000B0C0C900BCC9D100C9D2DD00D1D9
      E100D6DBE500D3D8E100E0E3E500DFE1E100E4E7E700EAEAEA00F1EEEE00F5F2
      F200F8F7F700FBFBFB00FCFCFC00FEFEFE00000000000000000000000000D9D9
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
      000000000000000000000000000000000000F9F9F900F8F8F800F4F4F400F1F1
      F100E8E8E800E3E3E300DCDCDC00D7D9D900CBD1CF00727D7C00697D7B006D81
      7F00BFCDCB00CACACA00CACACA00C9C9C900C9C9C900CACACA00C7C7C700CBCB
      CB00BBBBBB001E1E1E00A8A8A800C4C4C400CACACA00C4C6CB00C7C7C700CCC9
      C400C7C6C700B3C0CB003D5472002C547A002F567B0036577D003C567D003C56
      7D003F5B81003D5B820042608600426086004766890048678A0052759100567D
      950058869B0049718D003F59810043587A00162332001B242E00182338005D7C
      8C005C8390005C83900066869300728996007C8E9D007A8C9B00778998008591
      A2007D8A9A006B809100989CA000D5DAD900DFE0E000E8E8E800EDEAEA00F4ED
      EE00F8F4F500F8F8F800FCFCFC00FEFEFE00000000000000000000000000BEBE
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
      000000000000000000000000000000000000F9F9F900F7F7F700F2F2F200EEEE
      EE00E7E7E700E4E4E400E3E3E100E0E3E000CFD5D5006178820053718300667C
      8500BBC3C500CBCBCB00CCCCCC00C9C9C900CACACA00CACACA00C7C7C700C5C5
      C500B6B6B6001C1C1C00AAAAAA00C5C5C500C6C6C600CBC7CB00C5C7C700C7C9
      C400C9C6C700BCC2CD003F57770033577B0036577C003B577C003D567D003D57
      80003C5981003D5C8300405D850041608500456388004766890052759100567B
      94004E7A93000E234700162A4E003F567B00131D2F001D2739001D2B47005D7F
      91005882930058859500588496005F87990064869B00405C820072899F005B7A
      9100617D9500637C950086919A00CFD8DB00DBDEDE00E8E5E100F0EAE500F4F0
      F000F4F2F200F7F7F700F9F9F900FBFBFB00000000000000000000000000B0B0
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
      000000000000000000000000000000000000FBFBFB00F8F8F800F5F5F500F2F2
      F200EEEEEE00EBEBEB00EAEAE800E5E7E100D9DEDE005C78870046638600647A
      8A00BFC2C700CDCDCD00CBCBCB00CACACA00CBCBCB00CACACA00C9C9C900C3C3
      C300B6B6B6001C1C1C00AAAAAA00C6C6C600C5C5C500CEC9CB00C4C9C600C4CA
      C400CAC6C700C2C3CF004158770036597A0038597A003C577C003F567D003D57
      80003C5982003D5C8300405D840041608500436187004766890053779100587C
      9500567B95005F839C00547C940048648500142033001C2738001E2B48006181
      92005B8494005B859800578396005C869B0066879C001B2E4D00718AA0003B53
      7B004E6D8D00203657007D8D9B00C4D3DE00CBD3D500DADBD900E3E0E000EAEA
      EA00EAEAEA00F4F4F400F7F7F700FBFBFB00000000000000000000000000B0B0
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
      000000000000000000000000000000000000FBFBFB00F9F9F900F8F8F800F7F7
      F700F8F8F800F4F4F400F1F1F000F2F4EE00E8F1F1005B77860046638600697D
      8D00BFC2C700CDCDCD00CBCBCB00CACACA00CBCBCB00CACACA00C9C9C900C3C3
      C300B6B6B6001C1C1C00AAAAAA00C6C6C600C5C5C500CEC9CB00C4C9C600C4CA
      C400CAC6C700C2C3CF004158770036597A0038597A003C577C003F567D003D57
      80003C5982003D5C8300405D840041608500436187004766890053779100587C
      950050759100547A95004F7791004A678700152236001E2839001E2B48006181
      92005B8494005B859800578396005C869B0063879C006F8CA20063849A005071
      8C00648399005B7892007A8D9E0064828D00838D9500A0A6AB00D8DCDE00E3E5
      E700EBEAED00F4F4F400F5F5F500F9F9F900000000000000000000000000B0B0
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
      000000000000000000000000000000000000FBFBFB00F9F9F900F9F9F900F5F5
      F500F7F7F700F7F7F700F2F2F200F7F8F200F1F9F80059758500486688006B7F
      8D00BDC2C600CDCDCD00CBCBCB00CACACA00CBCBCB00CACACA00C9C9C900C3C3
      C300B4B4B4001C1C1C00AAAAAA00C6C6C600C5C5C500CCC7CA00C4C9C600C4CA
      C400C9C5C700C0C2CE004057750036597A0038597A003C577C003F567D003D57
      80003C5982003D5C83003F5C8400425F8500426087004664890052759100587C
      950060849B0052789400547C940049648500172438001D2738001D2A46006181
      9300598394005B859800578498005C859A0060879B005F859A00748DA4006485
      9B006F899F007289A0006B899C0053748B00526B83008C959E00E3EBF500E7EB
      F100F2F2F400F8F8F800F7F7F700F9F9F900000000000000000000000000B0B0
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
      000000000000000000000000000000000000FCFCFC00FCFCFC00FBFBFB00F8F8
      F800F8F8F800F8F8F800F8F9F800F7F8F200F4FCFC005B7887004C6D8B006F80
      8E00BDC1C600CDCDCD00CCCCCC00CCCCCC00CBCBCB00CACACA00C9C9C900C5C5
      C500B2B2B2001C1C1C00AAAAAA00C6C6C600C5C5C500CCC7CA00C5CAC700C5CB
      C500C9C5C700BFC1CC003D54740036597A00395C7B003D587D0040577D003D57
      80003C5982003C5B82003F5C8400405F8500426086004563880050749000597D
      9500597F9800577D9700547C94004C698800162236001D2739001D2A46006482
      94005B8494005B8699005B8599005B859A005B8499005F879B0061869B006485
      9B0064869B006D899E00547B9100000B1C003C5674008D9AAA00E5F1FE00F8FB
      FC00F9F8F800F8F8F800FBFBFB00FBFBFB00000000000000000000000000B2B2
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
      000000000000000000000000000000000000FEFEFE00FCFCFC00FCFCFC00F9F9
      F900F9F9F900F9F9F900F9FBF900F7F9F400F4FCFC005C7888004C6D8B006F80
      8E00BDC1C600CDCDCD00CCCCCC00CCCCCC00CBCBCB00CACACA00C9C9C900C5C5
      C500B2B2B2001C1C1C00AAAAAA00C6C6C600C5C5C500CCC7CA00C5CAC700C5CB
      C500C9C5C700BFC1CC003D54740036597A00395C7B003D587D0040577D003D57
      80003C5982003C5B82003F5C8400405F8500426086004563880050749000597D
      9500597F9800577D9700547C94004C698800162236001D2739001D2A46006482
      94005B8494005B8699005B8599005B859A00598499005D879B005F879B006185
      9B0064869B0069899E005F8295005F8195005F809200909CAF00EEF7FE00FFFF
      FC00FFFCF900FBFBFB00FCFCFC00FCFCFC00000000000000000000000000B4B4
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
      00000000000000000000000000000000000000000000FEFEFE00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FBFCFB00F8FBF500F5FCFF005D7A89004C6D8B006F80
      8E00BDC1C500CDCDCD00CCCCCC00CCCCCC00CBCBCB00CACACA00C9C9C900C5C5
      C500B3B3B3001C1C1C00AAAAAA00C6C6C600C5C5C500CBC7CA00C6C9C900C7CA
      C500C9C6C700BCC1CC003F54740038597A003C5B7B003D587D0040577D003D57
      80003C5982003C598200415C8400405F850042608600456388004E759000577F
      9500587F9800577D9700547C94004C6B8800162236001C2739001D2A46006382
      94005C8494005B8699005B8599005B859A00598499005D879B005F879B006185
      9B0061869B0069899E0064889B00758DA300648294008D97A600F4FBFF00FFFF
      FB00FFFEFB00FEFEFE00FEFEFE00FEFEFE00000000000000000000000000B6B6
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
      000000000000000000000000000000000000FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFEFC00FCFEF800F5FCFF005C778A004C6D8B006F81
      8D00BDC2C300CBCBCB00CCCCCC00CACACA00CACACA00C9C9C900C7C7C700C9C9
      C900B4B4B4001D1D1D00A7A7A700C4C4C400C6C6C600C4C6CB00C7C7C700CCC7
      C600C6C7C900B7C2CB0040566F003C587A0039577B0038567A0039567C003B56
      7F003C5780003F577F0040588000405B81003F5D84004063890047728F00547F
      9800567D9600547D9700507B93004969870017253B001C2A3B001D2E48006182
      9400618797005C8699005C85990061869B005C859A005D869B005F879B005F87
      9C005F879B0061899D005B849D00587D9500698495008D97A200F2F8FE00FCFC
      FE00FFFCFC00FEFEFE00FEFEFE00FEFEFE00000000000000000000000000B7B7
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
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFC00FCFEF800F5FCFF005C778A004C6D8B006F81
      8D00BDC2C300CBCBCB00CCCCCC00CACACA00CACACA00C9C9C900C7C7C700C9C9
      C900B4B4B4001D1D1D00A7A7A700C4C4C400C6C6C600C4C6CB00C7C7C700CCC7
      C600C6C7C900B7C2CB0040566F003B577800385677003754780038547B003854
      7A0038547D003D567D0041597F00415B8200415F840042648800486F90005480
      9700567D9600547D9700507B93004969870018263C001F2E3F001D2E48006182
      9400618797005B8598005B84980060859B005C859A005D869B005F879B005F87
      9C005F879B0061899D005B849D00587D9500698495008E98A300F2F8FF00FEFE
      FE00FFFEFC00FEFEFE00FEFEFE00FEFEFE00000000000000000000000000B7B7
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFFFE00FCFEF800F5FCFF005C778A004C6D8B006F81
      8D00BDC2C300CBCBCB00CCCCCC00CACACA00CACACA00C9C9C900C7C7C700C9C9
      C900B4B4B4001D1D1D00A7A7A700C4C4C400C6C6C600C4C6CB00C7C7C700CCC7
      C600C6C7C900B7C2CB0040567100395775003856740037537400375277003750
      780039537B003D537A0040547B003F587D00405B8200456388004A728D00567F
      9700567D9600547D9700507B93004867860019273D00202F41001D2E48006182
      94006187980059849700598497005F849A005C859A005D869B005F879B005F87
      9C005F879B0063899D005B849D00587D9500698495008F99A400F4F9FF000000
      0000FFFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000000000000000B7B7
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
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFE00FCFFF800F7FEFF005D788B004E718D006B80
      8C00BDC2C300C9C9C900CBCBCB00C9C9C900C7C7C700C7C7C700C6C6C600CACA
      CA00AEAEAE001C1C1C00AAAAAA00C5C5C500C3C3C300C4C6CB00C7C7C700CCC7
      C600C2C4C400B7C2CB00384E6600364F6B0037506D00334C690030496900304A
      6B00324A6F00364A6900394E6F00344D6D0036527700415F8400496F8D00567F
      9500567F9700537C9600527C94004A6B890018263C001F2E3F001F324C005F80
      92005D84950059849600578396005880950057829600598497005B8498006189
      9D00648A9F005F879B005C859E00537A9100638292008D96A100F7FEFF000000
      000000000000000000000000000000000000000000000000000000000000B7B7
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
      FC00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFC00FBFCF700F5FCFF005C788A004F728D006D81
      8D00BFC3C400CACACA00C9C9C900C6C6C600C6C6C600C6C6C600C5C5C500C3C3
      C300B2B2B20016161600AAAAAA00C2C2C200C3C3C300C4C5CA00C6C6C600CBC6
      C500C2C4C400BAC4CE002A4157002C465C002A43590027415700253D5700243B
      5800243B5700253B5700263C560027405900375072003F5C8000436386005880
      950058809800537C96004F7A92004866860019273D001D2B3C001F324C005D7F
      91005B839300568295004E7A90004E758F004F7B910054809500598498006189
      9D00648A9F005F879B005D869F00547B9200648192008D96A100F7FEFF000000
      000000000000000000000000000000000000000000000000000000000000B7B7
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
      F700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFC00F8FBF800F2F9FF005974890052758E007182
      8D00C1C4C500CACACA00C7C7C700C4C4C400C6C6C600C5C5C500C4C4C400C1C1
      C100AAAAAA0019191900AAAAAA00BFBFBF00C3C3C300C2C4C900C5C5C500CAC5
      C400C5C6C600B4C0C90013203400101E30000C1B2A000C1928000C192B000B17
      2A000B162A000C162A000C182A000F1C32001C324D003452750046678800567C
      9400567F9700567F97005781970050728A00192A40002436470020334D005C7F
      910059829200507B91002E52750025476B002A4E71004C758E005D859B006389
      9E00648A9F005F879B005781980053779100668291008D96A000F7FEFF000000
      000000000000000000000000000000000000000000000000000000000000BBBB
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
      F30000000000000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FEFEFE00FCFBFC00BBBFC7008998AA0050758D004E648400757C
      8900BAB8C000CACACA00C4C4C400C4C4C400C3C3C300C2C2C200C2C2C200BFBF
      BF00BABABA007F7F7F00A5A5A500BBBBBB00C3C3C300BFC0C400C2C2C200C7C3
      C200BDC0C000B8C3CC003B52690047607C00455D7B00455D7A00455D7A004863
      7D0048617D004A608000435B7D004A64870063839800597D9600507891004C74
      9100527B97004D758E002C4E6B00162840001A284300334661002C455F00334C
      69002239540039547A00324E72003D587F004D71890054788D005B819400507A
      91004C748D0049728F0014264700304C64007A899100A7B2B700F4FBF900FCFF
      FE00FEFFFF00000000000000000000000000000000000000000000000000BBBB
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
      F000F0F2FD00000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FEFEFE00F7FBFB00969FA7005F818F005C8499005F8194007883
      9000C0C1C900C5C5C500C3C3C300C4C4C400C0C0C000BDBDBD00BBBBBB00BDBD
      BD00AAAAAA009E9E9E00A7A7A700B7B7B700BFBFBF00BABBC000BDBDBD00C3BF
      BD00C1C2C200B3BFC900425774003D5772003750690047637F00324E64003F59
      75003D5772003D567400334A69004E69890064849800597D9500588096005880
      9A0056809A00547C92002E4F6D001B30470022364F00283D5700344C67002C46
      61002F49640039547A00405D8200436084004F758C006B899C0064879C006187
      9C005882980061889E004666870047617F00C5D5DE00F2FEFF00F2F9F700FCFF
      FE00FEFFFE00000000000000000000000000000000000000000000000000BCBC
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
      F000D0D5FA00000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FEFEFE00F8FCFE0099A6B200597F90004A7B9100547C9100818D
      9B00BDC2CB00C6C6C600C1C1C100C0C0C000BDBDBD00BABABA00B6B6B600B2B2
      B200A6A6A600A2A2A200A4A4A400AFAFAF00B3B3B300B4B6BB00B7B7B700BDB8
      B700B4B6B700B3BFC700475D7800455F7F002E4964003D577700537289002F4A
      66005271890028415D00182B4700415B80005C80950059819600568096005480
      980058819B00547D92003456740012233800283F580020304C0039506F003750
      6F002C4763003C577C0039577C003C587F004F758D005F84990063879C00547F
      95004F7B930059849B00405F8300536D8600CDDBE400F7FEFF00F9FCFC00FEFF
      FB00FEFFFE00000000000000000000000000000000000000000000000000BCBC
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
      F100B4BBF7000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00F4FBFE0099A7B300547D8F004C7B9300588095007A89
      9500C4CBD300C4C4C400BDBDBD00B3B3B300BCBCBC00B7B7B700B0B0B000ACAC
      AC00A6A6A600A4A4A400A4A4A400A4A4A400A7A7A700A6A7AC00B3B3B300B8B3
      B200B2B3B300AEB8C300425872003D597B000C1A2F00304D6B001B324D000006
      1400334E6F002F4A670027435F003C597D005980950059839900578298005480
      9800537D9800577F94002F526F00081624001F334C00192540002F476100304A
      6600364F6F00375277003D597F0039567C004E778D005F849A005B849A005D86
      9C006088A0005C869F0042618400546D8700D6E1EE00F9FEFF00FFFFFE00FFFF
      FE00FFFFFE00000000000000000000000000000000000000000000000000BCBC
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
      F00098A3F4000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00F5F9FE009BA6B600577C91004E7B95004E718D00828D
      9B00C2C6D000C0BFBF00BABABA00B0B0B000ABABAB00AAAAAA00A3A3A300A0A0
      A0009C9C9C00999999009B9B9B009B9B9B009E9E9E009E9FA300A2A1A100ACA7
      A600ABAEAE00A6B2BD00415771003B5778003D5B7D00375375003C597C003F5C
      7F003B587B004663840048668400415D81005982950058839900568298005280
      9800527B9700547C930033567400203B4F002E435D0034476300304863003C54
      75003B547500385378003F5C81003C587F004D748E005C849A0059849B005C86
      9E005D87A1005986A10046648600586F8800D8E0EE00F9FEFF00FFFFFE00FFFF
      FE00FFFFFE00000000000000000000000000000000000000000000000000BCBC
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
      F0007E8BF3000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FCFCFC00F7F9FE009CA5B700597C9100507A9500537490007582
      9300BBBCC700BCBCBC00B3B3B300AEAEAE00A4A4A4009B9B9B009A9A9A009595
      9500919191008E8E8E008D8D8D008D8D8D009090900091919500959595009F9B
      9A009C9D9E00A6B2BC00465C770039547A003D5B7F003C597D003F5C80003B58
      7C0038567A003B587B003B587A00406083005F859A0058839900548398005280
      9800507B9600537C920037587700223D5300384D690030455F00384F6D00324A
      67003F587A003B567B00415F83003F5B81004C748F005C849B0059849B005B85
      9F005B88A1005886A2004A6788005B728900D8E0EE00F9FEFF00FFFFFE00FFFF
      FE00FFFFFE00000000000000000000000000000000000000000000000000BEBE
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
      F1007177F200000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FEFEFE00F5FEFF0095A5B600567F92004C7C9300537B91007A88
      9300BBBFC600BFBFBF00A7A7A700A2A2A2009C9C9C0091919100888888008484
      8400818181007D7D7D007D7D7D007C7C7C008181810081818100838383008E8E
      8F008C8F93009FA8BA004C5D7A003B5877003B597A003B587A003C597C003C59
      7D00405C82003D5D81003D60830034567C005782970057829A0056829A005682
      9900598297005D8398003C5B8000244160002B456600324C710038527B003B54
      7D003D567F0040598200415B830046608600476D8B005F869C005F869C005F86
      9C005C859B0059849A00456B8B00587C8E00D1DFEA00F7FEFC00FFFFFC000000
      0000FEFFFF00000000000000000000000000000000000000000000000000C0C0
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
      F1007171F200000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FEFEFE00F4FEFF0095A6B600547F92004A7C9300567D92007A88
      9300B7BCC200B4B4B4009D9D9D0093939300898989007F7F7F00676767005F5F
      5F005B5B5B005858580053535300565656005353530054545400696969007C7F
      8000808487006D7B840042536B003D5C7B003B5978003B587A003C597D003C59
      7D003F5B81003D5C81003D60830036577D005782970057829A0057829A005782
      98005B8297005C8398003C5B8100274566002F496F00364F770039547D003C57
      80003D588100405B8300415C840047638800486F8D005F869C005F869C005F86
      9B005F869C005C849B00466F8D00577C8E00D1E0EA00F7FEFC00FFFFFB000000
      0000FEFFFF00000000000000000000000000000000000000000000000000C0C0
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
      F2006E6FF300FAFBFF000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FEFEFE00F4FEFF0095A6B600547F92004A7C9300588094007B88
      9400B3B8BF00ACACAC00959595008585850077777700565656003B3B3B002A2A
      2A00222222001E1E1E001E1E1E001A1A1A0017171700191A1B00191919001818
      18001A1C1D0014191F00141C270045617C003B5B78003B587A003C597D003C59
      7D003F5B81003D5C81003D60830036577D005782970057829A0057829A005483
      9800598398005B8499003B5C8200274669002F4C710037537A00395780003C58
      81003F5C8300405D840042608600476689004C74900061889E005F869C005D85
      9B0060879D005F869D0049748F005B809000D2E1EB00F7FEFC00FFFFFB000000
      0000FEFFFF00000000000000000000000000000000000000000000000000C2C2
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
      F5005461F300D4DAFB000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FEFEFE00F4FEFF0095A6B600578193004D7D94005C8397007787
      9200AEB3BA00A2A2A200909090006B6B6B001C1C1C0019191900191919001A1A
      1A001A1A1A001A1A1A0019191900191919001919190017191900171919001A19
      1800191A1A001F242A0010161E00425F7A003C5B7A003C597B003D5B7D003D5B
      7F00405C82003F5D82003F61840036577D005681960058839B0058839B005684
      99005C869B005B849900395F83002C4D74003250770037567C003B5881003F5C
      840042608600415F85004361870048678A00507B9300598399005C849B005C84
      9B005C849B005C849B00507D95005B809100D5E4ED00F5FEFC00FFFFFB000000
      0000FEFFFF00000000000000000000000000000000000000000000000000C2C2
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
      F7005462F500D4DAFC000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FEFEFE00F5FEFF0096A7B700568092004A7C93005B8195007787
      9200A5AAB0009B9B9B0081818100676767001B1B1B0019191900161616001A1A
      1A001A1A1A001A1A1A0019191900191919001919190016181B00171919001919
      1800191919001A1C200013171C0047617C003D5C7B003D5B7C003F5C80003F5C
      8000405C82003F5D82003F61830037587F005782960058839B0058839B005684
      9900598498005B859A004167880030567B0037587F00405F83003F5F85004063
      86004366890045698A00476B8B004A718D00537D95005B849A005C849B005D85
      9C005D859B005D859B00527D95005C819100D3E3EB00F7FEFC00FFFFFB000000
      0000FEFFFF00000000000000000000000000000000000000000000000000C2C2
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
      F7005464F600D4DAFC000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FEFEFE00F4FCFF0095A5B400578193004D7F95005B8195007888
      93009FA3A8008C8C8C00696969005B5B5B00171717001E1E1E001B1B1B001A1A
      1A001A1A1A001A1A1A0019191900191919001919190016181B00171919001919
      18001A1918001415160014171A0048637D003F5D7C003F5C7D00405D8000405D
      8100415D8300406083004063840037587F005882970058839B0058839B005684
      99005785990059849900426B8900365B80003C5D83004163860046698A00466B
      8A00476B8B00486D8C00496F8D004A718D00568096005B849A005F869B006087
      9D005F869C005F869C005681970063859500D1E0E800F7FEFC00FFFFFB000000
      0000FEFFFF00000000000000000000000000000000000000000000000000C2C2
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
      0000FEFEFE0000000000F4FEFF0095A5B0005B7F8F00598095005B7F9100808D
      9600939B9E00757575004E4E4E00636363007474740072727200464646001414
      14001B1B1B00191919001919190019191900191919001B1919001A1919001818
      180019191900141616001417180041526D0040587B00405D7F003C5D80003F5D
      8100465F8300415D8400395D8400395D8400588298005B849A005B849A005984
      9A0058859B00537F950048728E003F63870041638700466B8B004F748E00496B
      8A004D6F8D004D718D005378910050758F0060859B00698AA00061869B006789
      9F00577F95006B8BA100537B93005C8599005B818E00A7B6C100FCFBFE00FBFE
      FE00FBFFFE00000000000000000000000000000000000000000000000000C3C3
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
      0000FEFEFE0000000000F4F9FB00B4C3CC00647D8C00587A8B00546D83007785
      8C0084898C009B9B9B00B2B2B200AEAEAE00B0B0B000A8A8A800A8A8A8008F8F
      8F00141414001C1C1C001919190019191900191919001C1919001A1919001818
      180017171700171919001214140032415300465C7A003D587800405F7F00415F
      8200435F8300405D8400395D8400395D8300588299005B849A005B849A005984
      9A0056849900548096004D78910049718D004A718D004D7590004E728D005075
      8F0050748F004D718D0052789100537891005B82970064889D00577F95006789
      9F00567D940067899F006688A1005F879C00678C9B00A6B7C500FCF9FF00FBFE
      FE00FBFFFE00000000000000000000000000000000000000000000000000C3C3
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
      0000FEFEFE0000000000FCFEFE00F7FFFF00E5F5FE00EAFEFF00DDE8F800A5AE
      B300C1C3C200C4C4C400C7C7C700C4C4C400C2C2C200BCBCBC00B8B8B800B2B2
      B200252525000F0F0F001919190019191900191919001C1919001A1919001818
      18001B1B1B0014161600141616001E2530004E5D7400475D7800455F7B004360
      810045608400416085003C6085003C608400598399005B849A005B849A005B84
      9A0058839900568197004F7A920050789200547C9400577A94004D718D004A6D
      8B004C6F8C004E728D0052779000587D9400598196006B8BA1002B4C6F004D74
      8F003758800067899F006789A30060899E006D8E9E00A6B7C500FCF9FF00FBFE
      FE00FBFFFE00000000000000000000000000000000000000000000000000C4C4
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
      0000FBFBFB00FCFCFC0000000000FFFFFE00979B9B006F777C00BFC3C500C6C9
      C700D3D1D000D1D1D100CECECE00DADADA00F0F0F000E3E3E300A7A7A7005959
      5900161616001B1B1B00161616001B1B1B001A1A1A001C181900191717001717
      1700181818000E0F0F0014161600272E33004E545C0061717F00566983004A64
      83004563840045668800426789004267890060879D005D859B005C859B005680
      96005781970057819700527A9200547892005D7F9700597B9400456487004666
      88004767890046668800436385005D82970060869B0061869B0064879D00698A
      A100698AA10063879C006789A200638AA0006B8E9D00A7B8C600FCF9FF00F9FC
      FC00F9FEFE00000000000000000000000000000000000000000000000000C7C7
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
      F90090A3F900000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FBFBFB00FCFCFB0092919000ACABAA00CDCDCB00E0E0DE00DBD8
      D700DCDAD900CECECE00DEDEDE00DDDDDD002B2B2B00363636005D5D5D006666
      66002A2A2A00181818001919190018181800191919001C191900191818001818
      1800131313004A4D4D0094969600A4A7A400A3A5A400A8AEB400939CA8005066
      83004A6D890040638700466D8C0049728E005C849B00507B93004E7891004F7A
      92004E7791004F779100577B9400587C9500608198005F7F9600456487004869
      8900496B8A004C6F8C004869890066879D0067899E0069899F00698BA0006789
      9F0066899E0066899E006989A300638AA0006D8F9E00A7B8C600FCF9FF00F9FC
      FC00F9FEFE00000000000000000000000000000000000000000000000000C7C7
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
      0000FCFCFC00FEFEFE00D1D0D000D2D0D000F7F4F200DFDBDA00F8F4F200EDEA
      E800EBE8E800DADADA00F0F0F000DFDFDF00D6D6D600CBCBCB00D9D9D900E3E3
      E300333333001C1C1C001B1B1B00181818001A1A1A001D191A001A1919001919
      1900101010009FA1A100AAAEAE00B6B7AA00CBC9BF00B8B7B800A4ACB8007888
      9800608498005F869C005D859B005C849B005C849B004D77910049728E00507B
      9300567C9500567F95005F8299005D7F96006382990063839A00476789004A6D
      8B004E718D004D718D004C6D8C0064869B005F849A0067899F00728EA500698A
      A00067899F0069899F006989A300638AA0006D8F9E00A7B8C600FCF9FF00F9FC
      FC00F9FEFE00000000000000000000000000000000000000000000000000C8C8
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
      0000FBFBFB0000000000D6D6D600EDEBEB00EDEBEB00F4F2F200F1F0EE009B9A
      9A00E5E4E500F1F1F100E1E1E100DFDFDF0095959500585858001A1A1A001111
      11001F1F1F001717170019191900191919001A1A1A001A1A1A00191919001919
      19000E0E0E0090919100D5D6D600D5D2CF00D5CFCB00D7D0D200D5D6DF007585
      94005B8398005C859B0061869A0060879B005C849900567C930054788F005B7D
      92005F8195006184960064859800638497006684970064849700436486004A6F
      8C00466B8B0048728D0049728F006489A00067889E0067899F00668BA100648A
      A0006689A000698AA1006989A400618BA200698E9D00A7B8C600FCF9FE00FEFC
      FB00FBFEFE00000000000000000000000000000000000000000000000000C8C8
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
      00000000000000000000D9D9D900F1F1F100F4F4F400E7E7E700B0B0B0003C3C
      3C0098989800F1F1F100E5E5E500C3C3C3009B9B9B0020202000161616001A1A
      1A001A1A1A001A1A1A0019191900191919001919190015181800161717001616
      1600161616001C1B1B00221F1F003F3941006D646D008B868A00B4B3C1007787
      96006389A2005C8599006488990063889B005C84960098ACC700567182007F8D
      960069818E0072859200758794008D9AAB00A3B6C900B7C9DA00597789005274
      89004A72890048748C004C748E006F8AA2006989A0006489A000608AA0005D8A
      A000648AA100698BA2006189A300618CA300668C9B00A8BAC700FFFBFE00FFFC
      FB00FEFFFC00000000000000000000000000000000000000000000000000C8C8
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
      00000000000000000000E1E1E100EDEDED00E0E0E000C6C6C600929292005F5F
      5F00A2A2A200B4B4B400BDBDBD00B7B7B700B4B4B400151515001C1C1C001A1A
      1A001A1A1A001A1A1A0019191900191919001919190016191900191A1A001818
      18001B1B1B0024242400D6D1D200CBCCCE00E5EAEE00D3D7DE00D1DBEB005F7F
      8F00568498005C899E005D879B0060889C005F849500DAF0F900DEEEF800EEF9
      FC00F0FCFF00F0FBFF00EBF8FB00EAF5F800F1FCFF00F2FFFF005D758300637F
      8A005C7F8C00527A8A0054788D00758CA0006489A1006389A2005D89A2005B8A
      A200618AA300668AA4006689A300648DA200678D9B00ABB8C700FFFBFE00FCFC
      FB00FEFFFE00000000000000000000000000000000000000000000000000C9C9
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
      000000000000FEFEFE00E3E3E300E0E0E000DBDBDB00C4C4C400ABABAB006060
      60009E9E9E00BBBBBB00B3B3B300ACACAC00A3A3A300101010001C1C1C001919
      19001A1A1A001A1A1A0019191900191919001919190016191800191A1A001718
      18001A1A1A00242222001D1A1A000E1110001F272A00B0C1C9008897A5006186
      96005D899C0059879C0059869B005F899B0060849300DFF1F800F1F8F900F9F9
      F400FEFFFB00FBFCF900FEFFF900FBFEF800FBFCF900F8FCFB00607B88005877
      8900608595004E7B8F004E7A9100698AA5006489A1006389A2005C89A1005F8A
      A200618AA300678AA300718CA2006B8FA100728F9D00ABBAC500FFFBFE00FCFC
      FC00FCFEFE00000000000000000000000000000000000000000000000000C9C9
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
      0000FCFCFC00FEFEFE00EEEEEE00EBEBEB00E5E5E500D5D5D500BDBDBD004747
      47009C9C9C00BBBBBB00BABABA00B2B2B200B3B3B30016161600181818001A1A
      1A001A1A1A001A1A1A001A1A1A001A1A1A001A1A1A0017191900171919001919
      19001A1A1A001B1919001B18190015171600161F1F00BDD2DB00718D99005F88
      980064899C0063899D0061899D00678A9C006B869200E4F2F900FCFFFE00FEFE
      F700FFFFF800FFFFF800FFFFF900FFFFF800FFFEF800FFFFFE006F8491005878
      8A00537F91004A78910056849E005F89A80067879B0064889B0061899E00678D
      A100668A9E0067879C00748D9F00678C9B0078919D00B0BDC900FFFCFF00F9F9
      F900FCFFFE00000000000000000000000000000000000000000000000000CBCB
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
      0000FEFEFE00FCFCFC00F8F8F800E5E5E500EAEAEA00DDDDDD00C6C6C6008686
      8600BCBCBC00C1C1C100C1C1C100B4B4B400B6B6B6001C1C1C00191919001E1E
      1E00191919001A1A1A001A1A1A001A1A1A001A1A1A00181B1A0017191900191A
      1A001A1A1A001B1919001B181900161615000C1212008C9CA50064899600698C
      9D006D899B0064869700728E9F00728D9C006D859100E4F5F900FCFFFE00FFFF
      F800FEFEFE00FEFEFE00FEFEFC00FEFEFC00FEFCFC00FEFFFF00EDF7FC00E0F4
      FB00899BA600547B8B0060849800788FAA007289990069889700678998006F8C
      9B00718B9B00728999007B8D9B00728E9B00728E9700B3C0CA00FEFBFF00FBF9
      FC00F9FEFC00000000000000000000000000000000000000000000000000CDCD
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
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE0000000000FBFBFB0000000000E5E5E500EDEDED00DDDDDD00D3D3D300C2C2
      C200C3C3C300C1C1C100C7C7C700BFBFBF00B6B6B60032323200171717001C1C
      1C001B1B1B001C1C1C001A1A1A001A1A1A001A1A1A00191A1A0018191900191A
      1A001819190019181800191616001C1C1B000F1514005D7C84006B8A95005F82
      910064818F008998A500AEC6D500CBDEEE00D2E4F200EEFEFE00F4FBFB00F7FB
      F800FBFEFF00FBFEFF00FBFEFF00FBFEFF00F9FCFE00FEFFFF00FEFEF500FCFF
      F900F1FFFE00EBFEFE00D7E4F400B7C5D300C5D3E100D0E0F100D5EBFB00DBF4
      FB00DFF7FB00E5F8FC00E4F8FE00E1FCFF00E1FBFF00F2FCFE00FCF9FC00FBFE
      FF00FBFFFF00000000000000000000000000000000000000000000000000CDCD
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
      0000000000000000000000000000FBFBFB00EBEBEB00E1E1E100D9D9D900C7C7
      C700CDCDCD00CBCBCB00CACACA00C5C5C500C1C1C100848484001C1C1C001B1B
      1B001A1A1A001B1B1B00191919001C1C1C001A1A1A001A1A1A00181818001A1A
      1A0019191900131313001A1A1A00181C1D00191F200000000000F4FEFF00F4FE
      FF00F1FCFE00F4FCFC00F7FEFC00F7FEFC00F7FEFC00F9FFFF00F8FFFF00F9FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000F8F8F800EDEDED00E7E7E700D6D6
      D600D5D5D500D2D2D200D2D2D200D0D0D000CFCFCF00C4C4C4001D1D1D001919
      19001B1B1B001B1B1B00191919001B1B1B001F1F1F0018181800151515001919
      190015151500121212001919190018191A001C1E1F00DEE1E300F8FBFC00F9FE
      FF00F9FFFF00F8FFFE00F8FFFE00F8FFFE00F8FFFE00F9FFFF00F9FFFF00F9FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00FCFCFC00FEFEFE00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000FEFEFE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00F0F0
      F000EBEBEB00E5E5E500E8E8E800E8E8E800EAEAEA00E4E4E400151515001919
      19001C1C1C0017171700121212001C1C1C00565656008F8F8F00C3C3C300D3D3
      D300DEDEDE00E1E1E1006D6D6D001C1B1B001A19190084848400FBF9F800FEFC
      FC00FFFEFE00FCFEFE00FCFFFF00FCFFFF00FCFFFF00FCFFFF00FCFFFF00FCFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00F8F8F800F9F9F900F7F7F700F4F4F400DEDEDE00F1F1F1000F0F0F002424
      24001B1B1B0037373700DFDFDF00DBDBDB00D9D9D900D2D2D200D3D3D300D6D6
      D600D3D3D300DEDEDE00979797001E1C1C0023212100CAC9C700FBF8F800FFFC
      FC000000000000000000FCFFFF00FCFFFF00FCFFFF00FCFFFF00FCFFFF00FCFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000FEFEFE000000
      000000000000F9F9F900EEEEEE00D2D2D2006F6F6F0087878700151515001E1E
      1E001919190024242400DBDBDB00DADADA00DDDDDD00D6D6D600E0E0E000DFDF
      DF00E1E1E100F7F7F700F0F0F000FEFEFB00E7EAE700F9FCF900FBFCF900FEFF
      FC00FCFFFE00FFFFFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000FEFEFE00FCFC
      FC0000000000F9F9F90000000000A6A6A60096969600949494001F1F1F001E1E
      1E001C1C1C0028282800DCDCDC00CDCDCD00C0C0C000A6A6A600BCBCBC00F9F9
      F9000000000000000000FCFCFC00F5F9F700F7FEF800F7FFF900F8FEF900F9FF
      FB00F8FFF800FCFFFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00FBFBFB00AEAEAE00ACACAC00A7A7A700A8A8A8009A9A
      9A00A3A3A300A5A5A500A6A6A600A7A7A700AAAAAA00A8A8A800A8A8A800FEFE
      FE00FCFCFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFBFB00B4B4B400BABABA00B8B8B800BCBCBC00AFAF
      AF00B0B0B000B0B0B000B3B3B300B7B7B700BBBBBB00B6B6B600B8B8B800FEFE
      FE00FCFCFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F900C1C1C100C2C2C200C5C5C500C0C0C000BFBF
      BF00BBBBBB00C1C1C100C0C0C000C1C1C100C3C3C300B8B8B800BFBFBF00F4F4
      F400FCFCFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F8F8F800C6C6C600C3C3C300C9C9C900CCCCCC00C6C6
      C600C4C4C400C4C4C400C5C5C500C5C5C500C5C5C500C4C4C400C9C9C900F2F2
      F200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F8F8F800C9C9C900C6C6C600CDCDCD00CFCFCF00CACA
      CA00C7C7C700C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900CBCBCB00F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00F7F7F700CBCBCB00CCCCCC00D1D1D100D3D3D300CFCF
      CF00CDCDCD00CDCDCD00CECECE00CECECE00CECECE00CECECE00CDCDCD00F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000F8F8F800CACACA00CBCBCB00D0D0D000D3D3D300CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00D0D0D000CFCFCF00EDED
      ED00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000F9F9F900CCCCCC00CDCDCD00D2D2D200D5D5D500D0D0
      D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D2D2D200CFCFCF00F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000FEFEFE00FBFBFB00CDCDCD00CFCFCF00D3D3D300D5D5D500D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D2D2D200D0D0D000F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000FEFEFE00F4F4F400CDCDCD00D5D5D500D2D2D200D3D3D300D3D3
      D300D2D2D200D3D3D300D3D3D300D2D2D200D1D1D100D2D2D200D0D0D000EEEE
      EE00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000F9F9F900FEFEFE00D5D5D500D0D0D000D6D6D600D6D6D600D8D8
      D800D7D7D700D8D8D800D8D8D800D8D8D800D7D7D700D6D6D600D0D0D000F5F5
      F500FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000FCFCFC00FEFEFE00EEEEEE00D9D9D900D6D6D600D6D6D600D9D9
      D900D8D8D800D9D9D900D8D8D800D9D9D900DADADA00D2D2D200DFDFDF00FEFE
      FE00FEFEFE000000000000000000000000000000000000000000000000000000
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
      000000000000FEFEFE00FCFCFC00FCFCFC00F1F1F100DFDFDF00DEDEDE00E1E1
      E100E0E0E000E0E0E000DFDFDF00E3E3E300E7E7E700EDEDED00F8F8F800FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000FEFEFE00FCFCFC00FCFCFC00F8F8F800F2F2F200F0F0
      F000F4F4F400F5F5F500F8F8F800FBFBFB00FEFEFE0000000000FEFEFE00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000FEFEFE0000000000FCFCFC00FEFE
      FE000000000000000000FEFEFE00FCFCFC00FCFCFC00FBFBFB00FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF5F5F5FFF1F1
      F1FFEEEEEEFFE8E8E8FFE4E4E4FFDFDFDFFFDADADAFFD6D6D6FFD1D1D1FFCFCF
      CFFFD1D1D1FFE1E1E1FFF5F5F5FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFFEFEFEFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      4A00B4785400BD7C5E00C7806400CC836700F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1F1FFEDED
      EDFFE8E8E8FFE4E4E4FFE0E0E0FFDDDDDDFFD9D9D9FFD4D4D4FFCFCFCFFFCACA
      CAFFC7C7C7FFC3C3C3FFC0C0C0FFBFBFBFFFBCBCBCFFBCBCBCFFBABABAFFB9B9
      B9FFBABABAFFC1C1C1FFD3D3D3FFE7E7E7FFF2F2F2FFF5F5F5FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF2F2F2FFEFEFEFFFEBEBEBFFE6E6E6FFE0E0E0FFD1D1D1FFBABA
      BAFFA9A9A9FF9F9F9FFF9C9C9CFF9A9A9AFF9A9A9AFF9A9A9AFFA1A1A1FFB3B3
      B3FFCACACAFFD9D9D9FFE3E3E3FFE8E8E8FFEDEDEDFFF1F1F1FFF2F2F2FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      000000590000005600000058000000590000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFDADA
      DAFFC9C9C9FFC0C0C0FFBDBDBDFFBABABAFFB9B9B9FFB6B6B6FFB6B6B6FFB5B5
      B5FFB5B5B5FFB5B5B5FFB3B3B3FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5
      B5FFB5B5B5FFB5B5B5FFB9B9B9FFC7C7C7FFDDDDDDFFEEEEEEFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFE6E6E6FFD9D9D9FFCACACAFFB7B7B7FF999999FF7B7B7BFF7777
      77FF898989FF959595FF9E9E9EFF9F9F9FFF999999FF8C8C8CFF7C7C7CFF6565
      65FF666666FF8A8A8AFFAEAEAEFFC1C1C1FFD0D0D0FFDFDFDFFFEAEAEAFFF1F1
      F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      000000580000005900000059000000590000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFDDDDDDFFCACACAFFC1C1C1FFBFBFBFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC3C3C3FFD1D1D1FFE7E7E7FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFE8E8E8FFCFCFCFFFAFAFAFFF969696FF9C9C9CFFB7B6B7FFD7D7
      D9FFEAE8EAFFEDE8EDFFE7E1E7FFE3DDE4FFE3DDE4FFE4E0E4FFE0DFE0FFD0CF
      D0FFAAAAAAFF8B8B8BFF898989FF9F9F9FFFBCBCBCFFD9D9D9FFEFEFEFFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      000000590000005900000059000000590000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFD7D7D7FFC6C6C6FFBCBCBCFFB7B7B7FFB7B7B7FFB7B7B7FFB7B7
      B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7
      B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB9B9B9FFC1C1C1FFD3D3D3FFE6E6
      E6FFF0F0F0FFF0F0F0FFF0F0F0FFF2F2F2FFF0F0F0FFF0F0F0FFF0F0F0FFF1F2
      F1FFEAEAEAFFD9D9D9FFB7B6B7FFA1A1A1FFB3B3B2FFD6D6D7FFE1DDE3FFD4CF
      D4FFB3B3B3FF919F91FF819580FF788E77FF829481FF919E91FFB3B2B3FFD4CF
      D4FFE4E0E4FFD4D4D4FFADAEADFF989999FFA9A9A9FFC6C7C6FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      000000580000005900000059000000590000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFE6E6E6FFD1D1D1FFC0C0C0FFB7B7B7FFB7B7B7FFB7B7
      B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7
      B7FFB7B7B7FFB7B7B7FFB7B7B7FFB9B9B9FFB9B9B9FFB9B9B9FFC0C0C0FFD1D1
      D1FFE7E7E7FFF0F0F0FFF0F0F0FFF0F0F0FFF5F5F5FFF1F1F1FFEAEAEAFFDCDD
      DDFFC9CACAFFA9A9A9FFA3A3A3FFBCBCBCFFD9D7DAFFD0CCD0FF859484FF356B
      2EFF14620CFF0C6903FF0B7402FF0B7701FF0C7302FF0C6904FF186410FF406F
      39FF8F9B8EFFD4D0D6FFDFDDDFFFCAC9C9FFBDBDBDFFD7D9D9FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      270000791500006300000059000000580000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF7F7F7FFE4E4E4FFD1D1D1FFC4C4C4FFC0C0
      C0FFC0C0C0FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC3C3C3FFC3C3C3FFC4C4
      C4FFC4C4C4FFC4C4C4FFC3C3C3FFC3C3C3FFC0C0C0FFBCBCBCFFB7B7B7FFB3B3
      B5FFB7B7B7FFBCBDBFFFB9BABCFFA9AAABFF959699FF868787FF777777FF6867
      66FF555451FF777575FFB9B7B9FFD9D4D9FFB3B6B3FF41723AFF0E6603FF0D81
      00FF169B06FF1CAD0CFF1EB510FF1FB611FF1FB510FF1CAD0CFF169B06FF0C7F
      00FF116507FF537A4DFFC6C4C6FFE7E3E6FFCDCDCDFFE1E1E3FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      E700C5EAC400007A0E000058000000580000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFEBEBEBFFE0E0E0FFD0D0D0FFC0C0
      C0FFBAB9BAFFB9B7B9FFB9B7B7FFB7B7B7FFB6B6B6FFB3B3B3FFAFAFAFFFAAAA
      ABFFA3A3A3FF999A9AFF8E8F8FFF828384FF777879FF6B6B6BFF606060FF5656
      56FF4F4D4DFF514D4AFF544E48FF564E47FF564C42FF564940FF5A4A40FF5B48
      3BFF73665EFFA3A0A0FFBDB9C0FF98A096FF25671DFF107402FF1F960BFF24A8
      11FF27A918FF36A826FF46AB3AFF4EAD43FF43AB38FF32AD23FF2CAF1BFF28A9
      16FF1D950BFF117204FF316D27FFA8AEA8FFCCC7CCFFB0B0B0FFDFDFDFFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      3C00EAFBFF0000762400005A000000580000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFFFFEFEFFFBFBFBFFF8F7F8FFF7F1F5FFEFE8EEFFDFD4DDFFC3BA
      C1FFA8A4A8FF999699FF908D90FF848384FF777777FF676768FF5A5A5AFF4D4D
      4DFF454242FF3E3A38FF3A3431FF3A322FFF3A312AFF41362CFF45362CFF4D3A
      2FFF503D2FFF564132FF5E4637FF614938FF654D39FF664E3DFF684F3EFF6F59
      4AFF918E8CFFAFADB0FF96A196FF165E0CFF056F00FF159400FF1A9A04FF3A9B
      25FF77A16DFF98A391FFA3A39EFFA6A4A1FFA1A39BFF94A08EFF54A446FF21B5
      10FF1EA809FF159301FF046C00FF1E6216FFAFB6AFFFB7B5B7FFAFAEAEFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0E00D5F7ED00037E1C00005A000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFEEE4EEFFE0D4DFFFCAC0CAFFB0AEAFFF99A199FF829684FF6D9071FF5189
      59FF388942FF278032FF355037FF46373AFF463A38FF463A35FF4D3E36FF5342
      38FF584639FF5E493EFF614A40FF684F43FF6B5345FF6C5547FF6F5949FF725C
      4EFF776153FF7A6659FF7F6B5FFF837265FF87776BFF8D7C71FF9A8679FF998F
      8AFF9C9C9FFFB0AFB2FF327128FF076C00FF1A9102FF209309FF6FA55EFFB9B6
      B6FFC4B5C1FFBCAFB7FFBAADB5FFB7A9B2FFBFA9B9FFA0A89CFF4FB945FF31CC
      1DFF2DB916FF25A50CFF1B9104FF086800FF4E7F46FFC3C0C4FF9F9E9FFFD3D3
      D3FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0900BDF4D80006831500005A000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFFCF4FBFFF7EBF5FFE0D1DFFFBDB5BDFFA1A8A3FF8D9E8EFF7C9980FF6795
      6CFF549C5BFF429E4AFF35A33EFF27A132FF21A12AFF19A323FF13A61EFF11A4
      1DFF10A01CFF0E9A1BFF138A1DFF3F6B32FF725B4FFF72584DFF6F5A4DFF735E
      53FF786456FF7B685EFF806E64FF857469FF8A796EFF8C7C73FF8F8177FF9383
      7AFF94847EFF94857FFF958780FF998981FF9F8F86FFAD9A90FFAE9E93FF8C8A
      8AFFA09CA1FF698B65FF095F00FF188402FF1F8509FF83A377FFC7BAC7FFB9B0
      B6FFB9B0B6FFB6ADB3FFA4A6A1FFA0A49EFF85A584FF42BF3FFF35D429FF37C7
      22FF34B71AFF27A40EFF1F9006FF188303FF0E5F01FF83997FFFA4A0A4FF9A99
      99FFE8E8E8FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF1FB
      F2FFADE1B6FF80CD8AFF4CAD58FF29A038FF20AA2AFF1AB723FF14C91FFF12CF
      1DFF11D31DFF11D11CFF10CF1AFF0EC91AFF0EC11AFF0CB918FF0BAF18FF0AA8
      16FF089E13FF069513FF028E10FF02820DFF2C7728FF958B79FFA48A83FF9986
      7FFF98897FFF99897FFF96897FFF968A7FFF998980FF9A8A81FF9A8A80FF9987
      7EFF96857AFF958277FF988375FF9C8474FFA68673FFB28C75FF9C8A7EFF8786
      8BFFA0A6A0FF18640FFF016500FF0B7900FF629949FFDDD1DDFFC9C4C9FFCCC3
      CAFFA0B59CFF60B25AFF45C743FF43D346FF37DA39FF2FEA29FF2EDA22FF2ACC
      18FF22B70AFF429A24FF428C25FF0E7E00FF006100FF2C7222FFAFAFAFFF8987
      8AFFDADADAFFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFADDD
      B5FF089618FF0BA91AFF0EBF1DFF14D122FF1ADA26FF1DDF29FF1EDD2AFF1ED9
      2AFF1DD429FF1DD029FF1DCA28FF1DC426FF1ABD25FF18B624FF16AF22FF14A8
      1FFF13A01FFF11981DFF0E901BFF0B8918FF068013FF318A39FFB3B29BFFD6B5
      AEFFBCA59BFFAF998EFFA48E81FF998474FF8E7968FF846C5CFF7C6251FF785C
      48FF795A43FF7E5C45FF856249FF916F58FF9E7A61FF956F54FF91857EFF9591
      99FF879F84FF095A00FF117900FF278011FFC7CFC1FFDAD3D9FFD9D0D9FF9CB6
      93FF3BB029FF32D726FF3BE834FF3DEB39FF3DE838FF3DDD31FF3AD327FF35CA
      1BFF30A418FF98A48FFFABA9A5FF277E11FF0E7700FF126106FF9CAB9BFF908C
      90FFB7B7B7FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FF9FD4
      A8FF059B15FF0DB01DFF13BD21FF18C724FF1ACF25FF1BD126FF1CD026FF1CCD
      25FF1ACA25FF1BC625FF1AC024FF18BA22FF17B522FF15AD20FF13A61FFF119F
      1DFF0E981BFF0D8F1AFF0C8918FF0A8216FF087B15FF006E0DFF11721BFF7180
      4EFFAA7B65FF997560FF967760FF967B67FF967F6EFF968377FF98897FFF9F93
      8CFFB0A8A1FFC4BDB7FFD7D0CCFFDFDDDCFFE1DCD6FFA99385FF8F8D8DFF9996
      9BFF568550FF015100FF096800FF689853FFE6DDE8FFD7D0D7FFAABCA3FF2D9E
      16FF29C315FF35C921FF36CD25FF37D028FF36CF26FF35C722FF32C31DFF26AA
      11FF6F9960FFB3A6B0FFB3A6B0FF809473FF116900FF045600FF6F936CFF9591
      96FF999999FFEFEFEFFFEEEEEEFFEEEEEEFF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFA9E3
      B5FF00A30FFF08BA18FF0DC71DFF11D41FFF14DC21FF15DD21FF15DA21FF14D7
      1FFF13D31EFF12CD1DFF10C61AFF0EBF1AFF0CB718FF0BAE17FF0BA817FF09A1
      16FF099B16FF079414FF03850EFF017E0DFF00750CFF006D0AFF006205FF004D
      00FF568348FFF2F1EAFFFBF1F1FFEFEFEFFFEFEFF1FFEAEBEDFFE4E6E7FFE4E6
      E7FFEAEDEDFFEEF1F2FFEDEEEFFFEBEEF1FFEDE6E1FFA48B7BFF878383FFA4A4
      A5FF2F7426FF014A00FF0F5C00FFA1BF98FFF9F4FBFFF4EBF5FF77A465FF2294
      0BFF2CB313FF28C413FF29CA17FF2CCD18FF2CCC17FF2AC714FF21BA09FF439C
      27FFB6B2B2FFB9AFB3FFB3ABAEFFBDB0B9FF437C2EFF004000FF548B4DFFA6A3
      A8FF939193FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFA9DD
      B2FF0CA91DFF15BF24FF1ACA29FF1ED42DFF1FD92DFF20D72DFF21D32EFF22D3
      30FF27D337FF2ED43EFF36D345FF39CD49FF39CD4AFF38CD4AFF32C645FF29BF
      3BFF22B731FF1CAF28FF149C20FF0C8319FF0B7918FF097416FF086D15FF0465
      11FF00560DFF4A8E5BFFE3EEEAFFF9F2F9FFE7E6E7FFE8E7E8FFE8E6E7FFE8E6
      E8FFEAE7EAFFEBE8EAFFEEEAEDFFF1EDF1FFF5E8E7FFAE9385FF8A8685FFA5A9
      A6FF36712DFFA0BD98FFD7DDD3FFE3E6E3FFE7E6E7FFE3E1E3FFC9CFC3FFCCD3
      C7FF65AA4DFF2AAF11FF35BA1AFF36BC1AFF36BA1AFF31B916FF359E19FF9EAD
      95FFC4B9C4FFB6B2B2FFB3AEAFFFB9AFB5FFABABA5FF15550BFF43823DFFA9A6
      A9FF908F90FFEFEFEFFFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FF9FD9
      A8FF05A614FF11B91FFF15C021FF18C424FF1FC72CFF27CC38FF37D447FF42DA
      54FF4CDA5EFF49D65CFF3DCA4EFF2DBF3FFF1FB02DFF16A621FF0E9F1AFF0999
      15FF069612FF069511FF0B9F16FF0C9B18FF057A11FF01660DFF01620DFF005B
      0CFF005409FF003F00FF0D561AFFA8C6AFFFFCF8FCFFF7F4F5FFF4F2F2FFE8EB
      EAFFDFE3E0FFD7DDD9FFC1D0C6FFAAC1B3FF99AF98FF677153FF7E7C7BFFA8A6
      A8FF1E5F18FF487E3DFFF0F0F0FFEEEDEEFFE6E6E6FFE1E1E3FFF2EAF4FFBACA
      B2FF278C0EFF23A306FF26A50BFF26A60CFF26A60BFF1F9B04FF6EA056FFD0C4
      CFFFB7B5B3FFB5B2B2FFB0AEAEFFB2AEAFFFC6B9C1FF68845EFF3B7436FFA1A1
      A3FF8C8B8CFFEDEDEDFFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFC9EF
      CFFF12A51FFF01A00DFF059F11FF089E13FF099E16FF0A9C17FF0BA117FF0AA3
      16FF069E11FF03990EFF00980BFF00980AFF00990BFF019A0CFF029B0CFF039C
      0EFF039E0EFF049E0EFF039C0EFF05A110FF09A415FF048010FF005B06FF0055
      06FF004F05FF004804FF003700FF00450BFF4C895BFF427C50FF2C6B3BFF1A59
      25FF0C4719FF05380FFF002A07FF002201FF001B00FF001F00FF6C776FFFB5AF
      B5FF2A7325FF002A00FFA3BF9BFFF0F0F0FFFCFCFEFFFCFBFEFFFBF9F9FF4E95
      2CFF1C9300FF25A006FF27A308FF27A408FF27A408FF259F05FF3B9819FF428A
      22FF8FA681FFD6CFD6FFD3CAD1FF839A7AFF1F5F12FF084603FF588951FFABA8
      ABFF999999FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF7F4
      F7FFB2D0AFFF2E8D2EFF0E8D18FF0B8F16FF0C9117FF0B9117FF0B9117FF0E99
      18FF0FA11AFF10A31AFF10A11AFF11A11BFF11A31AFF11A31AFF11A31AFF11A3
      1AFF11A31AFF11A31AFF11A31AFF10A11AFF11A41BFF19AE24FF169022FF0660
      13FF03530EFF045411FF044E0FFF00430AFF003503FF002F02FF002A02FF0029
      02FF002803FF002804FF002704FF002905FF002A06FF002907FF5C7364FFB0A9
      AFFF628D5EFF014300FF2A6D1DFFE3E8E1FFF5F4F5FFF9F7FBFF94B685FF2886
      0BFF379A13FF3A9B16FF3A9E16FF3B9F17FF3B9F16FF3A9E16FF2D980CFF3185
      14FFB3BFAAFFD3CCD1FFD9D0D7FF5B8A49FF095B00FF004500FF7C9B7AFF9B99
      9CFFA6A6A6FFF4F4F4FFF2F2F2FFF2F2F2FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF7F7
      F8FFF2DDE0FFAA917FFF3DA93AFF069E12FF038F0EFF05930FFF059310FF0591
      10FF059410FF079C11FF09A313FF08A312FF08A111FF08A112FF08A112FF08A1
      12FF08A312FF08A112FF08A112FF08A112FF08A111FF07A111FF10B01BFF19A8
      25FF01600DFF003901FF003D04FF003803FF003202FF002E01FF002900FF0025
      00FF002300FF002100FF002000FF002000FF002000FF001A00FF295335FF9E96
      9EFF8BA48AFF0C5605FF0B5B00FF5E8D4DFFF0F0F0FFD1DDCAFF2A7B11FF298C
      0CFF319011FF359311FF359611FF349611FF349610FF298E09FF2D8210FF9FB7
      91FFE6E0E7FFDDD6DCFFC1C9BDFF266F16FF126704FF135C0CFF9CAF9CFF8A86
      8AFFC3C3C3FFF7F7F7FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF5E6E3FFA59B7CFF25D431FF17DD24FF10B91CFF089E13FF079A13FF089E
      13FF089C13FF089C13FF09A113FF0BAD16FF0BAE16FF0CAD16FF0CAD16FF0BAD
      16FF0BAE16FF0BAD16FF0BAD16FF0CAD16FF0BAD16FF0BAE16FF09AB14FF11B7
      1CFF25C437FF0E7A1DFF003500FF003201FF003202FF002E00FF002800FF0025
      00FF002200FF001F00FF001E00FF001D00FF001D00FF001800FF062D10FF8D8C
      8EFFADB2ADFF2A7125FF176D0CFF206E13FFA6C39CFF6D9E56FF2A8511FF3B93
      1AFF3E961BFF3B9619FF3A9119FF3D911AFF42931EFF659F46FFBCD4B0FFF9F5
      FBFFEDEAEDFFFBF5FCFF80A472FF1E710DFF17690CFF3D7A37FFB3B7B5FF9494
      94FFF2F2F2FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFE6D4D3FF9F9A7BFF27CA32FF1FD72AFF22D62FFF1DC429FF16AB21FF139E
      1DFF139E1DFF149F1EFF139F1DFF17AB20FF18B021FF18AF21FF18AF21FF18AF
      21FF18AF20FF18AF21FF18AF20FF18AF21FF18AF21FF18AF21FF18AF21FF16AD
      1EFF19B222FF38D34DFF2D9C3FFF04460FFF002D04FF002A03FF002704FF0028
      05FF002906FF002C08FF013209FF033A0AFF05410BFF03470AFF004D09FF6284
      68FFA9A1A9FF6D8B6DFF256E1FFF3A832AFF3A7E27FF42862AFF4A8F30FF4D93
      31FF48912AFF56913BFFA8C19CFFBCCCB5FFC9D4C3FFEBEAEBFFF1EDF4FFE4E3
      E6FFF1EDF2FFABC0A5FF40802DFF3A8529FF256D1FFF809680FFA39FA4FFAFAF
      AFFFF0F0F0FFF0F0F0FFF0F0F0FFEEEEEEFF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFEEDDDCFF9F9877FF1DCF26FF12D91FFF16D420FF16D421FF16CF20FF11B9
      1AFF0BA416FF0A9E15FF0BA016FF0FAE1AFF11B51AFF11B51AFF11B31AFF11B3
      1AFF11B31AFF11B31AFF11B31AFF11B31AFF11B21AFF11B21AFF11B21AFF10B0
      19FF11BC1FFF11C726FF28E046FF38C04EFF1B7F28FF258C38FF319B45FF2DA3
      42FF28A83EFF23AD36FF1BAA2AFF14A922FF0EAA1DFF0CAE1DFF31BA45FF96BF
      9BFF999399FF9A9E9AFF2D642CFF348129FF428A34FF458C32FF498F36FF4A90
      32FF62984DFFD0DDC9FFF0F0F0FFF0F0F0FFFFFEFFFFFBF8FBFFFCF9FEFFFCFB
      FCFFAFC9A8FF488638FF3F8A2FFF2E7B25FF3B6939FFAFAEB0FFA19FA1FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF5E4E4FFA9A180FF25D730FF19E126FF1CDA27FF1AD724FF19D123FF19CD
      23FF18C123FF17AF22FF15A91FFF17AB22FF18B023FF1AB524FF1BB925FF1DBD
      26FF1DBF27FF1DC027FF1DC027FF1EBF26FF1DBF26FF1DBF26FF1DBD25FF1DC6
      2DFF1FD33AFF1ED13AFF1ACD35FF2ADD48FF4FF469FF4CF167FF40E85EFF31DC
      4FFF26D345FF1FCD3DFF1ACC37FF13C72FFF24C640FF71BC6FFFF2FFF8FFF0F0
      F0FFBDC0C1FFAFADB0FF808D81FF286425FF599B50FF619E56FF609C51FF619A
      50FFBDD4B6FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFDDE7DAFF94B6
      8CFF5B944EFF5F9F51FF53984AFF2A6027FF9BA39BFFBCB9BCFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFE6D6D4FFA19E7FFF1DBC26FF15C122FF21C934FF2ACA3DFF39D04AFF46D6
      58FF53DC65FF5EDC6DFF40C44FFF21A52FFF21A530FF21A530FF21A62FFF22A8
      30FF23A931FF24AD31FF26B034FF29B535FF2AB736FF29B937FF29C13FFF29CA
      46FF27CA46FF27C945FF28C946FF25C943FF22C03FFF1FBC3AFF1DB739FF1FB9
      3BFF1FBA3BFF1CBD3AFF24B33DFF66B66CFFB6BA9BFFB98E7FFFCCA99CFFBCA0
      8EFFAE917FFF9B8F86FFB3B2B6FF738174FF30602FFF5F985BFF77A96FFF72A1
      69FF779F6EFF87A980FF95B390FF9BB796FF94B38FFF87AA82FF719B67FF6B9B
      60FF75AA6FFF568F53FF325C31FF8B938CFFC4C1C4FFC6C6C6FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF1E4E0FFAE9B81FF6CB360FF4CA941FF2F9825FF2EAE35FF30BA41FF2EC1
      43FF28BF41FF26B73DFF25B338FF20AD30FF21AB30FF21AB30FF21AB2FFF21AB
      30FF21AB30FF21AA30FF21AA2FFF21AB2FFF21B232FF22C33BFF22CD43FF23CF
      45FF25D147FF26D348FF25D146FF21CA41FF1EC33EFF1EC33EFF1EC43EFF1AC1
      3AFF1BC03BFF42B34EFF8A9460FFBC8F7AFFBD8E7BFFAA7F61FFBF9A84FFC0A0
      8CFFC7AA96FFD3C3B7FFC1C1C1FFC7C4C7FF808982FF295129FF437B40FF72A8
      6DFF7FB378FF7BAF74FF78AA6EFF77A96EFF78AA6FFF7CAF74FF7EB378FF6DA4
      68FF3D743AFF305330FF949995FFDCD7DAFFDADADAFFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFEDE4DDFFBC9B8AFFEAC6BCFFDDAA8EFF74320DFF693E0FFF5A5416FF4D6E
      20FF468A2FFF40A340FF3BB34AFF3ABC50FF37B74CFF31B042FF34B245FF37B3
      48FF38B349FF38B34AFF38B74AFF36C04EFF34C754FF32C955FF31C754FF32C7
      54FF34C954FF35CC56FF34CA55FF31C753FF32C954FF2EC950FF27C34AFF41C7
      61FF99E1A8FFE8E7DFFFF8E7E7FFF5EFEEFFEFEAE3FFC1AB9BFFFBFBFBFFF5F8
      FBFFF2F5F8FFF2F4F5FFE8E8E8FFD0D0D0FFD9D7DAFFB5B5B5FF5F7160FF395F
      3AFF437442FF5A8C59FF6D9E69FF6FA06CFF6C9C69FF598A56FF427141FF3A5E
      3AFF6D7A6EFFC7C7CCFFE3E3E4FFE4E3E3FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFE1D7D1FFB39685FFD0B7A9FFD6A58BFFA65E35FFAE643DFFB36B45FFB76C
      47FFB5724CFFAB8256FFA58B5AFF90864FFF80965CFF79BC7EFF5FB66FFF47B2
      5EFF37B654FF31BA51FF30BF55FF31C359FF35C35AFF37C35CFF39C35CFF38C3
      5BFF38C35BFF37C15BFF39C35CFF37C35BFF2EBF54FF3FBF60FF8AD39AFFD9E6
      DCFFF1E7EFFFE7E4E7FFE1E4E6FFE1E4E6FFDFDAD7FFB7A393FFE4E3E0FFE1E0
      E1FFE0E0E0FFDFDFDFFFDFDFDFFFE0E0E0FFD6D4D4FFD4D3D4FFD3D0D3FFB6B5
      B7FF8E958EFF6F8071FF617362FF657466FF617362FF718072FF8F9590FFBDBD
      C1FFDAD9DCFFC7B3A6FFBDA48FFFEFEFEEFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF2E8E1FFBF9B8AFFDCC1B0FFE6B093FFB06838FFAA5F2FFFA35827FF9B4D
      1FFF934118FF8C3611FF862C0CFF781D01FFAE6F4AFFF0F0F0FFF4FCF8FFD3F5
      DDFFB0EEC3FF8FE1A4FF6FDA8BFF55D378FF42CC69FF37CC60FF31CC5CFF34CD
      60FF36D062FF37CF61FF34CD5EFF38CA61FF72DA8DFFD0F2D9FFFFFBFFFFFBF5
      F9FFF5F5F5FFF5F5F5FFF4F4F4FFF4F5F7FFF1EBE7FFC3AA98FFF8F5F2FFF1F2
      F4FFF2F2F2FFF2F1F1FFEFEFEFFFEFEFEFFFF1F1F1FFEEEEEEFFE7E7E7FFE3E1
      E3FFE3E1E3FFDCD9DCFFD3CFD1FFD3CDD0FFD0CCCFFFD6D0D1FFDDDADCFFD3C3
      B5FFB79174FFAE7A50FFC19678FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFEBE3DCFFC0A08EFFDAC3B5FFDAA98DFF833612FF83320EFF843210FF8232
      10FF823210FF823210FF823210FF7A2709FFAD7956FFF9F8F8FFF8F7FBFFFEF7
      FBFFFFF8FFFFFFF8FEFFF7F5F7FFE8F2EBFFCDEBD6FFABE3BDFF8DDAA3FF71CD
      89FF5EC778FF4FC974FF62CD81FFADE3BDFFF4F4F4FFF9F1F7FFEFEEEEFFEBEB
      EDFFEBEBEBFFEDEDEDFFEDEDEDFFEBEDEDFFE8E4DFFFC0AB9BFFEFEDEBFFEAEA
      EAFFE8EAEAFFEAEAEAFFE8EAEAFFE8E8E8FFE7E7E8FFE7E8EAFFEAEAEBFFEAEB
      EDFFE7E8EAFFE4E7EAFFE6E7E7FFB59A8BFFCFB9ABFFD9C6BAFFE8DAD0FFCCAA
      91FFAA794FFFB38059FFC39E82FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFE4DCD4FFB99B89FFD6BDADFFD6A589FF863813FF863510FF853510FF8434
      10FF833110FF82310EFF812F0DFF772507FFA87450FFF2F1EFFFEDEEEFFFEDED
      EDFFEDEDEDFFEDEDEEFFEEEDEEFFEFEDEFFFF4EEF2FFF8EFF5FFFBF4FBFFE3D9
      D0FFC9BAA4FFD4EBE0FFE1EAE6FFF5EDF2FFEBE8EAFFE7E7E7FFE7E8E8FFE7E8
      EAFFE7E8EAFFE6E7E8FFE7E8EAFFE7EBEEFFE6E3E0FFBFA99BFFEDEEEFFFEAED
      EFFFEAEDEEFFEAEDEEFFEBEDEDFFEAEAE8FFE7E6E4FFE3E0DFFFE0DCD9FFDDD6
      D0FFDACFC6FFD4C7BCFFD4BFB0FFA57B5EFFD0AF9CFFD7C0B2FFE3D3CAFFC9A8
      8FFFA8774EFFAB7A51FFBC967AFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF5EDE4FFC6A490FFE7CCB9FFE7AF8FFF87310DFF872F0AFF862F0BFF852D
      0AFF842C09FF822A08FF822908FF771F00FFAF784FFFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF7EA
      E3FFE6CAB7FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFCFFFFFFFBFBFBFFFBF7
      F4FFF8F2EDFFF2EDE6FFEFE6DCFFEEDFD4FFE7D0BFFFC1A087FFE0C6B3FFDABC
      AAFFD4B39FFFCCAA94FFC6A38BFFC49E85FFC39981FFBD947BFFB79078FFB790
      78FFB98F79FFB7917AFFB7917AFFA97A59FFE0BDABFFE4CCBDFFF4E4DAFFD6B2
      96FFAB784DFFB07B50FFC49B7EFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFE8DFD9FFC3A494FFDCC4B5FFDDAD90FF8E411AFF8C3D16FF8B3D17FF893A
      16FF863713FF843612FF833211FF792709FFAE7B5AFFF8FBFEFFF7F9FCFFF5F5
      F5FFF4F2EFFFF2EEEAFFF2EAE7FFEEE6DFFFEAE1D7FFE6DCD0FFE4D7CDFFDDC1
      AFFFD0AE96FFDCC7B7FFD9BDABFFD6B6A4FFD1B09EFFCCAB96FFC6A690FFC6A4
      8DFFC3A08AFFC09E89FFC09C86FFC09C85FFC19B82FFB78F75FFBF9F89FFC1A4
      8FFFC7AA98FFCCB0A0FFCFB7A9FFD3BFB0FFD9C7BAFFDFD0C4FFE0D9CFFFE4DC
      D6FFE6DFDCFFE8E6E6FFEEEDEBFFB2907AFFD3B3A5FFDAC4B9FFE7D9D0FFCDAD
      96FFAB7E55FFB08059FFBF9A80FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFE7DFD7FFC0A18EFFDCC3B2FFDDAA8CFF8D4017FF904218FF95481DFF9A4E
      22FF9E5426FFA35B2DFFA86135FFA96135FFC68C67FFDDBAA3FFD4B39CFFD7AE
      95FFD6AB90FFD1A88DFFCFA58AFFCFA68BFFCFA88DFFCFA98FFFCCAB95FFCDA6
      8EFFCCA387FFD7BCA9FFD7C0AEFFDCC6B6FFE0CCBDFFE4D4C7FFE6DCD0FFEAE0
      D7FFEBE4DFFFEEE8E6FFEFEEEDFFF1F1F1FFEDE8E3FFC6AF9FFFF4F4F4FFEFF2
      F4FFEEF1F2FFEDEFF2FFEDEFF2FFEBEEF1FFE8EBEEFFE7EAEBFFE7E8EAFFE7E8
      EAFFE4E6E7FFE3E4E7FFE7E6E3FFAF8A73FFD1B2A0FFDAC0B6FFE7D7D1FFCCA9
      91FFA6744AFFAB784EFFBC9477FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF5EEE6FFCAAB96FFE7CDBAFFF2C09FFFD38B5EFFD68C60FFD48B5FFFCF85
      59FFC97F51FFC37A4DFFBD7445FFAE6432FFCD8E69FFF2DFCCFFF2E4D4FFF7EA
      DCFFFBEFE4FFFEF5EEFFFEF9F5FFFEFBF8FFFFFEFBFFF0F0F0FFF0F0F0FFF8EE
      E4FFE8D1BCFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFEFFFFFFFCFEFFFFFEFE
      FFFFFBFEFEFFF9FBFCFFF9F9FBFFF9FBFEFFF7F2EEFFCFB6A5FFFBF8F7FFF7F7
      F8FFF7F7F7FFF7F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF2F4F4FFF5F4F1FFBA917AFFDFBDA9FFE6CFC0FFF4E7DFFFD7B2
      99FFAD774DFFAF7B4FFFC19A7BFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFE6DFD7FFC4A895FFDCC4B3FFDFB094FF985024FF91471DFF8E421AFF8C40
      19FF8A3D17FF873815FF853713FF7C2C0BFFB27F5EFFF5F7F9FFF2F5F8FFF1F2
      F5FFEFF2F4FFEFF1F2FFEFF1F2FFEEEFF1FFEDEDEEFFEBEDEDFFEEEFF1FFE4DA
      D1FFD9C3B0FFEEF1F1FFEBEBEBFFEBEBEBFFEBEBEBFFEAEAEBFFE8E8E8FFE7E8
      E8FFE7E8E8FFE8E8E8FFE7E7E7FFE7E8E8FFE6E1DDFFC6B2A1FFEAE7E6FFE4E4
      E4FFE6E4E4FFE6E6E6FFE4E4E4FFE3E3E3FFE3E3E3FFE4E4E4FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E4FFE7E4E1FFB6937CFFD4B5A4FFD9C4B6FFE6DAD0FFCCAB
      95FFAA7953FFAB7C55FFBA967AFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFEDE4DFFFCAA894FFE3C9B7FFE3AF8FFF8E3A11FF8C360EFF8C370FFF8B36
      0EFF8A340EFF89320EFF87310DFF7E2506FFB57C56FFF9F9F9FFF8F9F9FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFF5F5F5FFF7F8F9FFEBE1
      D7FFE0C7B3FFF8F9F9FFF4F4F4FFF2F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF1F1
      F1FFEFF1F1FFF1F1F1FFEFF1F1FFEFF1F2FFEEE8E3FFCAB3A1FFF2F2EFFFEEEE
      EFFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEAEAEAFFE8EAEBFFEDEDEAFFB79078FFD9B6A4FFDFC6B7FFEEE0D7FFCFAB
      93FFA57145FFA97347FFB99173FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF5EDE7FFD3B09BFFEDD1C1FFEDB999FF964518FF953F14FF944015FF913F
      14FF913D13FF8F3B12FF8E3913FF842D0AFFBF8560FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF5EA
      E0FFE8D1BDFFF0F0F0FFFEFEFEFFFCFCFCFFFCFCFCFFFCFCFBFFFCFCFCFFFBFC
      FCFFF9F9F9FFF8F9F9FFF8F9F9FFF8FBFCFFF7F2EEFFD3BDABFFFBFBFBFFF8FB
      FCFFF8F9FBFFF7F9FBFFF7F9FBFFF8FBFCFFF8FBFEFFF8FBFEFFF8FBFEFFF9FB
      FEFFF8FCFEFFF7FCFFFFFCFEFEFFC19A82FFE0BFAAFFE7D0C1FFF7E8E3FFD6B3
      9BFFAA774AFFAE784DFFC0967AFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFE4DDD6FFC9A998FFDDC4B7FFDFAF94FF964C1FFF95471DFF94471DFF9347
      1DFF93461BFF91431AFF8F421AFF863813FFB78462FFF1EFEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEDEDEDFFEDEDEDFFEDEDEEFFEDEDEEFFEDEEEEFFEEEFF1FFE6DC
      D6FFDCC6B5FFEFF2F4FFEDEEF1FFEDEFF2FFEDF1F2FFEBEFF2FFEDF1F4FFEDF1
      F2FFEEEFF1FFEDEEEEFFEBEDEDFFEBEDEBFFEAE3DDFFCAB3A0FFE7E1DDFFE1DD
      D9FFE1D9D3FFE0D3C9FFDCCCC0FFD9C4B6FFD6BFAFFFD3B9A6FFCDB2A0FFC9AD
      9AFFC4A894FFBFA38FFFBD9E89FFB58A6DFFD4B9A8FFD9C1B5FFE6D9D3FFCAAB
      94FFA6754DFFA9784EFFB79075FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF1E8E3FFD3AF9BFFE8CFBFFFEAB394FF953E13FF91390FFF90380FFF8F37
      0EFF8D350CFF8A320BFF872F09FF7C2202FFBA8059FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFFEFFFEFFFCFCFBFFFCFBF9FFFCF8F5FFFBF5F1FFEFE0
      D0FFE4C6ADFFF2E8DFFFEFE0D3FFEEDACAFFEBD4C1FFE7CFBAFFE3C7B3FFE3C3
      ABFFE0BDA6FFDCB7A0FFD7B299FFD3AD93FFD4A98DFFCC9B7BFFD1A88BFFCDA4
      89FFCAA487FFCDA48BFFCDA58CFFCFA68FFFCDA890FFCDAA94FFD1AF99FFD4B3
      9FFFD7B7A5FFD9BFADFFDCC6B2FFBC9073FFDFBDA9FFE3C9BCFFF2E7DFFFD1AF
      96FFA56E41FFA97143FFB98F6FFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF4EBE4FFD7B5A0FFEBD3C4FFEBBA9BFF9C4E1FFF9E4C1FFF9B5021FF9F54
      24FFA35928FFA85F2EFFAB6432FFAB6232FFD49974FFF4DCCAFFEDD6C1FFEAD0
      B9FFE8CAB2FFE8C7AEFFEAC4A8FFE6C0A4FFE1BA9FFFE1B99CFFE1B99EFFE3B5
      98FFE3AF91FFDFB9A0FFDFBAA0FFE1BDA4FFE4C0A6FFE4C3ABFFE1C7AFFFE4CC
      B5FFE7D0BCFFEBD4C3FFEEDACDFFEDE0D6FFEDDDCFFFD7BAA4FFF5EBE3FFF7EF
      EAFFF7F4EEFFF7F4F1FFF8F7F5FFF9F8F8FFF9F9FBFFF7F9FCFFF7F9FCFFF7F9
      FCFFF7F9FBFFF5F8FCFFF9FBF9FFC6A089FFE0C0ADFFE4CDBFFFF4EAE1FFD4B3
      9BFFAB744CFFAE784DFFBD9577FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFE6DDD7FFCCAD9AFFDDC4B5FFE6BA9EFFD7936BFFD69368FFD09168FFCC8D
      65FFC7895FFFC3845AFFC08156FFB6784CFFCF9977FFE6CDBCFFE6D1C0FFE8D4
      C4FFEAD7CAFFEADACDFFEBDDD1FFEBE0D6FFEBE3DAFFEAE4DDFFEDE8E4FFE7DA
      CFFFE0C9B6FFF1F2F4FFEEF1F2FFEEF1F1FFEEF1F1FFEEF1F2FFEEF2F4FFEEF1
      F4FFEDEFF2FFEDEEF1FFEBEEF1FFEBEEF1FFE8E7E4FFCDB9A9FFEAEAEAFFE6E8
      EAFFE6E7E8FFE6E7E7FFE4E6E6FFE4E6E6FFE4E6E6FFE4E4E4FFE3E3E3FFE3E3
      E3FFE3E3E3FFE1E3E4FFE6E4E1FFBF9A83FFD3B6A4FFD7C1B5FFE7DCD4FFC9AA
      94FFA36F49FFA5724AFFB38D72FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF5EEE7FFDAB7A1FFEED4C3FFEFBC9AFFA44F1FFF9F4718FF9B4216FF993F
      13FF953D11FF8F380FFF8E350CFF822504FFC1855FFFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF8EE
      E6FFEED7C3FFF0F0F0FFF0F0F0FFF0F0F0FFFEFEFEFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFEFFF9F5EFFFD9C4B0FFFCFCF9FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFF7F7F7FFF7F7F7FFF4F4
      F4FFF4F4F4FFF4F4F5FFF8F7F4FFC9A085FFE1C1AAFFE4CFBFFFF8EDE7FFD4AF
      99FFA36B3FFFA66D41FFB78D6FFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF1E8E1FFD9B9A5FFEAD3C4FFE8B99BFFA05121FFA04E1EFF9F4E1FFF9E4C
      1FFF9E4A1EFF9B4A1DFF98491DFF903E15FFC68E6BFFF9F9F9FFF9F9F9FFF8F9
      F9FFF9F9F9FFF9F9F8FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF2E8
      E0FFEAD4C1FFF9F9F9FFF8F7F8FFF7F8F8FFF8F8F8FFF7F7F7FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF4F5F5FFF2EEEAFFD9C3B2FFF7F5F4FFF2F2
      F4FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEEEEEEFFEDEDEEFFF1EFEEFFCCA48CFFDFC0ADFFE0CCBDFFF1E8E1FFD0B2
      9BFFA6734AFFA9744DFFB99077FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFE8E0D9FFD3B3A0FFE3CABDFFE1B095FF9F4F20FF9F4C1DFF9C4C1DFF9B49
      1DFF99471CFF99461AFF96461AFF8C3A13FFC08A66FFF2F1F1FFEFEFF1FFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFF1F1FFEAE0
      D7FFE3CDB9FFEFF1F1FFEEEEEEFFEDEEEEFFEEEEEEFFEEEEEEFFEDEDEEFFEBEB
      EDFFEBEBEDFFEBEBEDFFEBEDEDFFEBEDEEFFEAE6E3FFD1BDADFFEEEDEDFFEBEB
      EEFFEAEBEDFFEAEAEBFFE8EAEBFFE8EBEDFFEAEBEEFFE8EBEDFFE8EBEEFFE8ED
      EEFFEAEDEFFFE8EDEFFFEDEEEEFFC6A189FFD7B6A5FFD9C1B3FFE8E1DAFFC7A9
      93FF9F6941FFA16C42FFAF8A6DFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF9F1EBFFE3BFA9FFF5DCCAFFF2BD9BFFA44C1BFFA34717FFA14818FFA046
      17FF9E4316FF9B4115FF9B4013FF8F340BFFCA8D67FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFCF4
      EDFFF4DFCCFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFEFBF5FFE0CCB5FFFFFCF7FFFCF8
      F5FFFBF7F2FFFBF5EEFFF8EEE7FFF8EBE1FFF4E7DCFFF2E3D7FFEFDFD1FFEDDA
      CCFFEDD6C6FFEBD1C0FFE8CCB6FFD09F7FFFE8C7B5FFEBD4C7FFFEF7F1FFD3B0
      98FFA16539FFA4673BFFB68B6BFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFEEE6E0FFDDBAA6FFEAD4C4FFE6B79AFFA15323FFA04E1FFF9F4F1FFF9C4D
      1FFF9B4A1DFF99481CFF99471CFF8F3E15FFC48E6DFFF9F8F8FFF8F7F5FFF8F5
      F2FFF8F4F1FFF7F2EDFFF5EFEAFFF4EEE8FFF2EBE4FFF2E8E1FFF1E7DFFFEDDA
      C9FFE8CAB0FFEFE1D6FFEEDDCFFFEBDACAFFEAD7C7FFEAD3C3FFEAD0BDFFE7CD
      B9FFE4C9B3FFE3C4AFFFDFC0ABFFDDBDA9FFDFBAA3FFDAAE91FFDCB79FFFD9B5
      9EFFD7B29BFFD4B099FFD6B098FFD7AF96FFD4AE95FFD4AE94FFD3AD93FFCFAD
      93FFD0AE95FFD1B09AFFD6B39CFFCC9F82FFE1C7B7FFE4D1C6FFF1EAE7FFCCAE
      98FFA36C45FFA46F46FFB58C71FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFEBE3DDFFD9B7A3FFE7CFBFFFE7B99AFFBF7848FFC17A4AFFC67F50FFC981
      54FFCD8659FFD08A5EFFD38C60FFD18A60FFE3A580FFEEC4A6FFE8C0A5FFE7BD
      A1FFE7BDA0FFE7BDA0FFE6BDA1FFE6BDA1FFE3BDA3FFE1BFA3FFDFBFA5FFE3BD
      9FFFE4B99AFFE3C4AFFFE6C7AFFFE4CAB3FFE3CAB6FFE4CDBAFFE7D0BFFFE8D4
      C3FFEAD7C7FFEBDCCCFFEBDDD1FFEAE0D6FFEADFCFFFD9BFA8FFF1E7E0FFF1E8
      E4FFF1EBE7FFF1EDEBFFF1EEEDFFF2EFEEFFF1EFEEFFEFEFEEFFEFF1F1FFF1F2
      F2FFF1F2F2FFEEF1F4FFF1F4F2FFCFA88EFFDFC3AFFFE0CDC1FFEFEAE6FFC6A8
      90FF996137FF9E6439FFAD8466FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFFBF2EDFFE7C6AEFFF5DDCAFFF8C7A6FFDA8C5EFFD68759FFD18353FFCC80
      4EFFC67B49FFC07845FFBD713EFFB3622FFFDC9B77FFFFF4E8FFFFF7EDFFFFF8
      F1FFFFFBF4FFFFFCF7FFFFFEF9FFFFFFFCFFF0F0F0FFF0F0F0FFF0F0F0FFFEF7
      EDFFF7E3CFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFFFEF8FFE4D3BFFFF0F0F0FFF0F0
      F0FFF0F0F0FFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFCFEFEFFFBFBFCFFFBFB
      FCFFFBFBFCFFFBFCFCFFFCFCFBFFDAB094FFEBCFBCFFEDDCCFFFFFF9F8FFD0AE
      98FF9B5F34FFA06236FFB28666FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFEBE3DCFFDCBDAAFFE7D3C6FFE3B699FFA55625FFA55322FFA45323FFA151
      21FFA05021FFA04F20FF9F4E20FF954518FFC48F6DFFF4F5F7FFF1F4F5FFF1F2
      F5FFF1F2F4FFF1F2F4FFF1F2F4FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEDE4
      DCFFE8D3C1FFF1F2F2FFEFF1F1FFEFF1F1FFF1F1F1FFF1F1F1FFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFF1FFEEEAE6FFDCC7B5FFEFEEEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEBEBEBFFEDEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEAEA
      EAFFEAEAEAFFEAEAEBFFEDEBE8FFD1AD94FFDFC4B5FFDFCFC4FFEEE8E7FFC6A9
      94FF9A663EFF9E6840FFAE866BFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF1E8E1FFE1BDA8FFEDD6C6FFE8B798FFA95521FFA9501EFFA9511FFFA64F
      1DFFA44D1DFFA34C1CFFA1491AFF983F13FFC98D67FFF9F8F8FFF7F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF2E8
      E0FFEED7C3FFF8F8F8FFF7F8F8FFF7F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7
      F7FFF5F5F7FFF7F7F7FFF7F7F7FFF7F7F8FFF4F1EDFFDDCAB7FFF5F5F4FFF2F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF1F1
      F1FFEFEFEFFFEEEFF1FFF2F1EFFFD6AD91FFE3C7B6FFE3D0C7FFF5EFEDFFC4A5
      8EFF93582CFF965A2FFFA97F5FFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFFBF2EBFFEDC9B0FFF7E1D0FFF1C09EFFB05B25FFB05822FFAF5922FFAE56
      22FFAB5421FFAA531FFFA9501FFF9F4617FFD1946FFFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFCF2
      EAFFF7E1CFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFEFCF7FFE7D7C3FFF0F0F0FFF0F0
      F0FFFEFEFFFFFEFEFFFFFEFFFFFFFEFFFFFFFEFFFFFFFCFEFFFFFEFEFFFFFCFE
      FFFFFCFFFFFFFBFEFFFFFEFEFEFFE0B79CFFEDD1C0FFEDDAD0FFFFFBF8FFCCAB
      95FF995A2FFF9A5E31FFAE8262FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFEAE1DAFFDFBDA8FFE7D1C3FFE1B599FFAE622FFFAE5E2AFFAD5F2CFFAB5E
      2AFFAA5B2AFFA95A28FFA65826FF9F4E1FFFC7916EFFF1EFEFFFEEEFEFFFEEEF
      EFFFEEEFEFFFEEEFF1FFEEEFF1FFEEEFF1FFEFEFF2FFEFF1F2FFEFF1F4FFEBE3
      DDFFE6D3C1FFEFF2F5FFEEF2F5FFEEF2F5FFEEF2F5FFEFF2F7FFEFF4F7FFEFF4
      F7FFEFF4F7FFEFF4F7FFEEF2F5FFEEF4F7FFEEEEEBFFDCCCBAFFF1F4F4FFEFF4
      F5FFEEF1F1FFEEEFEFFFEEEFEFFFEEEFEEFFEEEFEEFFEDEEEDFFEDEDEBFFEEEB
      E8FFEFEAE6FFEFE8E4FFF2E7DFFFD7AF95FFDDC4B6FFDCCCC3FFEDEAE6FFC1A5
      8FFF945E35FF986037FFA98164FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF5EDE7FFE7C4ADFFF2DCCAFFEDB998FFAA531FFFAA4E1BFFA84D1BFFA64D
      1AFFA54C1AFFA44A1AFFA34919FF993E12FFCC8E68FFFCFFFFFFFCFFFFFFFCFF
      FFFFFEFEFCFFFEFEFBFFFEFCF9FFFCFCF8FFFCFBF5FFFCFBF4FFFCFBF5FFF9EB
      DAFFF5D9BDFFFFF8EEFFFFF4E7FFFFF2E6FFFFF1E1FFFFEFE0FFFFEEDFFFFFEB
      D9FFFFE7D3FFFEE3CDFFFBE0C9FFF8DAC1FFF4D3B6FFEBBD9BFFEECDB0FFEDC7
      AAFFEDC3A3FFEABD9BFFE8B796FFE6B090FFE1AB8BFFDFA885FFDAA37FFFD69C
      79FFD39672FFCC8F6CFFC98964FFDA9C79FFEBD3C4FFE7D4CAFFF9F7F2FFC4A5
      8DFF8E4F23FF935326FFA67A59FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF8EFEAFFEBCCB5FFF5DFCFFFF4C6A5FFD68C5EFFD98E61FFD99066FFDC91
      67FFDD9368FFE09569FFE3986CFFE1966BFFEEB089FFF8CDADFFF7CAAAFFF4C3
      A3FFF2BF9EFFEFBA96FFEBB391FFE6AF8CFFE3AA85FFE0A582FFDA9F7CFFE0A1
      7CFFE4A57FFFD08E67FFCD8B61FFCA865AFFC68154FFC07C4FFFBA7549FFB771
      42FFB36B3BFFAE6434FFA65E2DFFA35827FFA55F30FFD18D62FFA46034FFA35E
      30FFA05A2DFF9A5629FF985126FF954F24FF914C22FF8E481FFF8C461DFF8943
      1CFF86401AFF843E18FF7F3915FFCF906CFFF4DFD0FFEDDCD0FFFCFBF7FFCAA9
      93FF95552CFF995A2FFFAD8060FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFE8E0DAFFDFBFABFFE7D1C3FFE4B69BFFC68356FFC68154FFC38051FFC37C
      4EFFC1794AFFBF7548FFBC7343FFB36E3EFFCD8D64FFAF6738FFA95B29FFA659
      28FFA45625FFA15422FF9F5020FF9C4D1FFF9A481DFF98471BFF913F17FFA158
      2AFFB57346FF893611FF8B3D16FF8A3914FF873713FF853511FF823210FF8230
      0FFF81310FFF833613FF873E19FF8B451DFF915127FFBC8159FF8C4922FF8E4A
      22FF8D4922FF8C4822FF8B4821FF8A4821FF8A4720FF8A4720FF894720FF8746
      1FFF86451FFF86451EFF82401CFFC78E6CFFE6D0C3FFDDCDC3FFEDEAE7FFBDA0
      8DFF8F552EFF935930FFA57B5EFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF9F1EAFFEDC9B0FFF8E0D0FFEFB999FFB25821FFB3551FFFB3551FFFB054
      1FFFAF531DFFAD501DFFAB4F1CFFA44918FFCC8250FFAB5623FFA44617FFA448
      18FFA14617FFA04616FF9F4516FF9E4215FF9B4114FF993F13FF953A0FFFA955
      24FFBF7342FF8B310AFF90370EFF8D350DFF8C350DFF8C370EFF8E3A12FF9341
      18FF96481DFF9A4D20FF9A4D21FF964C1FFF985024FFC68255FF90461DFF9047
      1DFF8E461CFF8D431BFF8E411AFF8C401AFF8A3F19FF893F18FF873E18FF863B
      17FF853B16FF843A16FF7F3511FFD19069FFF4DDD0FFEDDAD0FFFFFCFBFFC4A4
      8DFF8B4820FF8E4C22FFA57755FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF5EEE7FFEACAB6FFF4DFD0FFEDBA9CFFBA6731FFBA652EFFBA652FFFB964
      2EFFB7642EFFB6622DFFB35F2CFFAD5A26FFD08B5EFFB26634FFAD5825FFAB56
      25FFA95623FFA85422FFA55321FFA35020FFA14F1FFF9F4D1EFF9A471AFFAD61
      31FFC07C50FF95431AFF9C4E21FF9E5525FFA15A2AFFA45F30FFA66034FFA561
      35FFA35F32FFA05C30FF9E5A2EFF9E592AFF9F5E32FFC78A61FF985428FF9954
      28FF955328FF955326FF955126FF944E25FF914E25FF914D24FF8F4C23FF8E4A
      22FF8D4A22FF8B4921FF87431DFFD39874FFEFDDCFFFE7D7CFFFF9F8F8FFC6A8
      91FF91542CFF96582FFFA97F60FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFEFEF
      EFFFEAE3DFFFE1C9B5FFEBDACCFFE3B69AFFBD713FFFBA6C38FFB76836FFB566
      32FFB2622FFFB0612CFFAF5F2AFFA85826FFC98559FFAE6432FFA85825FFA659
      26FFA55626FFA55826FFA55827FFA45828FFA55A29FFA65C2CFFA55B2CFFB371
      43FFC4865CFFA45E30FFA86237FFA46237FFA36135FFA35F34FFA15C31FF9F5B
      2FFF9C5A2EFF9C592DFF9B592DFF9A562AFF9B5C30FFC1845CFF945126FF9551
      27FF945125FF935025FF914F25FF904E24FF8E4E24FF8F4C22FF8D4922FF8C48
      22FF8B4821FF8A471FFF85411DFFCD936FFFE6D3C4FFDDCFC6FFEEEDEBFFBDA0
      8BFF8D5129FF90552DFFA37A5BFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFFCF5EFFFF2D9C3FFFBEBDFFFF5C4A4FFCD7E49FFCC7C48FFCC7B48FFCA79
      47FFC77742FFC6743EFFC1733DFFBA6D37FFDD9365FFC37743FFBA6C36FFBC6C
      39FFBA6B39FFBC6B39FFB96B38FFB56938FFB56838FFB36735FFAF6430FFC075
      47FFD18A5BFFA65B28FFAA5E2FFFA95C2DFFA65B2CFFA55A2AFFA45928FFA158
      27FF9F5525FF9E5425FF9E5325FF9A5022FF9E5627FFCA865AFF964C1FFF9549
      1FFF94491FFF93481EFF91471DFF8F461CFF8D461CFF8D431AFF8D411AFF8A40
      19FF893E18FF863D16FF833713FFDA986FFFF9E3D4FFEEDFD3FFFF00FFFFC9A8
      90FF8F4E22FF945125FFA97B59FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF1EAE6FFE8D0BFFFF1E1D7FFEABFA3FFC7804FFFC7804FFFC68050FFC67E
      50FFC47B4EFFC17B4DFFC07B4CFFBA7748FFD7966EFFC07F51FFBA7546FFBA74
      47FFB77245FFB77245FFB67143FFB36E41FFB06E41FFB06D3FFFAD683BFFB97A
      4EFFCA8B62FFA86436FFAA663AFFA86538FFA96539FFA86539FFA56437FFA564
      37FFA46237FFA16135FFA16035FFA05F34FFA4663AFFC98C65FF9C5E32FF9F5F
      32FF9E5E34FF9C5C31FF9C5C30FF9E5E32FF9C5C31FF9B5A30FF9C5C31FF9C5E
      31FF9A5A2FFF9A592EFF98582DFFD79E79FFEED9CCFFE7D6CDFFF5F2F2FFC6A9
      95FF965E35FF996137FFAD8466FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B4F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFEDE6E0FFE3CCB7FFEDDDD1FFE6BC9FFFD68E64FFD79066FFD49168FFD793
      6BFFD69169FFD49169FFD6946BFFD4936BFFDFA07AFFD79671FFD7966EFFD796
      6EFFD6956DFFD99871FFDC9974FFDA9973FFD99972FFDC9C77FFDD9B78FFDFA0
      7BFFE4A681FFE0A07CFFE0A17CFFDFA17CFFE0A37EFFE3A481FFE1A480FFE1A4
      81FFE4A683FFE3A884FFE3A883FFE4A985FFE7AB89FFE7B08DFFE4AB89FFE7AE
      8CFFE7AF8FFFE8B08FFFE8B28FFFEBB593FFEAB695FFEAB696FFEBB796FFEBB7
      98FFEAB999FFE8B999FFE8B999FFE4B99AFFE4D0C1FFE1D1C6FFF1EEEBFFC3A6
      90FF955C31FF995F35FFAB8262FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0700B2F5D500038414000059000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFFEF7EFFFF4D9C3FFFBEADAFFFBE1CDFFFED9BCFFFEDCC0FFFEDFC3FFFFDF
      C4FFFFDDC4FFFEDFC7FFFEE0CAFFFEE0CAFFFBDDC6FFFCE1CAFFFEE1CCFFFEE1
      CCFFFEE1CAFFFEE3CDFFFEE3CFFFFFE4CFFFFFE4CFFFFFE4D1FFFFE4D3FFFFE3
      D0FFFEE1D0FFFFE6D6FFFFE6D6FFFFE6D4FFFFE6D6FFFEE7D9FFFEE7D9FFFEE7
      D9FFFCE8D7FFFBE7D7FFFCE6D7FFFCE6D7FFFBE4D7FFF9E4D6FFFBE6D7FFF9E4
      D7FFFBE4D9FFFBE6D9FFF9E6D9FFF9E6D7FFF9E6D9FFFBE4DAFFF9E4D9FFF9E3
      D9FFF8E6DAFFF8E6DCFFF7E6D9FFF7E4D6FFF2E3D7FFF1E0D4FFFFFEFBFFD3B2
      9AFFA06639FFA5693DFFB98D6DFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0A00D9E5E3000C8018000059000000580000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFEEE7E1FFE8CDBAFFEBDACDFFEDE4DFFFEBE4DFFFEBE4DFFFEBE6DFFFEBE4
      DDFFEDE3DFFFEDE1DFFFEDE1DFFFEDE1DFFFEDE1DDFFEBE1DCFFEBE1DAFFEBE1
      DAFFEAE0DAFFEADFDAFFEADFD9FFEAE0D9FFEADFD9FFEADFD7FFEADFD7FFEBDF
      D7FFEBDDD7FFEADDD7FFEADDD7FFEADDD7FFEADDD7FFEADCD6FFEADDD6FFEBDD
      D6FFEADDD6FFE7DDD4FFE7DAD3FFE7D9D3FFE7DAD1FFE7DAD3FFE7DAD1FFE7DA
      D1FFE7D9D0FFE6D7D1FFE6D9D0FFE6D9D0FFE6D9D0FFE6D7CFFFE6D6D0FFE6D6
      D0FFE6D6CFFFE6D6CFFFE6D6CFFFE6D6CDFFE4D6CAFFE3D4C9FFEEEAE6FFCDB2
      9BFFA87851FFAB7B54FFBA957AFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      1100F7F0FA0006771F000058000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF1EAE4FFE8CDBAFFEFDACDFFF1E4DCFFEDE3DAFFEEE3DAFFEEE3DAFFEEE3
      D9FFEDE3DAFFEDE3DAFFEEE1DAFFEFE0DAFFEFE0DCFFEFE0DAFFEEE0D9FFEEE0
      D6FFEEE0D7FFEDDFD6FFEDDFD6FFEDDFD4FFEDDFD4FFEDDFD4FFEDDFD4FFEDDF
      D4FFEDDDD4FFEDDDD4FFEDDDD4FFEDDFD4FFEDDFD4FFEDDFD4FFEDDDD3FFEDDC
      D3FFEDDCD3FFEDDCD3FFEBDDD3FFEBDCD0FFEADAD0FFEADAD0FFEAD9D1FFEADA
      D0FFEADCCFFFE8D9D0FFE8D7CFFFE8D9CFFFE8D9CFFFE8D9CFFFE8D7D0FFE7D6
      CFFFE8D6CFFFEAD6CFFFE8D7CDFFE7D7CFFFE7D7CDFFE4D4C9FFF1EAE3FFD3B5
      9CFFAE7F55FFB08158FFC09B7EFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      7200F9FDF2000E751C000058000000550000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFFCF7F1FFF2D9C7FFFBE7DAFFFEF1E7FFFCEEE6FFFBEFE6FFF9EFE6FFF9EF
      E6FFFBEFE6FFFBEFE6FFFBEFE6FFFBEDE6FFFCEBE7FFFBEDE7FFFBEDE7FFFBED
      E4FFF9EDE1FFFBEDE3FFF9EBE1FFF8EBE1FFF8EAE1FFF8EBE1FFF8EBE1FFF8EB
      E1FFF8EAE1FFF8EAE1FFF9EAE1FFF8EBE1FFF8EAE1FFF8EBE1FFF8EAE1FFF9E8
      E0FFF9E8E0FFF9E8E0FFF9E8E0FFF8EAE0FFF7E7DDFFF5E6DDFFF5E4DDFFF7E6
      DDFFF7E6DCFFF7E7DCFFF5E4DCFFF4E4DCFFF5E3DCFFF5E4DCFFF5E4DCFFF4E3
      DAFFF2E3DAFFF5E3DAFFF7E3D9FFF4E3D9FFF4E3DAFFF1E1D7FFFCF2EDFFE1C4
      A9FFC39369FFC4946CFFD1AD8DFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      D000B7DEA600147706000058000000560000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFEBE4E0FFE4CABAFFEAD7CAFFEBDFD9FFEADDD6FFE8DDD6FFE7DDD6FFE7DF
      D6FFE7DFD6FFE7DFD6FFE7DDD6FFE7DDD6FFE8DCD4FFE8DCD6FFE8DCD6FFE8DC
      D6FFE8DAD4FFE7DCD1FFE7DCD1FFE6DCD1FFE6D9D1FFE6D9D1FFE6D9D1FFE6D9
      D1FFE6D9D1FFE6D9D1FFE6D9D1FFE6D9D1FFE6DAD1FFE6D9D0FFE6DAD0FFE7DA
      D0FFE7D9CFFFE7D9D0FFE7D9D0FFE7D9D0FFE6D9D0FFE4D7CFFFE6D6CDFFE6D6
      CDFFE6D6CDFFE4D6CDFFE4D7CCFFE4D4CCFFE4D4CCFFE3D6CCFFE4D6CCFFE4D4
      CCFFE3D4CDFFE3D3CCFFE3D3CCFFE4D3CCFFE3D3CCFFE3D3CAFFE8DFD9FFD6BD
      A6FFC19B7AFFC49E7BFFCFAF94FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0000005C0000005A00000059000000590000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF7F1EDFFEFD7C7FFF1D7C7FFF7E8E0FFF7E8DFFFF5E6DDFFF4E7DDFFF2E7
      DDFFF2E7DDFFF1E7DDFFF2E6DDFFF2E7DDFFF1E7DDFFF4E6DDFFF4E3DFFFF4E4
      DFFFF4E4DFFFF2E4DDFFF2E4D9FFF1E4DAFFF1E4D9FFF1E1D9FFF1E1D9FFF1E3
      D9FFF1E3D9FFF1E3D9FFF1E3D9FFF1E3D9FFF1E3D7FFF1E3D7FFF1E3D9FFF1E3
      D9FFF1E3D7FFF1E1D7FFF1E0D6FFF1E0D6FFF1E0D7FFEFE0D7FFEEE1D4FFEEDD
      D3FFEEDDD3FFEEDDD4FFEEDDD4FFEDDFD3FFEDDDD3FFEDDCD3FFEDDCD3FFEDDC
      D3FFEDDCD3FFEDDCD3FFEBDAD1FFEBDAD1FFEDDAD1FFEDDAD1FFEFE1DCFFDDC0
      A3FFD1A982FFD3A982FFD7BC9EFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0000005C0000005A00000059000000590000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF8E8DFFFF7DFD0FFF7E4D6FFFBEEE6FFFBEEE6FFFBEDE4FFFBED
      E4FFF8EDE4FFF7EDE4FFF8EDE4FFF7EDE4FFF8EDE4FFF8EDE4FFF8EBE4FFF9EA
      E4FFF9EAE6FFF9EAE6FFF9EAE4FFF8EAE1FFF8EAE1FFF8EAE0FFF7E8E0FFF7E8
      E0FFF7E8E0FFF7E8E0FFF7E8E0FFF7E8E0FFF7E8E0FFF7E8E0FFF7E8E0FFF7EA
      E0FFF7E8E0FFF7EAE0FFF7E7DFFFF7E6DFFFF7E7DFFFF7E7DFFFF7E7DFFFF4E7
      DDFFF4E4DAFFF4E3DCFFF4E3DCFFF4E4DCFFF4E6DAFFF4E4DAFFF2E3DAFFF2E3
      DAFFF2E1DAFFF2E1DAFFF2E3DAFFF1E1D9FFF1E0D9FFF5E4DDFFF5E3D6FFE0BF
      9CFFE3BC94FFDAB28DFFEDE0D0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      0000005A0000005900000059000000590000F0F0F0FFF0F0F0FFF0F0F0FFEDED
      EDFFEEEEEEFFEAE6E3FFE7D9D0FFE4D4CAFFE6D7CFFFE7D9D1FFE7D9D0FFE7D7
      CFFFE6D7CFFFE6D7D0FFE4D9D0FFE4D7D0FFE4D7D0FFE4D9CFFFE4D9CDFFE6D7
      CDFFE6D6CFFFE6D6CDFFE6D6CFFFE6D6CDFFE4D6CCFFE4D6CCFFE4D6CAFFE3D4
      CCFFE3D3CDFFE3D3CDFFE3D3CCFFE3D4CCFFE3D3CCFFE3D4CCFFE4D4CCFFE3D3
      CAFFE3D3CAFFE3D3CAFFE3D4CAFFE3D4CAFFE4D3C9FFE3D3C9FFE3D3C9FFE3D1
      CAFFE1D3C9FFE1D1C7FFE1D0C7FFE1D1C7FFE1D1C7FFE3D1C6FFE3D1C6FFE1D0
      C6FFE1D0C7FFE0D0C7FFE1D0C6FFE1D1C6FFE3D1C6FFDABFB0FFB58C6FFFAE82
      5BFFB38B69FFD1BCA6FFEEEEEDFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      000000590000005900000059000000590000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF9F4F1FFF9F4F1FFF9F4EFFFF9F4EFFFF9F4
      EEFFF9F1EDFFF9F1EDFFF8F2EDFFF8F1EEFFF8F1EDFFF8F2EDFFF8F2EBFFF8F1
      EAFFF7EFEAFFF7EFE8FFF8EFE8FFF8EFEAFFF7EFEAFFF7EEE8FFF7EDE6FFF7EE
      E7FFF5EDE8FFF5EDE7FFF5EDE6FFF5EDE7FFF5EDE6FFF4EBE4FFF5EAE4FFF5E8
      E4FFF4EAE3FFF4EAE3FFF4EAE3FFF2E8E1FFF2E7E0FFF2E6E0FFF2E7E0FFF2E6
      E0FFF1E7E0FFF1E7DFFFF1E4DCFFF1E4DCFFF1E4DCFFF1E4DCFFF1E4DCFFF1E3
      DAFFEEE1DAFFEDE0D9FFEDE0D7FFEDE0D6FFDDCCBFFFB0917CFF966E4EFFA580
      64FFD6C1AFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      000000600000006000000060000000600000F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
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
      00000000000000000000000000000000F80000000007FFFFFF00000000000000
      0000000000000000000000000000000000000000E00000000000FFFFFF000000
      000000000000000000000000000000000000000000000000C000000000007FFF
      FF00000000000000000000000000000000000000000000000000000080000000
      00003FFFFF000000000000000000000000000000000000000000000000000000
      8000000000001FFFFF0000000000000000000000000000000000000000000000
      000000000000000000001FFFFF00000000000000000000000000000000000000
      00000000000000000000000000001FFFFF000000000000000000000000000000
      0000000000000000000000000000000000001FFFFF0000000000000000000000
      000000000000000000000000000000000000000000001FFFFF00000000000000
      00000000000000000000000000000000000000000000000000001FFFFF000000
      0000000000000000000000000000000000000000000000000000000000001FFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00001FFFFF000000000000000000000000000000000000000000000000000000
      0000000000001FFFFF0000000000000000000000000000000000000000000000
      000000000000000000001FFFFF00000000000000000000000000000000000000
      00000000000000000000000000001FFFFF000000000000000000000000000000
      0000000000000000000000000000000000001FFFFF0000000000000000000000
      000000000000000000000000000000000000000000001FFFFF00000000000000
      00000000000000000000000000000000000000000000000000001FFFFF000000
      0000000000000000000000000000000000000000000000000000000000001FFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00001FFFFF000000000000000000000000000000000000000000000000000000
      0000000000001FFFFF0000000000000000000000000000000000000000000000
      000000000000000000001FFFFF00000000000000000000000000000000000000
      00000000000000000000000000001FFFFF000000000000000000000000000000
      0000000000000000000000000000000000001FFFFF0000000000000000000000
      000000000000000000000000000000000000000000001FFFFF00000000000000
      00000000000000000000000000000000000000000000000000001FFFFF000000
      0000000000000000000000000000000000000000000000000000000000001FFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00001FFFFF000000000000000000000000000000000000000000000000000000
      0000000000001FFFFF0000000000000000000000000000000000000000000000
      000000000000000000001FFFFF00000000000000000000000000000000000000
      00000000000000000000000000001FFFFF000000000000000000000000000000
      0000000000000000000000000000000000001FFFFF0000000000000000000000
      000000000000000000000000000000000000000000001FFFFF00000000000000
      00000000000000000000000000000000000000000000000000001FFFFF000000
      0000000000000000000000000000000000000000000000000000000000001FFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00001FFFFF000000000000000000000000000000000000000000000000000000
      0000000000001FFFFF0000000000000000000000000000000000000000000000
      000000000000000000001FFFFF00000000000000000000000000000000000000
      00000000000000000000000000001FFFFF000000000000000000000000000000
      0000000000000000000000000000000000001FFFFF0000000000000000000000
      000000000000000000000000000000000000000000001FFC0000000000000000
      00000000000000000000000000000000000000008000000000001FFC00000000
      0000000000000000000000000000000000000000000000008000000000003FFC
      00000000000000000000000000000000000000000000000000000000C0000000
      00003FFC00000000000000000000000000000000000000000000000000000000
      C000000000007FFC000000000000000000000000000000000000000000000000
      00000000C000000000007FFC0000000000000000000000000000000000000000
      0000000000000000F00000000000FFFC00000000000000000000000000000000
      000000000000000000000000FFFFFFFE007FFFFC000000000000000000000000
      00000000000000000000000000000000FFFFFFFE007FFFFC0000000000000000
      0000000000000000000000000000000000000000FFFFFFFF003FFFFC00000000
      000000000000000000000000000000000000000000000000FFFFFFFF003FFFFC
      00000000000000000000000000000000000000000000000000000000FFFFFFFF
      003FFFFC00000000000000000000000000000000000000000000000000000000
      FFFFFFFF003FFFF8000000000000000000000000000000000000000000000000
      00000000FFFFFFFF003FFFF80100000000000000000000000000000000000000
      0000000000000000FFFFFFFF003FFFF801000000000000000000000000000000
      000000000000000000000000FFFFFFFF003FFFF8010000000000000000000000
      00000000000000000000000000000000FFFFFFFF001FFFF00100000000000000
      0000000000000000000000000000000000000000FFFFFFFF801FFFF001000000
      000000000000000000000000000000000000000000000000FFFFFFFF800FFFE0
      01000000000000000000000000000000000000000000000000000000FFFFFFFF
      8007FFC003000000000000000000000000000000000000000000000000000000
      FFFFFFFF8001FF80030000000000000000000000000000000000000000000000
      00000000FFFFFFFFC00000000300000000000000000000000000000000000000
      0000000000000000FFFFFFFFC000000007000000000000000000000000000000
      000000000000000000000000FFFFFFFFE0000000070000000000000000000000
      00000000000000000000000000000000FFFFFFFFF00000000F00000000000000
      0000000000000000000000000000000000000000FFFFFFFFF80000000F000000
      000000000000000000000000000000000000000000000000FFFFFFFFFC000000
      1F000000000000000000000000000000000000000000000000000000FFFFFFFF
      FE0000003F000000000000000000000000000000000000000000000000000000
      FFFFFFFFFF000001FF0000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFE00007FF00000000000000000000000000000000000000
      0000000000000000FFFFFFFFFFFFFFFFFF000000000000000000000000000000
      000000000000000000000000FFFFFFFFFFFFFFFFFF0000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF80000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF980000000007FFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFF0000000000007FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000001FFFFFFE0000000000007FFFF
      FFC0000000007FFFFFFF00000000000FFFFFFFFFF80000003FFFFF4000000000
      000103FFFE00000000001FFFFFFE000000000003FFFFFFFF800000000FFFFF40
      00000000000003FFFC00000000000FFFFFFE000000000000FFFFFFFF00000000
      07FFFF4000000000000003FFF8000000000007FFFFFE0000000000007FFFFFFC
      0000000000FFFF8000000000000000C7F8000000000007FFFFFE000000000000
      7FFFFFFC0000000000FFFF000000000000000007F0000000000003FFFFFE0000
      000000003FFFFFF800000000007FFF000000000000000007F0000000000000FF
      FFFE0000000000001FFFFFF000000000003FFF000000000000000000E0000000
      000000FFFFFE0000000000000FFFFFE000000000001FFF000000000000000000
      E00000000000007FFFFE00000000000007FFFFC000000000000FFF0000000000
      00000000E00000000000003FFFFC00000000000007FFFF00000000000007FF00
      0000000000000000E00000000000001FFFFC40000000000003FFFE0000000000
      0003FF000000000000000000E00000000000001FFFFC40000000000001FFFC00
      0001FE000001FF000000000000000000E00000000000000FFFFC400000000000
      01FFFC00001FFF800000FF000000000000000000E00000000000000FFFFC4000
      0000000001FFFC00007FFF8000007F000000000000000000E00000000000000F
      FFFC400000000000007FF800007FFF8000007F000000000000000000E0000000
      00000007FFFC400000000000007FF00001FFFF0000003F800000000000000000
      E000000000000007FFFC400000000000003FF00003FFFE0000003F0000000000
      00000000E000000000000003FFFC400000000000003FE00007FFFC0000001F00
      0000000000000000E000000000000003FFFC400000000000003FE0000FFFF800
      00001FFC0000000000000010E000000000000003FFFC400000000000001FC000
      3FFFE00000000FFC000000000000001FE000000000000001FFFC400000000000
      001FC0007FFFC00000000FFC000000000000001FE000000000000001FFFC4000
      00000000001FC0007FFF800000000FFC000000000000001FE000000000000001
      FFFC400000000000001FC000FFFF800000000FE00000000000000007E0000000
      00000001FFFC400000000000001FC000FFFF0000000007E00000000000000007
      E000000000000001FFFC400000000000001F8001FFFE0000000007E000000000
      00000007E000000000000001FFFC400000000000001F8001FFFC0000000007F0
      0000000000000007E000000000000001FFFC400000000000001F8001FFF80000
      0E0007F00000000000000007E000000000000001FFFC400000000000001F8003
      FFF000001F0007F00000000000000007E000000000000001FFFC400000000000
      001F8003FFC000003F0007E00000000000000017E000000000000001FFFC4000
      00000000001F8003FF8000007F0007E00000000000000017E000000000000001
      FFFC400000000000001F8003FF000000FF0003E00000000000000017E0000000
      00000001FFFC400000000000001F8003FF000001FF0003E00000000000000017
      E000000000000001FFFC400000000000001F8003FE000001FF0003E000000000
      00000017E000000000000001FFFC400000000000001F8003FC000007FF0003E0
      0000000000000017E000000000000001FFFC400000000000001F8003F800000F
      FF0003F40000000000000007E000000000000001FFFC400000000000001F8003
      F000001FFF0007F40000000000000007E000000000000001FFFC400000000000
      001F8003E000003FFF0007F40000000000000007E000000000000001FFFC4000
      00000000001F80038000007FFF0007F20000000000000007E000000000000001
      FFFC400000000000001F8001000000FFFE0007E00000000000000007E0000000
      00000001FFFC400000000000001F8000000001FFFE0007F00000000000000007
      E000000000000001FFFC400000000000001F8000000003FFFE0007F400000000
      00000007E000000000000001FFFC400000000000001F8000000003FFFE0007FC
      0000000000000007E000000000000001FFFC400000000000001FC00000000FFF
      F80007FC0000000000000007E000000000000001FFFC400000000000001FC000
      00001FFFF8000FF80000000000000007E000000000000001FFFC400000000000
      001FC00000003FFFF0000FF00000000000000007E000000000000001FFFC4000
      00000000001FC00000007FFFE0000FF00000000000000007E000000000000001
      FFFC400000000000001FE0000000FFFFC0001FEA0000000000000007E0000000
      00000001FFFC400000000000001FE0000001FFFF80001FFE000000400FFC1FFF
      E000000000000001FFFC400000000000001FF0000003FFFF00003FFF00000000
      0FFC1FFFE000000000000001FFFC400000000000001FF0000007FFFF00003FFC
      000000000FFCFFFFE000000000000001FFFC400000000000001FF0000007FFFE
      00003FFFE000000C0FFFFFFFE000000000000001FFFC400000000000001FF800
      000FFFF000007FFFD8000003FFFFFFFFE000000000000001FFFC400000000000
      001FFC000007FFC000007FFFCA000C03FFFFFFFFE000000000000001FFFC4000
      00000000001FFC000001FE000001FFFFF80007FFFFFFFFFFE000000000000001
      FFFC400000000000001FFE00000000000003FFFFFC0007FFFFFFFFFFE0000000
      00000001FFFC400000000000001FFF00000000000007FFFFFC0007FFFFFFFFFF
      E000000000000001FFFC400000000000001FFFC000000000000FFFFFF8000FFF
      FFFFFFFFE000000000000001FFFC400000000000001FFFE000000000001FFFFF
      F8000FFFFFFFFFFFE000000000000001FFFC400000000000001FFFF000000000
      003FFFFFF8000FFFFFFFFFFFE000000000000003FFFE000000000000001FFFF0
      00000000003FFFFFFC000FFFFFFFFFFFE000000000000003FFFE000000000000
      001FFFF800000000007FFFFFFC000FFFFFFFFFFFF000000000000003FFFE0000
      00000000003FFFFC0000000000FFFFFFF8000FFFFFFFFFFFF000000000000007
      FFFF000000000000003FFFFF0000000007FFFFFFF80007FFFFFFFFFFF8000000
      00000007FFFF000000000000007FFFFFE00000000FFFFFFFF80007FFFFFFFFFF
      FC0000000000000FFFFFC0000000000001FFFFFFF80000007FFFFFFFF80007FF
      FFFFFFFFFE0000000000001FFFFFE0000000000003FFFFFFFE000001FFFFFFFF
      F8000FFFFFFFFFFFFF0000000000007FFFFFF8000000000007FFFFFFFFF0003F
      FFFFFFFFFC004FFFFFFFFFFFFFF00000000007FFFFFFFF00000000003FFFFFFF
      FFFFFFFFFFFFFFFFFF4C1FFFFFFFFFFF000000000000000000FFFFFFFFFFFFFF
      C3FFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000FFFFFF
      FFFFFFFF80FFFFE0000000000003FF0000000000000000000000000000000000
      00FFFFFFFFFFFFFF007FFFE0000000000003FF00000000000000000000000000
      0000000000FFFFFFFFFFFFFC003FFFE0000000000007FF000000000000000000
      000000000000000000FFFFFFFFFFFFF8005FFFE0000000000007FF0000000000
      00000000000000000000000000FFFFFFFFFFFFF0003FFFE0000000000007FF00
      0000000000000000000000000000000000FFFFFFFFFFFFE0001FFFE000000000
      0007FF000000000000000000000000000000000000FFFFFFFFFFFFC0000FFFF0
      000000000007FF000000000000000000000000000000000000FFFFFFFFFFFF80
      002FFFF000000000000FFF000000000000000000000000000000000000FFFFFF
      FFFFFE00000FFFF000000000000FFF0000000000000000000000000000000000
      00FFFFFFFFFFFC00001FFFF000000000000FFF00000000000000000000000000
      0000000000FFFFFFFFFFF800001FFFF000000000000FFF000000000000000000
      000000000000000000FFFFFFFFFFF000003FC000000000000000030000000000
      00000000000000000000000000FFFFFFFFFFE000007F80000000000000000000
      0000000000000000000000000000000000FFFFFFFFFFC00001FF000000000000
      000000000000000000000000000000000000000000FFFFFC3FFF800001FF0000
      00000000000000000000000000000000000000000000000000FFFFF80FFF0000
      03FF000000000000000000000000000000000000000000000000000000FFFFF0
      01FE000003FF0000000000000000000000000000000000000000000000000000
      00FFFFE200F8000007FF00000000000000000000000000000000000000000000
      0000000000FFFFE00030000007FF000000000000000000000000000000000000
      000000000000000000FFFFC0000000000FFF0000000000000000000000000000
      00000000000000000000000000FFFFC0000000000FFF00000000000000000000
      0000000000000000000000000000000000FFFF80000000001FFF000000000000
      000000000000000000000000000000000000000000FFFF80000000003FFF0000
      00000000000000000000000000000000000000000000000000FFFF0000000000
      3FFF000000000000000000000000000000000000000000000000000000FFFF20
      000000007FFF0000000000000000000000000000000000000000000000000000
      00FFFE00000000007FFF00000000000000000200000000000000000000000000
      0000000000FFFC4000000000FFFF800000000000000002000000000000000000
      000000000000000000FFFC0000000000FFFF8000000000000000020000000000
      00000000000000000000000000FFF80000000000FFFFC0000000000000000200
      0000000000000000000000000000000000FFF80000000001FFFFE00000000000
      000003000000000000000000000000000000000000FFF000000000003FFFE000
      00000000000003000000000000000000000000000000000000FFF00000000000
      0FFFE00000000000000003000000000000000000000000000000000000FFE000
      0000000007FFE000000000000000030000000000000000000000000000000000
      00FFE4000000018001FFE0000000000000000700000000000000000000000000
      0000000000FFC00000000080007FE00000000000000007000000000000000000
      000000000000000000FFA80000000000003FE000000000000000070000000000
      00000000000000000000000000FF900000100000005FE0000000000000000700
      0000000000000000000000000000000000FF000000000020003FE00000000000
      000007000000000000000000000000000000000000FF200000000000003FF000
      00000000000007000000000000000000000000000000000000FE000004000000
      007FF00000000000000007000000000000000000000000000000000000FF0000
      00000002007FF000000000000000070000000000000000000000000000000000
      00FC00000000000100FFF0000000000000000F00000000000000000000000000
      0000000000F800000000000001FFF0000000000000000F000000000000000000
      000000000000000000F900000000000001FFF0000000000000000F0000000000
      00000000000000000000000000F000000000000003FFF8000000000000000F00
      0000000000000000000000000000000000F000010000000043FFF80000000000
      00000F000000000000000000000000000000000000F000000000000007FFF800
      0000000000001F000000000000000000000000000000000000F8000000000000
      07FFFC000000000000003F000000000000000000000000000000000000F80000
      000000000FFFFFD000000000000BFF0000000000000000000000000000000000
      00FE0004000000000FFFFFF000000000000FFF00000000000000000000000000
      0000000000FFC000000000000FFFFFF000000000000FFF000000000000000000
      000000000000000000FFE000000000000FFFFFF000000000000FFF0000000000
      00000000000000000000000000FFF800000000000FFFFFF000000000000FFF00
      0000000000000000000000000000000000FFFE08000000000FFFFFF000000000
      000FFF000000000000000000000000000000000000FFFFC8000000014FFFFFF0
      00000000000FFF000000000000000000000000000000000000FFFFC800000000
      5FFFFFF000000000000FFF000000000000000000000000000000000000FFFFC8
      000000021FFFFFF800000000001FFF0000000000000000000000000000000000
      00FFFFC200000000BFFFFFF800000000001FFF00000000000000000000000000
      0000000000FFFFE200000000BFFFFFF800000000001FFF000000000000000000
      000000000000000000FFFFE0000000097FFFFFF800000000001FFF0000000000
      00000000000000000000000000FFFFF5000000127FFFFFF800000000001FFF00
      0000000000000000000000000000000000FFFFF000000002FFFFFFF800000000
      001FFF000000000000000000000000000000000000FFFFFA00000005FFFFFFF8
      00000000001FFF000000000000000000000000000000000000FFFFF84000000B
      FFFFFFF800000000001FFF000000000000000000000000000000000000FFFFFC
      00000017FFFFFFF800000000001FFF0000000000000000000000000000000000
      00FFFFFE0000000FFFFFFFF800000000001FFF00000000000000000000000000
      0000000000FFFFFF0000009FFFFFFFFA00000000005FFF000000000000000000
      000000000000000000FFFFFF9000003FFFFFFFF800000000001FFF0000000000
      00000000000000000000000000FFFFFFC40008FFFFFFFFFFFFFFFFFFFFFFFF00
      0000000000000000000000000000000000FFFFFFF80007FFFFFFFFFFFFFFFFFF
      FFFFFF000000000000000000000000000000000000FFFFFFFF003FFFFFFFFFFF
      FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited Cadastro: TIBQuery
    AfterScroll = CadastroAfterScroll
    BeforeScroll = CadastroBeforeScroll
    BufferChunks = 4500
    SQL.Strings = (
      'WITH RECURSIVE PK'
      'AS ('
      'SELECT   PK.ID  ,PK.EP_ID ,PK.IDEV,'
      '         PK.IDPK,PK.DEPK  ,PK.DTPK,PK.CDCX,'
      '         PK.CTNR,CTNR_PCHP,CTNR_RCHP,'
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
      '         PK.CDST,PK.REST,PK.DEST,PK.STFI,'
      '         PK.BXD_IDPK,PK.BXD_DTPK,'
      ''
      '         PK.INFADCAD'
      ''
      'FROM     VW_PSQ_PED_PDC_ADM AS PK'
      
        'WHERE    PK.DTPK >= DATEADD(MONTH,-12,DATEADD(1 - EXTRACT(DAY FR' +
        'OM CURRENT_DATE) DAY TO CURRENT_DATE))'
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
      Origin = '"VW_PSQ_PED_PDC_ADM"."ID"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0'
    end
    object CadastroEP_ID: TSmallintField
      FieldName = 'EP_ID'
      Origin = '"VW_PSQ_PED_PDC_ADM"."EP_ID"'
    end
    object CadastroIDEV: TLargeintField
      FieldName = 'IDEV'
      Origin = '"VW_PSQ_PED_PDC_ADM"."IDEV"'
    end
    object CadastroIDPK: TSmallintField
      FieldName = 'IDPK'
      Origin = '"VW_PSQ_PED_PDC_ADM"."IDPK"'
    end
    object CadastroDEPK: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'DEPK'
      Origin = '"VW_PSQ_PED_PDC_ADM"."DEPK"'
      Size = 30
    end
    object CadastroDTPK: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'DTPK'
      Origin = '"VW_PSQ_PED_PDC_ADM"."DTPK"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy'
    end
    object CadastroCTNR: TIBStringField
      FieldName = 'CTNR'
      Origin = '"VW_PSQ_PED_PDC_ADM"."CTNR"'
    end
    object CadastroCTNR_PCHP: TDateField
      FieldName = 'CTNR_PCHP'
      Origin = '"VW_PSQ_PED_PDC_ADM"."CTNR_PCHP"'
    end
    object CadastroCTNR_RCHP: TDateField
      FieldName = 'CTNR_RCHP'
      Origin = '"VW_PSQ_PED_PDC_ADM"."CTNR_RCHP"'
    end
    object CadastroCDCX: TLargeintField
      FieldName = 'CDCX'
      Origin = '"VW_PSQ_PED_PDC_ADM"."CDCX"'
    end
    object CadastroCD_ID: TIntegerField
      FieldName = 'CD_ID'
      Origin = '"VW_PSQ_PED_PDC_ADM"."CD_ID"'
    end
    object CadastroCD_NO: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'CD_NO'
      Origin = '"VW_PSQ_PED_PDC_ADM"."CD_NO"'
      Size = 60
    end
    object CadastroCD_NO_RZ: TIBStringField
      FieldName = 'CD_NO_RZ'
      Origin = '"VW_PSQ_PED_PDC_ADM"."CD_NO_RZ"'
      Size = 60
    end
    object CadastroCD_CNPJ: TIBStringField
      FieldName = 'CD_CNPJ'
      Origin = '"VW_PSQ_PED_PDC_ADM"."CD_CNPJ"'
      Size = 14
    end
    object CadastroCR_ID: TSmallintField
      FieldName = 'CR_ID'
      Origin = '"VW_PSQ_PED_PDC_ADM"."CR_ID"'
    end
    object CadastroCR_NO: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'CR_NO'
      Origin = '"VW_PSQ_PED_PDC_ADM"."CR_NO"'
      Size = 60
    end
    object CadastroCV_ID: TSmallintField
      FieldName = 'CV_ID'
      Origin = '"VW_PSQ_PED_PDC_ADM"."CV_ID"'
    end
    object CadastroCV_NO: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'CV_NO'
      Origin = '"VW_PSQ_PED_PDC_ADM"."CV_NO"'
      Size = 30
    end
    object CadastroQTDE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'QTDE'
      Origin = '"VW_PSQ_PED_PDC_ADM"."QTDE"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 4
    end
    object CadastroQTRL: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldKind = fkInternalCalc
      FieldName = 'QTRL'
      Origin = '"VW_PSQ_PED_PDC_ADM"."QTRL"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##,0'
    end
    object CadastroTSDE: TIBBCDField
      DisplayLabel = 'Sub Total R$'
      FieldKind = fkInternalCalc
      FieldName = 'TSDE'
      Origin = '"VW_PSQ_PED_PDC_ADM"."TSDE"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroTCDE: TIBBCDField
      DisplayLabel = 'Total R$'
      FieldKind = fkInternalCalc
      FieldName = 'TCDE'
      Origin = '"VW_PSQ_PED_PDC_ADM"."TCDE"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroTDSC: TIBStringField
      FieldName = 'TDSC'
      Origin = '"VW_PSQ_PED_PDC_ADM"."TDSC"'
      FixedChar = True
      Size = 1
    end
    object CadastroVDSC: TIBBCDField
      DisplayLabel = 'Desc. R$'
      FieldName = 'VDSC'
      Origin = '"VW_PSQ_PED_PDC_ADM"."VDSC"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroPDSC: TIBBCDField
      FieldName = 'PDSC'
      Origin = '"VW_PSQ_PED_PDC_ADM"."PDSC"'
      Precision = 9
      Size = 2
    end
    object CadastroCT_ID: TSmallintField
      FieldName = 'CT_ID'
      Origin = '"VW_PSQ_PED_PDC_ADM"."CT_ID"'
    end
    object CadastroCT_NO: TIBStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'CT_NO'
      Origin = '"VW_PSQ_PED_PDC_ADM"."CT_NO"'
      Size = 60
    end
    object CadastroFRT_MODELO: TSmallintField
      FieldName = 'FRT_MODELO'
      Origin = '"VW_PSQ_PED_PDC_ADM"."FRT_MODELO"'
    end
    object CadastroFRT_NO: TIBStringField
      DisplayLabel = 'Frete'
      FieldName = 'FRT_NO'
      Origin = '"VW_PSQ_PED_PDC_ADM"."FRT_NO"'
      Size = 60
    end
    object CadastroFRT_VFRT: TIBBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'FRT_VFRT'
      Origin = '"VW_PSQ_PED_PDC_ADM"."FRT_VFRT"'
      DisplayFormat = 'R$ ,##,0.00'
      Precision = 18
      Size = 2
    end
    object CadastroFRT_PSBR: TIBBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'FRT_PSBR'
      Origin = '"VW_PSQ_PED_PDC_ADM"."FRT_PSBR"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 3
    end
    object CadastroFRT_PSLQ: TIBBCDField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'FRT_PSLQ'
      Origin = '"VW_PSQ_PED_PDC_ADM"."FRT_PSLQ"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 3
    end
    object CadastroTPD_ID: TSmallintField
      FieldName = 'TPD_ID'
      Origin = '"VW_PSQ_PED_PDC_ADM"."TPD_ID"'
    end
    object CadastroTPD_NO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TPD_NO'
      Origin = '"VW_PSQ_PED_PDC_ADM"."TPD_NO"'
      Size = 60
    end
    object CadastroTCO_ID: TSmallintField
      FieldName = 'TCO_ID'
      Origin = '"VW_PSQ_PED_PDC_ADM"."TCO_ID"'
    end
    object CadastroTCO_NO: TIBStringField
      FieldName = 'TCO_NO'
      Origin = '"VW_PSQ_PED_PDC_ADM"."TCO_NO"'
      Size = 60
    end
    object CadastroTCO_NO_PRZ: TIBStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldKind = fkInternalCalc
      FieldName = 'TCO_NO_PRZ'
      Origin = '"VW_PSQ_PED_PDC_ADM"."TCO_NO_PRZ"'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object CadastroPRZ_ID: TSmallintField
      FieldName = 'PRZ_ID'
      Origin = '"VW_PSQ_PED_PDC_ADM"."PRZ_ID"'
    end
    object CadastroCDST: TSmallintField
      FieldName = 'CDST'
      Origin = '"VW_PSQ_PED_PDC_ADM"."CDST"'
    end
    object CadastroREST: TIBStringField
      FieldName = 'REST'
      Origin = '"VW_PSQ_PED_PDC_ADM"."REST"'
      Size = 10
    end
    object CadastroSTFI: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'STFI'
      Origin = '"VW_PSQ_PED_PDC_ADM"."STFI"'
      Size = 60
    end
    object CadastroDEST: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'DEST'
      Origin = '"VW_PSQ_PED_PDC_ADM"."DEST"'
      Size = 60
    end
    object CadastroBXD_IDPK: TLargeintField
      FieldName = 'BXD_IDPK'
      Origin = '"VW_PSQ_PED_PDC_ADM"."BXD_IDPK"'
    end
    object CadastroBXD_DTPK: TDateField
      FieldName = 'BXD_DTPK'
      Origin = '"VW_PSQ_PED_PDC_ADM"."BXD_DTPK"'
    end
    object CadastroINFADCAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'INFADCAD'
      Origin = '"VW_PSQ_PED_PDC_ADM"."INFADCAD"'
      ProviderFlags = []
      ReadOnly = True
      Size = 768
    end
    object CadastroC_TSDE: TStringField
      DisplayLabel = 'Sub Total'
      FieldKind = fkCalculated
      FieldName = 'C_TSDE'
      Size = 30
      Calculated = True
    end
    object CadastroC_TCDE: TStringField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'C_TCDE'
      Size = 30
      Calculated = True
    end
  end
  inherited ILDockIcons: TImageList
    Left = 488
    Top = 192
  end
  inherited BMMain: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
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
    AfterScroll = FKCadastroAfterScroll
    DataSource = DTSCadastro
    SQL.Strings = (
      'SELECT   PK.* FROM VW_PED_COM_ITE_TMP AS PK'
      'WHERE    PK.IDEP = :EP_ID'
      'AND           PK.IDPK = :IDPK'
      'ORDER BY PK.ITEM')
    Left = 104
    Top = 256
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'EP_ID'
        ParamType = ptUnknown
        Size = 2
      end
      item
        DataType = ftSmallint
        Name = 'IDPK'
        ParamType = ptUnknown
        Size = 2
      end>
    object FKCadastroID: TIntegerField
      FieldName = 'ID'
      Origin = '"VW_PED_COM_ITE_TMP"."ID"'
    end
    object FKCadastroIDEP: TSmallintField
      FieldName = 'IDEP'
      Origin = '"VW_PED_COM_ITE_TMP"."IDEP"'
    end
    object FKCadastroIDPK: TLargeintField
      FieldName = 'IDPK'
      Origin = '"VW_PED_COM_ITE_TMP"."IDPK"'
    end
    object FKCadastroIDFK: TLargeintField
      FieldName = 'IDFK'
      Origin = '"VW_PED_COM_ITE_TMP"."IDFK"'
    end
    object FKCadastroROM_CDPD: TIntegerField
      FieldName = 'ROM_CDPD'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_CDPD"'
    end
    object FKCadastroROM_CTNR: TIBStringField
      DisplayLabel = 'N'#186' Container'
      FieldName = 'ROM_CTNR'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_CTNR"'
    end
    object FKCadastroROM_CDNF: TIntegerField
      DisplayLabel = 'N'#186' NF'
      FieldName = 'ROM_CDNF'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_CDNF"'
    end
    object FKCadastroITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Origin = '"VW_PED_COM_ITE_TMP"."ITEM"'
      DisplayFormat = '0'
    end
    object FKCadastroIDCP: TIntegerField
      FieldName = 'IDCP'
      Origin = '"VW_PED_COM_ITE_TMP"."IDCP"'
    end
    object FKCadastroIDAK: TLargeintField
      FieldName = 'IDAK'
      Origin = '"VW_PED_COM_ITE_TMP"."IDAK"'
    end
    object FKCadastroIDEK: TLargeintField
      FieldName = 'IDEK'
      Origin = '"VW_PED_COM_ITE_TMP"."IDEK"'
    end
    object FKCadastroCP_IDEP: TSmallintField
      FieldName = 'CP_IDEP'
      Origin = '"VW_PED_COM_ITE_TMP"."CP_IDEP"'
    end
    object FKCadastroCP_DEEP: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'CP_DEEP'
      Origin = '"VW_PED_COM_ITE_TMP"."CP_DEEP"'
      Size = 60
    end
    object FKCadastroARTIGO: TIBStringField
      DisplayLabel = 'Artigo'
      FieldName = 'ARTIGO'
      Origin = '"VW_PED_COM_ITE_TMP"."ARTIGO"'
      Size = 30
    end
    object FKCadastroSKU: TIBStringField
      FieldName = 'SKU'
      Origin = '"VW_PED_COM_ITE_TMP"."SKU"'
      Size = 30
    end
    object FKCadastroDECP: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DECP'
      Origin = '"VW_PED_COM_ITE_TMP"."DECP"'
      Size = 120
    end
    object FKCadastroDGCP: TIBStringField
      DisplayLabel = 'Grade'
      FieldKind = fkInternalCalc
      FieldName = 'DGCP'
      Origin = '"VW_PED_COM_ITE_TMP"."DGCP"'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FKCadastroIDCOL: TSmallintField
      FieldName = 'IDCOL'
      Origin = '"VW_PED_COM_ITE_TMP"."IDCOL"'
    end
    object FKCadastroDECOL: TIBStringField
      DisplayLabel = 'Cole'#231#227'o'
      FieldName = 'DECOL'
      Origin = '"VW_PED_COM_ITE_TMP"."DECOL"'
      Size = 60
    end
    object FKCadastroROM_DUNI: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'ROM_DUNI'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_DUNI"'
      Size = 6
    end
    object FKCadastroROM_QTDE: TIBBCDField
      DisplayLabel = 'Pedido'
      FieldName = 'ROM_QTDE'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_QTDE"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object FKCadastroROM_QTRL: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldName = 'ROM_QTRL'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_QTRL"'
      DisplayFormat = ',##,0'
    end
    object FKCadastroROM_QTPD: TIBBCDField
      DisplayLabel = 'Embarcado'
      FieldName = 'ROM_QTPD'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_QTPD"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 4
    end
    object FKCadastroROM_RLPD: TIntegerField
      DisplayLabel = 'Pe'#231'as'
      FieldName = 'ROM_RLPD'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_RLPD"'
      DisplayFormat = ',##,0'
    end
    object FKCadastroVPRC_ORIG: TIBStringField
      FieldName = 'VPRC_ORIG'
      Origin = '"VW_PED_COM_ITE_TMP"."VPRC_ORIG"'
      Size = 3
    end
    object FKCadastroROM_PREC: TFloatField
      FieldName = 'ROM_PREC'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_PREC"'
      DisplayFormat = ',##,0.00'
    end
    object FKCadastroROM_UNIT: TFloatField
      DisplayLabel = 'Vl. Unit'#225'rio'
      FieldName = 'ROM_UNIT'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_UNIT"'
      DisplayFormat = ',##,0.00'
    end
    object FKCadastroROM_TOTA: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'ROM_TOTA'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_TOTA"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 2
    end
    object FKCadastroROM_DROM: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ROM_DROM'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_DROM"'
      DisplayFormat = 'dd/mm/yy'
    end
    object FKCadastroROM_QPRD: TSmallintField
      FieldName = 'ROM_QPRD'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_QPRD"'
    end
    object FKCadastroROM_DPRD: TDateField
      DisplayLabel = 'Prev. Produ'#231#227'o'
      FieldName = 'ROM_DPRD'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_DPRD"'
      DisplayFormat = 'dd/mm/yy'
    end
    object FKCadastroROM_RPRD: TDateField
      FieldName = 'ROM_RPRD'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_RPRD"'
      DisplayFormat = 'dd/mm/yy'
    end
    object FKCadastroROM_QEMB: TSmallintField
      FieldName = 'ROM_QEMB'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_QEMB"'
    end
    object FKCadastroROM_DEMB: TDateField
      DisplayLabel = 'Prev. Embarque'
      FieldName = 'ROM_DEMB'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_DEMB"'
      DisplayFormat = 'dd/mm/yy'
    end
    object FKCadastroROM_REMB: TDateField
      FieldName = 'ROM_REMB'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_REMB"'
      DisplayFormat = 'dd/mm/yy'
    end
    object FKCadastroROM_QDES: TSmallintField
      FieldName = 'ROM_QDES'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_QDES"'
    end
    object FKCadastroROM_DDES: TDateField
      DisplayLabel = 'Prev. Desembarque'
      FieldName = 'ROM_DDES'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_DDES"'
      DisplayFormat = 'dd/mm/yy'
    end
    object FKCadastroROM_RDES: TDateField
      FieldName = 'ROM_RDES'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_RDES"'
      DisplayFormat = 'dd/mm/yy'
    end
    object FKCadastroROM_QEXP: TSmallintField
      FieldName = 'ROM_QEXP'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_QEXP"'
    end
    object FKCadastroROM_DEXP: TDateField
      DisplayLabel = 'Prev. Chegada'
      FieldName = 'ROM_DEXP'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_DEXP"'
      DisplayFormat = 'dd/mm/yy'
    end
    object FKCadastroROM_DBAI: TDateField
      DisplayLabel = 'Real Chegada'
      FieldName = 'ROM_DBAI'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_DBAI"'
      DisplayFormat = 'dd/mm/yy'
    end
    object FKCadastroROM_NFCI: TIBStringField
      DisplayLabel = 'NFCI'
      FieldName = 'ROM_NFCI'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_NFCI"'
      Size = 40
    end
    object FKCadastroROM_STAV: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'ROM_STAV'
      Origin = '"VW_PED_COM_ITE_TMP"."ROM_STAV"'
      Size = 30
    end
    object FKCadastroPSBR: TIBBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PSBR'
      Origin = '"VW_PED_COM_ITE_TMP"."PSBR"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 3
    end
    object FKCadastroPSLQ: TIBBCDField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'PSLQ'
      Origin = '"VW_PED_COM_ITE_TMP"."PSLQ"'
      DisplayFormat = ',##,0.00'
      Precision = 18
      Size = 3
    end
  end
  object DTSFKCadastro: TDataSource
    AutoEdit = False
    DataSet = FKCadastro
    OnDataChange = DTSFKCadastroDataChange
    Left = 136
    Top = 256
  end
  object PPSheild: TPopupMenu
    Left = 424
    Top = 193
    object AtualizarEstoque1: TMenuItem
      Caption = 'Atualizar Estoque'
      OnClick = AtualizarEstoque1Click
    end
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
      Tag = 1
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
