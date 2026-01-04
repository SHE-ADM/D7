unit pven_nfe;

interface

uses
  oPrincipal, StrInt, StrIntImp,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  ImgList, dxCntner, dxEditor, dxEdLib, StrUtils,
  StdCtrls, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxPageControl, IBDatabase, DB, IBCustomDataSet, IBQuery, dxDBELib,
  DBCtrls, Grids, DBGrids, math, dateutils, IBStoredProc, ComCtrls,
  Registry, jpeg, rxSpeedbar, IBEvents,
  XMLDom, XMLIntf, MSXMLDom, XMLDoc, XMLXForm,
  IDGlobal, IBSQL, ActnList, cxGraphics, cxControls, dxStatusBar,
  rxAnimate, rxGIFCtrl {Unit do componente Indy para usar Fetch() };

type
  TFrmVEN_NFE = class(TForm)
    PNLPrincipal: TPanel;
    TSEdicao: TIBTransaction;
    Edicao: TIBDataSet;
    DTSEdicao: TDataSource;
    TAB_ALQ: TIBQuery;
    TAB_ALQID: TIntegerField;
    TAB_ALQALQ_ESTA: TIBStringField;
    TAB_ALQALQ_ICMS: TIBBCDField;
    DTSFIS_NFE_DUP: TDataSource;
    FIS_NFE_DUP: TIBDataSet;
    TAB_PAG: TIBQuery;
    FIS_NFE_MAO: TIBDataSet;
    DTSFIS_NFE_MAO: TDataSource;
    TAB_ALQALQ_ICME: TIBBCDField;
    PNLME: TPanel;
    PNLMargemD: TPanel;
    PNLDestinatario: TPanel;
    PNLDestinatarioMargemE: TPanel;
    GBDestinatario: TGroupBox;
    LAIDCD: TLabel;
    GBCFOP: TGroupBox;
    PNLDestinatarioMargemD: TPanel;
    PNLRodape: TPanel;
    GBEdicao: TGroupBox;
    PCEdicao: TdxPageControl;
    TSProduto: TdxTabSheet;
    TSDuplicata: TdxTabSheet;
    TSServico: TdxTabSheet;
    TSDestinatario: TdxTabSheet;
    TSTransporte: TdxTabSheet;
    TSEXImporta: TdxTabSheet;
    BVEXImporta: TBevel;
    LAnDI: TLabel;
    LAdDI: TLabel;
    LAdDesemb: TLabel;
    LAcFabricante: TLabel;
    LAnAdicao: TLabel;
    LAnSeqAdic: TLabel;
    EDnDI: TdxEdit;
    DEdDI: TdxDateEdit;
    DEdDesemb: TdxDateEdit;
    EDcFabricante: TdxEdit;
    GBInfCplNF: TGroupBox;
    PCINFADCAD: TdxPageControl;
    TSInfoNF: TdxTabSheet;
    EDINFADNF: TdxMemo;
    TSInfoFisco: TdxTabSheet;
    EDInfAdFisco: TdxMemo;
    GBInfoPedido: TGroupBox;
    EDInfAdPed: TdxMemo;
    TSEXExporta: TdxTabSheet;
    LAxLocDespacho: TLabel;
    EDxLocDespacho: TdxEdit;
    LAxLocExporta: TLabel;
    EDxLocExporta: TdxEdit;
    LAUFSaidaPais: TLabel;
    EDUFSaidaPais: TdxEdit;
    BVEXExporta: TBevel;
    EDCNPJProd: TdxMaskEdit;
    LACNPJProd: TLabel;
    LAnDraw: TLabel;
    LAnRE: TLabel;
    LAqExport: TLabel;
    LAchNFe: TLabel;
    CEqExport: TdxCurrencyEdit;
    EDxLocDesemb: TdxEdit;
    LAxLocDesemb: TLabel;
    LAUFDesemb: TLabel;
    EDCNPJTerceiro: TdxMaskEdit;
    LACNPJAdq: TLabel;
    IEtpIntermedio: TdxImageEdit;
    LAtpIntermedio: TLabel;
    IETpViaTransp: TdxImageEdit;
    LATpViaTransp: TLabel;
    LAUFTerceiro: TLabel;
    EDcExportador: TdxEdit;
    LAcExportador: TLabel;
    CEvAFRMM: TdxCurrencyEdit;
    LAvAFRMM: TLabel;
    CEnAdicao: TdxCurrencyEdit;
    CEnSeqAdic: TdxCurrencyEdit;
    EDchNFe: TdxEdit;
    EDnDraw: TdxEdit;
    EDnRE: TdxEdit;
    PNLFavorecido: TPanel;
    PEUFDesemb: TdxPickEdit;
    PEUFTerceiro: TdxPickEdit;
    GBFavEnd: TGroupBox;
    PCEndereco: TdxPageControl;
    TSEC: TdxTabSheet;
    BVEC: TBevel;
    LAxLgr: TLabel;
    LACep: TLabel;
    LAcMun: TLabel;
    LANRO: TLabel;
    LAxMun: TLabel;
    LAxBairro: TLabel;
    LAUF: TLabel;
    PETxLgr: TdxPickEdit;
    EDxLgr: TdxMaskEdit;
    EDCep: TdxMaskEdit;
    EDNRO: TdxMaskEdit;
    EDxCpl: TdxMaskEdit;
    EDxMun: TdxMaskEdit;
    EDxBairro: TdxMaskEdit;
    PEUF: TdxPickEdit;
    IExPais: TdxImageEdit;
    TSEE: TdxTabSheet;
    BVEE: TBevel;
    TSER: TdxTabSheet;
    BVER: TBevel;
    LAxCpl: TLabel;
    PNLFavFicha: TPanel;
    GBFicha: TGroupBox;
    LAxNome: TLabel;
    LACNPJ: TLabel;
    Label5: TLabel;
    LARegime: TLabel;
    LAindFinal: TLabel;
    LACredICMS: TLabel;
    LAIE: TLabel;
    LACPF: TLabel;
    LAISUF: TLabel;
    LAidEstrangeiro: TLabel;
    EDxNome: TdxMaskEdit;
    EDCNPJ: TdxMaskEdit;
    PEIE: TdxPickEdit;
    IEindIEDest: TdxImageEdit;
    IERegime: TdxImageEdit;
    IEindFinal: TdxImageEdit;
    IECredICMS: TdxImageEdit;
    EDCPF: TdxMaskEdit;
    EDISUF: TdxMaskEdit;
    EDidEstrangeiro: TdxMaskEdit;
    LAExLgr: TLabel;
    PEETxLgr: TdxPickEdit;
    EDExLgr: TdxMaskEdit;
    LAENRO: TLabel;
    EDENRO: TdxMaskEdit;
    LAExCpl: TLabel;
    EDExCpl: TdxMaskEdit;
    LAECep: TLabel;
    EDECep: TdxMaskEdit;
    LAEcMun: TLabel;
    PEEcMun: TdxPickEdit;
    LAExBairro: TLabel;
    EDExBairro: TdxMaskEdit;
    LAExMun: TLabel;
    EDExMun: TdxMaskEdit;
    LAEUF: TLabel;
    PEEUF: TdxPickEdit;
    IEExPais: TdxImageEdit;
    LARxLgr: TLabel;
    PERTxLgr: TdxPickEdit;
    EDRxLgr: TdxMaskEdit;
    LARNRO: TLabel;
    EDRNRO: TdxMaskEdit;
    LARxCpl: TLabel;
    EDRxCpl: TdxMaskEdit;
    LARCep: TLabel;
    EDRCep: TdxMaskEdit;
    LARcMun: TLabel;
    PERcMun: TdxPickEdit;
    LARxBairro: TLabel;
    EDRxBairro: TdxMaskEdit;
    LARxMun: TLabel;
    EDRxMun: TdxMaskEdit;
    LARUF: TLabel;
    PERUF: TdxPickEdit;
    IERxPais: TdxImageEdit;
    EDRCNPJOUCPF: TdxMaskEdit;
    LARCNPJOUCPF: TLabel;
    EDECNPJOUCPF: TdxMaskEdit;
    LAECNPJOUCPF: TLabel;
    PNLTFicha: TPanel;
    GBTravEnd: TGroupBox;
    Label17: TLabel;
    PETTxLgr: TdxPickEdit;
    EDTxLgr: TdxMaskEdit;
    Label20: TLabel;
    EDTNRO: TdxMaskEdit;
    Label26: TLabel;
    EDTxCpl: TdxMaskEdit;
    Label18: TLabel;
    EDTCep: TdxMaskEdit;
    Label22: TLabel;
    EDTxBairro: TdxMaskEdit;
    Label21: TLabel;
    EDTxMun: TdxMaskEdit;
    Label25: TLabel;
    PETUF: TdxPickEdit;
    GBTFicha: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    EDTxNome: TdxMaskEdit;
    EDTCNPJ: TdxMaskEdit;
    PETIE: TdxPickEdit;
    EDTCPF: TdxMaskEdit;
    EDTRG: TdxMaskEdit;
    GBTInfAd: TGroupBox;
    GBContatos: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    EDFone: TdxMaskEdit;
    EDDDD: TdxMaskEdit;
    PEEmail: TdxPickEdit;
    EDContato: TdxMaskEdit;
    GBTContatos: TGroupBox;
    Label7: TLabel;
    Label13: TLabel;
    EDTFone: TdxMaskEdit;
    EDTDDD: TdxMaskEdit;
    PETEmail: TdxPickEdit;
    EDTContato: TdxMaskEdit;
    EDTInfAd: TdxMemo;
    GBTVeiculo: TGroupBox;
    PETCarro: TdxPickEdit;
    Label8: TLabel;
    EDTRNTC: TdxMaskEdit;
    LARNTC: TLabel;
    PETPlaca: TdxPickEdit;
    Label39: TLabel;
    LAUFPlaca: TLabel;
    PETUFPlaca: TdxPickEdit;
    EDTFantasia: TdxMaskEdit;
    Label15: TLabel;
    GBInfAdC: TGroupBox;
    EDInfAdC: TdxMemo;
    GBInfAdF: TGroupBox;
    EDInfAdF: TdxMemo;
    TAB_ALQALQ_DESC: TIBStringField;
    TAB_ALQALQ_UFORIGEM: TIBStringField;
    TAB_ALQALQ_UFDESTINO: TIBStringField;
    TAB_ALQALQ_ICMO: TIBBCDField;
    TAB_ALQALQ_ICMD: TIBBCDField;
    TAB_ALQALQ_ICMI: TIBBCDField;
    TAB_ALQALQ_STMENSAGEM: TIBStringField;
    TAB_ALQALQ_STARTIGO: TIBStringField;
    TAB_ALQALQ_STPROTOCOLO: TIBStringField;
    TAB_ALQALQ_FCP: TIBBCDField;
    IEEnvMail: TdxImageEdit;
    Label19: TLabel;
    TAB_PAGID: TIntegerField;
    TAB_PAGPAG_DPAG: TIBStringField;
    TAB_PAGPAG_D001: TIntegerField;
    TAB_PAGPAG_D002: TIntegerField;
    TAB_PAGPAG_D003: TIntegerField;
    TAB_PAGPAG_D004: TIntegerField;
    TAB_PAGPAG_D005: TIntegerField;
    TAB_PAGPAG_D006: TIntegerField;
    TAB_PAGPAG_D007: TIntegerField;
    TAB_PAGPAG_D008: TIntegerField;
    TAB_PAGPAG_D009: TIntegerField;
    TAB_PAGPAG_D010: TIntegerField;
    TAB_PAGPAG_D011: TIntegerField;
    TAB_PAGPAG_D012: TIntegerField;
    TAB_PAGPAG_D013: TIntegerField;
    TAB_PAGPAG_D014: TIntegerField;
    TAB_PAGPAG_D015: TIntegerField;
    TAB_PAGPAG_D016: TIntegerField;
    TAB_PAGPAG_D017: TIntegerField;
    TAB_PAGPAG_D018: TIntegerField;
    TAB_PAGPAG_D019: TIntegerField;
    TAB_PAGPAG_D020: TIntegerField;
    TAB_PAGPAG_PARC: TSmallintField;
    TAB_PAGPAG_PRAZ: TSmallintField;
    TAB_PAGPAG_DUPL: TIBStringField;
    TAB_PAGPAG_STA: TIBStringField;
    TAB_PAGPAG_ENVWEB: TSmallintField;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    SQLFKConsulta: TIBSQL;
    BECMun: TdxButtonEdit;
    SQLSEdicao: TIBSQL;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    CEIDCD: TdxCurrencyEdit;
    EDDECD: TdxMaskEdit;
    GBFrete: TGroupBox;
    QConsulta: TIBQuery;
    TSNFTriangular: TdxTabSheet;
    EDR_DECD: TdxMaskEdit;
    Label76: TLabel;
    BRemessa: TBevel;
    Label77: TLabel;
    PER_TXLGR: TdxPickEdit;
    EDR_XLGR: TdxMaskEdit;
    Label78: TLabel;
    EDR_NRO: TdxMaskEdit;
    EDR_XCPL: TdxMaskEdit;
    EDR_CEP: TdxMaskEdit;
    Label79: TLabel;
    Label80: TLabel;
    EDR_xBAIRRO: TdxMaskEdit;
    EDR_XMUN: TdxMaskEdit;
    Label81: TLabel;
    Label82: TLabel;
    PER_UF: TdxPickEdit;
    Label83: TLabel;
    CER_CDNF: TdxCurrencyEdit;
    Label84: TLabel;
    Label86: TLabel;
    EDR_CNPJ: TdxMaskEdit;
    Label87: TLabel;
    PER_IE: TdxPickEdit;
    SQLEvent: TIBSQL;
    CER_IDCD: TdxCurrencyEdit;
    IEICMS_ST: TdxImageEdit;
    Label89: TLabel;
    CHK_XML: TdxCheckEdit;
    SQLPKSEdicao: TIBSQL;
    ALPrincipal: TActionList;
    ACTRefresh: TAction;
    ACTEveRegister: TAction;
    ACTEveExecute: TAction;
    ACTConsulta: TAction;
    ACTPesquisa: TAction;
    ACTRelatorios: TAction;
    ACTMEAppend: TAction;
    ACTMEEdit: TAction;
    ACTMEDelete: TAction;
    ACTMEPost: TAction;
    ACTMECancel: TAction;
    ACTMPAppend: TAction;
    ACTMPEdit: TAction;
    ACTMPDelete: TAction;
    ACTMPPost: TAction;
    ACTMPValidate: TAction;
    ACTMPCancel: TAction;
    ACTEveExpress: TAction;
    ACTProgressBar: TAction;
    ACTDashboards: TAction;
    ACTCheckConstraints: TAction;
    ACTCheckErrors: TAction;
    ACTSaida: TAction;
    ACTEdicao: TAction;
    PNLSBRodape: TPanel;
    PNLSBRodapeSyncEvent: TPanel;
    GFASyncEvent: TRxGIFAnimator;
    PNLSyncEvent: TPanel;
    SBRodape: TdxStatusBar;
    LACFOP: TLabel;
    Label70: TLabel;
    EDCFOP_TPNF_NO: TdxMaskEdit;
    PECFOP_NO: TdxPickEdit;
    PECFOP: TdxPickEdit;
    IECFOP_TPNF: TdxImageEdit;
    Label23: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label51: TLabel;
    Label85: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    PEDECT: TdxPickEdit;
    IEModFrete: TdxImageEdit;
    CEVFRT: TdxCurrencyEdit;
    CEQVOL: TdxCurrencyEdit;
    CEPSBR: TdxCurrencyEdit;
    CEPSLQ: TdxCurrencyEdit;
    CEVSEG: TdxCurrencyEdit;
    CENVOL: TdxCurrencyEdit;
    EDMarca: TdxEdit;
    CEIDCT: TdxCurrencyEdit;
    PEESP: TdxPickEdit;
    Label2: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    PENLacres1: TdxPickEdit;
    PENLacres2: TdxPickEdit;
    Label3: TLabel;
    SQLPKConsulta: TIBSQL;
    TAB_CFOP: TIBQuery;
    TAB_CFOPCFOP: TIBStringField;
    TAB_CFOPCFOP_CONTRA: TIBStringField;
    TAB_CFOPCFOP_NO: TIBStringField;
    TAB_CFOPCFOP_TPNF: TSmallintField;
    TAB_CFOPCFOP_TPNF_NO: TIBStringField;
    TAB_CFOPCFOP_FAT: TSmallintField;
    TAB_CFOPCFOP_TPFN_NO: TIBStringField;
    TAB_CFOPCFOP_CSTICMS: TIBStringField;
    TAB_CFOPCFOP_CST_CSOSNCRED: TIBStringField;
    TAB_CFOPCFOP_PREDBC: TIBBCDField;
    TAB_CFOPCFOP_PREDBCST: TIBBCDField;
    TAB_CFOPCFOP_PREDBCEFET: TIBBCDField;
    TAB_CFOPCFOP_CSTIPI: TIBStringField;
    TAB_CFOPCFOP_CSTIPIENT: TIBStringField;
    TAB_CFOPCFOP_CSTIPISAI: TIBStringField;
    TAB_CFOPCFOP_CSTPIS: TIBStringField;
    TAB_CFOPCFOP_PPIS: TIBBCDField;
    TAB_CFOPCFOP_CSTCOFINS: TIBStringField;
    TAB_CFOPCFOP_PCOFINS: TIBBCDField;
    TAB_CFOPCFOP_INDTOT: TSmallintField;
    TAB_CFOPCFOP_CENQ: TIBStringField;
    TAB_CFOPCFOP_INFADCAD: TMemoField;
    FIS_NFE_SUM: TIBQuery;
    DTSFIS_NFE_SUM: TDataSource;
    PNLMETOP: TPanel;
    GBNF: TGroupBox;
    LANotaFiscal: TLabel;
    LAFinNFe: TLabel;
    Label69: TLabel;
    Label73: TLabel;
    DEdhEmi: TdxDateEdit;
    DEdhSaiEnt: TdxDateEdit;
    IEFinNFe: TdxImageEdit;
    IETPAG: TdxImageEdit;
    IEINDPAG: TdxImageEdit;
    CECDNF: TdxCurrencyEdit;
    GBPED: TGroupBox;
    LACDPV: TLabel;
    LACDRO: TLabel;
    Label88: TLabel;
    CETSDE: TdxCurrencyEdit;
    EDCDPD: TdxMaskEdit;
    CECDRO: TdxCurrencyEdit;
    CEVTPV: TdxCurrencyEdit;
    CEVTRO: TdxCurrencyEdit;
    IEITEMPED: TdxImageEdit;
    GroupBox1: TGroupBox;
    LAPDSC: TLabel;
    CEVDSC: TdxCurrencyEdit;
    CEPDSC: TdxCurrencyEdit;
    PNLDuplicataSelect: TPanel;
    IECDPG: TdxImageEdit;
    IEPRAZO: TdxPickEdit;
    LAPrz: TLabel;
    IEBOLETO: TdxImageEdit;
    Label1: TLabel;
    Label16: TLabel;
    PNLPKSumario: TPanel;
    GBFKSumario: TGroupBox;
    DBGFKSumario: TdxDBGrid;
    DBGFKSumarioLBL_VDUP: TdxDBGridMaskColumn;
    DBGFKSumarioNFE_VDUP: TdxDBGridCurrencyColumn;
    DBGFKSumarioLBL_VNF: TdxDBGridMaskColumn;
    DBGFKSumarioNFE_VNF: TdxDBGridCurrencyColumn;
    DBGFKSumarioLBL_VTOTTRIB: TdxDBGridMaskColumn;
    DBGFKSumarioNFE_VTOTTRIB: TdxDBGridCurrencyColumn;
    PNLFKSumario: TPanel;
    GBPKSumario: TGroupBox;
    DBGPKSumario: TdxDBGrid;
    DBGPKSumarioLBL_VPROD: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VPROD: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VDESC: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VDESC: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VBC: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VBC: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_CBS_VCBS: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_CBS_VCBS: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_IBSUF_VIBSUF: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_IBSUF_VIBSUF: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_IBSMUN_VIBSMUN: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_IBSMUN_VIBSMUN: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VICMS: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VICMS: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VICMSUFDEST: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VICMSUFDEST: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VICMSDESON: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VICMSDESON: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VCREDICMSSN: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VCREDICMSSN: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VBCST: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VBCST: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VST: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VST: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VIPI: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VIPI: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VPIS: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VPIS: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VCOFINS: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VCOFINS: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VFRETE: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VFRETE: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VSEG: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VSEG: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VII: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VII: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VOUTRO: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VOUTRO: TdxDBGridCurrencyColumn;
    TAB_CFOPCSTIS: TIBStringField;
    TAB_CFOPCCLASSTRIBIS: TIBStringField;
    TAB_CFOPPIS: TIBBCDField;
    TAB_CFOPPISESPEC: TIBBCDField;
    TAB_CFOPCSTCBS: TIBStringField;
    TAB_CFOPCCLASSTRIBCBS: TIBStringField;
    TAB_CFOPPCBS: TIBBCDField;
    TAB_CFOPINDDOACAO: TIBStringField;
    DBGPKSumarioLBL_VSERV: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VSERV: TdxDBGridCurrencyColumn;
    DBGPKSumarioLBL_VFCPUFDEST: TdxDBGridMaskColumn;
    DBGPKSumarioNFE_VFCPUFDEST: TdxDBGridCurrencyColumn;
    FIS_NFE_SUMID: TLargeintField;
    FIS_NFE_SUMIDEV: TLargeintField;
    FIS_NFE_SUMNFE_NITEMPED: TIntegerField;
    FIS_NFE_SUMNFE_QCOM: TIBBCDField;
    FIS_NFE_SUMNFE_RCOM: TIntegerField;
    FIS_NFE_SUMLBL_VPROD: TIBStringField;
    FIS_NFE_SUMNFE_VPROD: TIBBCDField;
    FIS_NFE_SUMLBL_VDESC: TIBStringField;
    FIS_NFE_SUMNFE_VDESC: TIBBCDField;
    FIS_NFE_SUMLBL_VBC: TIBStringField;
    FIS_NFE_SUMNFE_VBC: TIBBCDField;
    FIS_NFE_SUMLBL_CBS_VBCCBS: TIBStringField;
    FIS_NFE_SUMNFE_CBS_VBCCBS: TIBBCDField;
    FIS_NFE_SUMLBL_CBS_VCBS: TIBStringField;
    FIS_NFE_SUMNFE_CBS_VCBS: TIBBCDField;
    FIS_NFE_SUMLBL_IBSMUN_VBCMUN: TIBStringField;
    FIS_NFE_SUMNFE_IBSMUN_VBCIBSMUN: TIBBCDField;
    FIS_NFE_SUMLBL_IBSMUN_VIBSMUN: TIBStringField;
    FIS_NFE_SUMNFE_IBSMUN_VIBSMUN: TIBBCDField;
    FIS_NFE_SUMLBL_IBSUF_VBCIBSUF: TIBStringField;
    FIS_NFE_SUMNFE_IBSUF_VBCIBSUF: TIBBCDField;
    FIS_NFE_SUMLBL_IBSUF_VIBSUF: TIBStringField;
    FIS_NFE_SUMNFE_IBSUF_VIBSUF: TIBBCDField;
    FIS_NFE_SUMLBL_VICMS: TIBStringField;
    FIS_NFE_SUMNFE_VICMS: TIBBCDField;
    FIS_NFE_SUMLBL_VICMSUFDEST: TIBStringField;
    FIS_NFE_SUMNFE_VICMSUFDEST: TIBBCDField;
    FIS_NFE_SUMLBL_VICMSDESON: TIBStringField;
    FIS_NFE_SUMNFE_VICMSDESON: TIBBCDField;
    FIS_NFE_SUMLBL_VBCCREDICMSSN: TIBStringField;
    FIS_NFE_SUMNFE_VBCCREDICMSSN: TIBBCDField;
    FIS_NFE_SUMLBL_VCREDICMSSN: TIBStringField;
    FIS_NFE_SUMNFE_VCREDICMSSN: TIBBCDField;
    FIS_NFE_SUMLBL_VBCST: TIBStringField;
    FIS_NFE_SUMNFE_VBCST: TIBBCDField;
    FIS_NFE_SUMLBL_VST: TIBStringField;
    FIS_NFE_SUMNFE_VST: TIBBCDField;
    FIS_NFE_SUMLBL_VIPI: TIBStringField;
    FIS_NFE_SUMNFE_VIPI: TIBBCDField;
    FIS_NFE_SUMLBL_VPIS: TIBStringField;
    FIS_NFE_SUMNFE_VPIS: TIBBCDField;
    FIS_NFE_SUMLBL_VCOFINS: TIBStringField;
    FIS_NFE_SUMNFE_VCOFINS: TIBBCDField;
    FIS_NFE_SUMLBL_VFRETE: TIBStringField;
    FIS_NFE_SUMNFE_VFRETE: TIBBCDField;
    FIS_NFE_SUMLBL_VSEG: TIBStringField;
    FIS_NFE_SUMNFE_VSEG: TIBBCDField;
    FIS_NFE_SUMLBL_VSERV: TIBStringField;
    FIS_NFE_SUMNFE_VSERV: TIBBCDField;
    FIS_NFE_SUMLBL_VII: TIBStringField;
    FIS_NFE_SUMNFE_VII: TIBBCDField;
    FIS_NFE_SUMLBL_VFCPUFDEST: TIBStringField;
    FIS_NFE_SUMNFE_VFCPUFDEST: TIBBCDField;
    FIS_NFE_SUMLBL_VOUTRO: TIBStringField;
    FIS_NFE_SUMNFE_VOUTRO: TIBBCDField;
    FIS_NFE_SUMLBL_VTOTTRIB: TIBStringField;
    FIS_NFE_SUMNFE_VTOTTRIB: TIBBCDField;
    FIS_NFE_SUMLBL_VDUP: TIBStringField;
    FIS_NFE_SUMNFE_VDUP: TIBBCDField;
    FIS_NFE_SUMLBL_VNF: TIBStringField;
    FIS_NFE_SUMNFE_VNF: TIBBCDField;
    EdicaoID: TLargeintField;
    EdicaoEP_ID: TSmallintField;
    EdicaoEP_NO: TIBStringField;
    EdicaoCF_ID: TSmallintField;
    EdicaoCF_NO: TIBStringField;
    EdicaoIDEV: TLargeintField;
    EdicaoCDEV: TLargeintField;
    EdicaoDEEV: TIBStringField;
    EdicaoDTEV: TDateTimeField;
    EdicaoIDCA: TSmallintField;
    EdicaoLGCA: TIBStringField;
    EdicaoDTCA: TDateTimeField;
    EdicaoIDPK: TLargeintField;
    EdicaoDEPK: TIBStringField;
    EdicaoIDFK: TLargeintField;
    EdicaoDEFK: TIBStringField;
    EdicaoCP_ID: TLargeintField;
    EdicaoCP_ARTIGO: TIBStringField;
    EdicaoCP_SKU: TIBStringField;
    EdicaoCP_CF_SKU: TIBStringField;
    EdicaoCP_CMP_NO: TIBStringField;
    EdicaoCP_UQTDE: TIBBCDField;
    EdicaoCP_UCDBE: TIBStringField;
    EdicaoCP_UPSBR: TIBBCDField;
    EdicaoCP_UPSLQ: TIBBCDField;
    EdicaoNFE_CDNF: TLargeintField;
    EdicaoNFE_CFOP: TIBStringField;
    EdicaoNFE_ORIG: TSmallintField;
    EdicaoNFE_CST: TIBStringField;
    EdicaoNFE_NCM: TIBStringField;
    EdicaoNFE_CEST: TIBStringField;
    EdicaoNFE_EXTIPI: TIBStringField;
    EdicaoNFE_CENQ: TIBStringField;
    EdicaoNFE_CLENQ: TIBStringField;
    EdicaoNFE_NVE: TIBStringField;
    EdicaoNFE_INDESCALA: TIBStringField;
    EdicaoNFE_INDTOT: TSmallintField;
    EdicaoNFE_NITEMPED: TIntegerField;
    EdicaoNFE_XPED: TIBStringField;
    EdicaoNFE_CPROD: TIBStringField;
    EdicaoNFE_CEAN: TIBStringField;
    EdicaoNFE_CEANTRIB: TIBStringField;
    EdicaoNFE_XPROD: TIBStringField;
    EdicaoNFE_NFCI: TIBStringField;
    EdicaoNFE_UCOM: TIBStringField;
    EdicaoNFE_QCOM: TIBBCDField;
    EdicaoNFE_RCOM: TIntegerField;
    EdicaoNFE_UTRIB: TIBStringField;
    EdicaoNFE_QTRIB: TIBBCDField;
    EdicaoNFE_RTRIB: TIntegerField;
    EdicaoNFE_VUNMAOOBRA: TFloatField;
    EdicaoNFE_VUNPAD: TFloatField;
    EdicaoNFE_VUNCOM: TFloatField;
    EdicaoNFE_VUNTRIB: TFloatField;
    EdicaoNFE_VPROD: TIBBCDField;
    EdicaoNFE_VSERV: TIBBCDField;
    EdicaoNFE_VFRETE: TIBBCDField;
    EdicaoNFE_VSEG: TIBBCDField;
    EdicaoNFE_VDESC: TIBBCDField;
    EdicaoNFE_VOUTRO: TIBBCDField;
    EdicaoNFE_VTOTTRIB: TIBBCDField;
    EdicaoNFE_VNFTOT: TIBBCDField;
    EdicaoNFE_VNF: TIBBCDField;
    EdicaoNFE_PSBR: TIBBCDField;
    EdicaoNFE_PSLQ: TIBBCDField;
    EdicaoNFE_ISSQN_VBCISSQN: TIBBCDField;
    EdicaoNFE_ISSQN_VALIQ: TIBBCDField;
    EdicaoNFE_ISSQN_VISSQN: TIBBCDField;
    EdicaoNFE_CMUNFG: TIBStringField;
    EdicaoNFE_CLISTSERV: TIBStringField;
    EdicaoNFE_ISSQN_VDEDUCAO: TIBBCDField;
    EdicaoNFE_ISSQN_VOUTRO: TIBBCDField;
    EdicaoNFE_ISSQN_VDESCINCOND: TIBBCDField;
    EdicaoNFE_ISSQN_VDESCCOND: TIBBCDField;
    EdicaoNFE_ISSQN_VISSRET: TIBBCDField;
    EdicaoNFE_ISSQN_INDISS: TSmallintField;
    EdicaoNFE_ISSQN_CSERVICO: TIBStringField;
    EdicaoNFE_ISSQN_CMUN: TIBStringField;
    EdicaoNFE_ISSQN_CPAIS: TIBStringField;
    EdicaoNFE_ISSQN_NPROCESSO: TIBStringField;
    EdicaoNFE_INDINCENTIVO: TSmallintField;
    EdicaoNFE_MODBC: TSmallintField;
    EdicaoNFE_PREDBC: TIBBCDField;
    EdicaoNFE_VBC: TIBBCDField;
    EdicaoNFE_PICMS: TIBBCDField;
    EdicaoNFE_VICMS: TIBBCDField;
    EdicaoNFE_UF: TIBStringField;
    EdicaoNFE_MODBCST: TSmallintField;
    EdicaoNFE_PMVAST: TIBBCDField;
    EdicaoNFE_PREDBCST: TIBBCDField;
    EdicaoNFE_VBCST: TIBBCDField;
    EdicaoNFE_VICMSST: TIBBCDField;
    EdicaoNFE_PICMSST: TIBBCDField;
    EdicaoNFE_PST: TIBBCDField;
    EdicaoNFE_VST: TIBBCDField;
    EdicaoNFE_VBCCOFINSST: TIBBCDField;
    EdicaoNFE_PCOFINSST: TIBBCDField;
    EdicaoNFE_VCOFINSST: TIBBCDField;
    EdicaoNFE_UFST: TIBStringField;
    EdicaoNFE_PBCOP: TIBBCDField;
    EdicaoNFE_VBCSTRET: TIBBCDField;
    EdicaoNFE_VICMSSTRET: TIBBCDField;
    EdicaoNFE_MOTDESICMS: TSmallintField;
    EdicaoNFE_VBCSTDEST: TIBBCDField;
    EdicaoNFE_VICMSSTDEST: TIBBCDField;
    EdicaoNFE_VBCCREDICMSSN: TIBBCDField;
    EdicaoNFE_PCREDSN: TIBBCDField;
    EdicaoNFE_VCREDICMSSN: TIBBCDField;
    EdicaoNFE_VICMSDESON: TIBBCDField;
    EdicaoNFE_VICMSOP: TIBBCDField;
    EdicaoNFE_VICMSDIF: TIBBCDField;
    EdicaoNFE_PDIF: TIBBCDField;
    EdicaoNFE_VDIF: TIBBCDField;
    EdicaoNFE_VBCFCP: TIBBCDField;
    EdicaoNFE_PFCP: TIBBCDField;
    EdicaoNFE_VFCP: TIBBCDField;
    EdicaoNFE_VBCFCPST: TIBBCDField;
    EdicaoNFE_PFCPST: TIBBCDField;
    EdicaoNFE_VFCPST: TIBBCDField;
    EdicaoNFE_VBCFCPSTRET: TIBBCDField;
    EdicaoNFE_PFCPSTRET: TIBBCDField;
    EdicaoNFE_VFCPSTRET: TIBBCDField;
    EdicaoNFE_PFCPDIF: TIBBCDField;
    EdicaoNFE_VFCPDIF: TIBBCDField;
    EdicaoNFE_VFCPEFET: TIBBCDField;
    EdicaoNFE_VICMSSTDESON: TIBBCDField;
    EdicaoNFE_MOTDESICMSST: TSmallintField;
    EdicaoNFE_INDDEDUZDESON: TSmallintField;
    EdicaoNFE_CBENEFRBC: TIBStringField;
    EdicaoNFE_VBCUFDEST: TIBBCDField;
    EdicaoNFE_VBCFCPUFDEST: TIBBCDField;
    EdicaoNFE_PFCPUFDEST: TIBBCDField;
    EdicaoNFE_PICMSUFDEST: TIBBCDField;
    EdicaoNFE_PICMSINTER: TIBBCDField;
    EdicaoNFE_PICMSINTERPART: TIBBCDField;
    EdicaoNFE_VFCPUFDEST: TIBBCDField;
    EdicaoNFE_VICMSUFDEST: TIBBCDField;
    EdicaoNFE_VICMSUFREMET: TIBBCDField;
    EdicaoNFE_CSTIPI: TIBStringField;
    EdicaoNFE_VBCIPI: TIBBCDField;
    EdicaoNFE_PIPI: TIBBCDField;
    EdicaoNFE_VIPI: TIBBCDField;
    EdicaoNFE_VIPIDEVOL: TIBBCDField;
    EdicaoNFE_CSTPIS: TIBStringField;
    EdicaoNFE_VBCPIS: TIBBCDField;
    EdicaoNFE_PPIS: TIBBCDField;
    EdicaoNFE_VPIS: TIBBCDField;
    EdicaoNFE_VBCPISST: TIBBCDField;
    EdicaoNFE_PPISST: TIBBCDField;
    EdicaoNFE_VPISST: TIBBCDField;
    EdicaoNFE_CSTCOFINS: TIBStringField;
    EdicaoNFE_VBCCOFINS: TIBBCDField;
    EdicaoNFE_PCOFINS: TIBBCDField;
    EdicaoNFE_VCOFINS: TIBBCDField;
    EdicaoNFE_VBCIMP: TIBBCDField;
    EdicaoNFE_VDESCDI: TIBBCDField;
    EdicaoNFE_VDESPADU: TIBBCDField;
    EdicaoNFE_VII: TIBBCDField;
    EdicaoNFE_VIOF: TIBBCDField;
    EdicaoNFE_VMULTA: TIBBCDField;
    EdicaoNFE_VAFRMM: TIBBCDField;
    EdicaoNFE_IS_CSTIS: TIBStringField;
    EdicaoNFE_IS_CCLASSTRIBIS: TIBStringField;
    EdicaoNFE_IS_VBCIS: TIBBCDField;
    EdicaoNFE_IS_PIS: TIBBCDField;
    EdicaoNFE_IS_PISESPEC: TIBBCDField;
    EdicaoNFE_IS_VIS: TIBBCDField;
    EdicaoNFE_IS_UTRIB: TIBStringField;
    EdicaoNFE_IS_QTRIB: TIBBCDField;
    EdicaoNFE_IBSCBS_CSTIS: TIBStringField;
    EdicaoNFE_IBSCBS_CCLASSTRIBIS: TIBStringField;
    EdicaoNFE_IBSCBS_INDDOACAO: TIBStringField;
    EdicaoNFE_IBSCBS_VBCIBSCBS: TIBBCDField;
    EdicaoNFE_IBSCBS_VIBSCBS: TIBBCDField;
    EdicaoNFE_IBSUF_VBCIBSUF: TIBBCDField;
    EdicaoNFE_IBSUF_PIBSUF: TIBBCDField;
    EdicaoNFE_IBSUF_VIBSUF: TIBBCDField;
    EdicaoNFE_IBSUF_PDIF: TIBBCDField;
    EdicaoNFE_IBSUF_VDIF: TIBBCDField;
    EdicaoNFE_IBSUF_VDEVTRIB: TIBBCDField;
    EdicaoNFE_IBSMUN_VBCIBSMUN: TIBBCDField;
    EdicaoNFE_IBSMUN_PIBSMUN: TIBBCDField;
    EdicaoNFE_IBSMUN_VIBSMUN: TIBBCDField;
    EdicaoNFE_IBSMUN_PDIF: TIBBCDField;
    EdicaoNFE_IBSMUN_VDIF: TIBBCDField;
    EdicaoNFE_IBSMUN_VDEVTRIB: TIBBCDField;
    EdicaoNFE_IBSMUN_VCREDPRES: TIBBCDField;
    EdicaoNFE_IBSMUN_VCREDPRESCONDSUS: TIBBCDField;
    EdicaoNFE_CBS_VBCCBS: TIBBCDField;
    EdicaoNFE_CBS_PCBS: TIBBCDField;
    EdicaoNFE_CBS_VCBS: TIBBCDField;
    EdicaoNFE_CBS_PDIF: TIBBCDField;
    EdicaoNFE_CBS_VDIF: TIBBCDField;
    EdicaoNFE_CBS_VDEVTRIB: TIBBCDField;
    EdicaoNFE_CBS_VCREDPRES: TIBBCDField;
    EdicaoNFE_CBS_VCREDPRESCONDSUS: TIBBCDField;
    EdicaoNFE_QBCMONO: TIBBCDField;
    EdicaoNFE_VICMSMONO: TIBBCDField;
    EdicaoNFE_VIBSMONO: TIBBCDField;
    EdicaoNFE_VCBSMONO: TIBBCDField;
    EdicaoNFE_QBCMONORETEN: TIBBCDField;
    EdicaoNFE_VICMSMONORETEN: TIBBCDField;
    EdicaoNFE_VIBSMONORETEN: TIBBCDField;
    EdicaoNFE_VCBSMONORETEN: TIBBCDField;
    EdicaoNFE_ADREMIBSRETEN: TIBBCDField;
    EdicaoNFE_ADREMCBSRETEN: TIBBCDField;
    EdicaoNFE_QBCMONORET: TIBBCDField;
    EdicaoNFE_VICMSMONORET: TIBBCDField;
    EdicaoNFE_VIBSMONORET: TIBBCDField;
    EdicaoNFE_VCBSMONORET: TIBBCDField;
    EdicaoNFE_ADREMIBSRET: TIBBCDField;
    EdicaoNFE_ADREMCBSRET: TIBBCDField;
    EdicaoNFE_PDIFIBS: TIBBCDField;
    EdicaoNFE_VIBSMONODIF: TIBBCDField;
    EdicaoNFE_PDIFCBS: TIBBCDField;
    EdicaoNFE_VCBSMONODIF: TIBBCDField;
    EdicaoNFE_VTOTIBSMONOITEM: TIBBCDField;
    EdicaoNFE_VTOTCBSMONOITEM: TIBBCDField;
    EdicaoNFE_RED_PREDALIQ: TIBBCDField;
    EdicaoNFE_RED_PALIQEFET: TIBBCDField;
    EdicaoNFE_ADREMIBS: TIBBCDField;
    EdicaoNFE_ADREMCBS: TIBBCDField;
    EdicaoNFE_TRANSFCRED_VIBS: TIBBCDField;
    EdicaoNFE_TRANSFCRED_VCBS: TIBBCDField;
    EdicaoNFE_NDI: TIBStringField;
    EdicaoNFE_DDI: TDateField;
    EdicaoNFE_NADICAO: TSmallintField;
    EdicaoNFE_NSEQADIC: TSmallintField;
    EdicaoNFE_XLOCEMBARQ: TIBStringField;
    EdicaoNFE_UFEMBARQ: TIBStringField;
    EdicaoNFE_XLOCDESEMB: TIBStringField;
    EdicaoNFE_UFDESEMB: TIBStringField;
    EdicaoNFE_DDESEMB: TDateField;
    EdicaoNFE_TPVIATRANSP: TIBStringField;
    EdicaoNFE_XLOCDESPACHO: TIBStringField;
    EdicaoNFE_UFSAIDAPAIS: TIBStringField;
    EdicaoNFE_NDRAW: TIBStringField;
    EdicaoNFE_NRE: TIBStringField;
    EdicaoNFE_QEXPORT: TIBBCDField;
    EdicaoNFE_CEXPORTADOR: TIBStringField;
    EdicaoNFE_CFABRICANTE: TIBStringField;
    EdicaoNFE_TPINTERMEDIO: TIBStringField;
    EdicaoNFE_CNPJFAB: TIBStringField;
    EdicaoNFE_CNPJPROD: TIBStringField;
    EdicaoNFE_CNPJTERCEIRO: TIBStringField;
    EdicaoNFE_UFTERCEIRO: TIBStringField;
    EdicaoNFE_CHNFE: TIBStringField;
    EdicaoNFE_INFADTRIB: TIBStringField;
    EdicaoNFE_INFADPROD: TIBStringField;
    EdicaoIP: TIBStringField;
    EdicaoHOST: TIBStringField;
    EdicaoFLAG: TSmallintField;
    EdicaoFLAG_CTRL: TIntegerField;
    EdicaoC_ID: TLargeintField;
    FIS_NFE_DUPID: TLargeintField;
    FIS_NFE_DUPIDEV: TLargeintField;
    FIS_NFE_DUPNFE_NITEMPED: TSmallintField;
    FIS_NFE_DUPNFE_CDNF: TLargeintField;
    FIS_NFE_DUPNFE_DTNF: TDateField;
    FIS_NFE_DUPNFE_VORIG: TIBBCDField;
    FIS_NFE_DUPNFE_VLIQ: TIBBCDField;
    FIS_NFE_DUPNFE_NDUP: TIBStringField;
    FIS_NFE_DUPNFE_DVENC: TDateField;
    FIS_NFE_DUPNFE_VDUP: TIBBCDField;
    FIS_NFE_DUPNFE_VDESC: TIBBCDField;
    FIS_NFE_DUPFLAG: TSmallintField;
    FIS_NFE_MAOID: TLargeintField;
    FIS_NFE_MAOIDEV: TLargeintField;
    FIS_NFE_MAONFE_NITEMPED: TSmallintField;
    FIS_NFE_MAONFE_CDNF: TLargeintField;
    FIS_NFE_MAONFE_DTNF: TDateField;
    FIS_NFE_MAONFE_VNF: TIBBCDField;
    FIS_NFE_MAOFLAG: TSmallintField;
    ILMenuEdicao: TImageList;
    GBMEFIS_NFE_DUP: TGroupBox;
    SBMEFIS_NFE_DUP: TSpeedBar;
    SSMEFIS_NFE_DUP: TSpeedbarSection;
    SIMEDAppend: TSpeedItem;
    SIMEDEdit: TSpeedItem;
    SIMEDDelete: TSpeedItem;
    SIMEDPost: TSpeedItem;
    SIMEDCancel: TSpeedItem;
    GBFIS_NFE_DUP: TGroupBox;
    DBGFIS_NFE_DUP: TdxDBGrid;
    DBGFIS_NFE_DUPNFE_CDNF: TdxDBGridMaskColumn;
    DBGFIS_NFE_DUPNFE_DNFE: TdxDBGridDateColumn;
    DBGFIS_NFE_DUPNFE_TITU: TdxDBGridMaskColumn;
    DBGFIS_NFE_DUPNFE_DVEN: TdxDBGridDateColumn;
    DBGFIS_NFE_DUPNFE_VDUP: TdxDBGridMaskColumn;
    GBMEFIS_NFE_MAO: TGroupBox;
    SBMEFIS_NFE_MAO: TSpeedBar;
    SSMEFIS_NFE_MAO: TSpeedbarSection;
    SpeedItem1: TSpeedItem;
    SpeedItem2: TSpeedItem;
    SpeedItem3: TSpeedItem;
    SpeedItem4: TSpeedItem;
    SpeedItem5: TSpeedItem;
    GBFIS_NFE_MAO: TGroupBox;
    DBGFIS_NFE_MAO: TdxDBGrid;
    GBMenuEdicao: TGroupBox;
    SBMenuEdicao: TSpeedBar;
    SSMenuEdicao: TSpeedbarSection;
    SIMEAppend: TSpeedItem;
    SIMEEdit: TSpeedItem;
    SIMEDelete: TSpeedItem;
    SIMEPost: TSpeedItem;
    SIMECancel: TSpeedItem;
    GBConsulta: TGroupBox;
    DBGEdicao: TdxDBGrid;
    DBGEdicaoNFE_NITEMPED: TdxDBGridMaskColumn;
    DBGEdicaoNFE_XPED: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CPROD: TdxDBGridMaskColumn;
    DBGEdicaoNFE_NCM: TdxDBGridMaskColumn;
    DBGEdicaoNFE_XPROD: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CFOP: TdxDBGridMaskColumn;
    DBGEdicaoNFE_ORIG: TdxDBGridPickColumn;
    DBGEdicaoNFE_CST: TdxDBGridPickColumn;
    DBGEdicaoNFE_UCOM: TdxDBGridPickColumn;
    DBGEdicaoNFE_QCOM: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VUNCOM: TdxDBGridMaskColumn;
    DBGEdicaoNFE_UTRIB: TdxDBGridMaskColumn;
    DBGEdicaoNFE_QTRIB: TdxDBGridCurrencyColumn;
    DBGEdicaoNFE_VUNTRIB: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VPROD: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VDESC: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VNF: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VICMS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PICMS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VBC: TdxDBGridMaskColumn;
    DBGEdicaoNFE_MODBCST: TdxDBGridMaskColumn;
    DBGEdicaoNFE_UF: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PREDBC: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PICMSST: TdxDBGridCurrencyColumn;
    DBGEdicaoNFE_VICMSST: TdxDBGridCurrencyColumn;
    DBGEdicaoNFE_VBCST: TdxDBGridCurrencyColumn;
    DBGEdicaoNFE_VIPI: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PIPI: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VBCIPI: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CSTIPI: TdxDBGridMaskColumn;
    DBGEdicaoNFE_EXTIPI: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CEST: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CENQ: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VPIS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PPIS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VBCPIS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CSTPIS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VCOFINS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PCOFINS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VBCOFINS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_CSTCOFINS: TdxDBGridMaskColumn;
    DBGEdicaoNFE_VFRETE: TdxDBGridCurrencyColumn;
    DBGEdicaoNFE_VSEG: TdxDBGridCurrencyColumn;
    DBGEdicaoNFE_VOUTRO: TdxDBGridCurrencyColumn;
    DBGEdicaoNFE_PSBR: TdxDBGridMaskColumn;
    DBGEdicaoNFE_PSLQ: TdxDBGridMaskColumn;
    DBGEdicaoNFE_NFCI: TdxDBGridMaskColumn;
    DBGEdicaoFLAG_CTRL: TdxDBGridMaskColumn;
    DBGEdicaoC_ID: TdxDBGridColumn;
    DBGEdicaoNFE_MODBC: TdxDBGridMaskColumn;
    ILMenuPrincipal: TImageList;
    SBMenuPrincipal: TSpeedBar;
    SSMenuPrincipal: TSpeedbarSection;
    SIRefresh: TSpeedItem;
    SIPesquisa: TSpeedItem;
    SIRelatorios: TSpeedItem;
    SISaida: TSpeedItem;
    SIXMLCreate: TSpeedItem;
    SIXMLValidate: TSpeedItem;
    SIXMLSefaz: TSpeedItem;
    SINFePDF: TSpeedItem;
    SINFeEmail: TSpeedItem;
    SIImporta: TSpeedItem;
    ACTNFeCALC: TAction;
    ACTNFeXML: TAction;
    ACTNFeValidate: TAction;
    ACTNFeSend: TAction;
    ACTNFeDUP: TAction;
    ACTNFeLote: TAction;
    ACTNFePost: TAction;
    ACTNFeDanfe: TAction;
    ACTMPEmail: TAction;
    PNLConsultaBOT: TPanel;
    PNLNFE_XPROX: TPanel;
    GBINFADTEC: TGroupBox;
    DBINFADTEC: TdxDBMemo;
    ACTNFePesquisa: TAction;
    ACTNFeNUM: TAction;
    ACTPesquisaCFOP: TAction;
    ACTNFeMSG: TAction;
    ACTPesquisaTransportadora: TAction;
    ACTEdit: TAction;
    ACTValid: TAction;
    ACTPrint: TAction;
    ACTMPImporta: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ACTRefreshExecute(Sender: TObject);
    procedure ACTEveRegisterExecute(Sender: TObject);
    procedure ACTEveExecuteExecute(Sender: TObject);
    procedure ACTConsultaExecute(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure ACTRelatoriosExecute(Sender: TObject);
    procedure ACTMEAppendExecute(Sender: TObject);
    procedure ACTMEEditExecute(Sender: TObject);
    procedure ACTMEDeleteExecute(Sender: TObject);
    procedure ACTMEPostExecute(Sender: TObject);
    procedure ACTMECancelExecute(Sender: TObject);
    procedure ACTMPAppendExecute(Sender: TObject);
    procedure ACTMPEditExecute(Sender: TObject);
    procedure ACTMPDeleteExecute(Sender: TObject);
    procedure ACTMPPostExecute(Sender: TObject);
    procedure ACTMPValidateExecute(Sender: TObject);
    procedure ACTMPCancelExecute(Sender: TObject);
    procedure ACTEveExpressExecute(Sender: TObject);
    procedure ACTProgressBarExecute(Sender: TObject);
    procedure ACTDashboardsExecute(Sender: TObject);
    procedure ACTCheckConstraintsExecute(Sender: TObject);
    procedure ACTCheckErrorsExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);
    procedure ACTEdicaoExecute(Sender: TObject);
    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure EdicaoBeforeOpen(DataSet: TDataSet);
    procedure EdicaoAfterOpen(DataSet: TDataSet);
    procedure EdicaoAfterCancel(DataSet: TDataSet);
    procedure EdicaoAfterClose(DataSet: TDataSet);
    procedure EdicaoAfterDelete(DataSet: TDataSet);
    procedure EdicaoAfterEdit(DataSet: TDataSet);
    procedure EdicaoAfterInsert(DataSet: TDataSet);
    procedure EdicaoAfterPost(DataSet: TDataSet);
    procedure EdicaoBeforeCancel(DataSet: TDataSet);
    procedure EdicaoBeforeClose(DataSet: TDataSet);
    procedure EdicaoBeforeDelete(DataSet: TDataSet);
    procedure EdicaoBeforeEdit(DataSet: TDataSet);
    procedure EdicaoBeforeInsert(DataSet: TDataSet);
    procedure EdicaoBeforePost(DataSet: TDataSet);
    procedure EdicaoCalcFields(DataSet: TDataSet);
    procedure EdicaoDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EdicaoEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EdicaoNewRecord(DataSet: TDataSet);
    procedure EdicaoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EdicaoUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure EdicaoBeforeScroll(DataSet: TDataSet);
    procedure EdicaoAfterScroll(DataSet: TDataSet);
    procedure DTSEdicaoDataChange(Sender: TObject; Field: TField);
    procedure DTSEdicaoStateChange(Sender: TObject);
    procedure DBGEdicaoBackgroundDrawEvent(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect);
    procedure DBGEdicaoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGEdicaoDblClick(Sender: TObject);
    procedure DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACTNFeCALCExecute(Sender: TObject);
    procedure ACTNFeICMSExecute(Sender: TObject);
    procedure ACTNFeCSTExecute(Sender: TObject);
    procedure ACTNFeDUPExecute(Sender: TObject);
    procedure ACTNFeXMLExecute(Sender: TObject);
    procedure ACTNFeValidateExecute(Sender: TObject);
    procedure ACTNFeSendExecute(Sender: TObject);
    procedure ACTNFeLoteExecute(Sender: TObject);
    procedure ACTNFePostExecute(Sender: TObject);
    procedure ACTNFeDanfeExecute(Sender: TObject);
    procedure ACTMPEmailExecute(Sender: TObject);
    procedure TAB_CFOPAfterOpen(DataSet: TDataSet);
    procedure TAB_PAGAfterOpen(DataSet: TDataSet);
    procedure ACTNFePesquisaExecute(Sender: TObject);
    procedure ACTNFeNUMExecute(Sender: TObject);
    procedure ACTPesquisaCFOPExecute(Sender: TObject);
    procedure ACTNFeMSGExecute(Sender: TObject);
    procedure ACTPesquisaTransportadoraExecute(Sender: TObject);
    procedure ACTEditExecute(Sender: TObject);
    procedure ACTValidExecute(Sender: TObject);
    procedure ACTPrintExecute(Sender: TObject);
    procedure ACTMPImportaExecute(Sender: TObject);
  private
    { Private declarations }
    FCurrentEvent,
    FCurrentAlert: String;
    FForceClose  : Boolean;

    RECRomaneio,
    RECNFTriangular: TRECPEdidos;

    { método para atribuição\validação de valor }
    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetCurrentAlert(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);

  public
    { Public declarations }
    REC_SHE_DEF: TREC_SHE_DEF;

    NewCHNFE,NewCDNF  ,NewDTNF  ,NewORIG     ,NewNCM,NewPICMS,NewVBC,NewCSTIPI,
    NewPIPI ,NewVBCIPI,NewVBCPIS,NewVBCCOFINS,NewCST: string;



    property _GetCurrentAlert: String  read FCurrentAlert write _SetCurrentAlert;
    property _GetCurrentEvent: String  read FCurrentEvent write _SetCurrentEvent;
    property _GetForceClose  : Boolean read FForceClose   write _SetForceClose;

    procedure _WM_CREATE(var Msg: TMessage); message WM_CREATE;
    procedure _WM_AFTER_CREATE(var Msg: TMessage); message WM_AFTER_CREATE;

    procedure _WM_ACTIVATE(var Msg: TMessage); message WM_ACTIVATE;
    procedure _SW_SHOWNOACTIVATE(var Msg: TMessage); message SW_SHOWNOACTIVATE;

    procedure _WM_SHOW(var Msg: TMessage); message WM_SHOW;
    procedure _WM_AFTER_SHOW(var Msg: TMessage); message WM_AFTER_SHOW;

    procedure _WM_RESIZE(var Message: TMessage); message WM_ENTERSIZEMOVE;
    procedure _WM_AFTER_RESIZE(var Message: TMessage); message WM_EXITSIZEMOVE;

    Constructor Create(AOwner: TComponent;
                 const AIDPK : LongInt = 0 ;
                       ADEPK : String  = '';
                       AIDEV : LongInt = 0 ;
                       ACDEV : Word    = 0 ;
                       ATPEV : Word    = 0 ;

                       AFB_SQL_TAB: String = '';
                       AFB_SQL_GET: String = ''); reintroduce; overload;

    class procedure _ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                              AIDPK : LongInt = 0 ;
                              ADEPK : String  = '';
                              AIDEV : LongInt = 0 ;
                              ACDEV : Word    = 0 ;
                              ATPEV : Word    = 0 ;

                              AFB_SQL_TAB: String = '';
                              AFB_SQL_GET: String = '');

    Destructor  Destroy; override;
  end;

var
  FrmVEN_NFE: TFrmVEN_NFE;
  _Form: TStringList = Nil;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmVEN_NFE._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmVEN_NFE._SetCurrentAlert(const AValue: String);
begin
  FCurrentAlert := AValue;
end;

procedure TFrmVEN_NFE._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

procedure TFrmVEN_NFE._WM_CREATE(var Msg: TMessage);
begin
  { INICIALIZA }
  Screen.Cursor := crAppStart;  { Cursor }
  Randomize;

  { INICIALIZAÇÃO DOS OBJETOS DECLARADOS }
  oIRECPedidos(RECRomaneio    ,laNone);
  oIRECPedidos(RECNFTriangular,laNone);

  { Pega dados de origem }
  NewCHNFE     := EmptyStr;
  NewCDNF      := EmptyStr;
  NewDTNF      := EmptyStr;

  NewORIG      := EmptyStr;
  NewCST       := EmptyStr;

  NewVBC       := EmptyStr;
  NewPICMS     := EmptyStr;

  NewNCM       := EmptyStr;
  NewCSTIPI    := EmptyStr;
  NewPIPI      := EmptyStr;
  NewVBCIPI    := EmptyStr;

  NewVBCPIS    := EmptyStr;
  NewVBCCOFINS := EmptyStr;
end;

procedure TFrmVEN_NFE._WM_AFTER_CREATE(var Msg: TMessage);
begin
  { FORM }
  REC_SHE_DEF.FMainArea := (REC_SHE_DEF.FMainArea) and (Screen.Width >= 1360) and (Screen.Width <= 1366); { Aplicativo }
  REC_SHE_DEF.FWorkArea := (REC_SHE_DEF.FWorkArea) and (Screen.Width <= 1280); { Desktop }

  { CAPTION }
  if FCurrentEvent  = EmptyStr then
  _GetCurrentEvent := Self.Caption;
end;

procedure TFrmVEN_NFE._WM_ACTIVATE(var Msg: TMessage);
begin
  { EVENTOS }
  ACTEveRegister.Execute; { Registro }
end;

procedure TFrmVEN_NFE._SW_SHOWNOACTIVATE(var Msg: TMessage);
          procedure _ProcessPaintMessages; // << not tested, pulled out of code
          var
            Msg: TMsg;
          begin
            while PeekMessage(msg, 0, WM_PAINT, WM_PAINT, PM_REMOVE) do
                  DispatchMessage(msg);
          end;
begin
  _ProcessPaintMessages;
end;

procedure TFrmVEN_NFE._WM_SHOW(var Msg: TMessage);
begin
  { BEFORE SHOWNING }
  Screen.Cursor := crHourGlass; { Cursor }
  REC_SHE_DEF.FResize := 0;     { Form Resize }
  ALockWindowUpdate   := True;  { Habilita SQL INJECTION }

  ACTConsulta.Execute; { Tabelas }
  ACTEdicao.Execute; { Ediçõe }
end;

procedure TFrmVEN_NFE._WM_AFTER_SHOW(var Msg: TMessage);
begin
  { INICIALIZAÇÃO DOS COMPONENTES }
  try
    Screen.Cursor := crAppStart;

    { AFTER SHOWNING }
    ACTPesquisa.Execute; { Pesquisa Principal }

    { CALCULO FISCAL }
    ACTNFeCALC.Tag := 1; { Desabilita }
    ACTNFeCALC.Execute;
  finally
    Screen.Cursor := crDefault;
  end;

  if Showing then
  if Edicao.RecNo > 0 then
  begin
    PostMessage(TWinControl(DBGEdicao).Handle, WM_SETFOCUS, 0, 0);
    TWinControl(DBGEdicao).SetFocus;
  end;
end;

procedure TFrmVEN_NFE._WM_RESIZE(var Message: TMessage);
begin
  { Before Resize }
  REC_SHE_DEF.FResize := REC_SHE_DEF.FResize + 1;

  { FORM SCREEN }
  if REC_SHE_DEF.FMainArea then {MainArea, mas sem desabilitar botões }
  begin
    REC_SHE_DEF.FPosition := poDefault;
    REC_SHE_DEF.FWorkArea := False;
  end else

  if REC_SHE_DEF.FWorkArea then
  begin
    REC_SHE_DEF.FPosition := poDefault;
    REC_SHE_DEF.FMainArea := False;
  end;

  { VER DIM TELA }
  REC_SHE_DEF.FHeight := Self.Height;
  REC_SHE_DEF.FWidth  := Self.Width ;
end;

procedure TFrmVEN_NFE._WM_AFTER_RESIZE(var Message: TMessage);
begin
  { After Resize }
  if REC_SHE_DEF.FResize >= 2 then
     try
       oResize(DBGEdicao);
       Paint;
     finally
       Screen.Cursor := crDefault;
       REC_SHE_DEF.FResize := 0;
     end;
end;

Constructor TFrmVEN_NFE.Create(AOwner: TComponent;
                         const AIDPK : LongInt = 0 ;
                               ADEPK : String  = '';
                               AIDEV : LongInt = 0 ;
                               ACDEV : Word    = 0 ;
                               ATPEV : Word    = 0 ;

                               AFB_SQL_TAB: String = '';
                               AFB_SQL_GET: String = '');
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.IDPK := INTTOSTR(AIDPK);
  REC_SHE_DEF.DEPK := TRIM(ADEPK);

  REC_SHE_DEF.IDEV := INTTOSTR(AIDEV);
  REC_SHE_DEF.CDEV := INTTOSTR(ACDEV);
  REC_SHE_DEF.TPEV := INTTOSTR(ATPEV);

  REC_SHE_DEF.FB_SQL_TAB := TRIM(AFB_SQL_TAB);
  REC_SHE_DEF.FB_SQL_GET := TRIM(AFB_SQL_GET);

  inherited Create(AOwner);
end;

Class procedure TFrmVEN_NFE._ExecForm(AOwner : TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                                      AIDPK : LongInt = 0 ;
                                      ADEPK : String  = '';
                                      AIDEV : LongInt = 0 ;
                                      ACDEV : Word    = 0 ;
                                      ATPEV : Word    = 0 ;

                                      AFB_SQL_TAB: String = '';
                                      AFB_SQL_GET: String = '');
var
  idxForm: Integer;
begin
  if not Assigned(_Form) then
  begin
    _Form := TStringList.Create;
    _Form.Sorted := True;
  end;

  if not _Form.Find(ClassName,idxForm) then
  idxForm := _Form.Add(ClassName);

  if ((TForm(AForm) = Nil) or (ACDEV = 1)) then
  TForm(AForm) := Self.Create (AOwner    ,
                               AIDPK     ,
                               ADEPK     ,
                               AIDEV     ,
                               ACDEV     ,
                               ATPEV     ,
                               AFB_SQL_TAB ,
                               AFB_SQL_GET);

  _Form.Objects[idxForm] := TObject(@AForm);

  if AFormStyle <> fsStayOnTop then
  begin
    TForm(AForm).FormStyle := AFormStyle;

    if TForm(AForm).FormStyle = fsNormal then
    begin
      TForm(AForm).Visible := False;
      TForm(AForm).ShowModal;
    end else
    begin
      TForm(AForm).Visible := True;
      TForm(AForm).Show;
    end;
  end;
end;

Destructor TFrmVEN_NFE.Destroy;
type
  PtrForm = ^TForm;
var
  idxForm: Integer;
begin
  Screen.Cursor := crAppStart;
  try
    if TForm(Self).Name <> EmptyStr then
    if Assigned(_Form) and _Form.Find(ClassName,idxForm) and (_Form.Objects[idxForm] <> Nil) then

    try
      { Eventos }
      try
        try
          EEvent.UnRegisterEvents;
        except
          on E: Exception do
          begin
            oErro(Application.Handle,'Falha ao tentar fechar eventos !'+#13+#13+
                                     'Error Code: '+E.Message+'.'      +#13+
                                      Caption+'.');
          end;
        end;

      finally
        try
          { Transação Principal }
          try
            oFTransact(TConsulta); { Consultas }
            oFTransact(TSEdicao ); { Edições Temporárias }
          except
            on E: Exception do
            begin
              oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                       'Error Code: '+E.Message+'.'      +#13+
                                        Caption+'.');
            end;
          end;

        finally
          { record e afins }
          try
            Finalize(REC_SHE_DEF);
            FillChar(REC_SHE_DEF,SizeOf(REC_SHE_DEF),0);
          except
            on E: Exception do
            begin
             oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                      'Error Code: '+E.Message+'.'        +#13+
                                       Caption+'.');
            end;
          end;

          { record e afins }
          try
            oFREC_SHE_DEF(REC_SHE_DEF);
          except
            on E: Exception do
            begin
             oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                      'Error Code: '+E.Message+'.'        +#13+
                                       Caption+'.');
            end;
          end;

        end;
      end;

    finally
      PtrForm(_Form.Objects[idxForm])^ := Nil;
      _Form.Objects[idxForm] := Nil;
    end;

  finally
    Screen.Cursor := crDefault;
    inherited;
  end;
end;

procedure TFrmVEN_NFE.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGEdicaoIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'PED_PDV_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Vendas';
  REC_SHE_DEF.GReferencia := 'Pedidos';
  REC_SHE_DEF.GRegra      := 'Controlar';
  REC_SHE_DEF.GAdmin      := False;

  { VALIDATE GRANT USER }
  REC_SHE_DEF.GAppend   := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GEdit     := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GDelete   := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);

  REC_SHE_DEF.GPost     := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GValidate := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GCancel   := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);

  REC_SHE_DEF.GView     := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GPrint    := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);

  REC_SHE_DEF.GControl  := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);
  REC_SHE_DEF.GAdmin    := (RECUsuarios.Grupo = 'DEV') or (REC_SHE_DEF.GAdmin);

  if not REC_SHE_DEF.GAdmin then
  begin
    { SET GRANT USERT }
    oUSER(REC_SHE_DEF);

    { MANAGER ACCESS }
    ACTMPAppend.Enabled   := (REC_SHE_DEF.GPost and REC_SHE_DEF.GAppend);
    ACTMPEdit.Enabled     := (REC_SHE_DEF.GPost and REC_SHE_DEF.GEdit  );
    ACTMPDelete.Enabled   := (REC_SHE_DEF.GPost and REC_SHE_DEF.GDelete);

    ACTMPPost.Enabled     := (REC_SHE_DEF.GPost    );
    ACTMPValidate.Enabled := (REC_SHE_DEF.GValidate);
    ACTMPCancel.Enabled   := (REC_SHE_DEF.GCancel  );

    ACTRelatorios.Enabled := (REC_SHE_DEF.GPrint);
  end;
  
  if not REC_SHE_DEF.GView then
  _GetForceClose := True else

  if (FForceClose) and (RECParametros.STCX = 'Caixa Aberto') then
  _GetForceClose := False;

  { ACCESS DENIED }
  if (FForceClose) and (RECParametros.STCX <> 'Caixa Aberto') then
  begin
    _GetCurrentAlert := FCurrentEvent    + #13 + #13 +
                       'ACESSO NEGADO !' + #13 +
                        RECParametros.STCX ;
  end else

  if (FForceClose) and (RECParametros.STCX = 'Caixa Aberto') then
  begin
    _GetCurrentAlert := FCurrentEvent    + #13 + #13 +
                       'ACESSO NEGADO !' + #13 +
                       'Usuário não Autorizado';
  end;

  { ACCESS ABORT }
  if FForceClose then
  begin
    oErro(Application.Handle,FCurrentAlert);

    Self.Visible := False;
    Self.Height  := 0;
    Self.Width   := 0;

    PostMessage(Handle, WM_CLOSE, 0, 0);
    Exit;
  end else
  PostMessage( Handle, WM_AFTER_CREATE, 0, 0);
end;

procedure TFrmVEN_NFE.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_ACTIVATE      , 0, 0);
  PostMessage(Handle, SW_SHOWNOACTIVATE, 0, 0);
end;

procedure TFrmVEN_NFE.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if FForceClose then
  Exit;

  PostMessage(Handle, WM_SHOW      , 0, 0);
  PostMessage(Handle, WM_AFTER_SHOW, 0, 0);
end;

procedure TFrmVEN_NFE.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  { VER ANTES DE SAIR }
  if REC_SHE_DEF.Editing then
  begin
    if Edicao.State in [dsInsert,dsEdit] then
       Edicao.Post;

    if Edicao.RecNo > 0 then
       Case messageBox(handle,'Existem Alterações Pendentes !'+#13+
                              'Deseja Salvar ?',
                               PChar(Caption)  ,
                               MB_ICONQUESTION + MB_YESNOCANCEL) of
            mrCancel: Abort;
            mrYes   : begin
                        if ACTMPPost.Enabled then
                           ACTMPPost.Execute else

                        if ACTMPValidate.Enabled then
                           ACTMPValidate.Execute;

                        if ACTMEPost.Enabled then
                           ACTMEPost.Execute;
                      end;
       end;
  end;
end;

procedure TFrmVEN_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Action  := caFree;
end;

procedure TFrmVEN_NFE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_return: if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo)) then
                  SelectNext (ActiveControl, True, True);

       40       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext (ActiveControl, True, True);

       38       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext(ActiveControl, False, True);
  end;
end;

procedure TFrmVEN_NFE.FormPaint(Sender: TObject);
var
  AMainFormScreen: TRect;
  i: Word;
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Ajusta o Form para o tamanho da area livre do MainForm }
  GetWindowRect(FrmPrincipal.ClientHandle,AMainFormScreen);

  REC_SHE_DEF.FTop    := AMainFormScreen.Top;
  REC_SHE_DEF.FBottom := AMainFormScreen.Bottom;
  REC_SHE_DEF.FLeft   := AMainFormScreen.Left;
  REC_SHE_DEF.FRight  := AMainFormScreen.Right;
  REC_SHE_DEF.FHeight := AMainFormScreen.Bottom;

  if REC_SHE_DEF.FPosition = poDesigned then
  begin
    if (HelpContext = 0) then { % da altura }
    if (AMainFormScreen.Bottom - AMainFormScreen.Top < Self.Height) then { Área livre menor que página }
    Self.HelpContext := 95; { % }

    REC_SHE_DEF.FMainHeight := IFThen(Self.HelpContext     > 0,Trunc((REC_SHE_DEF.FHeight - REC_SHE_DEF.FTop ) * (Self.HelpContext     / 100)),0);
    REC_SHE_DEF.FMainWidth  := IFThen(Self.AlphaBlendValue > 0,Trunc((REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft) * (Self.AlphaBlendValue / 100)),0);

    if (REC_SHE_DEF.FMainTop > 0) and (REC_SHE_DEF.FMainLeft > 0) then
    begin
      Self.Top  := REC_SHE_DEF.FTop + 5;
      Self.Left := REC_SHE_DEF.FLeft;

      if Self.Top + Self.Height > REC_SHE_DEF.FBottom then
      begin
        Self.Top := Self.Top - ((Self.Top + Self.Height) - REC_SHE_DEF.FBottom);
      end;

      if Self.Left + Self.Width > REC_SHE_DEF.FRight then
      begin
        Self.Left := Self.Left - ((Self.Left + Self.Width) - REC_SHE_DEF.FRight);
      end;

    end else
    begin
      if REC_SHE_DEF.FMainHeight > 0 then Self.Height := REC_SHE_DEF.FMainHeight;
      if REC_SHE_DEF.FMainWidth  > 0 then Self.Width  := REC_SHE_DEF.FMainWidth;

      if FormStyle = fsNormal then
      begin
        Self.Top  := ( REC_SHE_DEF.FTop   + (REC_SHE_DEF.FHeight - Self.Height)) div 2;
        Self.Left := ((REC_SHE_DEF.FRight +  REC_SHE_DEF.FLeft)  - Self.Width)   div 2;
      end else
      //if (FHeight > 0) or (FWidth  > 0) then
      begin
        Self.Top  := ((REC_SHE_DEF.FBottom - REC_SHE_DEF.FTop ) - Self.Height) div 2;
        Self.Left := ((REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft) - Self.Width ) div 2;
      end;
    end;
  end else
  if (REC_SHE_DEF.FWorkArea) and (FormStyle = fsNormal) then
  begin
    Self.Top    := Screen.WorkAreaTop;
    Self.Left   := Screen.WorkAreaLeft;
    Self.Width  := Screen.WorkAreaWidth;
    Self.Height := Screen.WorkAreaHeight;
  end else
  if (REC_SHE_DEF.FMainArea) and (FormStyle = fsNormal) then
  begin
    Self.Top    := 0;
    Self.Left   := 0;
    Self.Width  := REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft - 5;
    Self.Height := REC_SHE_DEF.FHeight - REC_SHE_DEF.FTop  - 5;
  end else
  if REC_SHE_DEF.FPosition = poDefault then
  begin
    Self.Top    := IFThen(FormStyle = fsNormal,REC_SHE_DEF.FTop ,0);
    Self.Left   := IFThen(FormStyle = fsNormal,REC_SHE_DEF.FLeft,0);
    Self.Width  := IFThen(REC_SHE_DEF.FPosition = poDefault,REC_SHE_DEF.FRight  - REC_SHE_DEF.FLeft - 5,0);
    Self.Height := IFThen(REC_SHE_DEF.FPosition = poDefault,REC_SHE_DEF.FHeight - REC_SHE_DEF.FTop  - 5,0);
  end;

  { ricardo RODAPÉ }
  REC_SHE_DEF.FMainWidth := SBRodape.Width;
  for i  := 0 to SBRodape.Panels.Count - 1 do
  if  i  <> 1 then
  REC_SHE_DEF.FMainWidth   := REC_SHE_DEF.FMainWidth - SBRodape.Panels[i].Width;
  SBRodape.Panels[1].Width := REC_SHE_DEF.FMainWidth - 15;

  { SCREEN CAPTION }
  if RECUsuarios.Id = 0 then
  Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FMainWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FMainHeight) + '. ' + Self.Caption;
end;

procedure TFrmVEN_NFE.FormResize(Sender: TObject);
begin
  if (not Showing) or (FForceClose) then
  Exit;

  { Risize }
  PostMessage(Handle, WM_ENTERSIZEMOVE , 0, 0); { Before }
  PostMessage(Handle, WM_EXITSIZEMOVE  , 0, 0); { After }
end;

procedure TFrmVEN_NFE.ACTRefreshExecute(Sender: TObject);
begin
  oRefresh(Edicao);
end;

procedure TFrmVEN_NFE.ACTSaidaExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmVEN_NFE.ACTConsultaExecute(Sender: TObject);
begin
  { INICIALIZAÇÃO DE TRANSAÇÕES }
  oOTransact(TConsulta); { Principal }

  { TABELAS }
  oOTransact(TConsulta); { Consultas }
  with SQLConsulta do
  begin
    if REC_SHE_DEF.IDEV = 0 then
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(IDG_FIS_NFE_EVE,1) FROM RDB$DATABASE');
      ExecQuery;

      REC_SHE_DEF.IDEV := Current.Vars[0].AsString;
    end;  

    Close;
    SQL.Clear;
    SQL.Add('SELECT   CFOP FROM TAB_NAT');
    SQL.Add('ORDER BY CFOP');
    ExecQuery;
    while not eof do
    begin
      PECFOP.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT   FANTASIA FROM CAD_TRA');
    SQL.Add('WHERE    CDST = 30');
    SQL.Add('ORDER BY FANTASIA ');
    ExecQuery;
    while not eof do
    begin
      PEDECT.Items.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT   DESCRICAO FROM TAB_PAG');
    SQL.Add('ORDER BY PAG_D001,PAG_D002,PAG_D003,PAG_D004,PAG_D005,DESCRICAO');
    ExecQuery;
    while not eof do
    begin
      IECDPG.Descriptions.Add(Current.Vars[0].AsString);
      IECDPG.Values.Add(Current.Vars[0].AsString);
      next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT   CPAIS,XPAIS FROM TAB_PAIS');
    SQL.Add('ORDER BY 2');
    ExecQuery;
    while not eof do
    begin
      IExPais.Values.Add(Current.Vars[0].AsString);
      IExPais.Descriptions.Add(Current.Vars[1].AsString);
      next;
    end;
    IExPais.Text := '1058';
  end;

  { EDIÇÕES }
  { PEGA NÚMERO DISPONÍVEL }
  ACTNFeNUM.HelpKeyword := EmptyStr;
  ACTNFeNUM.Execute;

  { Habilita envio automático conforme parâmetro }
  IEEnvMail.Text    :=  RECParametros.NFE_ENV_EMAIL_AUTO;
  IEEnvMail.Enabled := (RECParametros.NFE_ENV_EMAIL_AUTO = 1);
end;

procedure TFrmVEN_NFE.ACTPesquisaExecute(Sender: TObject);
begin
  { INICIALIZA PARÂMETROS DA PESQUISA }
  with REC_SHE_DEF do
  begin
    { FIREBIRD PESQUISA PRIMÁRIA }
    { PADRÃO }
    FB_PSQ_ID  := '0';      { Identificador }
    FB_PSQ_CPL := EmptyStr; { Complemento }
    FB_PSQ_SBQ := False;    { Sub Query }
    FB_PSQ_OK  := False;    { Validação }

    { TEXTO }
    FB_PSQ_FD_NO_PK := EmptyStr; { Campo  }
    FB_PSQ_FD_VD_PK := EmptyStr; { Valor  }

    { DATAS }
    FB_PSQ_DT_NO_PK := EmptyStr; { Campo  }
    FB_PSQ_DT_VD_PK := 0;        { Valor  }

    { FIREBIRD PESQUISA SECUNDÁRIA }
    { TEXTO }
    FB_PSQ_FD_NO_FK := EmptyStr; { Campo  }
    FB_PSQ_FD_VD_FK := EmptyStr; { Valor  }

    { DATAS }
    FB_PSQ_DT_NO_FK := EmptyStr; { Campo  }
    FB_PSQ_DT_VD_FK := 0;        { Valor  }

    { ÂNCORAS PRINCIPAIS }
    { Empresas }
    EP_NO := EmptyStr; { Empresa }
    CF_NO := EmptyStr; { Fabricante }

    { Situações }
    DEST := EmptyStr; { Descrição }
    STFI := EmptyStr; { Descrição Abreviada }

    { Produtos }
    ARTIGO     := EmptyStr; { Artigo }
    SKU        := EmptyStr; { SKU }
    NCM        := EmptyStr; { NCM }
    GRADE      := EmptyStr; { Grade }
    DESCRICAO  := EmptyStr; { Nome / Descrição }
    COMPOSICAO := EmptyStr; { Composição }

    { Lista Digitada }
    if LISTA = Nil then
    LISTA := TStringList.Create else
    LISTA.Clear;
  end;

  { INICIALIZA FORM SCREEN }
  Screen.Cursor := crHourGlass;
  ALockWindowUpdate := True;  { Habilita SQL INJECTION }
end;

procedure TFrmVEN_NFE.ACTEdicaoExecute(Sender: TObject);
begin
  { INICIALIZAÇÃO DE TRANSAÇÕES }
  { EDIÇÕES }
  { PAGE CONTROL }
  PCEdicao.ActivePage := TSProduto;

  { INICIALIZAÇÃO PADRÃO }
  DEdhEmi.Date    := RECParametros.SHE_DATA; { Emissão }
  DEdhSaiEnt.Date := RECParametros.SHE_DATA; { Saída }

  { Destinatário }
  CEIDCD.Value   := 0; { Principal }
  CER_IDCD.Value := 0; { Remessa }

  { Pedido }
  EDCDPD.Text  := EmptyStr;
  CEVTPV.Value := 0;

   { Prazos }
  IECDPG.Text := 'A VISTA';
  IEBOLETO.Text := 'NÃO';

  { Romaneio }
  CECDRO.Value := 0;
  CEVTRO.Value := 0;

  { Descontos }
  CEPDSC.Value := 0;
  CEVDSC.Value := 0;

  { Transportadora }
  CEIDCT.Value := 0;
  CEVFRT.Value := 0;
  CEVSEG.Value := 0;

  IEModFrete.Text := '9';
  CEQVOL.Text  := '0';

  REC_SHE_DEF.LISTA := TStringList.Create; { Informações Adicionais }

  { Habilita envio automático conforme parâmetro }
  IEEnvMail.Text    :=  RECParametros.NFE_ENV_EMAIL_AUTO;
  IEEnvMail.Enabled := (RECParametros.NFE_ENV_EMAIL_AUTO = 1);

  { EDIÇÕES TEMPORÁRIAS }
  oOTransact(TSEdicao); { Edições Temporárias }
  with SQLSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM FIS_NFE_ITE');
    ExecQuery;

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM NFE_DUP');
    ExecQuery;

    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM NFE_CLI');
    ExecQuery;
  end;

  oCTransact(TSEdicao);
  oOTransact(TSEdicao);
  
  { CLIENTES - MÃO DE OBRA }
  with FIS_NFE_MAO do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   PK.* FROM  FIS_NFE_MAO AS PK');
    SelectSQL.Add('WHERE    PK.IDEV = ''' + REC_SHE_DEF.IDEV + '''');
    SelectSQL.Add('ORDER BY PK.NFE_NITEMPED');
    Prepare;
  end;

  { DUPLICATAS }
  with FIS_NFE_DUP do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   PK.* FROM  FIS_NFE_DUP AS PK');
    SelectSQL.Add('WHERE    PK.IDEV = ''' + REC_SHE_DEF.IDEV + '''');
    SelectSQL.Add('ORDER BY PK.NFE_NITEMPED');
    Prepare;
  end;

  { SUMÁRIO }
  with FIS_NFE_SUM do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PK.ID   ,PK.IDEV,');
    SQL.Add('PK.NFE_NITEMPED,PK.NFE_QCOM,PK.NFE_RCOM,');

    SQL.Add('CAST(''Produtos''                    AS VARCHAR(50)) AS LBL_VPROD         ,PK.NFE_VPROD,');
    SQL.Add('CAST(''Descontos''                   AS VARCHAR(50)) AS LBL_VDESC         ,PK.NFE_VDESC,');
    SQL.Add('CAST(''Base de Cálculo''             AS VARCHAR(50)) AS LBL_VBC           ,PK.NFE_VBC,  ');

    SQL.Add('CAST(''Base de Cálculo NRT CBS''     AS VARCHAR(50)) AS LBL_CBS_VBCCBS    ,PK.NFE_CBS_VBCCBS,');
    SQL.Add('CAST(''NRT CBS''                     AS VARCHAR(50)) AS LBL_CBS_VCBS      ,PK.NFE_CBS_VCBS,  ');

    SQL.Add('CAST(''Base de Cálculo NRT IBS Municipal'' AS VARCHAR(50)) AS LBL_IBSMUN_VBCMUN ,PK.NFE_IBSMUN_VBCIBSMUN,');
    SQL.Add('CAST(''NRT IBS Municipal''           AS VARCHAR(50)) AS LBL_IBSMUN_VIBSMUN,PK.NFE_IBSMUN_VIBSMUN,');

    SQL.Add('CAST(''Base de Cálculo NRT IBS Estadual'' AS VARCHAR(50)) AS LBL_IBSUF_VBCIBSUF,PK.NFE_IBSUF_VBCIBSUF,');
    SQL.Add('CAST(''NRT IBS Estadual''            AS VARCHAR(50)) AS LBL_IBSUF_VIBSUF  ,PK.NFE_IBSUF_VIBSUF,');

    SQL.Add('CAST(''ICMS Estadual''               AS VARCHAR(50)) AS LBL_VICMS         ,PK.NFE_VICMS,      ');
    SQL.Add('CAST(''ICMS Interestadual''          AS VARCHAR(50)) AS LBL_VICMSUFDEST   ,PK.NFE_VICMSUFDEST,');
    SQL.Add('CAST(''Desoneração de ICMS''         AS VARCHAR(50)) AS LBL_VICMSDESON    ,PK.NFE_VICMSDESON, ');

    SQL.Add('CAST(''Base de Cálculo ICMS''        AS VARCHAR(50)) AS LBL_VBCCREDICMSSN ,PK.NFE_VBCCREDICMSSN,');
    SQL.Add('CAST(''Crédito ICMS''                AS VARCHAR(50)) AS LBL_VCREDICMSSN   ,PK.NFE_VCREDICMSSN,');

    SQL.Add('CAST(''Base de Cálculo ST''          AS VARCHAR(50)) AS LBL_VBCST         ,PK.NFE_VBCST,');
    SQL.Add('CAST(''ICMS-ST''                     AS VARCHAR(50)) AS LBL_VST           ,PK.NFE_VST,  ');

    SQL.Add('CAST(''IPI''                         AS VARCHAR(50)) AS LBL_VIPI          ,PK.NFE_VIPI,   ');
    SQL.Add('CAST(''PIS''                         AS VARCHAR(50)) AS LBL_VPIS          ,PK.NFE_VPIS,   ');
    SQL.Add('CAST(''Cofins''                      AS VARCHAR(50)) AS LBL_VCOFINS       ,PK.NFE_VCOFINS,');

    SQL.Add('CAST(''Frete''                       AS VARCHAR(50)) AS LBL_VFRETE        ,PK.NFE_VFRETE,');
    SQL.Add('CAST(''Seguro''                      AS VARCHAR(50)) AS LBL_VSEG          ,PK.NFE_VSEG,  ');
    SQL.Add('CAST(''Serviço''                     AS VARCHAR(50)) AS LBL_VSERV         ,PK.NFE_VSERV, ');
    SQL.Add('CAST(''Importação II''               AS VARCHAR(50)) AS LBL_VII           ,PK.NFE_VII,   ');

    SQL.Add('CAST(''Fundo de Pobreza Estadual''   AS VARCHAR(50)) AS LBL_VFCPUFDEST    ,PK.NFE_VFCPUFDEST,');
    SQL.Add('CAST(''Outros Tributos''             AS VARCHAR(50)) AS LBL_VOUTRO        ,PK.NFE_VOUTRO,');

    SQL.Add('CAST(''Total Geral de Tributos''     AS VARCHAR(50)) AS LBL_VTOTTRIB      ,PK.NFE_VTOTTRIB,');
    SQL.Add('CAST(''Duplicatas (Boletos)''        AS VARCHAR(50)) AS LBL_VDUP          ,PK.NFE_VDUP,');
    SQL.Add('CAST(''Nota Fiscal''                 AS VARCHAR(50)) AS LBL_VNF           ,PK.NFE_VNF  ');

    SQL.Add('FROM     FIS_NFE_SUM AS PK');
    SQL.Add('WHERE    PK.IDEV = ''' + REC_SHE_DEF.IDEV + '''');
    SQL.Add('ORDER BY PK.NFE_NITEMPED');
    Prepare;
  end;

  { PRODUTOS }
  with Edicao do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT   PK.* FROM FIS_NFE_ITE AS PK');
    SelectSQL.Add('WHERE    PK.IDEV = ''' + REC_SHE_DEF.IDEV + '''');
    SelectSQL.Add('AND      PK.FLAG = 0');
    SelectSQL.Add('ORDER BY PK.NFE_NITEMPED');
    Prepare;
    Open;
  end;
end;

procedure TFrmVEN_NFE.ACTMPAppendExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTMPEditExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTMPDeleteExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTMPPostExecute(Sender: TObject);
begin
  if oYesNo(handle,'Salvar Edição ?') = mrNo then
  Abort;

  ACTCheckErrors.Execute;
  ACTCheckConstraints.Execute;
end;

procedure TFrmVEN_NFE.ACTMPValidateExecute(Sender: TObject);
begin
  if oYesNo(handle,'Validar Edição ?') = mrNo then
  Abort;

  ACTCheckErrors.Execute;
  ACTCheckConstraints.Execute;
end;

procedure TFrmVEN_NFE.ACTMPCancelExecute(Sender: TObject);
begin
  REC_SHE_DEF.Editing := False;
  Close;
end;

procedure TFrmVEN_NFE.ACTMEAppendExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL Injection }
  Exit;

  oAppend(Edicao,REC_SHE_DEF.GAppend);
end;

procedure TFrmVEN_NFE.ACTMEEditExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL Injection }
  Exit;

  oEdit(Edicao,REC_SHE_DEF.GEdit);
end;

procedure TFrmVEN_NFE.ACTMEDeleteExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL Injection }
  Exit;

  oDelete(Edicao,REC_SHE_DEF.GDelete);
end;

procedure TFrmVEN_NFE.ACTMEPostExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL Injection }
  Exit;

  oPost(Edicao,REC_SHE_DEF.GPost);
end;

procedure TFrmVEN_NFE.ACTMECancelExecute(Sender: TObject);
begin
  if ALockWindowUpdate then { SQL Injection }
  Exit;

  oCancel(Edicao,REC_SHE_DEF.GCancel);
end;

procedure TFrmVEN_NFE.ACTCheckConstraintsExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTCheckErrorsExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTRelatoriosExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTDashboardsExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTProgressBarExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTEveRegisterExecute(Sender: TObject);
begin
  { UNREGISTER EVENTS }
  if EEvent.Registered then
     try
       EEvent.UnregisterEvents;
       EEvent.Events.Clear;

       REC_SHE_DEF.FB_EVE_ADM := EmptyStr; { Admin  }
       REC_SHE_DEF.FB_EVE_PAD := EmptyStr; { Padrão }
       REC_SHE_DEF.FB_EVE_EDT := EmptyStr; { Edição }
     except
       on E: Exception do
       begin
         oErro(Handle,'Falha ao tentar limpar evento Padrão !' + #13 +
                      'Erro: ' + E.Message + '.');
       end;
     end;

  { REGISTER EVENTS }
  REC_SHE_DEF.FB_Event := TRIM(REC_SHE_DEF.FB_Event);
  if REC_SHE_DEF.FB_Event <> EmptyStr then
     try
       { ADMIN }
       REC_SHE_DEF.FB_EVE_ADM := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-ADM';
       EEvent.Events.Add(REC_SHE_DEF.FB_EVE_ADM);

       { PADRÃO }
       if not RECUsuarios.IS_EVE_ADM then
       begin
         REC_SHE_DEF.FB_EVE_PAD := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-' + oStrZero(RECUsuarios.ID,3);
         EEvent.Events.Add(REC_SHE_DEF.FB_EVE_PAD);
       end;

       { EDIÇÃO }
       if ACTEveRegister.Tag > 0 then
       begin
         REC_SHE_DEF.FB_EVE_EDT := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-EDT' + oStrZero(ACTEveRegister.Tag,3);
         EEvent.Events.Add(REC_SHE_DEF.FB_EVE_EDT);

         ACTEveRegister.Tag := 0;
       end;

       EEvent.RegisterEvents;
     except
       on E: Exception do
       begin
         oErro(Application.Handle,'Falha ao tentar registrar evento !' + #13 +
                                  'Erro: '   + E.Message + '.');
       end;
     end;
end;

procedure TFrmVEN_NFE.ACTEveExecuteExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event = EmptyStr then
  begin
    if not ALockWindowUpdate then
    oRefresh(Edicao);
  end else

  try
    oOTransact(TEvent);

    { ADMIN }
    SPEvent.Close;
    SPEvent.StoredProcName := 'SP_SHE_EVE';
    SPEvent.Prepare;

    for i := 0 to SPEvent.ParamCount - 1 do
    SPEvent.Params[i].Value := Null;

    SPEvent.Params[0].Value := REC_SHE_DEF.FB_EVE_ADM;
    SPEvent.Params[1].Value := REC_SHE_DEF.FB_EVE_PAD;
    SPEvent.Params[2].Value := REC_SHE_DEF.FB_EVE_EDT;
    SPEvent.ExecProc;

    oCTransact(TEvent);
  except
    on E: Exception do
    begin
      oCTransact(TEvent,ltRollback);
      oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                REC_SHE_DEF.FB_Event   + '.' + #13 + #13 +
                                E.Message              + '.');
    end;
  end;
end;

procedure TFrmVEN_NFE.ACTEveExpressExecute(Sender: TObject);
begin
  ACTEveRegister.Execute;
  ACTEveExecute.Execute;
end;

procedure TFrmVEN_NFE.EEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  if ((RECUSuarios.IS_EVE_ADM    ) and (RightStr(EventName,3) = 'ADM')) or
     ((not RECUSuarios.IS_EVE_ADM) and (RightStr(EventName,3) = oStrZero(RECUsuarios.ID,3))) then

  if REC_SHE_DEF.FB_EventAlert then
  //oRefresh(Edicao);
end;

procedure TFrmVEN_NFE.EdicaoBeforeOpen(DataSet: TDataSet);
begin
  { INICIALIZA FORM SCREEN }
  Screen.Cursor := crHourGlass;

  DBGEdicao.Bands[6].Visible := False;    { Substituição Tributária }
  DBGEdicaoNFE_NFCI.Visible  := False;    { NFCI }

  { COMPOSIÇÃO }
  PNLNFE_XPROX.Caption := EmptyStr;
  PNLNFE_XPROX.Visible := False;

  { INFORMAÇÕES TÉCNICAS }
  DBINFADTEC.Lines.Clear;
  GBINFADTEC.Visible := False;
end;

procedure TFrmVEN_NFE.EdicaoAfterOpen(DataSet: TDataSet);
begin
  { FINALIZA FORM SCREEN }
  Screen.Cursor := crDefault;

  REC_SHE_DEF.FInitialize := False; { Finaliza Inicialização }
  SBRodape.Panels[0].Text := 'Consulta';

  if FIS_NFE_SUM.State = dsInactive then
     FIS_NFE_SUM.Open;

  if FIS_NFE_DUP.State = dsInactive then
     FIS_NFE_DUP.Open;

  if FIS_NFE_MAO.State = dsInactive then
     FIS_NFE_MAO.Open;
end;

procedure TFrmVEN_NFE.EdicaoBeforeClose(DataSet: TDataSet);
begin
  if FIS_NFE_SUM.State = dsBrowse then
     FIS_NFE_SUM.Close;

  if FIS_NFE_DUP.State = dsBrowse then
     FIS_NFE_DUP.Close;

  if FIS_NFE_MAO.State = dsBrowse then
     FIS_NFE_MAO.Close;
end;

procedure TFrmVEN_NFE.EdicaoAfterClose(DataSet: TDataSet);
begin
  SBRodape.Panels[1].Text := EmptyStr;
end;

procedure TFrmVEN_NFE.EdicaoBeforeScroll(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.EdicaoAfterScroll(DataSet: TDataSet);
begin
  { COMPOSIÇÃO }
  if PNLNFE_XPROX.Caption <> EmptyStr then
     PNLNFE_XPROX.Visible := True;

  { INFORMAÇÕES TÉCNICAS }
  if DBINFADTEC.Text <> EmptyStr then
     GBINFADTEC.Visible := True;
end;

procedure TFrmVEN_NFE.EdicaoBeforeInsert(DataSet: TDataSet);
begin
  Edicao.Fields[0].Tag := Edicao.RecNo;
end;

procedure TFrmVEN_NFE.EdicaoAfterInsert(DataSet: TDataSet);
begin
  DBGEdicaoNFE_CPROD.Field.FocusControl;
  oSetFocus(DBGEdicao);
end;

procedure TFrmVEN_NFE.EdicaoNewRecord(DataSet: TDataSet);
begin
  EdicaoID.Value   := 0;
  EdicaoIDEV.Value := REC_SHE_DEF.IDEV;
  EdicaoFLAG.Value := 0;

  with SQLPKSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COALESCE(MAX(NFE_NITEMPED),0) FROM FIS_NFE_ITE');
    ExecQuery;
    EdicaoNFE_NITEMPED.Value := Current.Vars[0].AsInteger + 1;
  end;

  EdicaoNFE_CDNF.Value   := Trunc(CECDNF.Value);
  EdicaoNFE_CFOP.Value   := LeftStr(PECFOP.Text,4);
  EdicaoNFE_MODBC.Value  := 3;
  EdicaoNFE_UF.Value     := PEUF.Text;
  EdicaoNFE_INDTOT.Value := 1;

  EdicaoIP.Value   := RECParametros.IP;
  EdicaoHOST.Value := RECParametros.HOST;
end;

procedure TFrmVEN_NFE.EdicaoBeforeEdit(DataSet: TDataSet);
begin
  EdicaoId.Tag := EdicaoId.AsInteger;
end;

procedure TFrmVEN_NFE.EdicaoAfterEdit(DataSet: TDataSet);
begin
  oSetFocus(DBGEdicao);
end;

procedure TFrmVEN_NFE.EdicaoBeforeDelete(DataSet: TDataSet);
begin
  if oYesNo(Handle,'Confirma Exclusão ?') = mrNo then
  Abort;
end;

procedure TFrmVEN_NFE.EdicaoAfterDelete(DataSet: TDataSet);
begin
  if (Edicao.RecNo > 0) and (not ALockWindowUpdate) then
  ACTNFeCALC.Execute;
end;

procedure TFrmVEN_NFE.EdicaoBeforePost(DataSet: TDataSet);
begin
  if IEFinNFe.Text <> '2' then
  begin
    if Length(EdicaoNFE_NCM.AsString) < 8 then
       EdicaoNFE_NCM.Value := '00000000';

    if (RightStr(EdicaoNFE_CFOP.AsString,1) = '2') and (EdicaoNFE_ORIG.AsInteger <> 1) then
        EdicaoNFE_PIPI.Value := 0;

    if LeftStr(EdicaoNFE_CEAN.AsString,3) <> '789' then
               EdicaoNFE_CEAN.Value := '';

    EdicaoNFE_UTRIB.Value   := IFThen(LeftStr(EdicaoNFE_CFOP.AsString,1) <> '7',EdicaoNFE_UCOM.AsString,EdicaoNFE_UTRIB.AsString);
    EdicaoNFE_QTRIB.Value   := IFThen(EdicaoNFE_QTRIB.AsFloat = 0,EdicaoNFE_QCOM.AsFloat,EdicaoNFE_QTRIB.AsFloat);
    EdicaoNFE_VUNTRIB.Value := IFThen(EdicaoNFE_VUNTRIB.AsFloat = 0,EdicaoNFE_VUNCOM.AsFloat,EdicaoNFE_VUNTRIB.AsFloat);
  end else
  begin
    EdicaoNFE_CSTIPI.Value := NewCSTIPI;
    EdicaoNFE_VNF.Value    := EdicaoNFE_VIPI.AsFloat;
  end;

  { Limpa CEST Incorreto ! }
  if EdicaoNFE_CEST.Value  = '0' then EdicaoNFE_CEST.Value := EmptyStr;
end;

procedure TFrmVEN_NFE.EdicaoAfterPost(DataSet: TDataSet);
var
  ABMRecord: TBookMark;
begin
  if not ALockWindowUpdate then
  try
    if Edicao.RecNo > 0 then
    ABMRecord := Edicao.GetBookmark;

    REC_SHE_DEF.Editing := True;
    ACTNFeCALC.Execute;
  finally
    if ABMRecord <> Nil then
    begin
      Edicao.GotoBookmark(ABMRecord);
      Edicao.FreeBookmark(ABMRecord);
    end;
  end;
end;

procedure TFrmVEN_NFE.EdicaoBeforeCancel(DataSet: TDataSet);
begin
  if Edicao.Fields[0].Tag = 0 then
  begin
    Edicao.Close;
    Edicao.Open;

    ABORT;
  end;
end;

procedure TFrmVEN_NFE.EdicaoAfterCancel(DataSet: TDataSet);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.EdicaoUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmVEN_NFE.EdicaoEditError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmVEN_NFE.EdicaoDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmVEN_NFE.EdicaoPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  DataBaseError(oFBException(E.Message));
end;

procedure TFrmVEN_NFE.EdicaoCalcFields(DataSet: TDataSet);
begin
  Edicao.FieldByName('C_ID').Value := Edicao.RecNo;
end;

procedure TFrmVEN_NFE.DTSEdicaoDataChange(Sender: TObject; Field: TField);
begin
  if (Edicao.State = dsBrowse) and (not ALockWindowUpdate) then
  begin
    DBGEdicaoNFE_XPED.Visible  := (IEITEMPED.Text = '1');
    DBGEdicao.Bands[3].Visible := (LeftStr(EdicaoNFE_CFOP.AsString,1) = '7'); { Tributação }

    { Ajuste Colunas }
    if Edicao.State = dsBrowse then
    begin
      DBGEdicao.ApplyBestFit(DBGEdicaoNFE_XPED );
      DBGEdicao.ApplyBestFit(DBGEdicaoNFE_CPROD);
      DBGEdicao.ApplyBestFit(DBGEdicaoNFE_XPROD);
      DBGEdicao.ApplyBestFit(DBGEdicaoNFE_NFCI );
    end;

    { Descrição XML }
    PNLNFE_XPROX.Caption := EdicaoCP_CMP_NO.AsString;
  end;
end;

procedure TFrmVEN_NFE.DTSEdicaoStateChange(Sender: TObject);
begin
  oState(Edicao,SBMenuEdicao);
end;

procedure TFrmVEN_NFE.DBGEdicaoBackgroundDrawEvent(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect);
var
  AValueText: String;
begin
  with ACanvas do
  begin
    Brush.Color := clBtnShadow;
    FillRect(ARect);

    if (Sender as TdxDBGrid).GroupColumnCount = 0 then
    begin
      Font.Color := clMenu;
      AValueText := 'Arraste as colunas para poder agrupá-las.';
      TextOut(ARect.Left, ARect.Top, AValueText);
    end;
  end;
end;

procedure TFrmVEN_NFE.DBGEdicaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { Zebra }
    if ANode.Values[DBGEdicaoC_ID.Index] <> Null then
    if ANode.Values[DBGEdicaoC_ID.Index] mod 2 <> 0 then
       AColor := $00F8F8F8 else
       AColor := clHighLightText;
  end;

  if ANode.Selected then
  begin
    AColor      := $00750000;//$00400000;
    AFont.Color := clHighlightText;
  end;

  if ASelected then
  begin
    AColor      := clHighlight; //$00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;

procedure TFrmVEN_NFE.DBGEdicaoDblClick(Sender: TObject);
begin
  if Edicao.RecNo = 0 then
  Exit;

  if EdicaoFLAG_CTRL.AsInteger = 1 then
  begin
    if oYesNo(handle,'Desabilitar Cálculos Tributários ?') = mrYes then
    begin
      Edicao.Edit;
      EdicaoFLAG_CTRL.Value := 0;
      Edicao.Post;
    end;
  end else

  if oYesNo(handle,'Habilitar Cálculos Tributários ?') = mrYes then
  begin
    Edicao.Edit;
    EdicaoFLAG_CTRL.Value := 1;
    Edicao.Post;
  end;
end;

procedure TFrmVEN_NFE.DBGEdicaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       VK_insert: if ACTMEAppend.Enabled then ACTMEAppend.Execute else
                  if ACTMPAppend.Enabled then ACTMPAppend.Execute;

       vk_return: if ACTMEEdit.Enabled then ACTMEEdit.Execute else
                  if ACTMPEdit.Enabled then ACTMPEdit.Execute;

       VK_delete: if ACTMEDelete.Enabled then ACTMEDelete.Execute else
                  if ACTMPDelete.Enabled then ACTMPDelete.Execute;
  end;
end;

procedure TFrmVEN_NFE.TAB_CFOPAfterOpen(DataSet: TDataSet);
begin
  PECFOP.Text         := TAB_CFOPCFOP.AsString;
  PECFOP_NO.Text      := TAB_CFOPCFOP_NO.AsString;
  IECFOP_TPNF.Text    := TAB_CFOPCFOP_TPNF.AsString;
  EDCFOP_TPNF_NO.Text := TAB_CFOPCFOP_TPNF_NO.AsString;

  if PECFOP.Text = '6108' then
  IEindFinal.Text := '1'; { Consumidor Final }
  IEFinNFe.Text   := IFThen(TAB_CFOPCFOP_TPNF_NO.AsString = 'DEVOLUÇÃO','4','1');
end;

procedure TFrmVEN_NFE.TAB_PAGAfterOpen(DataSet: TDataSet);
begin
  RECRomaneio.CDPG := IntToStr(TAB_PAGID.AsInteger);
  RECRomaneio.DEPG := TAB_PAGPAG_DPAG.AsString;

  IETPAG.Text   := '99';
  IEINDPAG.Text := '0' ;

  { Tipo de Pagamento }
  if IEBOLETO.Text  = 'SIM' then
     IETPAG.Text := '15' else
     if Pos('DIN',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '01' else
     if Pos('CHE',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '02' else
     if Pos('CRÉ',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '03' else
     if Pos('DÉB',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '04' else
     if Pos('DEP',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '16' else
     if Pos('PIX',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '17' else
     if Pos('TED',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '18' else
     if Pos('SEM',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '90' else
     if Pos('SER',LeftStr(RECRomaneio.STCO,3)) > 0 then
        IETPAG.Text := '90';

  { Forma de Pagamento }
  if IEINDPAG.Text <> '2' then
     IEINDPAG.Text := IFThen(TAB_PAGPAG_PARC.AsInteger > 1,'1','0');

  if (RECParametros.EP_ID = 2) and (IETPAG.Text = '99') then { Ricardo - E-armarinhos }
      IETPAG.Text := '18'
end;

procedure TFrmVEN_NFE.ACTNFePesquisaExecute(Sender: TObject);
begin
  try
    with SQLPKConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT DISTINCT');
      SQL.Add('       PK.EP_ID,FK.CP_EP_ID,CAST(COUNT(*) OVER() AS INTEGER) AS NRECNO,');
      SQL.Add('       PV.IDPK ,PK.DEPK,PK.CDRO,');
      SQL.Add('       PK.CD_ID,CD.UF,IIF(CD.UF = EP_EF.SGUF OR FEMPTY(CD.UF),TB_TPO_PED.CFOP_DUF,TB_TPO_PED.CFOP_FUF) AS CFOP,');
      SQL.Add('       PK.CR_ID,CR.FANTASIA AS CR_NO,');
      SQL.Add('       PK.CV_ID,CV.LOGIN    AS CV_NO,');
      SQL.Add('       PK.CT_ID,PK.MFRT     AS FRT_MODELO,PK.VFRT AS FRT_VFRT,FK.PSBR,FK.PSLQ,');
      SQL.Add('       TB_TPO_PED.DESCRICAO AS TPD_NO,PV.CSPD,PV.FAPD,PV.LQPD,');
      SQL.Add('       TB_TPO_COB.DESCRICAO AS TCO_NO,PV.TPCO AS CRD_NU,PK.CDPG AS PRZ_ID,TB_TPO_PRZ.DESCRICAO AS PRZ_NO,');
      SQL.Add('       PK.DEST,');
      SQL.Add('       FK.ITEM,FK.CP_ID,CP.REST,FK.SKU,CP.CEAN,');
      SQL.Add('       TB_NCM.NCM,TB_NCM.TRIBIPI AS PIPI,TB_NCM.EXTIPI,TB_NCM.CEST,');
      SQL.Add('       FK.DECP || '' '' || COALESCE(FK.DGCP,'''') AS CP_NO,CP.CMP_PAD AS CP_NO_CMP,');
      SQL.Add('       FK.UCOM ,CP.UTRIB,CP.UQTDE ,CP.UQVOL,CP.UESP,');
      SQL.Add('       CP.MPESO,CP.UPSCN,CP.MMETRO,CP.MREND,');
      SQL.Add('       CAST(SUM(FK.QTDE) OVER(PARTITION BY FK.CP_ID) AS NUMERIC(15,2)) AS QTDE,');
      SQL.Add('       CAST(SUM(FK.QTRL) OVER(PARTITION BY FK.CP_ID) AS INTEGER)       AS QTRL,');
      SQL.Add('       CAST(SUM(FK.QTDE * FK.VPRC_COM) OVER(PARTITION BY FK.CP_ID)     AS NUMERIC(15,2))  AS TCDE   ,');
      SQL.Add('       FK.VPRC_PAD,FK.VPRC_COM,PK.VDSC AS PK_VDSC,PK.PDSC AS PK_PDSC,PK.TSDE AS PK_TSDE,PK.TCDE AS PK_TCDE,PV.TCDE AS PV_TCDE,');
      SQL.Add('       CP.ORIG,FK.NFCI,FK.INFADCAD');

      SQL.Add('FROM ' + oREPZero('ROM_CAB'    ,'_',RECParametros.EP_ID,3) + ' AS PK');
      SQL.Add('JOIN ' + oREPZero('ROM_ITE'    ,'_',RECParametros.EP_ID,3) + ' AS FK ON (FK.CDRO = PK.CDRO)');
      SQL.Add('JOIN ' + oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3) + ' AS PV ON (PV.CDRO = PK.CDRO)');

      SQL.Add('JOIN TAB_PAR_SIS AS EP_EF ON (EP_EF.ID = PK.IDEP )');
      SQL.Add('JOIN CAD_CLI     AS CD    ON (CD.CD_ID = PK.CD_ID)');
      SQL.Add('JOIN CAD_REP     AS CR    ON (CR.CR_ID = PK.CR_ID)');
      SQL.Add('JOIN TAB_USER    AS CV    ON (CV.LG_ID = PK.CV_ID)');
      SQL.Add('JOIN CAD_PRO     AS CP    ON (CP.CP_ID = FK.CP_ID)');

      SQL.Add('JOIN TAB_TPO_PED AS TB_TPO_PED ON (TB_TPO_PED.ID   = PK.CDPD )');
      SQL.Add('JOIN TAB_TPO_COB AS TB_TPO_COB ON (TB_TPO_COB.ID   = PK.CDCO )');
      SQL.Add('JOIN TAB_PAG     AS TB_TPO_PRZ ON (TB_TPO_PRZ.CDPG = PK.CDPG )');

      SQL.Add('LEFT JOIN TAB_NCM AS TB_NCM ON (TB_NCM.NCM = FK.NCM)');

      SQL.Add('WHERE    PK.CDRO = ''' + REC_SHE_DEF.IDPK + '''');
      SQL.Add('ORDER BY FK.ITEM');
      ExecQuery;
    end;

    if SQLPKConsulta.Eof then
    Exit;

    { PEDIDO }
    EDCDPD.Text     := SQLPKConsulta.Current.ByName('DEPK').AsString;
    CEVTPV.Value    := SQLPKConsulta.Current.ByName('PV_TCDE').AsFloat;
    EDCDPD.ReadOnly := True;

    { ROMANEIO }
    RECRomaneio.CDRO := SQLPKConsulta.Current.ByName('CDRO').AsInteger;
    CECDRO.Value     := SQLPKConsulta.Current.ByName('CDRO').AsInteger;
    CECDRO.ReadOnly  := True;

    { SUMÁRIO }
    CETSDE.Value     := SQLPKConsulta.Current.ByName('PK_TSDE').AsFloat;
    CEVTRO.Value     := SQLPKConsulta.Current.ByName('PK_TCDE').AsFloat;

    CEPDSC.Value    := SQLPKConsulta.Current.ByName('PK_PDSC').Value;
    CEPDSC.ReadOnly := True;
    CEVDSC.Value    := SQLPKConsulta.Current.ByName('PK_VDSC').Value;
    LAPDSC.Tag      := IFThen(SQLPKConsulta.Current.ByName('PK_PDSC').AsFloat > 0,1,0);

    { DESTINATÁRIO }
    CEIDCD.Value    := SQLPKConsulta.Current.ByName('CD_ID').AsInteger;
    CEIDCD.Modified := True;
    CEIDCD.ValidateEdit;

    LAIDCD.Enabled := False;
    CEIDCD.Enabled := False;
    EDDECD.Enabled := False;

    RECRomaneio.IDCV := SQLPKConsulta.Current.ByName('CV_ID').AsInteger;
    RECRomaneio.DECV := SQLPKConsulta.Current.ByName('CV_NO').AsString;
    RECRomaneio.IDCR := SQLPKConsulta.Current.ByName('CR_ID').AsInteger;
    RECRomaneio.DECR := SQLPKConsulta.Current.ByName('CR_NO').AsString;

    RECRomaneio.STPD     :=  SQLPKConsulta.Current.ByName('TPD_NO').AsString;
    RECRomaneio.FAPD     := (SQLPKConsulta.Current.ByName('FAPD').AsInteger = 1) or (SQLPKConsulta.Current.ByName('LQPD').AsInteger = 1);
    RECRomaneio.FIN_CSPD := (SQLPKConsulta.Current.ByName('CSPD').AsInteger = 1);

    RECRomaneio.STCO := SQLPKConsulta.Current.ByName('TCO_NO').AsString;
    RECRomaneio.TPCO := SQLPKConsulta.Current.ByName('CRD_NU').AsString;

    RECRomaneio.CDPG := SQLPKConsulta.Current.ByName('PRZ_ID').AsString;;
    RECRomaneio.DEPG := SQLPKConsulta.Current.ByName('PRZ_NO').AsString;;

    IECDPG.Text      := RECRomaneio.DEPG;
    IEBOLETO.Text    := IFThen((RECRomaneio.FAPD) and (Pos(LeftStr(RECRomaneio.STCO,3),'BANBOLDUP') > 0),'SIM','NÃO');
    IEBOLETO.Enabled := (RECRomaneio.FAPD) and (Pos(LeftStr(RECRomaneio.STCO,3),'BANBOLDUP') > 0);

    RECRomaneio.PK_DEST :=  SQLPKConsulta.Current.ByName('DEST').AsString;

    { NATUREZA DE OPERAÇÃO }
    ACTPesquisaCFOP.Caption := 'NFE_CFOP'; { Field }
    ACTPesquisaCFOP.Hint    := SQLPKConsulta.Current.ByName('CFOP').AsString; { Value }
    ACTPesquisaCFOP.Execute;

    { FRETE }
  //  PESQUISA_TRANSPORTADORA(SQLPKConsulta.Current.ByName('CT_ID').AsString,'C'); { CFOP }

    IEModFrete.Text := SQLPKConsulta.Current.ByName('FRT_MODELO').AsString;
    IEModFrete.Modified := True;
    IEModFrete.ValidateEdit;

    CEVFRT.Value := SQLPKConsulta.Current.ByName('FRT_VFRT').AsFloat;
    CEQVOL.Text  := SQLPKConsulta.Current.ByName('QTRL').AsString;

    { INFORMAÇÕES ADICIONAIS }
    EDInfAdPed.Text := SQLPKConsulta.Current.ByName('INFADCAD').AsString; { Pedido }

    { ATIVA SINCRONISMO }
    GFASyncEvent.Animate := True;
    GFASyncEvent.Refresh;

    PNLSBRodapeSyncEvent.Height := 25;
    PNLSBRodapeSyncEvent.Refresh;

    PNLSBRodape.Height := 55;
    PNLSBRodape.Refresh;

    ACTNFeCALC.Tag := 0; { Habilita Cálculo Fiscal }
    try
      Edicao.DisableControls;
      while not SQLPKConsulta.Eof do
      begin
        PNLSyncEvent.Caption := 'Aguarde, carregando registro item nº' + SQLPKConsulta.Current.ByName('ITEM').AsString + ' - SKU ' + SQLPKConsulta.Current.ByName('SKU').AsString + ' ...';
        Application.ProcessMessages;

        Edicao.Append;
        EdicaoCP_ID.Value     := SQLPKConsulta.Current.ByName('CP_ID').AsInteger;
        EdicaoCP_CMP_NO.Value := SQLPKConsulta.Current.ByName('CP_NO_CMP').AsString;
        EdicaoCP_UQTDE.Value  := SQLPKConsulta.Current.ByName('UQTDE').AsFloat;

        EdicaoNFE_NITEMPED.Value := SQLPKConsulta.Current.ByName('ITEM').AsInteger;
        EdicaoNFE_CPROD.Value   := SQLPKConsulta.Current.ByName('SKU').AsString;
        EdicaoNFE_CEAN.Value    := SQLPKConsulta.Current.ByName('CEAN').AsString;

        EdicaoNFE_XPROD.Value   := SQLPKConsulta.Current.ByName('CP_NO').AsString;

        EdicaoNFE_UCOM.Value    := SQLPKConsulta.Current.ByName('UCOM').AsString;
        EdicaoNFE_UTRIB.Value   := SQLPKConsulta.Current.ByName('UTRIB').AsString;

        EdicaoNFE_NCM.Value     := SQLPKConsulta.Current.ByName('NCM').AsString;
        EdicaoNFE_PIPI.Value    := SQLPKConsulta.Current.ByName('PIPI').AsFloat;
        EdicaoNFE_CEST.Value    := SQLPKConsulta.Current.ByName('CEST').AsString;
        EdicaoNFE_EXTIPI.Value  := SQLPKConsulta.Current.ByName('EXTIPI').AsString;

        EdicaoNFE_QCOM.Value    := SQLPKConsulta.Current.ByName('QTDE').AsCurrency;
        EdicaoNFE_RCOM.Value    := SQLPKConsulta.Current.ByName('QTRL').AsInteger;

        EdicaoNFE_VUNPAD.Value  := SQLPKConsulta.Current.ByName('VPRC_COM').AsCurrency;
        EdicaoNFE_VUNCOM.Value  := SQLPKConsulta.Current.ByName('VPRC_COM').AsCurrency;

        EdicaoNFE_VPROD.Value   := SQLPKConsulta.Current.ByName('TCDE'   ).AsCurrency;
        EdicaoNFE_VDESC.Value   := SQLPKConsulta.Current.ByName('PK_VDSC').AsCurrency;

        EdicaoNFE_ORIG.Value    := SQLPKConsulta.Current.ByName('ORIG').AsInteger;
        EdicaoNFE_NFCI.Value    := SQLPKConsulta.Current.ByName('NFCI').AsString;

        { INFORMAÇÕES ADICIONAIS }
        EdicaoNFE_INFADPROD.Value := SQLPKConsulta.Current.ByName('CP_NO_CMP').AsString;

        if not oEmpty(EdicaoNFE_INFADPROD.AsString) then
        EdicaoNFE_INFADPROD.Value := 'Composição Têxtil: ' + EdicaoNFE_INFADPROD.AsString;

        if ((SQLPKConsulta.Current.ByName('UQVOL').AsFloat > 0) and (not oEmpty(SQLPKConsulta.Current.ByName('UESP').AsString))) then
        EdicaoNFE_INFADPROD.Value := EdicaoNFE_INFADPROD.AsString + #13 + 'Conteúdo Unitário: ' + SQLPKConsulta.Current.ByName('UQVOL').AsString + ' ' + SQLPKConsulta.Current.ByName('UESP').AsString else

        EdicaoNFE_INFADPROD.Value := Trim(EdicaoNFE_INFADPROD.AsString);
        EdicaoNFE_VNF.Value := 1;
        Edicao.Post;

        FIS_NFE_SUM.Close;
        FIS_NFE_SUM.Open;

        SQLPKConsulta.Next;
      end;
    finally
      Edicao.EnableControls;
    end;

    { Valida Registros }
    ALockWindowUpdate := False; { Desabilita SQL INJECTION }
    ACTNFeCALC.Execute;
  finally
    { FINALIZA FORM SCREEN }
    Screen.Cursor := crDefault;

    { DESATIVA SINCRONISMO }
    GFASyncEvent.Animate := False;
    PNLSBRodapeSyncEvent.Height := 0;
    PNLSBRodape.Height := 25;

    Application.ProcessMessages;
  end;
end;

procedure TFrmVEN_NFE.ACTPesquisaCFOPExecute(Sender: TObject);
begin
  if (ACTPesquisaCFOP.Caption = EmptyStr) or (ACTPesquisaCFOP.Hint = EmptyStr) then
  Exit;

  if ACTPesquisaCFOP.Hint <> TAB_CFOPCFOP.AsString then
  begin
    TAB_CFOP.Close;
    TAB_CFOP.ParamByName('EP_ID').Value := RECParametros.EP_ID;
    TAB_CFOP.ParamByName('CFOP' ).Value := ACTPesquisaCFOP.Hint;
    TAB_CFOP.Prepare;
    TAB_CFOP.Open;
  end;

  with SQLPKSEdicao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE FIS_NFE_ITE');
    SQL.Add('SET ' + ACTPesquisaCFOP.Caption + ' = '''      + ACTPesquisaCFOP.Hint + '''');

    SQL.Add('WHERE IDEV     =  ''' + REC_SHE_DEF.IDEV     + '''');
    SQL.Add('AND   NFE_CFOP <> ''' + ACTPesquisaCFOP.Hint + '''');
    ExecQuery;
  end;

  oRTransact(TSEdicao);
  if Pos(PECFOP.Text,'51236123') > 0 then
  begin
    EDCFOP_TPNF_NO.Text := EDCFOP_TPNF_NO.Text + ' TRIANGULAR';

    ACTNFeNUM.HelpKeyword := 'TRIANGULAR';
    ACTNFeNUM.Execute;
  end;
end;

procedure TFrmVEN_NFE.ACTPesquisaTransportadoraExecute(Sender: TObject);
begin
  if (ACTPesquisaCFOP.Caption = EmptyStr) or (ACTPesquisaCFOP.Hint = EmptyStr) then
  Exit;

  with SQLConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,TRA_FANT,TRA_RAZA,TRA_CNPJ,TRA_INSC,TRA_CPF,TRA_TLOG,TRA_LOGR,TRA_CEP,TRA_NUME,TRA_COMP,TRA_BAI,TRA_CID,TRA_ESTA,');
    SQL.Add('       TRA_DDD ,TRA_TEL1,TRA_CONT,TRA_MAIL,');
    SQL.Add('       TRA_VTCARRO,TRA_VTPLACA,TRA_VTUF,TRA_VTRNTC,');
    SQL.Add('       TRIM(CAST(SUBSTRING(TRA_OBSE FROM 1 FOR 512) AS VARCHAR(512))) TRA_OBSE');

    SQL.Add('FROM   CAD_TRA');
    SQL.Add('WHERE ' + ACTPesquisaCFOP.Caption + ' = ''' + ACTPesquisaCFOP.Hint + '''');
    ExecQuery;

    PEDECT.Text := Current.Vars[01].AsString;
    if not Current.Vars[0].IsNull then
    begin
      CEIDCT.Value     := Current.Vars[00].AsInteger;
      PEDECT.Text      := Current.Vars[01].AsString;
      EDTFantasia.Text := Current.Vars[01].AsString;

      EdTxNome.Text    := IFThen(Pos('CLIENTE RETIRA',ACTPesquisaCFOP.Hint) > 0,EdxNome.Text  ,Current.Vars[02].AsString);
      EdTCNPJ.Text     := IFThen(Pos('CLIENTE RETIRA',ACTPesquisaCFOP.Hint) > 0,EdCNPJ.Text   ,Current.Vars[03].AsString);
      PETIE.Text       := IFThen(Pos('CLIENTE RETIRA',ACTPesquisaCFOP.Hint) > 0,PEIE.Text     ,Current.Vars[04].AsString);
      EdTCPF.Text      := IFThen(Pos('CLIENTE RETIRA',ACTPesquisaCFOP.Hint) > 0,EdCPF.Text    ,Current.Vars[05].AsString);
      PETTxLgr.Text    := IFThen(Pos('CLIENTE RETIRA',ACTPesquisaCFOP.Hint) > 0,PETxLgr.Text  ,Current.Vars[06].AsString);
      EdTxLgr.Text     := IFThen(Pos('CLIENTE RETIRA',ACTPesquisaCFOP.Hint) > 0,EdxLgr.Text   ,Current.Vars[07].AsString);
      EdTCep.Text      := IFThen(Pos('CLIENTE RETIRA',ACTPesquisaCFOP.Hint) > 0,EdCep.Text    ,Current.Vars[08].AsString);
      EdTNRO.Text      := IFThen(Pos('CLIENTE RETIRA',ACTPesquisaCFOP.Hint) > 0,EdNRO.Text    ,Current.Vars[09].AsString);
      EdTxCpl.Text     := IFThen(Pos('CLIENTE RETIRA',ACTPesquisaCFOP.Hint) > 0,EdxCpl.Text   ,Current.Vars[10].AsString);
      EdTxBairro.Text  := IFThen(Pos('CLIENTE RETIRA',ACTPesquisaCFOP.Hint) > 0,EdxBairro.Text,Current.Vars[11].AsString);
      EdTxMun.Text     := IFThen(Pos('CLIENTE RETIRA',ACTPesquisaCFOP.Hint) > 0,EdxMun.Text   ,Current.Vars[12].AsString);
      PETUF.Text       := IFThen(Pos('CLIENTE RETIRA',ACTPesquisaCFOP.Hint) > 0,PEUF.Text     ,Current.Vars[13].AsString);
      EDTDDD.Text      := IFThen(Pos('CLIENTE RETIRA',ACTPesquisaCFOP.Hint) > 0,EDDDD.Text    ,Current.Vars[14].AsString);
      EDTFone.Text     := IFThen(Pos('CLIENTE RETIRA',ACTPesquisaCFOP.Hint) > 0,EDFone.Text   ,Current.Vars[15].AsString);
      EDTContato.Text  := IFThen(Pos('CLIENTE RETIRA',ACTPesquisaCFOP.Hint) > 0,EDContato.Text,Current.Vars[16].AsString);
      PETEmail.Text    := IFThen(Pos('CLIENTE RETIRA',ACTPesquisaCFOP.Hint) > 0,PEEmail.Text  ,Current.Vars[17].AsString);
      PETCarro.Text    := Current.Vars[18].AsString;
      PETPlaca.Text    := Current.Vars[19].AsString;
      PETUFPlaca.Text  := Current.Vars[20].AsString;
      EDTRNTC.Text     := Current.Vars[21].AsString;
      EDTInfAd.Text    := Current.Vars[22].AsString;

      if ((Length(EDTCNPJ.Text) < 14) or (Length(PETIE.Text) < 7)) then
      begin
        EDTCNPJ.Text := '';
        PETIE.Text   := '';
      end;

      if Pos('SEM FRETE',PEDECT.Text) > 0 then
         IEModFrete.Text := '9' else
      if (Pos('CLIENTE RETIRA',PEDECT.Text) > 0) or (Pos('O PRÓPRIO',PEDECT.Text) > 0) then
         IEModFrete.Text := '4' else
      if Pos('NOSSO CARRO (' ,PEDECT.Text) > 0 then
         IEModFrete.Text := '3' else
      if Pos('CARRETOS'    ,PEDECT.Text) > 0 then
         IEModFrete.Text := '2' else
      if Pos(IEModFrete.Text,'01') = 0 then
         IEModFrete.Text := '0';
    end;
  end;
end;

procedure TFrmVEN_NFE.ACTNFeCALCExecute(Sender: TObject);
var
  { DESCONTOS }
  ADSC_NREG: Integer; { Nº Registros }
  ADSC_VREG,          { R$ Registros }
  ADSC_VSLD: Double;  { R$ Saldo }

  { FRETE }
  AFRT_NREG: Integer; { Nº Registros }
  AFRT_VREG,          { R$ Registros }
  AFRT_VSLD: Double;  { R$ Saldo }

  { SEGURO }
  ASEG_NREG: Integer; { Nº Registros }
  ASEG_VREG,          { R$ Registros }
  ASEG_VSLD: Double;  { R$ Saldo }
begin
  if not ALockWindowUpdate then { Habilita SQL INJECTION }

  try
    Screen.Cursor := crHourGlass;
    oRTransact(TSEdicao,ltRead_Only);

    { RATEIO DESCONTOS }
    with SQLSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT COUNT(*) AS RECNO FROM NFE_ITE AS PK');
      SQL.Add('WHERE  PK.NFE_VPROD >= (SELECT CAST(' + oStrTran(CEVDSC.Text,',','.') + ' / COUNT(*) AS NUMERIC(15,2)) FROM NFE_ITE AS FK)');
      ExecQuery;

      ADSC_NREG := Current.Vars[0].AsInteger;
    end;

    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT FIRST 1 RVDUP,RVSLD FROM SP_RATEIO_NEW (''' + oStrTran(CEVDSC.Text,',','.') + ''' , ''' + IntToStr(ADSC_NREG) + ''') ORDER BY RVSLD DESC');
      ExecQuery;

      ADSC_VREG := Current.Vars[0].AsCurrency;
      ADSC_VSLD := Current.Vars[1].AsCurrency;
    end;

    { RATEIO FRETE }
    with SQLSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT COUNT(*) AS RECNO FROM NFE_ITE AS PK');
      SQL.Add('WHERE  PK.NFE_VPROD >= (SELECT CAST(' + oStrTran(CEVFRT.Text,',','.') + ' / COUNT(*) AS NUMERIC(15,2)) FROM NFE_ITE AS FK)');
      ExecQuery;

      AFRT_NREG := Current.Vars[0].AsInteger;
    end;

    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT FIRST 1 RVDUP,RVSLD FROM SP_RATEIO_NEW (''' + oStrTran(CEVFRT.Text,',','.') + ''' , ''' + IntToStr(AFRT_NREG) + ''') ORDER BY RVSLD DESC');
      ExecQuery;

      AFRT_VREG := Current.Vars[0].AsCurrency;
      AFRT_VSLD := Current.Vars[1].AsCurrency;
    end;

    { RATEIO SEGURO }
    with SQLSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT COUNT(*) AS RECNO FROM NFE_ITE AS PK');
      SQL.Add('WHERE  PK.NFE_VPROD >= (SELECT CAST(' + oStrTran(CEVSEG.Text,',','.') + ' / COUNT(*) AS NUMERIC(15,2)) FROM NFE_ITE AS FK)');
      ExecQuery;

      ASEG_NREG := Current.Vars[0].AsInteger;
    end;

    with SQLConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT FIRST 1 RVDUP,RVSLD FROM SP_RATEIO_NEW (''' + oStrTran(CEVSEG.Text,',','.') + ''' , ''' + IntToStr(ASEG_NREG) + ''') ORDER BY RVSLD DESC');
      ExecQuery;

      ASEG_VREG := Current.Vars[0].AsCurrency;
      ASEG_VSLD := Current.Vars[1].AsCurrency;
    end;

    if ((PECFOP.Text  = '6102') and ((IEIndFinal.Text = '1') or (IEindIEDest.Text = '9')) and (PEUF.Text <> RECParametros.LOG_UF) and (PEUF.Text <> 'EX')) then
    begin
      { NATUREZA DE OPERAÇÃO }
      ACTPesquisaCFOP.Caption := 'NFE_CFOP'; { Field }
      ACTPesquisaCFOP.Hint    := '6108'; { Value }
      ACTPesquisaCFOP.Execute;
    end;

    if (IEFinNFe.Text <> '2') and { Complementar }
       (ACTNFeCALC.Tag = 0) then
    begin
      { APURAÇÕES DE IMPOSTOS }
      Edicao.First;
      while not Edicao.Eof do
      begin
        Edicao.Edit;

        if EdicaoFLAG_CTRL.AsString <> '1' then
        begin
          EdicaoNFE_VBC.Value            := 0;
          EdicaoNFE_VICMS.Value          := 0;
          EdicaoNFE_VICMSDESON.Value     := 0;
          EdicaoNFE_VBCIPI.Value         := 0;
          EdicaoNFE_VIPI.Value           := 0;
          EdicaoNFE_VBCPIS.Value         := 0;
          EdicaoNFE_VPIS.Value           := 0;
          EdicaoNFE_VBCCOFINS.Value       := 0;
          EdicaoNFE_VCOFINS.Value        := 0;
          EdicaoNFE_VBCCREDICMSSN.Value  := 0;
          EdicaoNFE_PCREDSN.Value        := 0;
          EdicaoNFE_VCREDICMSSN.Value    := 0;
          EdicaoNFE_VICMSST.Value        := 0;
          EdicaoNFE_PICMSST.Value        := 0;
          EdicaoNFE_VBCST.Value          := 0;
          EdicaoNFE_PMVAST.Value         := 0;
          EdicaoNFE_MODBCST.Value        := 0;
          EdicaoNFE_vBCUFDest.Value      := 0;
          EdicaoNFE_vBCFCPUFDest.Value   := 0;
          EdicaoNFE_pFCPUFDest.Value     := 0;
          EdicaoNFE_pICMSUFDest.Value    := 0;
          EdicaoNFE_pICMSInter.Value     := 0;
          EdicaoNFE_pICMSInterPart.Value := 0;
          EdicaoNFE_vFCPUFDest.Value     := 0;
          EdicaoNFE_vICMSUFDest.Value    := 0;
          EdicaoNFE_vICMSUFRemet.Value   := 0;
          EdicaoNFE_INFADTRIB.Value      := '';

          if EdicaoNFE_INDTOT.AsInteger = 1 then
          begin
            { RATEIOS }
            EdicaoNFE_VDESC.Value  := IFThen(ADSC_NREG > Edicao.RecNo,ADSC_VREG,ADSC_VSLD); { Descontos }
            EdicaoNFE_VFRETE.Value := IFThen(AFRT_NREG > Edicao.RecNo,AFRT_VREG,AFRT_VSLD); { Frete }
            EdicaoNFE_VSEG.Value   := IFThen(ASEG_NREG > Edicao.RecNo,ASEG_VREG,ASEG_VSLD); { Seguro }

            IF POS(PECFOP.Text,'5924692') = 0 then { TRIANGULAR }
            begin
              { BASE DE CÁLCULO }
              EdicaoNFE_VBC.Value      := (EdicaoNFE_VPROD.AsFloat - EdicaoNFE_VDESC.AsFloat) + (EdicaoNFE_VFRETE.AsFloat + EdicaoNFE_VSEG.AsFloat);
              EdicaoNFE_VBCIPI.Value   := IFThen(EdicaoNFE_PIPI.AsFloat > 0,EdicaoNFE_VBC.AsFloat,0);
              EdicaoNFE_VBCPIS.Value   := IFThen(Pos(EdicaoNFE_CST.AsString,'49201202203') > 0,0,EdicaoNFE_VBC.AsFloat);
              EdicaoNFE_VBCCOFINS.Value := IFThen(Pos(EdicaoNFE_CST.AsString,'49201202203') > 0,0,EdicaoNFE_VBC.AsFloat);
            end else
            begin
              EdicaoNFE_PPIS.Value    := 0;
              EdicaoNFE_PCOFINS.Value := 0;
            end;

            { Somar IPI na base quando CONSUMIDOR FINAL }
            if IEindFinal.Text    = '1' then
            EdicaoNFE_VBC.Value := EdicaoNFE_VBC.AsFloat + EdicaoNFE_VIPI.AsFloat;

            { IMPOSTOS }
            EdicaoNFE_VIPI.Value    := RoundTO((EdicaoNFE_VBCIPI.AsFloat   * EdicaoNFE_PIPI.AsFloat   ) / 100,-2);
            EdicaoNFE_VPIS.Value    := RoundTO((EdicaoNFE_VBCPIS.AsFloat   * EdicaoNFE_PPIS.AsFloat   ) / 100,-2);
            EdicaoNFE_VCOFINS.Value := RoundTO((EdicaoNFE_VBCCOFINS.AsFloat * EdicaoNFE_PCOFINS.AsFloat) / 100,-2);

            { IMPORTAÇÃO }
            if EdicaoNFE_VBCIMP.AsFloat > 0then
            begin
              EdicaoNFE_VBCIPI.Value   := IFThen(EdicaoNFE_PIPI.AsFloat > 0,EdicaoNFE_VBCIMP.AsFloat,0);
              EdicaoNFE_VBCPIS.Value   := EdicaoNFE_VBCIMP.AsFloat;
              EdicaoNFE_VBCCOFINS.Value := EdicaoNFE_VBCIMP.AsFloat;
            end;

            if LeftStr(EdicaoNFE_CFOP.AsString,1) = '3' then
            begin
              EdicaoNFE_VBC.Value := RoundTO((EdicaoNFE_VBC.AsFloat + EdicaoNFE_VIPI.AsFloat + EdicaoNFE_VPIS.AsFloat + EdicaoNFE_VCOFINS.AsFloat) / 0.82,-2);
              EdicaoNFE_VNF.Value := EdicaoNFE_VBC.AsFloat;
            end else
            begin
              { SUFRAMA }
              if EDISUF.Text <> Emptystr then
              begin
                if (EdicaoNFE_ORIG.AsInteger > 0) and (PEUF.Text <> RECParametros.LOG_UF) then
                    EdicaoNFE_PICMS.Value := 4;

                if EDISUF.Text <> EmptyStr then
                begin
                  EdicaoNFE_CFOP.Value   := IFThen((EdicaoNFE_ORIG.AsInteger > 0) or (not RECRomaneio.ZFM_CMUN),'6102','6110');

                  EdicaoNFE_CSTIPI.Value := '55';
                  EdicaoNFE_VBCIPI.Value := 0;
                  EdicaoNFE_PIPI.Value   := 0;
                  EdicaoNFE_VIPI.Value   := 0;

                  EdicaoNFE_CSTPIS.Value := '06';
                  EdicaoNFE_VBCPIS.Value := 0;
                  EdicaoNFE_PPIS.Value   := 0;
                  EdicaoNFE_VPIS.Value   := 0;

                  EdicaoNFE_CSTCOFINS.Value := '06';
                  EdicaoNFE_VBCCOFINS.Value  := 0;
                  EdicaoNFE_PCOFINS.Value   := 0;
                  EdicaoNFE_VCOFINS.Value   := 0;

                  if (EdicaoNFE_ORIG.AsInteger > 0) and (RECRomaneio.ZFM_CENQ <> EmptyStr) then
                  EdicaoNFE_CENQ.Value := RECRomaneio.ZFM_CENQ;

                  if (EdicaoNFE_ORIG.AsInteger = 0) and (RECRomaneio.ZFM_CMUN) then
                  if EdicaoNFE_VBC.AsFloat * 0.07 > 0.01 then
                  begin
                    EdicaoNFE_VICMSDESON.Value := EdicaoNFE_VBC.AsFloat * 0.07;
                    EdicaoNFE_MOTDESICMS.Value := 7;
                  end;
                end;
              end;

              { SUBSTITUIÇÃO TRIBUTÁRIA }
              EdicaoNFE_PMVAST.Value := 0;
              EdicaoNFE_VBCST.Value  := 0;
              EdicaoNFE_VBCST.Value  := 0;

              if (Pos(PECFOP.Text,'51016101610859246924') = 0) and
                 (IEIndFinal.Text <> '1' ) and
                 (PEUF.Text       <> 'EX') and
                 (EDISUF.Text = EmptyStr ) then
              begin
                with SQLConsulta do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Add('SELECT CLF_VI04,CLF_VI07,CLF_VI12,CLF_VISP,CLF_PROT FROM TAB_CLF');
                  SQL.Add('WHERE  CLF_CCLF = ''' + EdicaoNFE_NCM.AsString + '''');
                  SQL.Add('AND    CLF_UF   = ''' + PEUF.Text               + '''');
                  ExecQuery;

                  if (EdicaoNFE_PICMS.AsFloat = 4) and (Current.ByName('CLF_VI04').AsFloat > 0) then
                  begin
                    EdicaoNFE_PMVAST.Value := Current.ByName('CLF_VI04').AsFloat;
                    EdicaoNFE_VBCST.Value  := EdicaoNFE_VPROD.AsFloat + EdicaoNFE_VIPI.AsFloat    + EdicaoNFE_VFRETE.AsFloat + EdicaoNFE_VSEG.AsFloat;
                    EdicaoNFE_VBCST.Value  := EdicaoNFE_VBCST.AsFloat + ((EdicaoNFE_VBCST.AsFloat * Current.ByName('CLF_VI04').AsFloat)/100);
                  end else

                  if (EdicaoNFE_PICMS.AsFloat = 7) and (Current.ByName('CLF_VI07').AsFloat > 0) then
                  begin
                    EdicaoNFE_PMVAST.Value := Current.ByName('CLF_VI07').AsFloat;
                    EdicaoNFE_VBCST.Value  := EdicaoNFE_VPROD.AsFloat + EdicaoNFE_VIPI.AsFloat    + EdicaoNFE_VFRETE.AsFloat + EdicaoNFE_VSEG.AsFloat;
                    EdicaoNFE_VBCST.Value  := EdicaoNFE_VBCST.AsFloat + ((EdicaoNFE_VBCST.AsFloat * Current.ByName('CLF_VI07').AsFloat)/100);
                  end else

                  if (EdicaoNFE_PICMS.AsFloat = 12) and (Current.ByName('CLF_VI12').AsFloat > 0) then
                  begin
                    EdicaoNFE_PMVAST.Value := Current.ByName('CLF_VI12').AsFloat;
                    EdicaoNFE_VBCST.Value  := EdicaoNFE_VPROD.AsFloat + EdicaoNFE_VIPI.AsFloat    + EdicaoNFE_VFRETE.AsFloat + EdicaoNFE_VSEG.AsFloat;
                    EdicaoNFE_VBCST.Value  := EdicaoNFE_VBCST.AsFloat + ((EdicaoNFE_VBCST.AsFloat * Current.ByName('CLF_VI12').AsFloat)/100);
                  end else
                  
                  if (EdicaoNFE_PICMS.AsFloat = 18) and (Current.ByName('CLF_VISP').AsFloat > 0) then
                  begin
                    EdicaoNFE_PMVAST.Value := Current.ByName('CLF_VISP').AsFloat;
                    EdicaoNFE_VBCST.Value  := EdicaoNFE_VPROD.AsFloat + EdicaoNFE_VIPI.AsFloat    + EdicaoNFE_VFRETE.AsFloat + EdicaoNFE_VSEG.AsFloat;
                    EdicaoNFE_VBCST.Value  := EdicaoNFE_VBCST.AsFloat + ((EdicaoNFE_VBCST.AsFloat * Current.ByName('CLF_VISP').AsFloat)/100);
                  end else

                  if not SQLConsulta.Eof then
                  begin
                    EdicaoNFE_PMVAST.Value := 0;
                    EdicaoNFE_VBCST.Value  := EdicaoNFE_VBC.AsFloat;
                  end;
                end;
              end;

              if EdicaoNFE_VBCST.AsFloat > 0 then
              begin
                EdicaoNFE_CFOP.Value := IFThen(IECFOP_TPNF.Text = '0','2411',
                                        IFThen(RECParametros.NFE_CRT = 1,
                                        IFThen(PEUF.Text   = RECParametros.LOG_UF,'5401','6401'),
                                        IFThen(PEUF.Text   = RECParametros.LOG_UF,'5403','6404')));

                if (EdicaoNFE_CFOP.AsString = '6404') and (PECFOP.Text = '6403') then
                EdicaoNFE_CFOP.Value    := PECFOP.Text;
                EdicaoNFE_pICMSST.Value := tab_alqALQ_ICMI.AsFloat + tab_alqALQ_FCP.AsFloat;

                if EdicaoNFE_PMVAST.AsFloat  = 0 then
                EdicaoNFE_pICMSST.Value := EdicaoNFE_pICMSST.AsFloat - tab_alqALQ_ICMD.AsFloat;
                EdicaoNFE_VICMSST.Value := ((EdicaoNFE_VBCST.AsFloat*EdicaoNFE_pICMSST.AsFloat)/100) - EdicaoNFE_VICMS.AsFloat;
                EdicaoNFE_MODBCST.Value := 4;
                EdicaoNFE_CST.Value     := IFThen(RECParametros.NFE_CRT = 1,'201','10');
              end;

              { IMPOSTO ICMS }
              EdicaoNFE_VBC.Value   := EdicaoNFE_VBC.AsFloat - ((EdicaoNFE_VBC.AsFloat * EdicaoNFE_PREDBC.AsFloat)/100); { Calculo Final VBC }
              EdicaoNFE_VICMS.Value := RoundTO((EdicaoNFE_VBC.AsFloat * EdicaoNFE_PICMS.AsFloat) / 100,-2); { Calulo VICMS }

              if EdicaoNFE_CST.AsString = '60' then
              begin
                EdicaoNFE_VBC.Value    := 0;
                EdicaoNFE_PREDBC.Value := 0;
                EdicaoNFE_VICMS.Value  := 0;
                EdicaoNFE_PICMS.Value  := 0;
              end else

              if (EdicaoNFE_CST.AsString = '40') or (EdicaoNFE_CST.AsString = '41') or (EdicaoNFE_CST.AsString = '50') then
              begin
                EdicaoNFE_VBCIPI.Value   := 0;
                EdicaoNFE_VIPI.Value     := 0;
                EdicaoNFE_PIPI.Value     := 0;
                EdicaoNFE_VBCPIS.Value   := 0;
                EdicaoNFE_VPIS.Value     := 0;
                EdicaoNFE_PPIS.Value     := 0;
                EdicaoNFE_VBCCOFINS.Value := 0;
                EdicaoNFE_VCOFINS.Value  := 0;
                EdicaoNFE_PCOFINS.Value  := 0;
                EdicaoNFE_VBC.Value      := 0;
                EdicaoNFE_PREDBC.Value   := 0;
                EdicaoNFE_VICMS.Value    := 0;
                EdicaoNFE_PICMS.Value    := 0;
              end else

              if EdicaoNFE_CST.AsString = '51' then
              begin
                EdicaoNFE_VBC.Value      := 0;
                EdicaoNFE_PREDBC.Value   := 0;
                EdicaoNFE_VICMS.Value    := 0;
                EdicaoNFE_PICMS.Value    := 0;
                EdicaoNFE_PDIF.Value     := 100.00;
                EdicaoNFE_VICMSOP.Value  := 0;
                EdicaoNFE_VICMSDIF.Value := 0;

                { Ricardo - Calculo para diferimento <> 100% - Criar/Colocar no grid o campo PDIF - Fazer o mesmo para Cadastro de Produtos
                  EdicaoNFE_PDIF.Value     := 33.33;
                  EdicaoNFE_VICMSOP.Value  := oTextToValor((EdicaoNFE_VBC.AsFloat *EdicaoNFE_PICMS.AsFloat)   / 100);
                  EdicaoNFE_VICMSDIF.Value := oTextToValor((EdicaoNFE_PDIF.AsFloat*EdicaoNFE_VICMSOP.AsFloat) / 100);
                  EdicaoNFE_VICMS.Value    := EdicaoNFE_VICMS.AsFloat - EdicaoNFE_VICMSDIF.AsFloat; }
              end;

              if (((IEIndFinal.Text = '1') or (IEindIEDest.Text = '9')) and (PEUF.Text <> RECParametros.LOG_UF) and (PEUF.Text <> 'EX') and (not RECRomaneio.ZFM_CMUN)) then
              begin
                EdicaoNFE_vBCUFDest.Value      := EdicaoNFE_VBC.AsFloat;
                EdicaoNFE_vBCFCPUFDest.Value   := IFThen(tab_alqALQ_FCP.AsFloat = 0,0,EdicaoNFE_VBC.AsFloat);
                EdicaoNFE_pFCPUFDest.Value     := tab_alqALQ_FCP.AsFloat;
                EdicaoNFE_pICMSUFDest.Value    := tab_alqALQ_ICMI.AsFloat + tab_alqALQ_FCP.AsFloat;
                EdicaoNFE_pICMSInter.Value     := EdicaoNFE_PICMS.AsInteger;
                EdicaoNFE_pICMSInterPart.Value := 100;
                EdicaoNFE_vFCPUFDest.Value     := IFThen(tab_alqALQ_FCP.AsFloat = 0,0,(EdicaoNFE_vBCFCPUFDest.AsFloat*EdicaoNFE_pFCPUFDest.AsFloat)/100);
                EdicaoNFE_vICMSUFDest.Value    := RoundTo((EdicaoNFE_vBCUFDest.AsFloat * (EdicaoNFE_pICMSUFDest.AsFloat - EdicaoNFE_pICMSInter.AsFloat)) / 100,-2);
                EdicaoNFE_vICMSUFRemet.Value   := 0;
                EdicaoNFE_INFADTRIB.Value      := Trim('% Partilha UF Dest.: '     +FormatFloat(',##,0.00',EdicaoNFE_pICMSInterPart.AsFloat)+' - '+
                                                        '% ICMS Inter. UF Dest.: '  +FormatFloat(',##,0.00',EdicaoNFE_pICMSUFDest.AsFloat)   +' - '+
                                                        'Vlr.ICMS Inter. UF Dest.: '+FormatFloat(',##,0.00',EdicaoNFE_vICMSUFDest.AsFloat)   +' - '+
                                                        '% ICMS Part. UF Remet.: '  +FormatFloat(',##,0.00',0.00)                             +' - '+
                                                        'Vlr.ICMS Part. UF Remet.: '+FormatFloat(',##,0.00',EdicaoNFE_vICMSUFRemet.AsFloat));
              end;

              if RECParametros.NFE_REDUCAO_PISCOFINS then
                 if ((IECFOP_TPNF.Text = '1') or (Pos(PECFOP.Text,'1201120222012202') > 0)) and (EdicaoNFE_VBCPIS.AsFloat > 0) and (EdicaoNFE_VBCCOFINS.AsFloat > 0) and (EdicaoNFE_VICMS.AsFloat > 0) then
                 begin
                   { REDUÇÃO PIS}
                   EdicaoNFE_VBCPIS.Value  := EdicaoNFE_VBCPIS.AsFloat - EdicaoNFE_VICMS.AsFloat;
                   EdicaoNFE_VPIS.Value    := RoundTO((EdicaoNFE_VBCPIS.AsFloat * EdicaoNFE_PPIS.AsFloat) / 100,-2);

                   { REDUÇÃO COFINS }
                   EdicaoNFE_VBCCOFINS.Value:= EdicaoNFE_VBCCOFINS.AsFloat - EdicaoNFE_VICMS.AsFloat;
                   EdicaoNFE_VCOFINS.Value := RoundTO((EdicaoNFE_VBCCOFINS.AsFloat * EdicaoNFE_PCOFINS.AsFloat) / 100,-2);
                 end;
            end;

            { NRT - NOVA REFORMA TRIBUTÁRIA }
            { IS
            EdicaoNFE_CSTIS_UB02.Value        := TAB_CFOPCSTIS.AsString;
            EdicaoNFE_CCLASSTRIBIS_UB03.Value := TAB_CFOPCCLASSTRIBIS.AsString; }

            { IBS CBS }
            EdicaoNFE_IBSCBS_CSTIS.Value        := TAB_CFOPCSTCBS.AsString;
            EdicaoNFE_IBSCBS_CCLASSTRIBIS.Value := TAB_CFOPCCLASSTRIBCBS.AsString;
            EdicaoNFE_IBSCBS_VBCIBSCBS.Value    :=

            EdicaoNFE_VPROD.AsFloat      + EdicaoNFE_VSERV.AsFloat     + EdicaoNFE_VFRETE.AsFloat       + EdicaoNFE_VSEG.AsFloat  + EdicaoNFE_VOUTRO.AsFloat      + EdicaoNFE_VII.AsFloat  -
            EdicaoNFE_VDESC.AsFloat      - EdicaoNFE_VPIS.AsFloat      - EdicaoNFE_VCOFINS.AsFloat      - EdicaoNFE_VICMS.AsFloat - EdicaoNFE_VICMSUFDEST.AsFloat - EdicaoNFE_VFCP.AsFloat -
            EdicaoNFE_VFCPUFDEST.AsFloat - EdicaoNFE_VICMSMONO.AsFloat - EdicaoNFE_ISSQN_VISSQN.AsFloat +
            EdicaoNFE_IS_VIS.AsFloat;

            { CBS }
            EdicaoNFE_CBS_VBCCBS.Value := EdicaoNFE_IBSCBS_VBCIBSCBS.AsFloat;
            EdicaoNFE_CBS_PCBS.Value   := TAB_CFOPPCBS.AsFloat;
            EdicaoNFE_CBS_VCBS.Value   := RoundTO((EdicaoNFE_CBS_PCBS.AsFloat / 100) * EdicaoNFE_CBS_VBCCBS.AsFloat,-2);

            { IBS }
            EdicaoNFE_IBSUF_VBCIBSUF.Value := EdicaoNFE_IBSCBS_VBCIBSCBS.AsFloat;
            EdicaoNFE_IBSUF_PIBSUF.Value   := TAB_CFOPPIS.AsCurrency;
            EdicaoNFE_IBSUF_VIBSUF.Value   := RoundTo((EdicaoNFE_IBSUF_PIBSUF.AsFloat / 100) * EdicaoNFE_IBSCBS_VBCIBSCBS.AsFloat,-2);


            { Ricardo - Como a planilha do renato, já está embutido o valor do frete, tive q isolar o VNF para importações }
            if LeftStr(EdicaoNFE_CFOP.AsString,1) <> '3' then
               EdicaoNFE_VNF.Value := (EdicaoNFE_VPROD.AsFloat  - EdicaoNFE_VDESC.AsFloat  - EdicaoNFE_VICMSDeson.AsFloat) +
                                      (EdicaoNFE_VIPI.AsFloat   + EdicaoNFE_VFRETE.AsFloat + EdicaoNFE_VSEG.AsFloat        +
                                      (EdicaoNFE_VOUTRO.AsFloat + EdicaoNFE_VICMSST.AsFloat));

            if RECParametros.NFE_CRT = 1 then
            begin
              EdicaoNFE_CSTIPI.Value    := '99';
              EdicaoNFE_VBCIPI.Value    := 0;
              EdicaoNFE_PIPI.Value      := 0;
              EdicaoNFE_VIPI.Value      := 0;
              EdicaoNFE_VBCPIS.Value    := 0;
              EdicaoNFE_PPIS.Value      := 0;
              EdicaoNFE_VPIS.Value      := 0;
              EdicaoNFE_VBCCOFINS.Value  := 0;
              EdicaoNFE_PCOFINS.Value   := 0;
              EdicaoNFE_VCOFINS.Value   := 0;

              if Pos(EdicaoNFE_CST.AsString,'201202203') > 0 then
              begin
                EdicaoNFE_PICMS.Value := 0;
                EdicaoNFE_VICMS.Value := 0;
                EdicaoNFE_VBC.Value   := 0;

                EdicaoNFE_CSTPIS.Value    := '99';
                EdicaoNFE_CSTCOFINS.Value := '99';
              end else
              begin
                EdicaoNFE_CSTPIS.Value    := '49';
                EdicaoNFE_CSTCOFINS.Value := '49';

                if EdicaoNFE_VICMS.AsFloat > 0 then
                begin
                  EdicaoNFE_CST.Value := '900';
                end else

                if (RECParametros.NFE_CREDITO_ICMS > 0) and (IECredICMS.Text = '1') then
                begin
                  EdicaoNFE_VBCCREDICMSSN.Value := EdicaoNFE_VNF.AsFloat;
                  EdicaoNFE_PCREDSN.Value       := RECParametros.NFE_CREDITO_ICMS;
                  EdicaoNFE_VCREDICMSSN.Value   := RoundTO((EdicaoNFE_PCREDSN.AsFloat * EdicaoNFE_VNF.AsFloat) / 100,-2);
                end;
              end;
            end;
          end;
        end;

        Edicao.Post;
        Edicao.Next;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    oCTransact(TSEdicao,ltRead_Only_Release_Commit);
  end;

  ACTNFeDup.Execute;
end;

procedure TFrmVEN_NFE.ACTNFeDUPExecute(Sender: TObject);
var
  i: word;
  ANFE_VDUP: Double;
begin
  try
    Screen.Cursor := crHourGlass;
    oRTransact(TSEdicao,ltRead_Only);

    if (FIS_NFE_SUMNFE_VNF.AsFloat <> FIS_NFE_SUMNFE_VDUP.AsFloat) and (ACTNFeCALC.Tag = 0) then
    begin
      with SQLSEdicao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM NFE_DUP');
        ExecQuery;
      end;

      ANFE_VDUP    := FIS_NFE_SUMNFE_VNF.AsCurrency;
      IEBOLETO.TAG := 1;

      if (IEBOLETO.Text = 'SIM') and (IECDPG.Text <> EmptyStr) then
          try
            FIS_NFE_DUP.DisableControls;
            FIS_NFE_DUP.First;
            //oRefresh(FIS_NFE_DUP);

            TAB_PAG.Close;
            TAB_PAG.Params[0].Value := IECDPG.Text;
            TAB_PAG.Open;

            with SQLConsulta do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT FIRST 1 RVDUP,RVSLD FROM SP_RATEIO_NEW (''' + oStrTran(FloatToStr(ANFE_VDUP),',','.') + ''' , ''' + TAB_PAGPAG_PARC.AsString + ''') ORDER BY RVSLD DESC');
              ExecQuery;
            end;


            for i := 1 to TAB_PAGPAG_PARC.AsInteger do
            begin
              FIS_NFE_DUP.Append;
              FIS_NFE_DUPNFE_NDUP.Value := FIS_NFE_DUPNFE_CDNF.AsString + IFThen(TAB_PAGPAG_PARC.AsInteger > 1,'-' + aDUP[i],EmptyStr);

              if IEPRAZO.Text = 'EMISSÃO NF' then
              begin
                FIS_NFE_DUPNFE_DTNF.Value  := DEdhEmi.Date;
                FIS_NFE_DUPNFE_DVENC.Value := incDay(DEdhEmi.Date,TAB_PAG.Fields[i + 1].Value);
              end else
              begin
                FIS_NFE_DUPNFE_DTNF.Value  := DEdhEmi.Date;
                FIS_NFE_DUPNFE_DVENC.Value := incDay(DEdhSaiEnt.Date,TAB_PAG.Fields[i + 1].Value);
              end;

              FIS_NFE_DUPNFE_NITEMPED.Value := i;
              FIS_NFE_DUPNFE_VDUP.Value     := SQLConsulta.Current.Vars[ IFThen(i = TAB_PAGPAG_PARC.AsInteger,1,0) ].AsCurrency;
              FIS_NFE_DUP.Post;
            end;
          finally
            FIS_NFE_DUP.EnableControls;
          end;    
    end;

    { ATUALIZA SUMÁRIO }
    with SQLPKSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(PK.NFE_VDUP) FROM NFE_DUP AS PK');
      ExecQuery;
    end;
    with SQLSEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE FIS_NFE_SUM');
      SQL.Add('SET    NFE_VDUP = ''' + oStrTran(FloatToStr(SQLPKSEdicao.Current.Vars[0].AsFloat),',','.') + '''');
      SQL.Add('WHERE  IDEV     = ''' + REC_SHE_DEF.IDEV + '''');
      ExecQuery;
    end;

  finally
    Screen.Cursor := crDefault;
    oRTransact(TSEdicao,ltRead_Only_Release_Commit);
    
    if FIS_NFE_DUP.RecNo > 0 then
    IEBOLETO.Text := 'SIM' else
    IEBOLETO.Text := 'NÃO';
    IEBOLETO.Tag  := 0;

    IEPRAZO.Enabled := (IEBOLETO.Text = 'SIM') or (IEBOLETO.Text = '');
    IECDPG.Enabled  := (IEBOLETO.Text = 'SIM') or (IEBOLETO.Text = '');

    ACTNFeMSG.Execute;
  end;  
end;

procedure TFrmVEN_NFE.ACTNFeICMSExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTNFeCSTExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTNFeXMLExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTNFeValidateExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTNFeLoteExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTNFeSendExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTNFePostExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTNFeDanfeExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTNFeNUMExecute(Sender: TObject);
begin
  try
    oOTransact(TEdicao);
    with SQLEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT RCDNF,TCDNF FROM SP_NFE_EMI (');
      SQL.Add('''' + RECParametros.EP_ID    + ''',');
      SQL.Add('''' + RECUsuarios.ID         + ''',');
      SQL.Add('''' + RECParametros.EP_NO_GP + ''',');
      SQL.Add('''' + ACTNFeNUM.HelpKeyword  + ''',');
      SQL.Add('''' + RECParametros.IP       + ''',');
      SQL.Add('''' + RECParametros.HOST     + ''')');
      ExecQuery;
    end;
    CECDNF.Value   := SQLEdicao.Current.Vars[0].AsInteger; { Normal }
    CER_CDNF.Value := SQLEdicao.Current.Vars[1].AsInteger; { Triangular }

    oCTransact(TEdicao);

    if CECDNF.Tag <> Trunc(CECDNF.Value) then
    begin
      CECDNF.Modified := True;
      CECDNF.ValidateEdit;
    end;
  except
    oCTransact(TEdicao,ltRollback);

    CECDNF.Value   := 0;
    CER_CDNF.Value := 0;
  end;
end;

procedure TFrmVEN_NFE.ACTNFeMSGExecute(Sender: TObject);
var
  i: Word;
  TXTCFOP,
  TXTInfad: String;
begin
  if not ALockWindowUpdate then
  try
    EDInfAdFisco.Lines.BeginUpdate;
    EDInfAdFisco.Lines.Clear;

    REC_SHE_DEF.LISTA.BeginUpdate;
    REC_SHE_DEF.LISTA.Clear;

    if EDINFADNF.Lines.Count > 0 then
    for i := 0 to EDINFADNF.Lines.Count - 1 do
        if Length(EDINFADNF.Lines[i]) > 160 then
        begin
          TXTInfAd := EDINFADNF.Text;
          EDINFADNF.Lines.Clear;
        end;

    while Length(TXTInfAd) > 0 do
    begin
      EDINFADNF.Lines.Add(Trim(LeftStr(TXTInfAd,160)));
      TXTInfAd := Trim(Copy(TXTInfAd,161,2000));
    end;

    REC_SHE_DEF.LISTA.Clear;

    if Pos(IEFinNFe.Text,'23') > 0 then
       Exit;

    if RECParametros.NFE_CRT = 1 then
    begin
      REC_SHE_DEF.LISTA.Add('I  - DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL.|');
      REC_SHE_DEF.LISTA.Add('II - NAO GERA DIREITO A CREDITO FISCAL DE IPI.|');
    end else
    begin
      if (PEUF.Text = RECParametros.LOG_UF) and (PEUF.Text = 'SP') then
          if Edicao.Locate('NFE_NCM;NFE_PICMS',VarArrayOf(['39181000','12']),[]) then
          begin
            REC_SHE_DEF.LISTA.Add('Aliquota de Icms de 12% conforme determina Artigo 54, Inciso VIII 22 Item 22');
            REC_SHE_DEF.LISTA.Add('|');
          end;
    end;

    if FIS_NFE_SUMNFE_VCREDICMSSN.AsFloat > 0 then
    begin
      REC_SHE_DEF.LISTA.Add(Trim('Permite o aproveitamento do credito de ICMS no valor de '+FormatFloat('R$ #,0.00',FIS_NFE_SUMNFE_VCREDICMSSN.AsFloat))            +'|');
      REC_SHE_DEF.LISTA.Add(Trim('Correspondente a aliquota de '+FormatFloat('#,0.00%',RECParametros.NFE_CREDITO_ICMS)+' nos termos do Art. 23 DA LC 123, de 2006')+'|');
    end;

    if (FIS_NFE_SUMNFE_VST.AsFloat > 0) and (RECParametros.NFE_CRT <> 1) then
        REC_SHE_DEF.LISTA.Add('ICMS calculado por substituicao tributaria conforme Artigo 313-Y'+'|');

    if EDISUF.Text <> EmptyStr then
    begin
      REC_SHE_DEF.LISTA.Add(Trim('Suframa: '+EDISUF.Text)+'|');

      if not RECRomaneio.ZFM_CMUN then
      REC_SHE_DEF.LISTA.Add('Isenção de ICMS conforme convenio no 65 de 1988|');
      REC_SHE_DEF.LISTA.Add('IPI suspenso conforme Artigo no 84 do Decreto 7.212/2010|');
      REC_SHE_DEF.LISTA.Add('PIS/COFINS aliquota zero conforme Artigo 2o da Lei 10.996/04|');

      if RECRomaneio.ZFM_CMUN then
      begin
        REC_SHE_DEF.LISTA.Add('');
        REC_SHE_DEF.LISTA.Add('Remessa para zona franca de manaus ou area de livre comercio|');
        REC_SHE_DEF.LISTA.Add('ICMS Isento conforme Artigo no 84 do Anexo I do RICMS/SP. Desconto de 7% - ICMS: ' + FormatFloat('R$ #,0.00',FIS_NFE_SUMNFE_VICMSDESON.AsFloat) + '|');
      end;
    end;

    if (IERegime.Text = '1') and (IECredICMS.Text = '1') and (Pos(PECFOP.Text,'51016101') > 0)  then
    begin
      REC_SHE_DEF.LISTA.Add('Reducao da base de calculo do ICMS nos termos do anexo II artigo 52 do RICMS|');
      REC_SHE_DEF.LISTA.Add(Trim('Decreto no 62.560/2017 (DOE de 06.05.2017) = '+FormatFloat('#,0.00%',EdicaoNFE_PREDBC.AsFloat))+'|');
    end;

    if FIS_NFE_MAO.RecNo > 0 then
    begin
      FIS_NFE_MAO.First;
      if FIS_NFE_MAO.RecNo > 0 then REC_SHE_DEF.LISTA.Add('|');

      while not FIS_NFE_MAO.Eof do
      begin
        if FIS_NFE_MAO.RecNo = 1 then
        REC_SHE_DEF.LISTA.Add('NF de Retorno ('+RightStr(PECFOP.Text,4)+') Ref. a(s) NF(s).: |');
        REC_SHE_DEF.LISTA.Add(FIS_NFE_MAONFE_CDNF.AsString+' de '+FIS_NFE_MAONFE_DTNF.AsString+' '+FormatFloat('Valor de R$ #,0.00',FIS_NFE_MAONFE_VNF.AsFloat)+'  ');

        FIS_NFE_MAO.Next;
      end;
    end;
    
    if FIS_NFE_SUMNFE_VICMSUFDEST.AsFloat > 0 then
    begin
      REC_SHE_DEF.LISTA.Add('Valor Total ICMS Interestadual UF Destino: '+FormatFloat('Valor de R$ #,0.00',FIS_NFE_SUMNFE_VICMSUFDEST.AsFloat));
      REC_SHE_DEF.LISTA.Add('|');
    end;

    if EDidEstrangeiro.Text <> '' then
    REC_SHE_DEF.LISTA.Add(Trim('|Passaporte '+EDidEstrangeiro.Text)+'|');

    if EDINFADNF.Lines.Count > 0 then
    begin
      for i := 0 to EDINFADNF.Lines.Count - 1 do
      REC_SHE_DEF.LISTA.Add(oREPAcentos(oPrimeiraLetraMaiuscula(EDINFADNF.Lines[i]))+'|');
    end;

    { Retira todo o texto encontrado em TXTCFOP e move para TXTInfAd }
    TXTCFOP := oPrimeiraLetraMaiuscula(TAB_CFOPCFOP_INFADCAD.AsString);
    if TXTCFOP <> EmptyStr then REC_SHE_DEF.LISTA.Add('|');

    While Length(TXTCFOP) > 0 do
    begin
      TXTInfAd := oREPAcentos(Fetch(TXTCFOP,#$D#$A));
      if Length(TXTInfAd) > 0 then REC_SHE_DEF.LISTA.Add(TXTInfAd+'|');
    end;
  finally
    REC_SHE_DEF.LISTA.EndUpdate;

    EDInfAdFisco.Text := REC_SHE_DEF.LISTA.Text;
    EDInfAdFisco.Lines.EndUpdate;
  end;
end;

procedure TFrmVEN_NFE.ACTEditExecute(Sender: TObject);
begin
  PNLPrincipal.Enabled    := True;
  PCINFADCAD.ActivePageIndex := 0;

  ACTNFeXML.Enabled    := True;
  ACTNFeXML.ImageIndex := 0;
  ACTNFeXML.Caption    := 'Gerar e Assinar';

  ACTNFeValidate.Enabled := False;
  ACTNFeSend.Enabled     := False;

  ACTMPEmail.Enabled   := false;
  ACTMPImporta.Enabled := true;

  ACTPrint.Enabled := False;
end;

procedure TFrmVEN_NFE.ACTValidExecute(Sender: TObject);
begin
  PNLPrincipal.Enabled := false;

  ACTNFeXML.ImageIndex   := 10;
  ACTNFeXML.Caption      := 'Editar';
  ACTNFeValidate.Enabled := True;

  ACTMPEmail.Enabled   := False;
  ACTMPImporta.Enabled := False;

  ACTPrint.Enabled := False;
end;

procedure TFrmVEN_NFE.ACTMPImportaExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTPrintExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmVEN_NFE.ACTMPEmailExecute(Sender: TObject);
begin
  { nothing }
end;

end.
