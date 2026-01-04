inherited frmcad_tra: Tfrmcad_tra
  Left = 331
  Top = 59
  Caption = 'Cadastro de Transportadoras'
  ClientHeight = 590
  OldCreateOrder = True
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited SBRodape: TdxStatusBar
    Top = 569
  end
  inherited PNLForm: TPanel
    Height = 569
    inherited PNLPrincipal: TPanel
      Height = 569
      inherited PNLPrincipalRodape: TPanel
        Top = 569
      end
      inherited PNLPrincipalME: TPanel
        Height = 569
      end
      inherited PNLPrincipalMD: TPanel
        Height = 569
      end
      inherited PNLCadastro: TPanel
        Height = 569
        inherited PNLCadastroMenu: TPanel
          inherited GBMenu: TGroupBox
            inherited SBMenu: TSpeedBar
              object SIMTabela: TSpeedItem
                BtnCaption = 'Fretes'
                Cursor = crHandPoint
                Hint = 'Tabela de Fretes Rodovi'#225'rios'
                Spacing = 1
                Left = 109
                Top = 1
                SectionName = 'Principal'
              end
            end
          end
        end
        inherited PNLCustomize: TPanel
          Height = 467
          inherited PNLCustomizeEdicao: TPanel
            Height = 467
            inherited GBEdicao: TGroupBox
              Height = 467
              inherited SBEdicao: TSpeedBar
                Height = 446
              end
            end
          end
          inherited PNLCustomizeSumario: TPanel
            Top = 467
          end
          inherited PNLCustomizeConsulta: TPanel
            Height = 467
            inherited GBCadastro: TGroupBox
              Height = 467
              inherited PCConsulta: TdxPageControl
                Height = 446
                inherited TSConsulta: TdxTabSheet
                  inherited DBGConsulta: TdxDBGrid
                    Height = 446
                    KeyField = 'ID'
                    ShowSummaryFooter = True
                    Filter.Active = True
                    Filter.Criteria = {00000000}
                    OnCustomDrawCell = dbgConsultaCustomDrawCell
                    object dbgConsultaID: TdxDBGridMaskColumn
                      Width = 49
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'ID'
                      DisableFilter = True
                    end
                    object dbgConsultaTRA_FANT: TdxDBGridMaskColumn
                      Width = 172
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TRA_FANT'
                    end
                    object dbgConsultaTRA_RAZA: TdxDBGridMaskColumn
                      Width = 298
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TRA_RAZA'
                      DisableFilter = True
                    end
                    object dbgConsultaTRA_CNPJ: TdxDBGridMaskColumn
                      Width = 131
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TRA_CNPJ'
                      DisableFilter = True
                    end
                    object dbgConsultaTRA_CPF: TdxDBGridMaskColumn
                      Width = 100
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TRA_CPF'
                      DisableFilter = True
                    end
                    object dbgConsultaTRA_LOGR: TdxDBGridMaskColumn
                      Width = 342
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TRA_LOGR'
                    end
                    object dbgConsultaTRA_BAI: TdxDBGridMaskColumn
                      Width = 236
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TRA_BAI'
                    end
                    object dbgConsultaTRA_CID: TdxDBGridMaskColumn
                      Width = 205
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TRA_CID'
                    end
                    object dbgConsultaTRA_ESTA: TdxDBGridMaskColumn
                      Width = 40
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TRA_ESTA'
                    end
                    object dbgConsultaTRA_STAV: TdxDBGridMaskColumn
                      Visible = False
                      Width = 40
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TRA_STAV'
                    end
                  end
                end
              end
            end
            inherited PNLCustomizeRodape: TPanel
              Top = 467
            end
          end
        end
      end
    end
    inherited PNLFormRodape: TPanel
      Top = 569
    end
  end
  inherited Cadastro: TIBQuery
    SQL.Strings = (
      
        'SELECT ID,TRA_FANT,TRA_RAZA,TRA_CNPJ,TRA_CPF,TRA_CRED,TRA_CID,TR' +
        'A_BAI,TRA_LOGR,TRA_ESTA,TRA_STA,TRA_STAV,TRA_DPAG,TRA_OBSO,TRA_V' +
        'DSC FROM CAD_TRA'
      'WHERE ID = 0'
      '')
    object cadastroID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = '"CAD_TRA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastroTRA_FANT: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'TRA_FANT'
      Origin = '"CAD_TRA"."TRA_FANT"'
      Size = 60
    end
    object cadastroTRA_RAZA: TIBStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'TRA_RAZA'
      Origin = '"CAD_TRA"."TRA_RAZA"'
      Size = 60
    end
    object cadastroTRA_CNPJ: TIBStringField
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'TRA_CNPJ'
      Origin = '"CAD_TRA"."TRA_CNPJ"'
      EditMask = '99.999.999/9999-99;0'
      Size = 14
    end
    object cadastroTRA_CPF: TIBStringField
      DisplayLabel = 'C.P.F.'
      FieldName = 'TRA_CPF'
      Origin = '"CAD_TRA"."TRA_CPF"'
      Size = 11
    end
    object cadastroTRA_CRED: TIBBCDField
      FieldName = 'TRA_CRED'
      Origin = '"CAD_TRA"."TRA_CRED"'
      Precision = 9
      Size = 2
    end
    object cadastroTRA_CID: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'TRA_CID'
      Origin = '"CAD_TRA"."TRA_CID"'
      Size = 40
    end
    object cadastroTRA_BAI: TIBStringField
      DisplayLabel = 'Bairoo'
      FieldName = 'TRA_BAI'
      Origin = '"CAD_TRA"."TRA_BAI"'
      Size = 40
    end
    object cadastroTRA_LOGR: TIBStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'TRA_LOGR'
      Origin = '"CAD_TRA"."TRA_LOGR"'
      Size = 60
    end
    object cadastroTRA_ESTA: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'TRA_ESTA'
      Origin = '"CAD_TRA"."TRA_ESTA"'
      Size = 2
    end
    object cadastroTRA_STA: TIBStringField
      FieldName = 'TRA_STA'
      Origin = '"CAD_TRA"."TRA_STA"'
      FixedChar = True
      Size = 1
    end
    object cadastroTRA_STAV: TIBStringField
      FieldName = 'TRA_STAV'
      Origin = '"CAD_TRA"."TRA_STAV"'
      FixedChar = True
      Size = 1
    end
    object cadastroTRA_DPAG: TIBStringField
      FieldName = 'TRA_DPAG'
      Origin = '"CAD_TRA"."TRA_DPAG"'
      Size = 50
    end
    object cadastroTRA_OBSO: TMemoField
      FieldName = 'TRA_OBSO'
      Origin = '"CAD_TRA"."TRA_OBSO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cadastroTRA_VDSC: TIBBCDField
      FieldName = 'TRA_VDSC'
      Origin = '"CAD_TRA"."TRA_VDSC"'
      Precision = 9
      Size = 2
    end
  end
end
