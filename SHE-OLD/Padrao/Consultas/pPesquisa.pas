unit pPesquisa;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, ImgList, dxEditor, dxExEdtr,
  dxEdLib, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxPageControl, ComCtrls,
  dxDBELib, DBCtrls, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, jpeg,
  IBStoredProc, IBDatabase, dxDBTLCl, dxGrClms, DateUtils, Math, StrUtils, rxSpeedbar,
  cxGraphics, cxControls, dxStatusBar;

type
  TFrmPesquisa = class(TForm)
    Shape21: TShape;
    Label11: TLabel;
    EDTXT: TdxMaskEdit;
    Label5: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Shape3: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    dxDT1: TdxDateEdit;
    dxDT2: TdxDateEdit;
    cbDATA: TdxPickEdit;
    cbCAMPO: TdxPickEdit;
    linha2: TShape;
    Shape1: TShape;
    ILMenu: TImageList;
    SBMenu: TSpeedBar;
    SSPrincipal: TSpeedbarSection;
    SIMValida: TSpeedItem;
    SIMSaida: TSpeedItem;
    SBRodape: TdxStatusBar;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDTXTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure EDTXTKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SIMValidaClick(Sender: TObject);
    procedure SIMSaidaClick(Sender: TObject);
    procedure dxDT1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dxDT1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Editado: Boolean;
    cField,cData,
    cPesquisaWhere,cPesquisaLike: string;
  end;

var
  FrmPesquisa: TFrmPesquisa;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TFrmPesquisa.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crAppStart;
end;

procedure TFrmPesquisa.FormShow(Sender: TObject);
begin
  case tag of
    1: begin { Clientes }
         { CADASTRO }
         cbcampo.Items.Add('Código Cliente');
         cbcampo.Items.Add('Nome Fantasia');
         cbcampo.Items.Add('Razão Social');
         cbcampo.Items.Add('Grupo Comercial');
         cbcampo.Items.Add('');

         { SITUAÇÕES }
         cbcampo.Items.Add('Situação Cadastral');
         cbcampo.Items.Add('Situação Pedidos');
         cbcampo.Items.Add('Situação Financeira');
         cbcampo.Items.Add('');

         { DOCUMENTOS }
         cbcampo.Items.Add('CNPJ');
         cbcampo.Items.Add('Inscrição Estadual');
         cbcampo.Items.Add('Regime Tributário');
         cbcampo.Items.Add('CPF');
         cbcampo.Items.Add('');

         { VENDEDORES }
         cbcampo.Items.Add('Código Vendedor');
         cbcampo.Items.Add('Nome Vendedor');
         cbcampo.Items.Add('');

         { REPRESENTANRES }
         cbcampo.Items.Add('Código Representante');
         cbcampo.Items.Add('Nome Representante');
         cbcampo.Items.Add('');

         { TRANSPORTADORAS }
         cbcampo.Items.Add('Código Transportadora');
         cbcampo.Items.Add('Nome Transportadora');
         cbcampo.Items.Add('');

         { CONTROLE }
         cbcampo.Items.Add('Nº Pedido');
         cbcampo.Items.Add('Nº Romaneio');
         cbcampo.Items.Add('Nº Nota Fiscal');
         cbcampo.Items.Add('Nº Título');
         cbcampo.Items.Add('');

         { ENDEREÇOS }
         cbcampo.Items.Add('Logradouro');
         cbcampo.Items.Add('Cep');
         cbcampo.Items.Add('Bairro');
         cbcampo.Items.Add('Cidade');
         cbcampo.Items.Add('UF');
         cbcampo.Items.Add('');

         APSQ_CAD_CLI := IFThen(APSQ_CAD_CLI = '','Nome Fantasia',APSQ_CAD_CLI);
         cbcampo.Text := APSQ_CAD_CLI;

         { PERÍODOS CADASTRAIS }
         cbdata.Items.Add('Criação');
         cbdata.Items.Add('Cancelamento');
         cbdata.Items.Add('');

         { PERÍODOS DE CONTROLE }
         cbdata.Items.Add('Entradas de Pedidos Programados');
         cbdata.Items.Add('Entradas de Pedidos Pronta Entrega');
         cbdata.Items.Add('');
         
         cbdata.Items.Add('Emissões de Notas Fiscais');
         cbdata.Items.Add('Saídas de Notas Fiscais');
         cbdata.Items.Add('Faturamentos');

         cbdata.Text := 'Criação';
       end;
    2: begin { Fornecedores }
         { CADASTRO }
         cbcampo.Items.Add('Código Cliente');
         cbcampo.Items.Add('Nome Fantasia');
         cbcampo.Items.Add('Razão Social');
         cbcampo.Items.Add('Grupo Comercial');
         cbcampo.Items.Add('');

         { SITUAÇÕES }
         cbcampo.Items.Add('Situação Cadastral');
         cbcampo.Items.Add('Situação Pedidos');
         cbcampo.Items.Add('Situação Financeira');
         cbcampo.Items.Add('');

         { DOCUMENTOS }
         cbcampo.Items.Add('CNPJ');
         cbcampo.Items.Add('Inscrição Estadual');
         cbcampo.Items.Add('Regime Tributário');
         cbcampo.Items.Add('CPF');
         cbcampo.Items.Add('');

         { VENDEDORES }
         cbcampo.Items.Add('Código Vendedor');
         cbcampo.Items.Add('Nome Vendedor');
         cbcampo.Items.Add('');

         { REPRESENTANRES }
         cbcampo.Items.Add('Código Representante');
         cbcampo.Items.Add('Nome Representante');
         cbcampo.Items.Add('');

         { TRANSPORTADORAS }
         cbcampo.Items.Add('Código Transportadora');
         cbcampo.Items.Add('Nome Transportadora');
         cbcampo.Items.Add('');

         { CONTROLE }
         cbcampo.Items.Add('Nº Pedido');
         cbcampo.Items.Add('Nº Romaneio');
         cbcampo.Items.Add('Nº Nota Fiscal');
         cbcampo.Items.Add('Nº Título');
         cbcampo.Items.Add('');

         { ENDEREÇOS }
         cbcampo.Items.Add('Logradouro');
         cbcampo.Items.Add('Cep');
         cbcampo.Items.Add('Bairro');
         cbcampo.Items.Add('Cidade');
         cbcampo.Items.Add('UF');
         cbcampo.Items.Add('');

         APSQ_CAD_FOR := IFThen(APSQ_CAD_FOR = '','Nome Fantasia',APSQ_CAD_FOR);
         cbcampo.Text := APSQ_CAD_FOR;

         { PERÍODOS CADASTRAIS }
         cbdata.Items.Add('Criação');
         cbdata.Items.Add('Cancelamento');
         cbdata.Items.Add('');

         { PERÍODOS DE CONTROLE }
         cbdata.Items.Add('Entradas de Pedidos Programados');
         cbdata.Items.Add('Entradas de Pedidos Pronta Entrega');
         cbdata.Items.Add('');
         
         cbdata.Items.Add('Emissões de Notas Fiscais');
         cbdata.Items.Add('Saídas de Notas Fiscais');
         cbdata.Items.Add('Faturamentos');

         cbdata.Text := 'Criação';
       end;
    3: begin { Representantes }
         { CADASTRO }
         cbcampo.Items.Add('Código Cliente');
         cbcampo.Items.Add('Nome Fantasia');
         cbcampo.Items.Add('Razão Social');
         cbcampo.Items.Add('Grupo Comercial');
         cbcampo.Items.Add('');

         { SITUAÇÕES }
         cbcampo.Items.Add('Situação Cadastral');
         cbcampo.Items.Add('Situação Pedidos');
         cbcampo.Items.Add('Situação Financeira');
         cbcampo.Items.Add('');

         { DOCUMENTOS }
         cbcampo.Items.Add('CNPJ');
         cbcampo.Items.Add('Inscrição Estadual');
         cbcampo.Items.Add('Regime Tributário');
         cbcampo.Items.Add('CPF');
         cbcampo.Items.Add('');

         { VENDEDORES }
         cbcampo.Items.Add('Código Vendedor');
         cbcampo.Items.Add('Nome Vendedor');
         cbcampo.Items.Add('');

         { REPRESENTANRES }
         cbcampo.Items.Add('Código Representante');
         cbcampo.Items.Add('Nome Representante');
         cbcampo.Items.Add('');

         { TRANSPORTADORAS }
         cbcampo.Items.Add('Código Transportadora');
         cbcampo.Items.Add('Nome Transportadora');
         cbcampo.Items.Add('');

         { CONTROLE }
         cbcampo.Items.Add('Nº Pedido');
         cbcampo.Items.Add('Nº Romaneio');
         cbcampo.Items.Add('Nº Nota Fiscal');
         cbcampo.Items.Add('Nº Título');
         cbcampo.Items.Add('');

         { ENDEREÇOS }
         cbcampo.Items.Add('Logradouro');
         cbcampo.Items.Add('Cep');
         cbcampo.Items.Add('Bairro');
         cbcampo.Items.Add('Cidade');
         cbcampo.Items.Add('UF');
         cbcampo.Items.Add('');

         APSQ_CAD_REP := IFThen(APSQ_CAD_REP = '','Nome Fantasia',APSQ_CAD_REP);
         cbcampo.Text := APSQ_CAD_REP;

         { PERÍODOS CADASTRAIS }
         cbdata.Items.Add('Criação');
         cbdata.Items.Add('Cancelamento');
         cbdata.Items.Add('');

         { PERÍODOS DE CONTROLE }
         cbdata.Items.Add('Entradas de Pedidos Programados');
         cbdata.Items.Add('Entradas de Pedidos Pronta Entrega');
         cbdata.Items.Add('');
         
         cbdata.Items.Add('Emissões de Notas Fiscais');
         cbdata.Items.Add('Saídas de Notas Fiscais');
         cbdata.Items.Add('Faturamentos');

         cbdata.Text := 'Criação';
       end;
    4: begin { Transportadoras }
         { CADASTRO }
         cbcampo.Items.Add('Código Cliente');
         cbcampo.Items.Add('Nome Fantasia');
         cbcampo.Items.Add('Razão Social');
         cbcampo.Items.Add('Grupo Comercial');
         cbcampo.Items.Add('');

         { SITUAÇÕES }
         cbcampo.Items.Add('Situação Cadastral');
         cbcampo.Items.Add('Situação Pedidos');
         cbcampo.Items.Add('Situação Financeira');
         cbcampo.Items.Add('');

         { DOCUMENTOS }
         cbcampo.Items.Add('CNPJ');
         cbcampo.Items.Add('Inscrição Estadual');
         cbcampo.Items.Add('Regime Tributário');
         cbcampo.Items.Add('CPF');
         cbcampo.Items.Add('');

         { VENDEDORES }
         cbcampo.Items.Add('Código Vendedor');
         cbcampo.Items.Add('Nome Vendedor');
         cbcampo.Items.Add('');

         { REPRESENTANRES }
         cbcampo.Items.Add('Código Representante');
         cbcampo.Items.Add('Nome Representante');
         cbcampo.Items.Add('');

         { TRANSPORTADORAS }
         cbcampo.Items.Add('Código Transportadora');
         cbcampo.Items.Add('Nome Transportadora');
         cbcampo.Items.Add('');

         { CONTROLE }
         cbcampo.Items.Add('Nº Pedido');
         cbcampo.Items.Add('Nº Romaneio');
         cbcampo.Items.Add('Nº Nota Fiscal');
         cbcampo.Items.Add('Nº Título');
         cbcampo.Items.Add('');

         { ENDEREÇOS }
         cbcampo.Items.Add('Logradouro');
         cbcampo.Items.Add('Cep');
         cbcampo.Items.Add('Bairro');
         cbcampo.Items.Add('Cidade');
         cbcampo.Items.Add('UF');
         cbcampo.Items.Add('');

         APSQ_CAD_TRA := IFThen(APSQ_CAD_TRA = '','Nome Fantasia',APSQ_CAD_TRA);
         cbcampo.Text := APSQ_CAD_TRA;

         { PERÍODOS CADASTRAIS }
         cbdata.Items.Add('Criação');
         cbdata.Items.Add('Cancelamento');
         cbdata.Items.Add('');

         { PERÍODOS DE CONTROLE }
         cbdata.Items.Add('Entradas de Pedidos Programados');
         cbdata.Items.Add('Entradas de Pedidos Pronta Entrega');
         cbdata.Items.Add('');
         
         cbdata.Items.Add('Emissões de Notas Fiscais');
         cbdata.Items.Add('Saídas de Notas Fiscais');
         cbdata.Items.Add('Faturamentos');

         cbdata.Text := 'Criação';
       end;

    5: begin { Compras }
         cbcampo.Items.Add('Nº Pedido');
         cbcampo.Items.Add('Container');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Código Destinatário');
         cbcampo.Items.Add('Nome Fantasia');
         cbcampo.Items.Add('Razão Social');
         cbcampo.Items.Add('CNPJ');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Comprador');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('Transportadora');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Tipos de Pedidos');
         cbcampo.Items.Add('Tipos de Cobranças');
         cbcampo.Items.Add('Prazos de Vencimentos');
         cbcampo.Items.Add('Status do Pedido');

         APSQ_PED_PDC := IFThen(APSQ_PED_PDC = '','Nº Pedido',APSQ_PED_PDC);
         cbcampo.Text := APSQ_PED_PDC;

         cbdata.Items.Add('Data de Emissão do Pedido');
         cbdata.Text :=   'Data de Emissão do Pedido';
       end;

    6: begin { Programações }
         cbcampo.Items.Add('Nº Pedido');
         cbcampo.Items.Add('Container');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Código Destinatário');
         cbcampo.Items.Add('Nome Fantasia');
         cbcampo.Items.Add('Razão Social');
         cbcampo.Items.Add('CNPJ');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('Transportadora');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Tipos de Pedidos');
         cbcampo.Items.Add('Tipos de Cobranças');
         cbcampo.Items.Add('Prazos de Vencimentos');
         cbcampo.Items.Add('Status do Pedido');

         APSQ_PED_PDP := IFThen(APSQ_PED_PDP = '','Nº Pedido',APSQ_PED_PDP);
         cbcampo.Text := APSQ_PED_PDP;

         cbdata.Items.Add('Data de Emissão do Pedido');
         cbdata.Text :=   'Data de Emissão do Pedido';
       end;

    7: begin { Vendas }
         cbcampo.Items.Add('Nº Pedido');
         cbcampo.Items.Add('Nº Romaneio');
         cbcampo.Items.Add('Nº Nota Fiscal');
         cbcampo.Items.Add('Container');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Código Destinatário');
         cbcampo.Items.Add('Nome Fantasia');
         cbcampo.Items.Add('Razão Social');
         cbcampo.Items.Add('CNPJ');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('Transportadora');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Tipos de Pedidos');
         cbcampo.Items.Add('Tipos de Cobranças');
         cbcampo.Items.Add('Prazos de Vencimentos');
         cbcampo.Items.Add('Status do Pedido');

         APSQ_PED_PDV := IFThen(APSQ_PED_PDV = '','Nº Pedido',APSQ_PED_PDV);
         cbcampo.Text := APSQ_PED_PDV;

         cbdata.Items.Add('Data de Emissão do Pedido');
         cbdata.Items.Add('Data de Emissão do Romaneio');
         cbdata.Items.Add('Data de Emissão da Nota Fiscal');
         cbdata.Items.Add('Data de Faturamento');
         cbdata.Items.Add('');

         cbdata.Items.Add('Data de Devolução');
         cbdata.Items.Add('Data de Abatimento');
         cbdata.Items.Add('Data de Cancelamento');

         cbdata.Text := 'Data de Emissão do Pedido';
       end;

    8: begin { Romaneios }
         cbcampo.Items.Add('Nº Pedido');
         cbcampo.Items.Add('Nº Romaneio');
         cbcampo.Items.Add('Nº Nota Fiscal');
         cbcampo.Items.Add('Container');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Código Destinatário');
         cbcampo.Items.Add('Nome Fantasia');
         cbcampo.Items.Add('Razão Social');
         cbcampo.Items.Add('CNPJ');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('Transportadora');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Tipos de Pedidos');
         cbcampo.Items.Add('Tipos de Cobranças');
         cbcampo.Items.Add('Prazos de Vencimentos');
         cbcampo.Items.Add('Status do Pedido');

         APSQ_PED_RDV := IFThen(APSQ_PED_RDV = '','Nº Pedido',APSQ_PED_RDV);
         cbcampo.Text := APSQ_PED_RDV;

         cbdata.Items.Add('Data de Emissão do Pedido');
         cbdata.Items.Add('Data de Emissão do Romaneio');
         cbdata.Items.Add('Data de Emissão da Nota Fiscal');
         cbdata.Items.Add('Data de Faturamento');
         cbdata.Items.Add('');

         cbdata.Items.Add('Data de Devolução');
         cbdata.Items.Add('Data de Abatimento');
         cbdata.Items.Add('Data de Cancelamento');

         cbdata.Text := 'Data de Emissão do Pedido';
       end;

    9: begin { Notas Fiscais }
         cbcampo.Items.Add('Nº Nota Fiscal');
         cbcampo.Items.Add('Nº CFOP');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Nº Pedido');
         cbcampo.Items.Add('Nº Romaneio');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Código Destinatário');
         cbcampo.Items.Add('Nome Fantasia');
         cbcampo.Items.Add('Razão Social');
         cbcampo.Items.Add('CNPJ');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('Transportadora');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Status da Nota Fiscal');

         APSQ_FIS_NFE := IFThen(APSQ_FIS_NFE = '','Nº Nota Fiscal',APSQ_FIS_NFE);
         cbcampo.Text := APSQ_FIS_NFE;

         cbdata.Items.Add('Data de Emissão da Nota Fiscal');
         cbdata.Text :=   'Data de Emissão da Nota Fiscal';
       end;

   10: begin { Financeiro }
         cbcampo.Items.Add('Título');
         cbcampo.Items.Add('Container');
         cbcampo.Items.Add('Situação');
         cbcampo.Items.Add('Tipo');
         cbcampo.Items.Add('Cobrança');
         cbcampo.Items.Add('Crédito');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Código Cliente');
         cbcampo.Items.Add('Nome Fantasia');
         cbcampo.Items.Add('Razão Social');
         cbcampo.Items.Add('Grupo Comercial');
         cbcampo.Items.Add('CNPJ');
         cbcampo.Items.Add('CPF');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Vendedor');
         cbcampo.Items.Add('Representante');
         cbcampo.Items.Add('');

         cbcampo.Items.Add('Situação Boleto');
         cbcampo.Items.Add('Carteira');
         cbcampo.Items.Add('ID de Integração Bancária');
         cbcampo.Items.Add('');

         APSQ_FIN_REC := IFThen(APSQ_FIN_REC = '','Título',APSQ_FIN_REC);
         cbcampo.Text := APSQ_FIN_REC;

         cbdata.Items.Add('Fatura');
         cbdata.Items.Add('Vencimento');
         cbdata.Items.Add('Pagamento');
         cbdata.Items.Add('Baixa');
         cbdata.Items.Add('Cancelamento');
         cbdata.Text := 'Fatura';
       end;
  end;

  cbCAMPO.DropDownRows := cbCAMPO.Items.Count;
end;

procedure TFrmPesquisa.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  Screen.Cursor := crDefault;
end;
                                                    
procedure TFrmPesquisa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Editado := ((CField <> EmptyStr) and (EDTXT.Text <> EmptyStr)) or ((CData <> EmptyStr) and (dxDT1.Date > 0) and (dxDT2.Date > 0));

  if Editado then
  begin
    { PESQUISA POR DATA }
    if (cbData.Text = EmptyStr) and (dxDT1.Date > 0) and (dxDT2.Date > 0) then
    oException(cbData,'Tipo de pesquisa por data não informada !');

    if (dxDT1.Date > 0) and (dxDT2.Date <= 0) then
    oException(dxDT2,'Data final não informada !');

    if (dxDT2.Date > 0) and (dxDT1.Date <= 0) then
    oException(dxDT1,'Data inicial não informada !');

    if (dxDT1.Date > 0) and (dxDT2.Date < dxDT1.Date) then
    oException(dxDT2,'Data final não não pode ser menor que data inicial !');

    { PESQUISA POR TEXTO }
    if ((Pos('Código',cbCAMPO.Text) > 0) or  (Pos('Nº'    ,cbCAMPO.Text) > 0) or (Pos('Roman',cbCAMPO.Text) > 0) or (Pos('NF',cbCAMPO.Text) > 0)) and
        (Pos('Pedido',cbCAMPO.Text) = 0) and (Pos('Título',cbCAMPO.Text) = 0) then
    begin
      if (EDTXT.Text <> EmptyStr) and (not oBSONumero(EDTXT.Text)) then
      begin
        Editado := False;
        oException(Nil,'Digite apenas números !');
      end;

      cPesquisaWhere := '=';
      cPesquisaLike  := '';
    end else

    if ((Pos('Segmento',cbCAMPO.Text) > 0) or (Pos('Grupo',cbCAMPO.Text) > 0) or (Pos('Situação',cbCAMPO.Text) > 0) or (Pos('Tipo',cbCAMPO.Text) > 0) or (Pos('Repre',cbCAMPO.Text) > 0) or (Pos('Vendedor',cbCAMPO.Text) > 0)) and
        (Pos('Defeito',cbCAMPO.Text ) = 0) then
    begin
      cPesquisaWhere := 'LIKE';
      cPesquisaLike  := '%';
    end else
    begin
      cPesquisaWhere := 'CONTAINING';
      cPesquisaLike  := '';
    end;
  end;  
end;

procedure TFrmPesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPesquisa.FormDestroy(Sender: TObject);
begin
  FrmPesquisa := Nil;
end;

procedure TFrmPesquisa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_RETURN: if (not (activeControl is TdxDBGrid) and
                      not (activeControl is TDBMemo)   and
                      not (activeControl is TdxMemo)   and
                      not (activeControl is TdxDBMemo) and
                      not (activeControl is TdbGrid)   and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       40       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, true, true);
       38       : if (not (activeControl is TdxDBGrid)    and
                      not (activeControl is TDBMemo)      and
                      not (activeControl is TdxMemo)      and
                      not (activeControl is TdxDBMemo)    and
                      not (activeControl is TdbGrid)      and
                      not (activeControl is TdxImageEdit) and
                      not (activeControl is TdxPickEdit)  and
                      not (activeControl is TComboBox)    and
                      not (activeControl is TMemo)) then
                      selectNext (activecontrol, false, true);
       VK_ESCAPE: SIMSaida.Click;
  end;
end;

procedure TFrmPesquisa.SIMValidaClick(Sender: TObject);
begin
  case Tag of
    1: begin { Clientes }
         { CADASTRO }
         if cbCAMPO.Text = 'Código Cliente' then
            cField := 'PK.CD_ID' else
         if cbCAMPO.Text = 'Nome Fantasia' then
            cField := 'PK.CD_NO' else
         if cbCAMPO.Text = 'Razão Social' then
            cField := 'PK.CD_RZ_NO' else
         if cbCAMPO.Text = 'Grupo Comercial' then
            cField := 'PK.CD_GP_NO' else

         { SITUAÇÕES }   
         if cbCAMPO.Text = 'Situação Cadastral' then
            cField := 'PK.DEST' else
         if cbCAMPO.Text = 'Situação Pedidos' then
            cField := 'PV_PK.DEST' else
         if cbCAMPO.Text = 'Situação Financeira' then
            cField := 'FN_PK.DEST' else

         { DOCUMENTOS }
         if cbCAMPO.Text = 'CNPJ' then
            cField := 'PK.CNPJ' else
         if cbCAMPO.Text = 'Inscrição Estadual' then
            cField := 'PK.IE' else
         if cbCAMPO.Text = 'Regime Tributário' then
            cField := 'PK.FIS_CRT_NO' else
         if cbCAMPO.Text = 'CPF' then
            cField := 'PK.CPF' else

         { VENDEDORES }
         if cbCAMPO.Text = 'Código Vendedor' then
            cField := 'PK.CV_ID' else
         if cbCAMPO.Text = 'Nome Vendedor' then
            cField := 'PK.CV_NO' else

         { REPRESENTANRES }
         if cbCAMPO.Text = 'Código Representante' then
            cField := 'PK.CR_ID' else
         if cbCAMPO.Text = 'Nome Representante' then
            cField := 'PK.CR_NO' else

         { TRANSPORTADORAS }
         if cbCAMPO.Text = 'Código Transportadora' then
            cField := 'PK.CT_ID' else
         if cbCAMPO.Text = 'Nome Transportadora' then
            cField := 'PK.CT_NO' else

         { CONTROLE }
         if cbCAMPO.Text = 'Nº Pedido' then
            cField := 'PV_PK.DEPK' else
         if cbCAMPO.Text = 'Nº Romaneio' then
            cField := 'PV_PK.CDRO' else
         if cbCAMPO.Text = 'Nº Nota Fiscal' then
            cField := 'PV_PK.CDNF' else
         if cbCAMPO.Text = 'Nº Título' then
            cField := 'FN_PK.TITULO' else

         { ENDEREÇOS }
         if cbCAMPO.Text = 'Logradouro' then
            cField := 'PK.LOG_NO_ABREV' else
         if cbCAMPO.Text = 'Cep' then
            cField := 'PK.CEP' else
         if cbCAMPO.Text = 'Bairro' then
            cField := 'PK.BAI_NO_ABREV' else
         if cbCAMPO.Text = 'Cidade' then
            cField := 'PK.LOC_NO_ABREV' else
         if cbCAMPO.Text = 'UF' then
            cField := 'PK.UF' else

         { PERÍODOS CADASTRO }
         if cbDATA.Text = 'Criação de Cadastro' then
            cData := 'PK.DTCD' else
         if cbDATA.Text = 'Cancelamento de Cadastro' then
            cData := 'CAST(PK.DTST AS DATE)';

         { PERÍODOS VENDAS }
         if cbDATA.Text = 'Entradas de Pedidos Programados' then
            cData := 'PK.DTPP' else
         if cbDATA.Text = 'Entradas de Pedidos Pronta Entrega' then
            cData := 'PK.DTPV' else

         { PERÍODOS FINANCEIRO }
         if cbDATA.Text = 'Emissões de Notas Fiscais' then
            cData := 'PK.DTNF' else
         if cbDATA.Text = 'Saídas de Notas Fiscais' then
            cData := 'PK.DTSA' else
         if cbDATA.Text = 'Faturamentos' then
            cData := 'PK.DTBX';
        end;

     2: begin { Fornecedores }
        end;

     3: begin { Representantes }
        end;

     4: begin { Transportadoras }
        end;

     5: begin { Compras }
         if cbCAMPO.Text = 'Nº Pedido' then
            cField := 'PK.DEPK' else
         if cbCAMPO.Text = 'Nº Container' then
            cField := 'PK.CTNR' else

         if cbCAMPO.Text = 'Código Destinatário' then
            cField := 'PK.CD_ID' else
         if cbCAMPO.Text = 'Nome Fantasia' then
            cField := 'PK.CD_NO' else
         if cbCAMPO.Text = 'Razão Social' then
            cField := 'PK.CD_NO_RZ' else
         if cbCAMPO.Text = 'CNPJ' then
            cField := 'PK.CNPJ' else

         if cbCAMPO.Text = 'Comprador' then
            cField := 'PK.CV_NO' else
         if cbCAMPO.Text = 'Representante' then
            cField := 'PK.CR_NO' else
         if cbCAMPO.Text = 'Transportadora' then
            cField := 'PK.CT_NO' else

         if cbCAMPO.Text = 'Tipos de Pedidos' then
            cField := 'PK.TPD_NO';
         if cbCAMPO.Text = 'Tipos de Cobranças' then
            cField := 'PK.TCO_NO';
         if cbCAMPO.Text = 'Prazos de Vencimentos' then
            cField := 'PK.TCO_NO_PRZ';
         if cbCAMPO.Text = 'Status do Pedido' then
            cField := 'PK.DEST';

         if cbDATA.Text = 'Data de Emissão do Pedido' then
            cData := 'PK.DTPK';
       end;

     6: begin { Programações }
         if cbCAMPO.Text = 'Nº Pedido' then
            cField := 'PK.DEPK' else
         if cbCAMPO.Text = 'Nº Container' then
            cField := 'PK.CTNR' else

         if cbCAMPO.Text = 'Código Destinatário' then
            cField := 'PK.CD_ID' else
         if cbCAMPO.Text = 'Nome Fantasia' then
            cField := 'PK.CD_NO' else
         if cbCAMPO.Text = 'Razão Social' then
            cField := 'PK.CD_NO_RZ' else
         if cbCAMPO.Text = 'CNPJ' then
            cField := 'PK.CNPJ' else

         if cbCAMPO.Text = 'Vendedor' then
            cField := 'PK.CV_NO' else
         if cbCAMPO.Text = 'Representante' then
            cField := 'PK.CR_NO' else
         if cbCAMPO.Text = 'Transportadora' then
            cField := 'PK.CT_NO' else

         if cbCAMPO.Text = 'Tipos de Pedidos' then
            cField := 'PK.TPD_NO';
         if cbCAMPO.Text = 'Tipos de Cobranças' then
            cField := 'PK.TCO_NO';
         if cbCAMPO.Text = 'Prazos de Vencimentos' then
            cField := 'PK.TCO_NO_PRZ';
         if cbCAMPO.Text = 'Status do Pedido' then
            cField := 'PK.DEST';

         if cbDATA.Text = 'Data de Emissão do Pedido' then
            cData := 'PK.DTPK';
       end;

     7: begin { Vendas }
         if cbCAMPO.Text = 'Nº Pedido' then
            cField := 'PK.DEPK' else
         if cbCAMPO.Text = 'Nº Romaneio' then
            cField := 'PK.CDRO' else
         if cbCAMPO.Text = 'Nº Nota Fiscal' then
            cField := 'PK.CDNF' else
         if cbCAMPO.Text = 'Nº Container' then
            cField := 'PK.CTNR' else

         if cbCAMPO.Text = 'Código Destinatário' then
            cField := 'PK.IDCD' else
         if cbCAMPO.Text = 'Nome Fantasia' then
            cField := 'PK.DECD' else
         if cbCAMPO.Text = 'Razão Social' then
            cField := 'PK.RZCD' else
         if cbCAMPO.Text = 'CNPJ' then
            cField := 'PK.CNPJ' else

         if cbCAMPO.Text = 'Vendedor' then
            cField := 'PK.DECV' else
         if cbCAMPO.Text = 'Representante' then
            cField := 'PK.DECR' else
         if cbCAMPO.Text = 'Transportadora' then
            cField := 'PK.DECT' else

         if cbCAMPO.Text = 'Tipos de Pedidos' then
            cField := 'PK.STPD';
         if cbCAMPO.Text = 'Tipos de Cobranças' then
            cField := 'PK.STCO';
         if cbCAMPO.Text = 'Prazos de Vencimentos' then
            cField := 'PK.DEPG';
         if cbCAMPO.Text = 'Status do Pedido' then
            cField := 'PK.DEST';

         if cbDATA.Text = 'Data de Emissão do Pedido' then
            cData := 'PK.DTPK' else
         if cbDATA.Text = 'Data de Emissão do Romaneio' then
            cData := 'PK.DTRO' else
         if cbDATA.Text = 'Data de Emissão da Nota Fiscal' then
            cData := 'PK.DTNF' else
         if cbDATA.Text = 'Data de Faturamento' then
            cData := 'PK.DTBX' else
         if cbDATA.Text = 'Data de Devolução' then
            cData := 'PK.DTPK' else
         if cbDATA.Text = 'Data de Abatimento' then
            cData := 'PK.DTPK' else
         if cbDATA.Text = 'Data de Cancelamento' then
            cData := 'PK.DTST';
       end;

     8: begin { Romaneios }
         if cbCAMPO.Text = 'Nº Pedido' then
            cField := 'PK.ROM_DERO' else
         if cbCAMPO.Text = 'Nº Romaneio' then
            cField := 'PK.ID' else
         if cbCAMPO.Text = 'Nº Nota Fiscal' then
            cField := 'PK.ROM_CDNF' else
         if cbCAMPO.Text = 'Nº Container' then
            cField := 'PK.ROM_CTNR' else

         if cbCAMPO.Text = 'Código Destinatário' then
            cField := 'PK.IDCD' else
         if cbCAMPO.Text = 'Nome Fantasia' then
            cField := 'PK.DECD' else
         if cbCAMPO.Text = 'Razão Social' then
            cField := 'PK.DECD' else
         if cbCAMPO.Text = 'CNPJ' then
            cField := 'PK.CNPJ' else

         if cbCAMPO.Text = 'Vendedor' then
            cField := 'PK.DECV' else
         if cbCAMPO.Text = 'Representante' then
            cField := 'PK.DECR' else
         if cbCAMPO.Text = 'Transportadora' then
            cField := 'PK.ROM_DTRA' else

         if cbCAMPO.Text = 'Tipos de Pedidos' then
            cField := 'PK.ROM_STPD';
         if cbCAMPO.Text = 'Tipos de Cobranças' then
            cField := 'PK.ROM_STCO';
         if cbCAMPO.Text = 'Prazos de Vencimentos' then
            cField := 'PK.DEPG';
         if cbCAMPO.Text = 'Status do Pedido' then
            cField := 'PK.ROM_STFI';

         if cbDATA.Text = 'Data de Emissão do Pedido' then
            cData := 'PK.ROM_DROM' else
         if cbDATA.Text = 'Data de Emissão do Romaneio' then
            cData := 'PK.ROM_DROM' else
         if cbDATA.Text = 'Data de Emissão da Nota Fiscal' then
            cData := 'PK.ROM_DFNS' else
         if cbDATA.Text = 'Data de Faturamento' then
            cData := 'PK.ROM_DBAI' else
         if cbDATA.Text = 'Data de Devolução' then
            cData := 'PK.ROM_DROM' else
         if cbDATA.Text = 'Data de Abatimento' then
            cData := 'PK.ROM_DERO' else
         if cbDATA.Text = 'Data de Cancelamento' then
            cData := 'PK.ROM_DROM';
       end;

     9: begin { Notas Fiscais }
         if cbCAMPO.Text = 'Nº Nota Fiscal' then
            cField := 'PK.NFE_CDNF' else
         if cbCAMPO.Text = 'Nº CFOP' then
            cField := 'PK.NFE_CNAT' else
         if cbCAMPO.Text = 'Nº Pedido' then
            cField := 'PK.NFE_DERO' else
         if cbCAMPO.Text = 'Nº Romaneio' then
            cField := 'PK.NFE_CDRO' else

         if cbCAMPO.Text = 'Código Destinatário' then
            cField := 'PK.NFE_CFAV' else
         if cbCAMPO.Text = 'Nome Fantasia' then
            cField := 'PK.NFE_DFAV' else
         if cbCAMPO.Text = 'Razão Social' then
            cField := 'PK.NFE_DFAV' else

         if cbCAMPO.Text = 'Vendedor' then
            cField := 'PK.NFE_DVEN' else
         if cbCAMPO.Text = 'Representante' then
            cField := 'PK.NFE_DREP' else
         if cbCAMPO.Text = 'Transportadora' then
            cField := 'PK.NFE_DTRA' else

         if cbCAMPO.Text = 'Status da Nota Fiscal' then
            cField := 'PK.DEST';

         if cbDATA.Text = 'Data de Emissão da Nota Fiscal' then
            cData := 'PK.NFE_DEMI';
       end;
  end;

  Editado := True;
  Close;
end;

procedure TFrmPesquisa.SIMSaidaClick(Sender: TObject);
begin
  EDTXT.Text := EmptyStr;
  DXDT1.Text := '';
  DXDT2.Text := '';

  Editado := False;
  Close;
end;

procedure TFrmPesquisa.EDTXTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  SIMValida.Click;
end;

procedure TFrmPesquisa.EDTXTKeyPress(Sender: TObject; var Key: Char);
begin
  if (Length(edTXT.Text) >= 1) and (key <> #8) then
  if key in ['0'..'9'] then
  begin
    if (Pos('Código',cbCAMPO.Text) = 0) and (Pos('Nº' ,cbCAMPO.Text) = 0) and
       (Pos('CNPJ'  ,cbCAMPO.Text) = 0) and (Pos('CPF',cbCAMPO.Text) = 0) and
       (cbCAMPO.Text <> 'Inscrição Estadual') then
    begin
      cbCAMPO.Text := cbCAMPO.Items.Strings[0];
      EDTXT.Tag    := 1;
    end;
  end else

  if ((Pos('Código',cbCAMPO.Text) > 0) or (Pos('Nº' ,cbCAMPO.Text) > 0)  or
      (Pos('Roman' ,cbCAMPO.Text) > 0) or (Pos('NF' ,cbCAMPO.Text) > 0)  or
      (Pos('CNPJ'  ,cbCAMPO.Text) > 0) or (Pos('CPF',cbCAMPO.Text) > 0)  or
      (Pos('Insc'  ,cbCAMPO.Text) > 0) or (Pos('IE' ,cbCAMPO.Text) > 0)) and

      (Pos('Título',cbCAMPO.Text) = 0) then
  begin
    cbCAMPO.Text := 'Nome Fantasia';
    EDTXT.Tag    := 1;
  end;
end;

procedure TFrmPesquisa.dxDT1Change(Sender: TObject);
begin
  dxDT2.Date := RECParametros.SHE_DATA_MES_FK;
end;

procedure TFrmPesquisa.dxDT1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) and (dxDT1.Date > 0) and (dxDT2.Date > 0) then
      SIMValida.Click;
end;

end.
