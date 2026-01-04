unit pCAD_PRO_ADM;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, StrUtils, Math, dxExEdtr, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxEdLib, dxDBELib, dxEditor, ExtCtrls, ActnList, ImgList,
  dxBar, dxBarExtItems, dxDockControl, dxPageControl, dxDockPanel,
  cxGraphics, cxControls, dxStatusBar, IBEvents, IBStoredProc, DB,
  IBCustomDataSet, IBQuery, IBSQL, IBDatabase, rxSpeedbar,
  IDGlobal, DSiWin32, dxsbar, ComCtrls, DBCtrls, dxDBTLCl, dxGrClms;

type
  TFrmCAD_PRO_ADM = class(TForm)
    BMPrincipal: TdxBarManager;

    BLBRefresh: TdxBarLargeButton;
    BLBRelatorios: TdxBarLargeButton;
    BLBPSQ_CAD: TdxBarLargeButton;
    BEPSQ_CAD: TdxBarEdit;
    BBPSQ_PER_MENU: TdxBarButton;
    BDPSQ_PER_INI: TdxBarDateCombo;
    BDPSQ_PER_FIM: TdxBarDateCombo;
    BLBMAppend: TdxBarLargeButton;
    BLBMEdit: TdxBarLargeButton;
    BLBMCancel: TdxBarLargeButton;
    BLBConfirma: TdxBarLargeButton;
    BLBSaida: TdxBarLargeButton;
    BLBMDelete: TdxBarLargeButton;
    BLBPesquisa: TdxBarLargeButton;
    BSProgresso: TdxBarStatic;
    BPProcesso: TdxBarProgressItem;
    BLBPSQ_CAD_MENU: TdxBarLargeButton;
    BBPSQ_PER: TdxBarButton;
    SBSMenu: TdxSideBarStore;
    SSIEAppend: TdxStoredSideItem;
    SSIEEdit: TdxStoredSideItem;
    SSIEDelete: TdxStoredSideItem;
    SSIEPost: TdxStoredSideItem;
    SSIECancel: TdxStoredSideItem;
    SSIMAppend: TdxStoredSideItem;
    SSIMEdit: TdxStoredSideItem;
    SSIMDelete: TdxStoredSideItem;
    PMPSQ_CAD: TdxBarPopupMenu;
    PMPSQ_PER: TdxBarPopupMenu;
    ALPrincipal: TActionList;
    ACTRefresh: TAction;
    ACTExecEvent: TAction;
    ACTPesquisa: TAction;
    ACTRelatorios: TAction;
    ACTEAppend: TAction;
    ACTEEdit: TAction;
    ACTEDelete: TAction;
    ACTEPost: TAction;
    ACTECancel: TAction;
    ACTMAppend: TAction;
    ACTMEdit: TAction;
    ACTMDelete: TAction;
    ACTMPost: TAction;
    ACTMCancel: TAction;
    ACTSaida: TAction;
    ACTPSQ_OK: TAction;
    ACTPSQ_FOCUS: TAction;
    ILMenu: TImageList;
    ILEdicao: TImageList;
    StyleController: TdxEditStyleController;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SQLEvent: TIBSQL;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    DMPrincipal: TdxDockingManager;
    DSPrincipal: TdxDockSite;
    DPMenu: TdxDockPanel;
    LDSMenu: TdxLayoutDockSite;
    SBPrincipal: TdxSideBar;
    DPSubMenu5: TdxDockPanel;
    LDSSubMenu5: TdxLayoutDockSite;
    DPSubMenu4: TdxDockPanel;
    DPSubMenu3: TdxDockPanel;
    DPSubMenu2: TdxDockPanel;
    DPSubMenu1: TdxDockPanel;
    LDSSubMenu4: TdxLayoutDockSite;
    LDSSubMenu3: TdxLayoutDockSite;
    LDSSubMenu2: TdxLayoutDockSite;
    LDSSubMenu1: TdxLayoutDockSite;
    DPPrincipal1: TdxDockPanel;
    LDSPrincipal1: TdxLayoutDockSite;
    DPPrincipal2: TdxDockPanel;
    TCDSPrincipal: TdxTabContainerDockSite;
    PNLPrincipal1: TPanel;
    DSPrincipal1: TdxDockSite;
    LDSPrincipal1ConsultaINFADCAD: TdxLayoutDockSite;
    DPPrincipal1Consulta1: TdxDockPanel;
    DPPrincipal1RodapeLE1: TdxDockPanel;
    LDSPrincipal1Rodape1: TdxLayoutDockSite;
    DPPrincipal1RodapeLD1: TdxDockPanel;
    LDSPrincipal1RodapeLD: TdxLayoutDockSite;
    DPPrincipal1RodapeLE2: TdxDockPanel;
    DPPrincipal1RodapeLEB: TdxDockPanel;
    TCDSPrincipal1RodapeLE: TdxTabContainerDockSite;
    VCDSPrincipal1RodapeLE: TdxVertContainerDockSite;
    DPPrincipal1RodapeLD2: TdxDockPanel;
    TCDSPrincipal1RodapeLD: TdxTabContainerDockSite;
    DPPrincipal1RodapeLDB: TdxDockPanel;
    VCDSPrincipal1RodapeLD: TdxVertContainerDockSite;
    DPPrincipal1LE: TdxDockPanel;
    LDSPrincipal1LE: TdxLayoutDockSite;
    DPPrincipal1LD: TdxDockPanel;
    LDSPrincipal1LD: TdxLayoutDockSite;
    DPPrincipal1Titulo: TdxDockPanel;
    LDSPrincipal1Titulo: TdxLayoutDockSite;
    DPPrincipal1INFADCAD: TdxDockPanel;
    LDSPrincipal1INFADCAD: TdxLayoutDockSite;
    DPPrincipal1INFADCPL: TdxDockPanel;
    LDSPrincipal1INFADCPL: TdxLayoutDockSite;
    DPPrincipal1ConsultaLE1: TdxDockPanel;
    HCDSPrincipal1Consulta: TdxHorizContainerDockSite;
    DPPrincipal1ConsultaLD1: TdxDockPanel;
    DPPrincipal1ConsultaLD2: TdxDockPanel;
    TCDSPrincipal1ConsultaLD: TdxTabContainerDockSite;
    DPPrincipal1Consulta2: TdxDockPanel;
    TCDSPrincipal1Consulta: TdxTabContainerDockSite;
    DPPrincipal1RodapeTitulo: TdxDockPanel;
    LDSPrincipal1RodapeTitulo: TdxLayoutDockSite;
    DPPrincipal1Rodape: TdxDockPanel;
    LDSPrincipal1RodapeLE: TdxLayoutDockSite;
    DPPrincipal1Rodape1: TdxDockPanel;
    LDSPrincipal1Rodape2: TdxLayoutDockSite;
    DPPrincipal1Rodape2: TdxDockPanel;
    TCDSPrincipal1Rodape: TdxTabContainerDockSite;
    PNLDBGConsulta: TPanel;
    PNLDSCAD_PRO_PRC: TPanel;
    PNLDBGCAD_PRO_FIC: TPanel;
    DBGCAD_PRO_FIC: TdxDBGrid;
    DBGCAD_PRO_FICMMETRO: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMGRAMA: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMREND: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMLGRT: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMLGRU: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMENCC: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMENCL: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMELAC: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICMELAL: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICUCDBE_NO: TdxDBGridColumn;
    DBGCAD_PRO_FICC_UQTDE: TdxDBGridColumn;
    CAD_PRO_FIC: TIBQuery;
    CAD_PRO_FICUCOM: TIBStringField;
    CAD_PRO_FICMPESO: TIBBCDField;
    CAD_PRO_FICMMETRO: TIBBCDField;
    CAD_PRO_FICMGRAMA: TIBBCDField;
    CAD_PRO_FICMREND: TIBBCDField;
    CAD_PRO_FICMLGRU: TIBBCDField;
    CAD_PRO_FICMLGRT: TIBBCDField;
    CAD_PRO_FICMELAL: TIBBCDField;
    CAD_PRO_FICMELAC: TIBBCDField;
    CAD_PRO_FICMENCL: TIBBCDField;
    CAD_PRO_FICMENCC: TIBBCDField;
    CAD_PRO_FICUCDBE_NO: TIBStringField;
    CAD_PRO_FICUQTDE: TIBBCDField;
    CAD_PRO_FICUQTDE_VEN_MUL: TSmallintField;
    CAD_PRO_FICC_UQTDE: TStringField;
    DTSCAD_PRO_FIC: TDataSource;
    EST_EPE: TIBQuery;
    EST_EPEID: TLargeintField;
    EST_EPEREST: TIBStringField;
    EST_EPESKU: TIBStringField;
    EST_EPECEAN: TIBStringField;
    EST_EPECF_NCM: TIBStringField;
    EST_EPECF_SKU: TIBStringField;
    EST_EPECF_CEAN: TIBStringField;
    EST_EPEEPE_QTDE: TIBBCDField;
    EST_EPEEPE_QTRL: TIntegerField;
    EST_EPEEEP_QTDE: TIBBCDField;
    EST_EPEEEP_QTRL: TIntegerField;
    DTSEST_EPE: TDataSource;
    CAD_PRO_PRC: TIBQuery;
    CAD_PRO_PRCCF_VPRC_PAD: TFloatField;
    CAD_PRO_PRCCF_VPRC_ORI: TIBStringField;
    CAD_PRO_PRCVPRC_PAD: TFloatField;
    CAD_PRO_PRCVPRC_PRZ: TFloatField;
    CAD_PRO_PRCVPRC_PRO: TFloatField;
    CAD_PRO_PRCATJ_VPRC_PAD: TFloatField;
    CAD_PRO_PRCATJ_VPRC_PRZ: TFloatField;
    CAD_PRO_PRCATJ_VPRC_PRO: TFloatField;
    CAD_PRO_PRCVAR_VPRC_PAD: TFloatField;
    CAD_PRO_PRCVAR_VPRC_PRZ: TFloatField;
    CAD_PRO_PRCVAR_VPRC_PRO: TFloatField;
    CAD_PRO_PRCREP_VPRC_PAD: TFloatField;
    CAD_PRO_PRCREP_VPRC_PRZ: TFloatField;
    CAD_PRO_PRCREP_VPRC_PRO: TFloatField;
    CAD_PRO_PRCLJV_VPRC_PAD: TFloatField;
    CAD_PRO_PRCLJV_VPRC_PRZ: TFloatField;
    CAD_PRO_PRCLJV_VPRC_PRO: TFloatField;
    CAD_PRO_PRCC_CF_VPRC_PAD: TStringField;
    DTSCAD_PRO_PRC: TDataSource;
    CAD_PRO_IMG: TIBQuery;
    CAD_PRO_IMGIMG_ID: TLargeintField;
    CAD_PRO_IMGIMG_NO: TIBStringField;
    CAD_PRO_IMGIMG_PAD: TBlobField;
    CAD_PRO_IMGPDF_NO: TIBStringField;
    CAD_PRO_IMGILA_BMP1: TBlobField;
    CAD_PRO_IMGILA_INS1: TIBStringField;
    CAD_PRO_IMGD_ILA_INS1: TIBStringField;
    CAD_PRO_IMGILA_BMP2: TBlobField;
    CAD_PRO_IMGILA_INS2: TIBStringField;
    CAD_PRO_IMGD_ILA_INS2: TIBStringField;
    CAD_PRO_IMGILA_BMP3: TBlobField;
    CAD_PRO_IMGILA_INS3: TIBStringField;
    CAD_PRO_IMGD_ILA_INS3: TIBStringField;
    CAD_PRO_IMGILA_BMP4: TBlobField;
    CAD_PRO_IMGILA_INS4: TIBStringField;
    CAD_PRO_IMGD_ILA_INS4: TIBStringField;
    CAD_PRO_IMGILA_BMP5: TBlobField;
    CAD_PRO_IMGILA_INS5: TIBStringField;
    CAD_PRO_IMGD_ILA_INS5: TIBStringField;
    CAD_PRO_IMGILA_BMP6: TBlobField;
    CAD_PRO_IMGILA_INS6: TIBStringField;
    CAD_PRO_IMGD_ILA_INS6: TIBStringField;
    CAD_PRO_IMGILA_BMP7: TBlobField;
    CAD_PRO_IMGILA_INS7: TIBStringField;
    CAD_PRO_IMGD_ILA_INS7: TIBStringField;
    CAD_PRO_IMGILA_BMP8: TBlobField;
    CAD_PRO_IMGILA_INS8: TIBStringField;
    CAD_PRO_IMGD_ILA_INS8: TIBStringField;
    DTSCAD_PRO_IMG: TDataSource;
    EST_EFI: TIBQuery;
    DTSEST_EFI: TDataSource;
    EST_CPF: TIBQuery;
    DTSEST_CPF: TDataSource;
    DTSEST_EPV: TDataSource;
    DBEST_EPE_CTNR: TdxDBMemo;
    PNLDBGEST_EPE: TPanel;
    DBGEST_EPE: TdxDBGrid;
    DBGEST_EPECP_ID: TdxDBGridMaskColumn;
    DBGEST_EPESKU: TdxDBGridMaskColumn;
    DBGEST_EPEEP_SG: TdxDBGridMaskColumn;
    DBGEST_EPEEPE_QTDE: TdxDBGridMaskColumn;
    DBGEST_EPEEPE_QTRL: TdxDBGridMaskColumn;
    DBGEST_EPEEEP_QTDE: TdxDBGridMaskColumn;
    DBGEST_EPEEEP_QTRL: TdxDBGridColumn;
    DBGEST_EPEDEEV: TdxDBGridMaskColumn;
    DBGEST_EPEREST: TdxDBGridMaskColumn;
    DBGEST_EPEC_ID: TdxDBGridColumn;
    PNLDBGEST_EPE_CPL: TPanel;
    DBGEST_EPE_CPL: TdxDBGrid;
    DBGEST_EPE_CPLSKU: TdxDBGridMaskColumn;
    DBGEST_EPE_CPLCEAN: TdxDBGridMaskColumn;
    DBGEST_EPE_CPLCF_SKU: TdxDBGridMaskColumn;
    DBGEST_EPE_CPLCF_CEAN: TdxDBGridMaskColumn;
    DSCAD_PRO_PRC: TdxDockSite;
    DPCAD_PRO_PRC: TdxDockPanel;
    LDSCAD_PRO_PRC: TdxLayoutDockSite;
    PNLDBGCAD_PRO_PRC: TPanel;
    DBGCAD_PRO_PRC: TdxDBGrid;
    DBGCAD_PRO_PRCC_CF_VPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCVPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCVPRC_PRZ: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCVPRC_PRO: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCATJ_VPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCATJ_VPRC_PRZ: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCATJ_VPRC_PRO: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCVAR_VPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCVAR_VPRC_PRZ: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCVAR_VPRC_PRO: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCLJV_VPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCLJV_VPRC_PRZ: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCLJV_VPRC_PRO: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCREP_VPRC_PAD: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCREP_VPRC_PRZ: TdxDBGridMaskColumn;
    DBGCAD_PRO_PRCREP_VPRC_PRO: TdxDBGridMaskColumn;
    PNLDSCAD_PRO_INF: TPanel;
    DSCAD_PRO_INF: TdxDockSite;
    DPCAD_PRO_INF: TdxDockPanel;
    dxLayoutDockSite1: TdxLayoutDockSite;
    PNLCAD_PRO_IMG_PIX: TPanel;
    PNLCAD_PRO_IMG_PAD: TPanel;
    IMGCAD_PRO_IMG_PAD: TImage;
    EST_EPEEPC_CTNR: TIBStringField;
    DBGEST_EPEGRD_SG: TdxDBGridMaskColumn;
    DBGEST_EPEGRD_NO: TdxDBGridMaskColumn;
    DPPrincipal1Rodape3: TdxDockPanel;
    ILDockingManager: TImageList;
    PNLDSEST_EFI: TPanel;
    DSEST_EFI: TdxDockSite;
    LDSEST_EFI: TdxLayoutDockSite;
    TCDSEST_EFI: TdxTabContainerDockSite;
    DPEST_EFI: TdxDockPanel;
    PNLDBGEST_EFI: TPanel;
    DBGEST_EFI: TdxDBGrid;
    DBGEST_EFISKU: TdxDBGridMaskColumn;
    DBGEST_EFIQTDE: TdxDBGridMaskColumn;
    DBGEST_EFIQTRL: TdxDBGridMaskColumn;
    DBGEST_EFIEST_CDET: TdxDBGridColumn;
    DBGEST_EFIEST_CTNR: TdxDBGridMaskColumn;
    DBGEST_EFIEST_LOTE: TdxDBGridMaskColumn;
    DBGEST_EFIEST_CDRO: TdxDBGridColumn;
    DBGEST_EFIEST_DSRO: TdxDBGridDateColumn;
    DBGEST_EFILGCA: TdxDBGridMaskColumn;
    DBGEST_EFIEST_DECE: TdxDBGridMaskColumn;
    DBGEST_EFIC_ID: TdxDBGridColumn;
    DPEST_EAT: TdxDockPanel;
    PNLDBGEST_EAT: TPanel;
    DPEST_ESU: TdxDockPanel;
    PNLDBGEST_ESU: TPanel;
    DPEST_ERV: TdxDockPanel;
    PNLDBGEST_ERV: TPanel;
    DPEST_EPI: TdxDockPanel;
    PNLDBGEST_EPI: TPanel;
    PNLDSEST_PDC: TPanel;
    DSEST_PDC: TdxDockSite;
    LDSEST_PDC: TdxLayoutDockSite;
    TCDSEST_PDC: TdxTabContainerDockSite;
    DPEST_CPA: TdxDockPanel;
    PNLDBGEST_CPA: TPanel;
    DPEST_CPF: TdxDockPanel;
    PNLDBGEST_CPF: TPanel;
    PNLDSEST_PDV: TPanel;
    DSEST_PDV: TdxDockSite;
    LDSEST_PDV: TdxLayoutDockSite;
    TCDSEST_PDV: TdxTabContainerDockSite;
    DPEST_EPP: TdxDockPanel;
    PNLDBGEST_EPP: TPanel;
    DPEST_EPV: TdxDockPanel;
    PNLDBGEST_EPV: TPanel;
    DBGEST_EPV: TdxDBGrid;
    DPEST_ESP: TdxDockPanel;
    PNLDBGEST_ESP: TPanel;
    CAD_PRO_FICUPSCN: TIBBCDField;
    CAD_PRO_FICINFADCAD: TIBStringField;
    CAD_PRO_FICINFADCPL: TIBStringField;
    DBGEST_EFIEP_SG: TdxDBGridMaskColumn;
    DBGEST_EFIGRD_SG: TdxDBGridMaskColumn;
    DBGEST_EFIGRD_NO: TdxDBGridMaskColumn;
    DBGEST_EFIIDCP: TdxDBGridMaskColumn;
    EST_EAT: TIBQuery;
    DTSEST_EAT: TDataSource;
    EST_ESU: TIBQuery;
    DTSEST_ESU: TDataSource;
    DTSEST_EPI: TDataSource;
    DTSEST_ERV: TDataSource;
    EST_EPI: TIBQuery;
    EST_ERV: TIBQuery;
    DBGEST_EFIEST_DERO: TdxDBGridColumn;
    DBGEST_EPVEP_SG: TdxDBGridMaskColumn;
    DBGEST_EPVDEPK: TdxDBGridMaskColumn;
    DBGEST_EPVDSPK: TdxDBGridDateColumn;
    DBGEST_EPVCD_NO: TdxDBGridMaskColumn;
    DBGEST_EPVCD_GP: TdxDBGridColumn;
    DBGEST_EPVCV_NO: TdxDBGridMaskColumn;
    DBGEST_EPVCR_NO_ABREV: TdxDBGridMaskColumn;
    DBGEST_EPVSKU: TdxDBGridMaskColumn;
    DBGEST_EPVGRD_SG: TdxDBGridMaskColumn;
    DBGEST_EPVGRD_NO: TdxDBGridColumn;
    DBGEST_EPVQTDE: TdxDBGridColumn;
    DBGEST_EPVQTRL: TdxDBGridColumn;
    DBGEST_EPVC_ID: TdxDBGridColumn;
    DBGEST_EPVVPRC_COM: TdxDBGridMaskColumn;
    DBGEST_EPVSTPD: TdxDBGridMaskColumn;
    DBGEST_EPVD_STCO: TdxDBGridColumn;
    DBGEST_EPVSTFI: TdxDBGridColumn;
    EST_CPA: TIBQuery;
    DTSEST_CPA: TDataSource;
    DBGEST_CPA: TdxDBGrid;
    DBGEST_CPASKU: TdxDBGridMaskColumn;
    DBGEST_CPASGEP: TdxDBGridMaskColumn;
    DBGEST_CPADGCP: TdxDBGridColumn;
    DBGEST_CPADSCP: TdxDBGridMaskColumn;
    DBGEST_CPAQTDE: TdxDBGridColumn;
    DBGEST_CPAQTRL: TdxDBGridColumn;
    DBGEST_CPACF_VPRC_COM: TdxDBGridMaskColumn;
    DBGEST_CPADEPK: TdxDBGridMaskColumn;
    DBGEST_CPADTPK: TdxDBGridDateColumn;
    DBGEST_CPADECD: TdxDBGridMaskColumn;
    DBGEST_CPADECV: TdxDBGridMaskColumn;
    DBGEST_CPAC_ID: TdxDBGridColumn;
    DBGEST_CPAEST_CTNR: TdxDBGridMaskColumn;
    DBGEST_CPACTNR_PPRD: TdxDBGridDateColumn;
    DBGEST_CPACTNR_PEMB: TdxDBGridDateColumn;
    DBGEST_CPACTNR_PDSB: TdxDBGridDateColumn;
    DBGEST_CPACTNR_PCHP: TdxDBGridDateColumn;
    DBGEST_CPAQTSP: TdxDBGridColumn;
    DBGEST_CPARLSP: TdxDBGridColumn;
    DBGEST_CPF: TdxDBGrid;
    DBGEST_CPFSKU: TdxDBGridMaskColumn;
    DBGEST_CPFSGEP: TdxDBGridMaskColumn;
    DBGEST_CPFDGCP: TdxDBGridColumn;
    DBGEST_CPFDSCP: TdxDBGridMaskColumn;
    DBGEST_CPFQTDE: TdxDBGridColumn;
    DBGEST_CPFQTRL: TdxDBGridColumn;
    DBGEST_CPFVPRC_COM: TdxDBGridMaskColumn;
    DBGEST_CPFQTSP: TdxDBGridColumn;
    DBGEST_CPFRLSP: TdxDBGridColumn;
    DBGEST_CPFPED_CTNR: TdxDBGridMaskColumn;
    DBGEST_CPFCTNR_RCHP: TdxDBGridDateColumn;
    DBGEST_CPFDEPK: TdxDBGridMaskColumn;
    DBGEST_CPFDTPK: TdxDBGridDateColumn;
    DBGEST_CPFCTNR_RPRD: TdxDBGridDateColumn;
    DBGEST_CPFCTNR_REMB: TdxDBGridDateColumn;
    DBGEST_CPFCTNR_RDSB: TdxDBGridDateColumn;
    DBGEST_CPFDECD: TdxDBGridMaskColumn;
    DBGEST_CPFDECV: TdxDBGridMaskColumn;
    DBGEST_CPFC_ID: TdxDBGridColumn;
    EST_EPP: TIBQuery;
    DTSEST_EPP: TDataSource;
    DBGEST_EPP: TdxDBGrid;
    DBGEST_EPPSKU: TdxDBGridMaskColumn;
    DBGEST_EPPEP_SG: TdxDBGridMaskColumn;
    DBGEST_EPPDGCP: TdxDBGridColumn;
    DBGEST_EPPDSCP: TdxDBGridMaskColumn;
    DBGEST_EPPQTDE: TdxDBGridColumn;
    DBGEST_EPPQTRL: TdxDBGridColumn;
    DBGEST_EPPVPRC_COM: TdxDBGridMaskColumn;
    DBGEST_EPPDEPK: TdxDBGridMaskColumn;
    DBGEST_EPPDTPK: TdxDBGridDateColumn;
    DBGEST_EPPSTPD: TdxDBGridMaskColumn;
    DBGEST_EPPDECO: TdxDBGridColumn;
    DBGEST_EPPSTFI: TdxDBGridColumn;
    DBGEST_EPPDECD: TdxDBGridMaskColumn;
    DBGEST_EPPGPCD: TdxDBGridColumn;
    DBGEST_EPPDECR: TdxDBGridMaskColumn;
    DBGEST_EPPDECV: TdxDBGridMaskColumn;
    DBGEST_EPPC_ID: TdxDBGridColumn;
    DBGEST_EPVBQST: TdxDBGridMaskColumn;
    EST_ESP: TIBQuery;
    DTSEST_ESP: TDataSource;
    DBGEST_ESP: TdxDBGrid;
    DBGEST_ESPSKU: TdxDBGridMaskColumn;
    DBGEST_ESPSP_SG: TdxDBGridMaskColumn;
    DBGEST_ESPGRD_NO: TdxDBGridColumn;
    DBGEST_ESPGRD_SG: TdxDBGridMaskColumn;
    DBGEST_ESPQTDE: TdxDBGridColumn;
    DBGEST_ESPQTRL: TdxDBGridColumn;
    DBGEST_ESPVPRC_COM: TdxDBGridMaskColumn;
    DBGEST_ESPDEPK: TdxDBGridMaskColumn;
    DBGEST_ESPDSPK: TdxDBGridDateColumn;
    DBGEST_ESPSTPD: TdxDBGridMaskColumn;
    DBGEST_ESPD_STCO: TdxDBGridColumn;
    DBGEST_ESPSTFI: TdxDBGridColumn;
    DBGEST_ESPCD_NO: TdxDBGridMaskColumn;
    DBGEST_ESPCD_NO_GP: TdxDBGridColumn;
    DBGEST_ESPCR_NO_ABREV: TdxDBGridMaskColumn;
    DBGEST_ESPCV_NO: TdxDBGridMaskColumn;
    DBGEST_ESPBQST: TdxDBGridMaskColumn;
    DBGEST_ESPC_ID: TdxDBGridColumn;
    DBGEST_ESPEST_CDET: TdxDBGridColumn;
    DBGEST_ESPCDRO: TdxDBGridColumn;
    DBGEST_ESPDSRO: TdxDBGridDateColumn;
    DBGEST_ESPEST_CTNR: TdxDBGridMaskColumn;
    DBGEST_ESPEST_LOTE: TdxDBGridMaskColumn;
    DBGEST_ESPLGSP: TdxDBGridMaskColumn;
    DBGEST_ESPDSSP: TdxDBGridDateColumn;
    DBGEST_EPPEST_CTNR: TdxDBGridMaskColumn;
    PNLCAD_PRO_FIC_INF: TPanel;
    DBCAD_PRO_INF: TdxDBMemo;
    CAD_PRO_FICMABNT_NO: TIBStringField;
    EST_EPV: TIBQuery;

    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    DTSConsulta: TDataSource;

    Consulta: TIBQuery;

    DBGConsulta: TdxDBGrid;
    DBGConsultaAK_ID: TdxDBGridColumn;
    DBGConsultaREST: TdxDBGridMaskColumn;
    DBGConsultaARTIGO: TdxDBGridMaskColumn;
    DBGConsultaCP_NO: TdxDBGridMaskColumn;
    DBGConsultaFIS_NCM: TdxDBGridMaskColumn;
    DBGConsultaFIS_PIPI: TdxDBGridMaskColumn;
    DBGConsultaCF_ID: TdxDBGridMaskColumn;
    DBGConsultaCF_NO: TdxDBGridMaskColumn;
    DBGConsultaEP_ID: TdxDBGridMaskColumn;
    DBGConsultaEP_NO: TdxDBGridMaskColumn;
    EST_EPEDEEV: TIBStringField;
    EST_EATID: TLargeintField;
    EST_EATDTEV: TDateTimeField;
    EST_EATLGCA: TIBStringField;
    EST_EATDTCA: TDateTimeField;
    EST_EATEST_CDRO: TLargeintField;
    EST_EATEST_DSRO: TDateTimeField;
    EST_EATEST_DERO: TIBStringField;
    EST_EATEST_DECE: TIBStringField;
    EST_EATEST_CDET: TLargeintField;
    EST_EATEST_CTNR: TIBStringField;
    EST_EATEST_LOTE: TIBStringField;
    EST_EATSKU: TIBStringField;
    EST_EATQTDE: TIBBCDField;
    EST_EATQTRL: TIntegerField;
    EST_EFIID: TLargeintField;
    EST_EFIDTEV: TDateTimeField;
    EST_EFILGCA: TIBStringField;
    EST_EFIDTCA: TDateTimeField;
    EST_EFIEST_CDRO: TLargeintField;
    EST_EFIEST_DSRO: TDateTimeField;
    EST_EFIEST_DERO: TIBStringField;
    EST_EFIEST_DECE: TIBStringField;
    EST_EFIEST_CDET: TLargeintField;
    EST_EFIEST_CTNR: TIBStringField;
    EST_EFIEST_LOTE: TIBStringField;
    EST_EFISKU: TIBStringField;
    EST_EFIQTDE: TIBBCDField;
    EST_EFIQTRL: TIntegerField;
    EST_EPIID: TLargeintField;
    EST_EPIDTEV: TDateTimeField;
    EST_EPILGCA: TIBStringField;
    EST_EPIDTCA: TDateTimeField;
    EST_EPIEST_CDRO: TLargeintField;
    EST_EPIEST_DSRO: TDateTimeField;
    EST_EPIEST_DERO: TIBStringField;
    EST_EPIEST_DECE: TIBStringField;
    EST_EPIEST_CDET: TLargeintField;
    EST_EPIEST_CTNR: TIBStringField;
    EST_EPIEST_LOTE: TIBStringField;
    EST_EPISKU: TIBStringField;
    EST_EPIQTDE: TIBBCDField;
    EST_EPIQTRL: TIntegerField;
    EST_ERVID: TLargeintField;
    EST_ERVDTEV: TDateTimeField;
    EST_ERVLGCA: TIBStringField;
    EST_ERVDTCA: TDateTimeField;
    EST_ERVEST_CDRO: TLargeintField;
    EST_ERVEST_DSRO: TDateTimeField;
    EST_ERVEST_DERO: TIBStringField;
    EST_ERVEST_DECE: TIBStringField;
    EST_ERVEST_CDET: TLargeintField;
    EST_ERVEST_CTNR: TIBStringField;
    EST_ERVEST_LOTE: TIBStringField;
    EST_ERVSKU: TIBStringField;
    EST_ERVQTDE: TIBBCDField;
    EST_ERVQTRL: TIntegerField;
    EST_CPAID: TLargeintField;
    EST_CPAIDEP: TSmallintField;
    EST_CPASGEP: TIBStringField;
    EST_CPADTEV: TDateTimeField;
    EST_CPAIDPK: TLargeintField;
    EST_CPADEPK: TIBStringField;
    EST_CPADSPK: TDateField;
    EST_CPACTNR_PPRD: TDateField;
    EST_CPACTNR_PEMB: TDateField;
    EST_CPACTNR_PDSB: TDateField;
    EST_CPACTNR_PCHP: TDateField;
    EST_CPADECD: TIBStringField;
    EST_CPAGPCD: TIBStringField;
    EST_CPAABCR: TIBStringField;
    EST_CPADECV: TIBStringField;
    EST_CPAIDCP: TIntegerField;
    EST_CPASKU: TIBStringField;
    EST_CPADGCP: TIBStringField;
    EST_CPADSCP: TIBStringField;
    EST_CPAQTDE: TIBBCDField;
    EST_CPAQTRL: TIntegerField;
    EST_CPAQTSP: TIBBCDField;
    EST_CPARLSP: TIntegerField;
    EST_CPASTPD: TIBStringField;
    EST_CPAD_STCO: TIBStringField;
    EST_CPASTFI: TIBStringField;
    EST_CPABQST: TSmallintField;
    EST_CPFID: TIntegerField;
    EST_CPFIDEP: TSmallintField;
    EST_CPFSGEP: TIBStringField;
    EST_CPFDTEV: TDateTimeField;
    EST_CPFIDPK: TSmallintField;
    EST_CPFDEPK: TIBStringField;
    EST_CPFDSPK: TDateTimeField;
    EST_CPFDECD: TIBStringField;
    EST_CPFGPCD: TIBStringField;
    EST_CPFABCR: TIBStringField;
    EST_CPFDECV: TIBStringField;
    EST_CPFIDCP: TIntegerField;
    EST_CPFSKU: TIBStringField;
    EST_CPFDGCP: TIBStringField;
    EST_CPFDSCP: TIBStringField;
    EST_CPFQTDE: TIBBCDField;
    EST_CPFQTRL: TIntegerField;
    EST_CPFQTSP: TIBBCDField;
    EST_CPFRLSP: TIntegerField;
    EST_CPFVPRC_COM: TFloatField;
    EST_CPFSTPD: TIBStringField;
    EST_CPFD_STCO: TIBStringField;
    EST_CPFSTFI: TIBStringField;
    EST_CPFBQST: TSmallintField;
    EST_EPVID: TLargeintField;
    EST_EPVDTEV: TDateTimeField;
    EST_EPVIDPK: TLargeintField;
    EST_EPVDEPK: TIBStringField;
    EST_EPVDSPK: TDateField;
    EST_EPVSKU: TIBStringField;
    EST_EPVQTDE: TIBBCDField;
    EST_EPVQTRL: TIntegerField;
    EST_EPVVPRC_COM: TFloatField;
    EST_EPVSTPD: TIBStringField;
    EST_EPVD_STCO: TIBStringField;
    EST_EPVSTFI: TIBStringField;
    EST_EPVBQST: TSmallintField;
    EST_ESPID: TLargeintField;
    EST_ESPDTEV: TDateTimeField;
    EST_ESPIDPK: TLargeintField;
    EST_ESPDEPK: TIBStringField;
    EST_ESPDSPK: TDateTimeField;
    EST_ESPSKU: TIBStringField;
    EST_ESPQTDE: TIBBCDField;
    EST_ESPQTRL: TIntegerField;
    EST_ESPQTSP: TIBBCDField;
    EST_ESPRLSP: TIntegerField;
    EST_ESPVPRC_COM: TFloatField;
    EST_ESPSTPD: TIBStringField;
    EST_ESPD_STCO: TIBStringField;
    EST_ESPSTFI: TIBStringField;
    EST_ESPBQST: TSmallintField;
    EST_EPPID: TLargeintField;
    EST_EPPDTEV: TDateTimeField;
    EST_EPPIDPK: TLargeintField;
    EST_EPPDEPK: TIBStringField;
    EST_EPPDSPK: TDateField;
    EST_EPPSKU: TIBStringField;
    EST_EPPQTDE: TIBBCDField;
    EST_EPPQTRL: TIntegerField;
    EST_EPPVPRC_COM: TFloatField;
    EST_EPPSTPD: TIBStringField;
    EST_EPPD_STCO: TIBStringField;
    EST_EPPSTFI: TIBStringField;
    EST_EPPBQST: TSmallintField;
    EST_EPEC_ID: TLargeintField;
    EST_EFIC_ID: TLargeintField;
    EST_EATC_ID: TLargeintField;
    EST_ESUID: TLargeintField;
    EST_ESUDTEV: TDateTimeField;
    EST_ESULGCA: TIBStringField;
    EST_ESUDTCA: TDateTimeField;
    EST_ESUEST_CDRO: TLargeintField;
    EST_ESUEST_DSRO: TDateTimeField;
    EST_ESUEST_DERO: TIBStringField;
    EST_ESUEST_DECE: TIBStringField;
    EST_ESUEST_CDET: TLargeintField;
    EST_ESUEST_CTNR: TIBStringField;
    EST_ESUEST_LOTE: TIBStringField;
    EST_ESUSKU: TIBStringField;
    EST_ESUQTDE: TIBBCDField;
    EST_ESUQTRL: TIntegerField;
    EST_ESUC_ID: TLargeintField;
    EST_EPIC_ID: TLargeintField;
    EST_ERVC_ID: TLargeintField;
    EST_CPFC_ID: TLargeintField;
    EST_EPVC_ID: TLargeintField;
    EST_EPPC_ID: TLargeintField;
    EST_EPECDEV: TSmallintField;
    DBGEST_EAT: TdxDBGrid;
    DBGEST_EATCP_ID: TdxDBGridMaskColumn;
    DBGEST_EATSKU: TdxDBGridMaskColumn;
    DBGEST_EATEP_SG: TdxDBGridMaskColumn;
    DBGEST_EATGRD_NO: TdxDBGridMaskColumn;
    DBGEST_EATGRD_SG: TdxDBGridMaskColumn;
    DBGEST_EATQTDE: TdxDBGridMaskColumn;
    DBGEST_EATQTRL: TdxDBGridMaskColumn;
    DBGEST_EATEST_CDET: TdxDBGridColumn;
    DBGEST_EATEST_CTNR: TdxDBGridMaskColumn;
    DBGEST_EATEST_LOTE: TdxDBGridMaskColumn;
    DBGEST_EATEST_CDRO: TdxDBGridColumn;
    DBGEST_EATEST_DSRO: TdxDBGridDateColumn;
    DBGEST_EATLGCA: TdxDBGridMaskColumn;
    DBGEST_EATEST_DERO: TdxDBGridColumn;
    DBGEST_EATEST_DECE: TdxDBGridMaskColumn;
    DBGEST_EATC_ID: TdxDBGridColumn;
    DBGEST_ESU: TdxDBGrid;
    DBGEST_ESUCP_ID: TdxDBGridMaskColumn;
    DBGEST_ESUSKU: TdxDBGridMaskColumn;
    DBGEST_ESUEP_SG: TdxDBGridMaskColumn;
    DBGEST_ESUGRD_NO: TdxDBGridMaskColumn;
    DBGEST_ESUGRD_SG: TdxDBGridMaskColumn;
    DBGEST_ESUQTDE: TdxDBGridMaskColumn;
    DBGEST_ESUQTRL: TdxDBGridMaskColumn;
    DBGEST_ESUEST_CDET: TdxDBGridColumn;
    DBGEST_ESUEST_CTNR: TdxDBGridMaskColumn;
    DBGEST_ESUEST_LOTE: TdxDBGridMaskColumn;
    DBGEST_ESUEST_CDRO: TdxDBGridColumn;
    DBGEST_ESUEST_DSRO: TdxDBGridDateColumn;
    DBGEST_ESULGCA: TdxDBGridMaskColumn;
    DBGEST_ESUEST_DERO: TdxDBGridColumn;
    DBGEST_ESUEST_DECE: TdxDBGridMaskColumn;
    DBGEST_ESUC_ID: TdxDBGridColumn;
    DBGEST_EPI: TdxDBGrid;
    DBGEST_EPICP_ID: TdxDBGridMaskColumn;
    DBGEST_EPISKU: TdxDBGridMaskColumn;
    DBGEST_EPIEP_SG: TdxDBGridMaskColumn;
    DBGEST_EPIGRD_NO: TdxDBGridMaskColumn;
    DBGEST_EPIGRD_SG: TdxDBGridMaskColumn;
    DBGEST_EPIQTDE: TdxDBGridMaskColumn;
    DBGEST_EPIQTRL: TdxDBGridMaskColumn;
    DBGEST_EPIEST_CDET: TdxDBGridColumn;
    DBGEST_EPIEST_CTNR: TdxDBGridMaskColumn;
    DBGEST_EPIEST_LOTE: TdxDBGridMaskColumn;
    DBGEST_EPIEST_CDRO: TdxDBGridColumn;
    DBGEST_EPIEST_DSRO: TdxDBGridDateColumn;
    DBGEST_EPILGCA: TdxDBGridMaskColumn;
    DBGEST_EPIEST_DERO: TdxDBGridColumn;
    DBGEST_EPIEST_DECE: TdxDBGridMaskColumn;
    DBGEST_EPIC_ID: TdxDBGridColumn;
    DBGEST_ERV: TdxDBGrid;
    DBGEST_ERVCP_ID: TdxDBGridMaskColumn;
    DBGEST_ERVSKU: TdxDBGridMaskColumn;
    DBGEST_ERVEP_SG: TdxDBGridMaskColumn;
    DBGEST_ERVGRD_NO: TdxDBGridMaskColumn;
    DBGEST_ERVGRD_SG: TdxDBGridMaskColumn;
    DBGEST_ERVQTDE: TdxDBGridMaskColumn;
    DBGEST_ERVQTRL: TdxDBGridMaskColumn;
    DBGEST_ERVEST_CDET: TdxDBGridColumn;
    DBGEST_ERVEST_CTNR: TdxDBGridMaskColumn;
    DBGEST_ERVEST_LOTE: TdxDBGridMaskColumn;
    DBGEST_ERVEST_CDRO: TdxDBGridColumn;
    DBGEST_ERVEST_DSRO: TdxDBGridDateColumn;
    DBGEST_ERVLGCA: TdxDBGridMaskColumn;
    DBGEST_ERVEST_DERO: TdxDBGridColumn;
    DBGEST_ERVEST_DECE: TdxDBGridMaskColumn;
    DBGEST_ERVC_ID: TdxDBGridColumn;
    EST_CPACF_VPRC_COM: TFloatField;
    EST_CPACF_VPRC_PAD_ORI: TIBStringField;
    EST_CPAC_ID: TLargeintField;
    EST_CPFCTNR_RPRD: TDateField;
    EST_CPFCTNR_REMB: TDateField;
    EST_CPFCTNR_RDSB: TDateField;
    EST_CPFCTNR_RCHP: TDateField;
    EST_CPFVPRC_PAD_ORI: TIBStringField;
    EST_ESPLGSP: TIBStringField;
    EST_ESPDSSP: TDateTimeField;
    EST_ESPITEM: TIntegerField;
    EST_ESPEST_CDET: TLargeintField;
    EST_ESPEST_LOTE: TIBStringField;
    EST_ESPEST_MAPA: TIBStringField;
    EST_ESPEST_CDI: TSmallintField;
    EST_ESPEST_CTNR: TIBStringField;
    EST_ESPC_ID: TLargeintField;
    EST_CPAEST_CTNR: TIBStringField;
    EST_CPFPED_CTNR: TIBStringField;
    DBGCAD_PRO_FICMPESO: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICUPSCN: TdxDBGridMaskColumn;
    DBGCAD_PRO_FICPPSBR: TdxDBGridMaskColumn;
    ConsultaAK_ID: TLargeintField;
    ConsultaEP_ID: TSmallintField;
    ConsultaEP_NO: TIBStringField;
    ConsultaCF_ID: TSmallintField;
    ConsultaCF_NO: TIBStringField;
    ConsultaARTIGO: TIBStringField;
    ConsultaCP_NO: TIBStringField;
    ConsultaFIS_NCM: TIBStringField;
    ConsultaFIS_PIPI: TIBBCDField;
    ConsultaINFADCAD: TIBStringField;
    ConsultaREST: TIBStringField;
    CAD_PRO_FICCP_ID: TLargeintField;
    CAD_PRO_FICPPSBR: TIBBCDField;
    CAD_PRO_PRCCP_ID: TLargeintField;
    EST_EPEEP_ID: TSmallintField;
    EST_EPEEP_SG: TIBStringField;
    EST_EPECP_ID: TLargeintField;
    EST_EPEGRD_NO: TIBStringField;
    EST_EPEGRD_SG: TIBStringField;
    EST_EFIEP_ID: TSmallintField;
    EST_EFIEP_SG: TIBStringField;
    EST_EFICP_ID: TLargeintField;
    EST_EFIGRD_NO: TIBStringField;
    EST_EFIGRD_SG: TIBStringField;
    EST_EATEP_ID: TSmallintField;
    EST_EATEP_SG: TIBStringField;
    EST_EATCP_ID: TLargeintField;
    EST_EATGRD_NO: TIBStringField;
    EST_EATGRD_SG: TIBStringField;
    EST_ESUEP_ID: TSmallintField;
    EST_ESUEP_SG: TIBStringField;
    EST_ESUCP_ID: TLargeintField;
    EST_ESUGRD_NO: TIBStringField;
    EST_ESUGRD_SG: TIBStringField;
    EST_EPIEP_ID: TSmallintField;
    EST_EPIEP_SG: TIBStringField;
    EST_EPICP_ID: TLargeintField;
    EST_EPIGRD_NO: TIBStringField;
    EST_EPIGRD_SG: TIBStringField;
    EST_ERVEP_ID: TSmallintField;
    EST_ERVEP_SG: TIBStringField;
    EST_ERVCP_ID: TLargeintField;
    EST_ERVGRD_NO: TIBStringField;
    EST_ERVGRD_SG: TIBStringField;
    EST_ESPEP_ID: TSmallintField;
    EST_ESPEP_SG: TIBStringField;
    EST_ESPCD_NO: TIBStringField;
    EST_ESPCD_GP: TIBStringField;
    EST_ESPCR_NO_ABREV: TIBStringField;
    EST_ESPCV_NO: TIBStringField;
    EST_ESPCP_ID: TLargeintField;
    EST_ESPGRD_NO: TIBStringField;
    EST_ESPGRD_SG: TIBStringField;
    EST_EPVEP_ID: TSmallintField;
    EST_EPVEP_SG: TIBStringField;
    EST_EPVCD_NO: TIBStringField;
    EST_EPVCD_GP: TIBStringField;
    EST_EPVCR_NO_ABREV: TIBStringField;
    EST_EPVCV_NO: TIBStringField;
    EST_EPVITEM: TIntegerField;
    EST_EPVCP_ID: TLargeintField;
    EST_EPVGRD_NO: TIBStringField;
    EST_EPVGRD_SG: TIBStringField;
    EST_EPPEP_ID: TSmallintField;
    EST_EPPEP_SG: TIBStringField;
    EST_EPPCD_NO: TIBStringField;
    EST_EPPCD_GP: TIBStringField;
    EST_EPPCR_NO_ABREV: TIBStringField;
    EST_EPPCV_NO: TIBStringField;
    EST_EPPITEM: TIntegerField;
    EST_EPPCP_ID: TLargeintField;
    EST_EPPGRD_NO: TIBStringField;
    EST_EPPGRD_SG: TIBStringField;
    PNLCAD_PRO_ILA_PAD: TPanel;
    BVCAD_PRO_IMG_ILA1: TBevel;
    BVCAD_PRO_IMG_ILA2: TBevel;
    BVCAD_PRO_IMG_ILA4: TBevel;
    BVCAD_PRO_IMG_ILA5: TBevel;
    BVCAD_PRO_IMG_ILA6: TBevel;
    BVCAD_PRO_IMG_ILA7: TBevel;
    BVCAD_PRO_IMG_ILA8: TBevel;
    Bevel1: TBevel;
    DBCAD_PRO_IMG_ILA1: TDBImage;
    DBCAD_PRO_IMG_ILA2: TDBImage;
    DBCAD_PRO_IMG_ILA3: TDBImage;
    DBCAD_PRO_IMG_ILA4: TDBImage;
    DBCAD_PRO_IMG_ILA5: TDBImage;
    DBCAD_PRO_IMG_ILA6: TDBImage;
    DBCAD_PRO_IMG_ILA7: TDBImage;
    DBCAD_PRO_IMG_ILA8: TDBImage;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);

    procedure DPPrincipal1RodapeLEBUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure TCDSPrincipal1RodapeLEUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure VCDSPrincipal1RodapeLEUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);
    procedure TCDSPrincipal1RodapeUpdateDockZones(
      Sender: TdxCustomDockControl; AZones: TList);

    procedure ACTRefreshExecute(Sender: TObject);
    procedure ACTMAppendExecute(Sender: TObject);
    procedure ACTMEditExecute(Sender: TObject);
    procedure ACTMDeleteExecute(Sender: TObject);
    procedure ACTMPostExecute(Sender: TObject);
    procedure ACTMCancelExecute(Sender: TObject);

    procedure ACTEAppendExecute(Sender: TObject);
    procedure ACTEEditExecute(Sender: TObject);
    procedure ACTEDeleteExecute(Sender: TObject);
    procedure ACTEPostExecute(Sender: TObject);
    procedure ACTECancelExecute(Sender: TObject);

    procedure ACTExecEventExecute(Sender: TObject);
    procedure ACTSaidaExecute(Sender: TObject);

    procedure ACTPesquisaExecute(Sender: TObject);
    procedure BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACTPSQ_FOCUSExecute(Sender: TObject);
    procedure ACTPSQ_OKExecute(Sender: TObject);

    procedure BEPSQ_CADCurChange(Sender: TObject);
    procedure BDPSQ_PER_INICurChange(Sender: TObject);
    procedure BDPSQ_PER_FIMCurChange(Sender: TObject);

    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure DBGConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);

    procedure ConsultaBeforeClose(DataSet: TDataSet);
    procedure ConsultaAfterOpen(DataSet: TDataSet);

    procedure DTSConsultaDataChange(Sender: TObject; Field: TField);

    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGConsultaDblClick(Sender: TObject);

    procedure CAD_PRO_FICCalcFields(DataSet: TDataSet);
    procedure CAD_PRO_FICAfterOpen(DataSet: TDataSet);
    procedure CAD_PRO_PRCAfterOpen(DataSet: TDataSet);
    procedure CAD_PRO_PRCCalcFields(DataSet: TDataSet);
    procedure EST_EPEBeforeOpen(DataSet: TDataSet);
    procedure EST_EPEAfterScroll(DataSet: TDataSet);
    procedure EST_EPECalcFields(DataSet: TDataSet);
    procedure EST_EPEBeforeClose(DataSet: TDataSet);
    procedure EST_EPEAfterOpen(DataSet: TDataSet);
    procedure DBGEST_EPECustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBGEST_EPE_CPLCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure DTSCAD_PRO_IMGDataChange(Sender: TObject; Field: TField);
    procedure EST_EFIBeforeOpen(DataSet: TDataSet);
    procedure EST_EFIAfterScroll(DataSet: TDataSet);
    procedure EST_EFICalcFields(DataSet: TDataSet);
    procedure DTSEST_EFIDataChange(Sender: TObject; Field: TField);
    procedure DBGEST_EFICustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EST_EATBeforeOpen(DataSet: TDataSet);
    procedure EST_EATAfterScroll(DataSet: TDataSet);
    procedure EST_EATCalcFields(DataSet: TDataSet);
    procedure DTSEST_EATDataChange(Sender: TObject; Field: TField);
    procedure DBGEST_EATCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EST_ESUBeforeOpen(DataSet: TDataSet);
    procedure EST_ESUAfterScroll(DataSet: TDataSet);
    procedure EST_ESUCalcFields(DataSet: TDataSet);
    procedure DTSEST_ESUDataChange(Sender: TObject; Field: TField);
    procedure DBGEST_ESUCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EST_EPIBeforeOpen(DataSet: TDataSet);
    procedure EST_EPIAfterScroll(DataSet: TDataSet);
    procedure EST_EPICalcFields(DataSet: TDataSet);
    procedure DTSEST_EPIDataChange(Sender: TObject; Field: TField);
    procedure DBGEST_EPICustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EST_ERVBeforeOpen(DataSet: TDataSet);
    procedure EST_ERVAfterScroll(DataSet: TDataSet);
    procedure EST_ERVCalcFields(DataSet: TDataSet);
    procedure DTSEST_ERVDataChange(Sender: TObject; Field: TField);
    procedure DBGEST_ERVCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EST_CPABeforeOpen(DataSet: TDataSet);
    procedure EST_CPAAfterScroll(DataSet: TDataSet);
    procedure EST_CPACalcFields(DataSet: TDataSet);
    procedure DTSEST_CPADataChange(Sender: TObject; Field: TField);
    procedure DBGEST_CPACustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EST_CPFBeforeOpen(DataSet: TDataSet);
    procedure EST_CPFAfterScroll(DataSet: TDataSet);
    procedure EST_CPFCalcFields(DataSet: TDataSet);
    procedure DTSEST_CPFDataChange(Sender: TObject; Field: TField);
    procedure DBGEST_CPFCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EST_EPVBeforeOpen(DataSet: TDataSet);
    procedure EST_EPVAfterScroll(DataSet: TDataSet);
    procedure EST_EPVCalcFields(DataSet: TDataSet);
    procedure DTSEST_EPVDataChange(Sender: TObject; Field: TField);
    procedure DBGEST_EPVCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EST_ESPBeforeOpen(DataSet: TDataSet);
    procedure EST_ESPAfterScroll(DataSet: TDataSet);
    procedure EST_ESPCalcFields(DataSet: TDataSet);
    procedure DBGEST_ESPCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EST_EPPBeforeOpen(DataSet: TDataSet);
    procedure EST_EPPAfterScroll(DataSet: TDataSet);
    procedure EST_EPPCalcFields(DataSet: TDataSet);
    procedure DBGEST_EPPCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DTSEST_EPPDataChange(Sender: TObject; Field: TField);
    procedure DTSEST_ESPDataChange(Sender: TObject; Field: TField);
    procedure DTSEST_EPEDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    FCurrentEvent: String;
    FForceClose  : Boolean;

    FDockControl: TdxCustomDockControl;
    FDockControlPrincipal1RodapeLE: Integer;

    { método para atribuição\validação de valor }
    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);
    procedure _SetDockControl (const AValue: TdxCustomDockControl; AXYPos: Integer = 0; ADirection: TDirection = lNone; ARepeat: boolean = False; AUpdateZones: Boolean = False);
  public
    { Public declarations }
    REC_SHE_DEF: TREC_SHE_DEF;

    procedure _WM_CREATE(var Msg: TMessage); message WM_CREATE;
    procedure _SW_SHOWNOACTIVATE(var Msg: TMessage); message SW_SHOWNOACTIVATE;
    procedure _WM_ACTIVATE(var Msg: TMessage); message WM_ACTIVATE;
    procedure _WM_BEFORE_RESIZE(var Message: TMessage); message WM_ENTERSIZEMOVE;
    procedure _WM_AFTER_RESIZE(var Message: TMessage); message WM_EXITSIZEMOVE;

    property CurrentEvent: String  read FCurrentEvent write _SetCurrentEvent;
    property ForceClose  : Boolean read FForceClose   write _SetForceClose;


    Constructor Create(AOwner: TComponent;
                  const AIDEP: Integer;
                        AIDPK: LongInt;
                        AIDEV: LongInt;
                        ACDEV: Word;
                        AFBEV: String;
                        ATPEV: String); reintroduce; overload;

    class procedure _ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                              AIDEP: Integer = 0;
                              AIDPK: LongInt = 0;
                              AIDEV: LongInt = 0;
                              ACDEV: Word    = 0;
                              AFBEV: String  = '';
                              ATPEV: String  = '');

    Destructor  Destroy; override;
  end;

var
  FrmCAD_PRO_ADM: TFrmCAD_PRO_ADM;

  _Form: TStringList = Nil;
  _FormPesquisa: Boolean;

implementation

uses uPrincipal, bPrincipal, pCAD_PRO_EDI;

{$R *.dfm}

procedure TFrmCAD_PRO_ADM._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmCAD_PRO_ADM._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

procedure TFrmCAD_PRO_ADM._WM_CREATE(var Msg: TMessage);
begin
  DPSUBMENU1.Visible := False;
  DPSUBMENU1.Width   := 0;

  DPSUBMENU2.Visible := False;
  DPSUBMENU2.Width   := 0;


  { PRINCIPAL DOCK MANAGER }
  { Largura }
  _SetDockControl(DPPrincipal1LE,DPPrincipal1LE.Tag,lHorizontal); { LE }
  _SetDockControl(DPPrincipal1LD,DPPrincipal1LD.Tag,lHorizontal); { LD }

  { Altura }
  _SetDockControl(DPPrincipal1Titulo  ,DPPrincipal1Titulo.Tag  ,lVertical); { Título }
  _SetDockControl(DPPrincipal1INFADCAD,DPPrincipal1INFADCAD.Tag,lVertical); { Informações Adicionais }
  _SetDockControl(DPPrincipal1INFADCPL,DPPrincipal1INFADCPL.Tag,lVertical); { Informações Complementares }

  { CONSULTA DOCK MANAGER }
  { Largura LE }
//_SetDockControl(TCDSPrincipal1ConsultaLE,TCDSPrincipal1ConsultaLE.Tag,lHorizontal);
  _SetDockControl(DPPrincipal1ConsultaLE1 ,DPPrincipal1ConsultaLE1.Tag ,lHorizontal);
//_SetDockControl(DPPrincipal1ConsultaLE2 ,DPPrincipal1ConsultaLE2.Tag ,lHorizontal);

  { Largura LD }
  _SetDockControl(TCDSPrincipal1ConsultaLD,TCDSPrincipal1ConsultaLD.Tag,lHorizontal);
  _SetDockControl(DPPrincipal1ConsultaLD1 ,DPPrincipal1ConsultaLD1.Tag ,lHorizontal);
  _SetDockControl(DPPrincipal1ConsultaLD2 ,DPPrincipal1ConsultaLD2.Tag ,lHorizontal);

  { RODAPÉ DOCK MANAGER }
  { Largura LE }
  _SetDockControl(VCDSPrincipal1RodapeLE,VCDSPrincipal1RodapeLE.Tag,lHorizontal);
  _SetDockControl(TCDSPrincipal1RodapeLE,TCDSPrincipal1RodapeLE.Tag,lHorizontal);
  _SetDockControl(DPPrincipal1RodapeLE1 ,DPPrincipal1RodapeLE1.Tag ,lHorizontal);
  _SetDockControl(DPPrincipal1RodapeLE2 ,DPPrincipal1RodapeLE2.Tag ,lHorizontal);

  { Largura LD }
  _SetDockControl(VCDSPrincipal1RodapeLD,VCDSPrincipal1RodapeLD.Tag,lHorizontal);
  _SetDockControl(TCDSPrincipal1RodapeLD,TCDSPrincipal1RodapeLD.Tag,lHorizontal);
  _SetDockControl(DPPrincipal1RodapeLD1 ,DPPrincipal1RodapeLD1.Tag ,lHorizontal);
  _SetDockControl(DPPrincipal1RodapeLD2 ,DPPrincipal1RodapeLD2.Tag ,lHorizontal);

  { Altura }
  _SetDockControl(DPPrincipal1RodapeLEB,DPPrincipal1RodapeLEB.Tag,lVertical); { LEB }
  _SetDockControl(DPPrincipal1RodapeLDB,DPPrincipal1RodapeLDB.Tag,lVertical); { LDB }

  _SetDockControl(DPPrincipal1RodapeTitulo,DPPrincipal1RodapeTitulo.Tag,lVertical);
  _SetDockControl(DPPrincipal1Rodape      ,DPPrincipal1Rodape.Tag      ,lVertical);

  { CONSULTAS DOCK MANAGER }
  DPPrincipal1Consulta2.Visible := (DPPrincipal1Consulta2.Tag > 0); { Principal }
  DPPrincipal1Rodape2.Visible   := (DPPrincipal1Rodape2.Tag   > 0); { Rodapé }
  DPPrincipal1Rodape3.Visible   := (DPPrincipal1Rodape3.Tag   > 0); { Rodapé }

  { CONTAINERS MANAGER }
  { Consulta }
//TCDSPrincipal1ConsultaLE.ActiveChildIndex := 0;
  TCDSPrincipal1ConsultaLD.ActiveChildIndex := 0;
  TCDSPrincipal1Consulta.ActiveChildIndex   := 0;

  { Rodapé Principal }
  TCDSPrincipal1RodapeLE.ActiveChildIndex := 0;
  TCDSPrincipal1RodapeLD.ActiveChildIndex := 0;
  TCDSPrincipal1Rodape.ActiveChildIndex   := 0;

  { Rodapé Movimentado }
  TCDSEST_EFI.ActiveChildIndex := 0; { Estoque }
  TCDSEST_PDC.ActiveChildIndex := 0; { Compras }
  TCDSEST_PDV.ActiveChildIndex := 0; { Vendas  }

  { CONTAINERS MANAGER }
  { Altura }
  if HCDSPrincipal1Consulta.Tag = 0 then
  begin
    HCDSPrincipal1Consulta.Tag    := DSPrincipal1.Height - DPPrincipal1Titulo.Height - DPPrincipal1INFADCPL.Height;
    HCDSPrincipal1Consulta.Height := HCDSPrincipal1Consulta.Tag;

    TCDSPrincipal1Rodape.Visible  := False;
    TCDSPrincipal1Rodape.Tag      := 0;
    TCDSPrincipal1Rodape.Width    := 0;
    TCDSPrincipal1Rodape.Height   := 0;

    TCDSPrincipal1Rodape.Repaint;
  end else
  begin
    HCDSPrincipal1Consulta.Tag    := IFThen(Screen.Height > 864,350,250) + DPPrincipal1Titulo.Height;
    HCDSPrincipal1Consulta.Height := HCDSPrincipal1Consulta.Tag;

    TCDSPrincipal1Rodape.Visible  := True;
    TCDSPrincipal1Rodape.Tag      := 1;
    TCDSPrincipal1Rodape.Width    := DSPrincipal1.Width  - HCDSPrincipal1Consulta.Tag;
    TCDSPrincipal1Rodape.Height   := DSPrincipal1.Height - HCDSPrincipal1Consulta.Height - DPPrincipal1INFADCAD.Height;

    TCDSPrincipal1Rodape.Repaint;
  end;
end;


procedure TFrmCAD_PRO_ADM._SW_SHOWNOACTIVATE(var Msg: TMessage);
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

procedure TFrmCAD_PRO_ADM._WM_ACTIVATE(var Msg: TMessage);
begin
  { Limpa Eventos }
  REC_SHE_DEF.FB_Event000 := EmptyStr; { Login ou Sistema }
  REC_SHE_DEF.FB_Event001 := EmptyStr; { Sistema }
  REC_SHE_DEF.FB_Event002 := EmptyStr; { Usuário }

  EEvent.UnregisterEvents;
  EEvent.Events.Clear;

  { Registra Eventos }
  if REC_SHE_DEF.FB_Event <> EmptyStr then
     with EEvent do
     try
       { Sistema }
       if RECUsuarios.AIS_Event then
       begin
         REC_SHE_DEF.FB_Event000 := oREPZero(REC_SHE_DEF.FB_Event,'_',RECParametros.ID,3);
         EEvent.Events.Add(REC_SHE_DEF.FB_Event000);
       end else

       { Login }
       begin
         REC_SHE_DEF.FB_Event000 := REC_SHE_DEF.FB_Event + '_' + oStrZero(RECUsuarios.ID,3);
         EEvent.Events.Add(REC_SHE_DEF.FB_Event000);
       end;

       RegisterEvents;
     except
       on E: Exception do
       begin
         oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                   REC_SHE_DEF.FB_Event   + '.' + #13 + #13 +
                                   E.Message              + '.' + #13 + #13 +
                                  'Favor entrar em contato com o administrador do sistema.');
       end;
     end;

  { Produtos }
  REC_SHE_DEF.GDescricao := 'Produtos'; REC_SHE_DEF.GReferencia := 'Cadastro'; REC_SHE_DEF.GRegra := 'Etiquetas de Estoque';
  REC_SHE_DEF.GFB_FLD    := 'VISUALIZA';

  oUSER(REC_SHE_DEF);
  DBGEST_EFIEST_CDET.Visible := REC_SHE_DEF.GView;
end;

procedure TFrmCAD_PRO_ADM._WM_BEFORE_RESIZE(var Message: TMessage);
begin
  { Before Resize }
  DSPrincipal.Tag := DSPrincipal.Tag + 1;

  { VER TAM TELA }
  REC_SHE_DEF.FWorkArea := not ((REC_SHE_DEF.FWorkArea) and (Screen.Width > 1024));
  REC_SHE_DEF.FMainArea := not ((REC_SHE_DEF.FMainArea) and (Screen.Width > 1366));

  if (REC_SHE_DEF.FWorkArea) or (REC_SHE_DEF.FMainArea) then
  begin
    HelpKeyword := '3';
    REC_SHE_DEF.FrmPosition := poDefault;
  end else

  { Posição Padrão }
  if (HelpKeyword = '5') and (Screen.Width >= 1360) and (Screen.Width <= 1366) then {MainArea, mas sem desabilitar botões }
  begin
    REC_SHE_DEF.FrmPosition := poDefault;
  end;

  { VER DIM TELA }
  REC_SHE_DEF.FHeight := Self.Height;
  REC_SHE_DEF.FWidth  := Self.Width ;

  if RECUsuarios.Id = 0 then
  if Pos('APP',Self.Caption) = 0 then
  Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FHeight) + '. ' + Self.Caption;
end;

procedure TFrmCAD_PRO_ADM._WM_AFTER_RESIZE(var Message: TMessage);
begin
  { After Resize }
  if DSPrincipal.Tag >= 2 then
     try
       TCDSPrincipal.Height := DPPrincipal1.Height - 1;
       TCDSPrincipal.Width  := DPPrincipal1.Width  - 1;
       TCDSPrincipal.Repaint;

       { DOCK CONSULTA MANAGER }
       if HCDSPrincipal1Consulta.Tag = 0 then
       begin
         HCDSPrincipal1Consulta.Tag    := DSPrincipal1.Height - DPPrincipal1Titulo.Height - DPPrincipal1INFADCPL.Height;
         HCDSPrincipal1Consulta.Height := HCDSPrincipal1Consulta.Tag;

         TCDSPrincipal1Rodape.Visible  := False;
         TCDSPrincipal1Rodape.Tag      := 0;
         TCDSPrincipal1Rodape.Width    := 0;
         TCDSPrincipal1Rodape.Height   := 0;

         TCDSPrincipal1Rodape.Repaint;
       end else
       begin
         HCDSPrincipal1Consulta.Tag    := IFThen(Screen.Height > 864,350,250) + DPPrincipal1Titulo.Height;
         HCDSPrincipal1Consulta.Height := HCDSPrincipal1Consulta.Tag;

         TCDSPrincipal1Rodape.Visible  := True;
         TCDSPrincipal1Rodape.Tag      := 1;
         TCDSPrincipal1Rodape.Width    := DSPrincipal1.Width  - HCDSPrincipal1Consulta.Tag;
         TCDSPrincipal1Rodape.Height   := DSPrincipal1.Height - HCDSPrincipal1Consulta.Height - DPPrincipal1INFADCAD.Height;

         TCDSPrincipal1Rodape.Repaint;
       end;

       DSEST_EFI.Width  := TCDSPrincipal1Rodape.Width;
       DSEST_EFI.Height := TCDSPrincipal1Rodape.Height;
       DSEST_EFI.Repaint;

       oResize(DBGConsulta);
       Paint;
     finally
       DSPrincipal.Tag := 0; { zera controle }

       { Focused }
       if (BEPSQ_CAD.Visible <> ivNever) and (_FormPesquisa) then
           BEPSQ_CAD.SetFocus(False);

       { Pesquisa }
       ACTPesquisa.Execute;
     end;
end;

Class procedure TFrmCAD_PRO_ADM._ExecForm(AOwner: TComponent;var AForm; AFormPesquisa: Boolean = False; AFormStyle: TFormStyle = fsMDIChild;
                                          AIDEP : Integer = 0;
                                          AIDPK : LongInt = 0;
                                          AIDEV : LongInt = 0;
                                          ACDEV : Word    = 0;
                                          AFBEV : String  = '';
                                          ATPEV : String  = '');
var
  idxForm: Integer;
begin
  oLockWindowUpdate;
  
  if not Assigned(_Form) then
  begin
    _Form := TStringList.Create;
    _Form.Sorted := True;
  end;

  { Inicia pela pesquisa }
  _FormPesquisa := AFormPesquisa;

  if not _Form.Find(ClassName,idxForm) then
  idxForm := _Form.Add(ClassName);

  if ((TForm(AForm) = Nil) or (ACDEV = 1)) then
  TForm(AForm) := Self.Create (AOwner,
                               AIDEP ,
                               AIDPK ,
                               AIDEV ,
                               ACDEV ,
                               AFBEV ,
                               ATPEV);

  _Form.Objects[idxForm] := TObject(@AForm);

  TForm(AForm).FormStyle   := AFormStyle;
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

Constructor TFrmCAD_PRO_ADM.Create(AOwner: TComponent;
                              const AIDEP: Integer;
                                    AIDPK: LongInt;
                                    AIDEV: LongInt;
                                    ACDEV: Word;
                                    AFBEV: String;
                                    ATPEV: String);
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.AIDEP := INTTOSTR(AIDEP);
  REC_SHE_DEF.AIDPK := INTTOSTR(AIDPK);

  REC_SHE_DEF.AIDEV := INTTOSTR(AIDEV);
  REC_SHE_DEF.ACDEV := INTTOSTR(ACDEV);

  REC_SHE_DEF.AFBEV := Trim(AFBEV);
  REC_SHE_DEF.ATPEV := Trim(ATPEV);

  REC_SHE_DEF.FForceCaixa := False; { Caixa }

  inherited Create(AOwner);
end;

Destructor TFrmCAD_PRO_ADM.Destroy;
type
  PtrForm = ^TForm;
var
  idxForm: Integer;
begin
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
               oFTransact(TConsulta);
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
    inherited;
  end;
end;

procedure TFrmCAD_PRO_ADM.FormCreate(Sender: TObject);
begin
  { ADMIN }
  DBGConsultaAK_ID.Visible := (RECUsuarios.ID = 0);
  DBGEST_EPECP_ID.Visible  := (RECUsuarios.ID = 0);

  { FORM MANAGER }
  REC_SHE_DEF.FrmPosition := Self.Position; { Página }
  SetCursorPos(500,Self.Top); { Cursor }

  { BAR MANAGER }
  BMPrincipal.Bars[1].BorderStyle := bbsNone; { Sistema }
  BMPrincipal.Bars[4].BorderStyle := bbsNone; { Pesquisa Período }

  { GRANT }
  REC_SHE_DEF.FB_Event    := 'CAD_PRO';
  REC_SHE_DEF.GDescricao  := 'Produtos';
  REC_SHE_DEF.GReferencia := 'Cadastro';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';

  if ((REC_SHE_DEF.GDescricao = EmptyStr) and (REC_SHE_DEF.GReferencia = EmptyStr) and (REC_SHE_DEF.GRegra = EmptyStr)) or
      (REC_SHE_DEF.GAdmin) then
  begin
    REC_SHE_DEF.GAppend := True;
    REC_SHE_DEF.GEdit   := True;
    REC_SHE_DEF.GDelete := True;
    REC_SHE_DEF.GView   := True;
    REC_SHE_DEF.GPrint  := True;
  end else
  begin
    oUSER(REC_SHE_DEF);
  end;

  { VER FEC }
  if not ForceClose then
  ForceClose := (not REC_SHE_DEF.GView); { Apenas quando parâmetro não setado }

  REC_SHE_DEF.FForceClose := ForceClose;
  REC_SHE_DEF.FAlert      := 'Usuário não Autorizado.' + #13 +
                             'Favor entrar em contato com o administrador do sistema.';

  { DEF FEC }
  if (not REC_SHE_DEF.FForceClose) and (REC_SHE_DEF.FForceCaixa) and (REC_SHE_DEF.AIDEV = 0) and
     (RECParametros.STCX <> 'Caixa Aberto') then
  begin
    ForceClose := True;
    REC_SHE_DEF.FForceClose := ForceClose;
    REC_SHE_DEF.FAlert      := 'Caixa não Aberto.' + #13 +
                               'Favor entrar em contato com o administrador do sistema.';
  end;

  if (REC_SHE_DEF.FForceClose) or (not REC_SHE_DEF.GView) then
  begin
    oErro(Application.Handle,'ACESSO NEGADO !' + #13 + #13 +
                              REC_SHE_DEF.FAlert);

    Self.Visible := False;
    Self.Height  := 0;
    Self.Width   := 0;

    PostMessage(Handle, WM_CLOSE, 0, 0);
  end else
  PostMessage( Handle, WM_CREATE, 0, 0);
end;

procedure TFrmCAD_PRO_ADM.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;

  PostMessage(Handle, SW_SHOWNOACTIVATE, 0, 0 );
end;

procedure TFrmCAD_PRO_ADM.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;

  PostMessage(Handle, WM_ACTIVATE, 0, 0 );
end;

procedure TFrmCAD_PRO_ADM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action  := caFree;
  OnClose := Nil;
end;

procedure TFrmCAD_PRO_ADM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: Close; //ACTCancela.Execute;
       vk_return: if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);

       38       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext(ActiveControl,False,True);

       40       : if (not (ActiveControl is TdxDBGrid) and
                      not (ActiveControl is TdxDBMemo) and
                      not (ActiveControl is TdxMemo)   and
                      not (ActiveControl is TListBox)) then
                      SelectNext (ActiveControl,True,True);
  end;
end;

procedure TFrmCAD_PRO_ADM.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #5 then
  {[Ctrl+E]} else
  if key = #8 then
  {[Ctrl+H]} else
  if key = #9 then
  {[Ctrl+I]} else
  if key = #16 then
  ACTRelatorios.Execute else
  if key = #19 then
  {[Ctrl+S]} else
  if key = #22 then
  {[Ctrl+V]};
end;

procedure TFrmCAD_PRO_ADM.FormPaint(Sender: TObject);
var
  AMainFormScreen: TRect;
  FHeight,
  FWidth ,
  H,
  T,
  B,
  L,R: Word;
begin
  if (not Showing) or (REC_SHE_DEF.FForceClose) then
  Exit;

  { Ajusta o Form para o tamanho da area livre do MainForm }
  GetWindowRect(FrmPrincipal.ClientHandle,AMainFormScreen);

  T := AMainFormScreen.Top;
  B := AMainFormScreen.Bottom;
  L := AMainFormScreen.Left;
  R := AMainFormScreen.Right;
  H := B;

  if REC_SHE_DEF.FrmPosition = poDesigned then
  begin
    if (HelpContext = 0) then { % da altura }
    if (AMainFormScreen.Bottom - AMainFormScreen.Top < Self.Height) then { Área livre menor que página }
    HelpContext := 95; { % }

    FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
    FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

    if (REC_SHE_DEF.FTop > 0) and (REC_SHE_DEF.FLeft > 0) then
    begin
      Top    := REC_SHE_DEF.FTop;
      Left   := REC_SHE_DEF.FLeft;

      if Top + Height > B then
      begin
        Top := Top - ((Top + Height) - B);
      end;

      if Left + Width > R then
      begin
        Left := Left - ((Left + Width) - R);
      end;

    end else
    begin
      if FHeight > 0 then Height := FHeight;
      if FWidth  > 0 then Width  := FWidth;

      if FormStyle = fsNormal then
      begin
        //if FHeight > 0 then
        Top := (T  + (H - Height)) div 2;

        //if FWidth > 0 then
        Left := ((R + L) - Width )  div 2;
      end else
      //if (FHeight > 0) or (FWidth  > 0) then
      begin
        Top  := ((B - T ) - Height) div 2;
        Left := ((R - L)  - Width ) div 2;
      end;
    end;
  end else
  if (REC_SHE_DEF.FWorkArea) and (FormStyle = fsNormal) then
  begin
    Top    := Screen.WorkAreaTop;
    Left   := Screen.WorkAreaLeft;
    Width  := Screen.WorkAreaWidth;
    Height := Screen.WorkAreaHeight;
  end else
  if (REC_SHE_DEF.FMainArea) and (FormStyle = fsNormal) then
  begin
    Top    := 0;
    Left   := 0;
    Width  := R - L - 5;
    Height := H - T - 5;
  end else
  if REC_SHE_DEF.FrmPosition = poDefault then
  begin
    Top    := IFThen(FormStyle = fsNormal,T,0);
    Left   := IFThen(FormStyle = fsNormal,L,0);
    Width  := IFThen(REC_SHE_DEF.FrmPosition = poDefault,R - L - 5,0);
    Height := IFThen(REC_SHE_DEF.FrmPosition = poDefault,H - T - 5,0);
  end;
end;

procedure TFrmCAD_PRO_ADM.FormResize(Sender: TObject);
begin
  if (not Showing) or (REC_SHE_DEF.FForceClose) then
  Exit;

  { Risize }
  PostMessage(Handle, WM_ENTERSIZEMOVE , 0, 0); { Before }
  PostMessage(Handle, WM_EXITSIZEMOVE  , 0, 0); { After }
end;

procedure TFrmCAD_PRO_ADM._SetDockControl (const AValue: TdxCustomDockControl; AXYPos: Integer = 0; ADirection: TDirection = lNone; ARepeat: boolean = False; AUpdateZones: Boolean = False);
var
  FUpdateZones: Boolean;
begin
  FUpdateZones := AUpdateZones;
  
  if AValue <> Nil then
  begin
    if FDockControl <> AValue then
       FDockControl := AValue;

    TdxCustomDockControl(AValue).Tag     := AXYPOS;
    TdxCustomDockControl(AValue).Visible := not (TdxCustomDockControl(AValue).Tag = 0);

    if ADirection = lVertical then
    begin
      //if AUpdateZones then
      //   FUpdateZones := (TdxCustomDockControl(AValue).Height <> TdxCustomDockControl(AValue).Tag);

      if ARepeat then
      begin
        repeat  TdxCustomDockControl(AValue).Height := TdxCustomDockControl(AValue).Tag;
        until   TdxCustomDockControl(AValue).Tag     = TdxCustomDockControl(AValue).Height;
      end else
      begin
        TdxCustomDockControl(AValue).Height := TdxCustomDockControl(AValue).Tag;
      end;
    end else

    if ADirection = lHorizontal then
    begin
      //if AUpdateZones then
      //   FUpdateZones := (TdxCustomDockControl(AValue).Width <> TdxCustomDockControl(AValue).Tag);

      if ARepeat then
      begin
        repeat  TdxCustomDockControl(AValue).Width := TdxCustomDockControl(AValue).Tag;
        until   TdxCustomDockControl(AValue).Tag    = TdxCustomDockControl(AValue).Width;
      end else
      begin
        TdxCustomDockControl(AValue).Width := TdxCustomDockControl(AValue).Tag;
      end;
    end;
    
    if FUpdateZones then
    AValue.OnUpdateDockZones(AValue,Avalue.DockZones);
    AValue.Repaint;
  end;
end;

procedure TFrmCAD_PRO_ADM.VCDSPrincipal1RodapeLEUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  i: Word;
begin
  i := 1;
  if (Showing) and (VCDSPrincipal1RodapeLE.HelpContext = 0) then
  repeat
    VCDSPrincipal1RodapeLE.HelpContext := 1;

    Sender.Width  := VCDSPrincipal1RodapeLE.Width;
    Sender.Height := VCDSPrincipal1RodapeLE.Height;
    Sender.Repaint;
  until
    i <= 1;
end;

procedure TFrmCAD_PRO_ADM.TCDSPrincipal1RodapeLEUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  i: Word;
begin
  i := 1;
  if (Showing) and (TCDSPrincipal1RodapeLE.HelpContext = 0) then
  repeat
    TCDSPrincipal1RodapeLE.HelpContext := 1;

    Sender.Width  := VCDSPrincipal1RodapeLE.Width;
    Sender.Height := VCDSPrincipal1RodapeLE.Height;
    Sender.Repaint;
  until
    i <= 1;
end;

procedure TFrmCAD_PRO_ADM.DPPrincipal1RodapeLEBUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  i: Word;
begin
  i := 1;
  if (Showing) and (DPPrincipal1RodapeLEB.HelpContext = 0) then
  repeat
    DPPrincipal1RodapeLEB.HelpContext := 1;

    Sender.Width  := VCDSPrincipal1RodapeLE.Width;
    Sender.Height := Sender.Tag;
    Sender.Repaint;
  until
    i <= 1;
end;

procedure TFrmCAD_PRO_ADM.TCDSPrincipal1RodapeUpdateDockZones(
  Sender: TdxCustomDockControl; AZones: TList);
var
  I: Integer;
begin
  if (Showing) and (TCDSPrincipal1Rodape.HelpContext = 0) then
  begin
    TCDSPrincipal1Rodape.HelpContext := 1;
    I := 0;
    while I < AZones.Count do
    begin
      Sender.Width  := Sender.Width  - 1;
      Sender.Height := Sender.Height - 1;
      Sender.Repaint;

      Inc(I);
    end;

    TCDSPrincipal.Tag := 1;
  end;
end;

procedure TFrmCAD_PRO_ADM.ACTRefreshExecute(Sender: TObject);
begin
  if (not ACTRefresh.Enabled) or { Habilitado }
     (not ACTRefresh.Visible) or { Visível    }
     (ALockWindowUpdate) then    { Destravado }

  Abort else
  oRefresh(Consulta);
end;

procedure TFrmCAD_PRO_ADM.ACTMAppendExecute(Sender: TObject);
begin
  if (not ACTMAppend.Enabled) or { Habilitado }
     (not ACTMAppend.Visible) or { Visível    }
     (ALockWindowUpdate) then    { Destravado }

  Abort;
end;

procedure TFrmCAD_PRO_ADM.ACTMEditExecute(Sender: TObject);
begin
  if (not ACTMEdit.Enabled) or { Habilitado }
     (not ACTMEdit.Visible) or { Visível    }
     (ALockWindowUpdate) then  { Destravado }

  Abort;
end;

procedure TFrmCAD_PRO_ADM.ACTMDeleteExecute(Sender: TObject);
begin
  if (not ACTMDelete.Enabled) or { Habilitado }
     (not ACTMDelete.Visible) or { Visível    }
     (ALockWindowUpdate) then    { Destravado }

  Abort;
end;

procedure TFrmCAD_PRO_ADM.ACTMPostExecute(Sender: TObject);
begin
  if (not ACTMPost.Enabled) or { Habilitado }
     (not ACTMPost.Visible) or { Visível    }
     (ALockWindowUpdate) then  { Destravado }

  Abort;
end;

procedure TFrmCAD_PRO_ADM.ACTMCancelExecute(Sender: TObject);
begin
  REC_SHE_DEF.Edited := False;
  Close;
end;

procedure TFrmCAD_PRO_ADM.ACTSaidaExecute(Sender: TObject);
begin
  REC_SHE_DEF.PSQ_OK := False;
  Close;
end;

procedure TFrmCAD_PRO_ADM.ACTEAppendExecute(Sender: TObject);
begin
  if (not ACTEAppend.Enabled) or (not ACTEAppend.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmCAD_PRO_ADM.ACTEEditExecute(Sender: TObject);
begin
  if (not ACTEEdit.Enabled) or { Habilitado }
     (not ACTEEdit.Visible) or { Visível    }
     (ALockWindowUpdate) then  { Destravado }

  Abort;

  //TFrmCAD_PRO_EDI._ExecForm(Self,FrmCAD_PRO_EDI,False,ConsultaIDAK.AsInteger);

  if (not ACTEEdit.Enabled) or (not ACTEEdit.Visible) or
     (Consulta.RecNo = 0  )then
  Abort;

  FrmCAD_PRO_EDI := TFrmCAD_PRO_EDI.Create(Self,
                                           ConsultaEP_ID.AsInteger,
                                           ConsultaAK_ID.AsInteger,
                                           0,
                                           3,
                                           EmptyStr,
                                           EmptyStr);

  FrmCAD_PRO_EDI.ShowModal;

  FreeAndNil(FrmCAD_PRO_EDI);

end;

procedure TFrmCAD_PRO_ADM.ACTEDeleteExecute(Sender: TObject);
begin
  if (not ACTEDelete.Enabled) or (not ACTEDelete.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmCAD_PRO_ADM.ACTEPostExecute(Sender: TObject);
begin
  if (not ACTEPost.Enabled) or (not ACTEPost.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmCAD_PRO_ADM.ACTECancelExecute(Sender: TObject);
begin
  if (not ACTECancel.Enabled) or (not ACTECancel.Visible) then
  Abort;

  ActiveControl := Nil;
end;

procedure TFrmCAD_PRO_ADM.ACTPSQ_OKExecute(Sender: TObject);
begin
  if ACTPesquisa.Enabled then
  begin
    if Sender.ClassType = TdxBarLargeButton then
    begin
      BLBPSQ_CAD_MENU.Description := TdxBarLargeButton(Sender).Description;
      BLBPSQ_CAD_MENU.Caption     := TdxBarLargeButton(Sender).Caption;
      BLBPSQ_CAD_MENU.Hint        := TdxBarLargeButton(Sender).Hint;
      BLBPSQ_CAD_MENU.Tag         := TdxBarLargeButton(Sender).Tag;

      BEPSQ_CAD.SetFocus(False);
    end;

    if Sender.ClassType = TdxBarButton then
    begin
      BBPSQ_PER_MENU.Description := TdxBarButton(Sender).Description;
      BBPSQ_PER_MENU.Caption     := TdxBarButton(Sender).Caption;
      BBPSQ_PER_MENU.Hint        := TdxBarButton(Sender).Hint;
      BBPSQ_PER_MENU.Tag         := TdxBarButton(Sender).Tag;
    end;

    if ((BEPSQ_CAD.Text = EmptyStr) and
       ((BDPSQ_PER_INI.Date <= 0  ) or (BDPSQ_PER_FIM.Date <= 0))) then
    Abort;

    if BDPSQ_PER_FIM.Date > 0 then
    if BDPSQ_PER_INI.Date > BDPSQ_PER_FIM.Date then
       oException(Nil,'DATA INICIAL não pode ser maior que DATA FINAL !');

    ACTPesquisa.Execute;
  end;
end;

procedure TFrmCAD_PRO_ADM.ACTPSQ_FOCUSExecute(Sender: TObject);
begin
  if (ACTPesquisa.Enabled) and (BEPSQ_CAD.Enabled) then
  BEPSQ_CAD.SetFocus(False);
end;

procedure TFrmCAD_PRO_ADM.BEPSQ_CADKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    BEPSQ_CAD.Text := Trim(BEPSQ_CAD.Text);
    with REC_SHE_DEF do
    begin
      if oBSONumero(BEPSQ_CAD.Text) then
      begin
        PSQ_WHERE := ' = ';
        PSQ_LKINI := '''' ;
        PSQ_LKFIM := '''' ;
      end else
      begin
        PSQ_WHERE := ' LIKE ';
        PSQ_LKINI := '''' ;
        PSQ_LKFIM := '%''';
      end;
    end;

    ACTPSQ_OK.Execute;
  end else

  if key = VK_DOWN then
  begin
    if (ACTPesquisa.Enabled) and (BEPSQ_CAD.Enabled) and (DBGConsulta.Enabled) then
    begin
      PostMessage(TWinControl(DBGConsulta).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(DBGConsulta).SetFocus;
    end;
  end else

  if key = vk_escape then
  ACTSaida.Execute;
end;

procedure TFrmCAD_PRO_ADM.BEPSQ_CADCurChange(Sender: TObject);
begin
  BEPSQ_CAD.Text := BEPSQ_CAD.CurText;
end;

procedure TFrmCAD_PRO_ADM.BDPSQ_PER_INICurChange(Sender: TObject);
begin
  BDPSQ_PER_INI.Date := BDPSQ_PER_INI.CurDate;
end;

procedure TFrmCAD_PRO_ADM.BDPSQ_PER_FIMCurChange(Sender: TObject);
begin
  BDPSQ_PER_FIM.Date := BDPSQ_PER_FIM.CurDate;
end;

procedure TFrmCAD_PRO_ADM.ACTExecEventExecute(Sender: TObject);
var
  i: word;
begin
  try
    if REC_SHE_DEF.FB_Event <> EmptyStr then
       try
         { Set }
         REC_SHE_DEF.FB_Event000 := REC_SHE_DEF.FB_Event + '_' + oStrZero(RECUsuarios.ID  ,3); { Login   }
         REC_SHE_DEF.FB_Event001 := oREPZero(REC_SHE_DEF.FB_Event, '_' ,RECParametros.ID  ,3); { Sistema }
         REC_SHE_DEF.FB_Event002 := REC_SHE_DEF.FB_Event + '_' + oStrZero(ACTExecEvent.Tag,3); { Usuário }

         oOTransact(TEvent);

         SPEvent.Close;
         SPEvent.StoredProcName := 'SP_EVE_ERP';
         SPEvent.Prepare;

         for i := 0 to SPEvent.ParamCount - 1 do
         SPEvent.Params[i].Value := Null;

         SPEvent.Params[0].Value := REC_SHE_DEF.FB_Event000;
         SPEvent.Params[1].Value := REC_SHE_DEF.FB_Event001;
         SPEvent.Params[2].Value := REC_SHE_DEF.FB_Event002;
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
  finally
    ACTExecEvent.Tag := 0;
  end;
end;

procedure TFrmCAD_PRO_ADM.EEventEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  oRefresh(Consulta);
end;

procedure TFrmCAD_PRO_ADM.ACTPesquisaExecute(Sender: TObject);
var
  i: Integer;
begin
  { RESET TRANSACTION }
  oCTransact(TConsulta);
  oOTransact(TConsulta);

  { RESET FILTER DEFAULT }
  DBGConsulta.Filter.Clear; { Consulta }

  { DIVERSOS }
  REC_SHE_DEF.PSQ_FB_SC := False; { Sub Query }
  REC_SHE_DEF.PSQ_FB_PD := True;  { Padrão }

  { Texto Pesquisa }
  REC_SHE_DEF.PSQ_FB_FD := BLBPSQ_CAD_MENU.Description; { Campo }
  REC_SHE_DEF.PSQ_FB_VD := BEPSQ_CAD.Text;
  REC_SHE_DEF.PSQ_FB_PK := BEPSQ_CAD.Text;
  REC_SHE_DEF.PSQ_FB_FK := EmptyStr;

  { ÂNCORAS PRINCIPAIS }
  { Situações }
  REC_SHE_DEF.PSQ_FB_DEST       := EmptyStr; { Descrição }
  REC_SHE_DEF.PSQ_FB_STFI := EmptyStr; { Descrição Abreviada }

  { Empresas }
  REC_SHE_DEF.PSQ_FB_EP := EmptyStr; { Empresa }
  REC_SHE_DEF.PSQ_FB_CF := EmptyStr; { Fabricante }

  { Produtos }
  REC_SHE_DEF.PSQ_FB_CP_ARTIGO := EmptyStr; { Artigo }
  REC_SHE_DEF.PSQ_FB_CP_SKU    := EmptyStr; { SKU }
  REC_SHE_DEF.PSQ_FB_CP_NCM    := EmptyStr; { NCM }
  REC_SHE_DEF.PSQ_FB_CP_DGCP   := EmptyStr; { Grade }
  REC_SHE_DEF.PSQ_FB_CP_DECP   := EmptyStr; { Nome / Descrição }
  REC_SHE_DEF.PSQ_FB_CP_DCCP   := EmptyStr; { Composição }

  { Lista Digitada }
  if REC_SHE_DEF.PSQ_FB_SL_PK = Nil then
  REC_SHE_DEF.PSQ_FB_SL_PK := TStringList.Create else
  REC_SHE_DEF.PSQ_FB_SL_PK.Clear;

  if (REC_SHE_DEF.PSQ_FB_VD <> EmptyStr) and (REC_SHE_DEF.PSQ_FB_VD <> '0') then
  begin
    { SEARCH DEFAULT }
    REC_SHE_DEF.PSQ_FB_PD := False; { Padrão }

    { Capturar as palavras separadamente }
    While Length(REC_SHE_DEF.PSQ_FB_VD) > 0 do
    begin
      REC_SHE_DEF.PSQ_FB_FK := Trim(Fetch(REC_SHE_DEF.PSQ_FB_VD    ,' '));
      REC_SHE_DEF.PSQ_FB_FK := oStrTran(REC_SHE_DEF.PSQ_FB_FK, '+' ,' ');
      REC_SHE_DEF.PSQ_FB_SL_PK.Add(REC_SHE_DEF.PSQ_FB_FK);

      with SQLConsulta do
      begin
        { Descrição Situação }
        if (REC_SHE_DEF.PSQ_FB_DEST = EmptyStr) and (REC_SHE_DEF.PSQ_FB_FK <> EmptyStr) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT FIRST 1 FK.ID FROM TAB_STA_PED AS FK');
          SQL.Add('WHERE  FK.DESCRICAO LIKE ''' + REC_SHE_DEF.PSQ_FB_FK + '%''');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.PSQ_FB_DEST := REC_SHE_DEF.PSQ_FB_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.PSQ_FB_SL_PK.Delete(REC_SHE_DEF.PSQ_FB_SL_PK.IndexOf(REC_SHE_DEF.PSQ_FB_FK)); { Array }
            REC_SHE_DEF.PSQ_FB_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;

        { Grade }
        if (REC_SHE_DEF.PSQ_FB_CP_DGCP = EmptyStr) and (Length(REC_SHE_DEF.PSQ_FB_FK) > 3) then
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT   FIRST 1 FK.ID FROM CAD_PRO AS FK');
          SQL.Add('WHERE    FK.DGCP CONTAINING ''' + REC_SHE_DEF.PSQ_FB_FK + '''');
          SQL.Add('ORDER BY FK.DTEV DESC');
          ExecQuery;

          if not Eof then
          begin
            REC_SHE_DEF.PSQ_FB_SC      := True; { Sub Query }
            REC_SHE_DEF.PSQ_FB_CP_DGCP := REC_SHE_DEF.PSQ_FB_FK; { Campo }

            { Descarte }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK, '+' ,' '); { Concatenado }
            REC_SHE_DEF.PSQ_FB_PK := oStrTran(REC_SHE_DEF.PSQ_FB_PK,REC_SHE_DEF.PSQ_FB_FK,'' ); { Pesquisa Principal }

            REC_SHE_DEF.PSQ_FB_SL_PK.Delete(REC_SHE_DEF.PSQ_FB_SL_PK.IndexOf(REC_SHE_DEF.PSQ_FB_FK)); { Array }
            REC_SHE_DEF.PSQ_FB_FK := EmptyStr; { Sub Pesquisa }
          end;
        end;
      end;
    end;
  end;

  { Pesquisa }
  try
    oLockWindowUpdate; { Trava }

    { Pronta Entrega }
    with EST_EPE do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT    GEN_ID(IDG_SEQ_PRO,1) AS ID,');
      SQL.Add('          E.EF_IDEP,E.EF_SGEP,');
      SQL.Add('          E.CDEV   ,E.DEEV   ,PK.REST,');

      SQL.Add('          PK.IDCP,PK.SKU,PK.CEAN   ,PK.CF_SKU,PK.CF_NCM,PK.CF_CEAN,');
      SQL.Add('          PK.DGCP,PK.GRD_SG AS DSCP,');

      SQL.Add('          NULLIF(E.EPE_QTDE,0) AS EPE_QTDE,NULLIF(E.EPE_QTRL,0) AS EPE_QTRL,');
      SQL.Add('          NULLIF(E.EEP_QTDE,0) AS EEP_QTDE,NULLIF(E.EEP_QTRL,0) AS EEP_QTRL,');
      SQL.Add('          E.EPC_CTNR');

      SQL.Add('FROM      CAD_PRO AS PK');
      SQL.Add('LEFT JOIN VW_PSQ_CAD_PRO_EST_SLD_NEW AS E ON (E.IDCP = PK.IDCP AND E.LG_IDEP = :VW_IDEP)');
      SQL.Add('WHERE     PK.IDAK = :IDAK');

      { Grade }
      if REC_SHE_DEF.PSQ_FB_CP_DGCP <> EmptyStr then
      SQL.Add('AND PK.DGCP LIKE ''' + REC_SHE_DEF.PSQ_FB_CP_DGCP + '%''');

      { Situação }
      if REC_SHE_DEF.PSQ_FB_DEST <> EmptyStr then
      begin
        SQL.Add(IFThen(Pos('WHERE',EST_EPE.SQL.Text) = 0,'WHERE','AND'));
        SQL.Add('PK.DEST LIKE ''' + REC_SHE_DEF.PSQ_FB_DEST + '%''');
      end else
      begin
        SQL.Add(IFThen(Pos('WHERE',EST_EPE.SQL.Text) = 0,'WHERE','AND'));
        SQL.Add('PK.CDST <> 43 AND PK.CDST <> 85');
      end;
      SQL.Add('ORDER BY E.DTEV DESC');

      { Empresa Logada }
      ParamByName('VW_IDEP').Value := RECParametros.ID;
      Open;
    end;

    { Físico }
    with EST_EFI do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID  ,PK.IDEP,PK.SGEP,PK.DTEV,');
      SQL.Add('       PK.LGCA,PK.DTCA,');

      SQL.Add('       PK.EST_CDRO,EST_DSRO,PK.EST_DERO,PK.EST_DECE,');

      SQL.Add('       PK.EST_CDET,PK.EST_CTNR,PK.EST_LOTE,');
      SQL.Add('       PK.IDCP,PK.SKU ,PK.DGCP,PK.DSCP,');
      SQL.Add('       PK.QTDE,PK.QTRL,');
      SQL.Add('       PK.INFADCAD');

      SQL.Add('FROM   VW_PSQ_CAD_PRO_EST_EFI AS PK');
      SQL.Add('WHERE  PK.IDEP    = :VW_IDEP');
      SQL.Add('AND    PK.IDAK    = :IDAK');
      SQL.Add('AND    PK.EST_EFI = 1');

      { Grade }
      if REC_SHE_DEF.PSQ_FB_CP_DGCP <> EmptyStr then
      SQL.Add('AND      PK.DGCP  LIKE ''' + REC_SHE_DEF.PSQ_FB_CP_DGCP + '%''');
      SQL.Add('ORDER BY PK.DTEV DESC');

      { Empresa Logada }
      ParamByName('VW_IDEP').Value := RECParametros.ID;
      Open;
    end;

    { Antecipado }
    with EST_EAT do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID  ,PK.IDEP,PK.SGEP,PK.DTEV,');
      SQL.Add('       PK.LGCA,PK.DTCA,');

      SQL.Add('       PK.EST_CDRO,EST_DSRO,PK.EST_DERO,PK.EST_DECE,');

      SQL.Add('       PK.EST_CDET,PK.EST_CTNR,PK.EST_LOTE,');
      SQL.Add('       PK.IDCP,PK.SKU ,PK.DGCP,PK.DSCP,');
      SQL.Add('       PK.QTDE,PK.QTRL,');
      SQL.Add('       PK.INFADCAD');

      SQL.Add('FROM   VW_PSQ_CAD_PRO_EST_EFI AS PK');
      SQL.Add('WHERE  PK.IDEP    = :VW_IDEP');
      SQL.Add('AND    PK.IDAK    = :IDAK');
      SQL.Add('AND    PK.EST_EAT = 1');

      { Grade }
      if REC_SHE_DEF.PSQ_FB_CP_DGCP <> EmptyStr then
      SQL.Add('AND      PK.DGCP  LIKE ''' + REC_SHE_DEF.PSQ_FB_CP_DGCP + '%''');
      SQL.Add('ORDER BY PK.DTEV DESC');

      { Empresa Logada }
      ParamByName('VW_IDEP').Value := RECParametros.ID;
      Open;
    end;

    { Substituto }
    with EST_ESU do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID  ,PK.IDEP,PK.SGEP,PK.DTEV,');
      SQL.Add('       PK.LGCA,PK.DTCA,');

      SQL.Add('       PK.EST_CDRO,EST_DSRO,PK.EST_DERO,PK.EST_DECE,');

      SQL.Add('       PK.EST_CDET,PK.EST_CTNR,PK.EST_LOTE,');
      SQL.Add('       PK.IDCP,PK.SKU ,PK.DGCP,PK.DSCP,');
      SQL.Add('       PK.QTDE,PK.QTRL,');
      SQL.Add('       PK.INFADCAD');

      SQL.Add('FROM   VW_PSQ_CAD_PRO_EST_EFI AS PK');
      SQL.Add('WHERE  PK.IDEP    = :VW_IDEP');
      SQL.Add('AND    PK.IDAK    = :IDAK');
      SQL.Add('AND    PK.EST_ESU = 1');
      SQL.Add('AND    PK.EST_EFI = 0');

      { Grade }
      if REC_SHE_DEF.PSQ_FB_CP_DGCP <> EmptyStr then
      SQL.Add('AND      PK.DGCP  LIKE ''' + REC_SHE_DEF.PSQ_FB_CP_DGCP + '%''');
      SQL.Add('ORDER BY PK.DTEV DESC');

      { Empresa Logada }
      ParamByName('VW_IDEP').Value := RECParametros.ID;
      Open;
    end;

    { Piloto }
    with EST_EPI do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID  ,PK.IDEP,PK.SGEP,PK.DTEV,');
      SQL.Add('       PK.LGCA,PK.DTCA,');

      SQL.Add('       PK.EST_CDRO,EST_DSRO,PK.EST_DERO,PK.EST_DECE,');

      SQL.Add('       PK.EST_CDET,PK.EST_CTNR,PK.EST_LOTE,');
      SQL.Add('       PK.IDCP,PK.SKU ,PK.DGCP,PK.DSCP,');
      SQL.Add('       PK.QTDE,PK.QTRL,');
      SQL.Add('       PK.INFADCAD');

      SQL.Add('FROM   VW_PSQ_CAD_PRO_EST_EFI AS PK');
      SQL.Add('WHERE  PK.IDEP    = :VW_IDEP');
      SQL.Add('AND    PK.IDAK    = :IDAK');
      SQL.Add('AND    PK.EST_EPI = 1');

      { Grade }
      if REC_SHE_DEF.PSQ_FB_CP_DGCP <> EmptyStr then
      SQL.Add('AND      PK.DGCP  LIKE ''' + REC_SHE_DEF.PSQ_FB_CP_DGCP + '%''');
      SQL.Add('ORDER BY PK.DTEV DESC');

      { Empresa Logada }
      ParamByName('VW_IDEP').Value := RECParametros.ID;
      Open;
    end;

    { Revisado }
    with EST_ERV do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID  ,PK.IDEP,PK.SGEP,PK.DTEV,');
      SQL.Add('       PK.LGCA,PK.DTCA,');

      SQL.Add('       PK.EST_CDRO,EST_DSRO,PK.EST_DERO,PK.EST_DECE,');

      SQL.Add('       PK.EST_CDET,PK.EST_CTNR,PK.EST_LOTE,');
      SQL.Add('       PK.IDCP,PK.SKU ,PK.DGCP,PK.DSCP,');
      SQL.Add('       PK.QTDE,PK.QTRL,');
      SQL.Add('       PK.INFADCAD');

      SQL.Add('FROM   VW_PSQ_CAD_PRO_EST_EFI AS PK');
      SQL.Add('WHERE  PK.IDEP    = :VW_IDEP');
      SQL.Add('AND    PK.IDAK    = :IDAK');
      SQL.Add('AND    PK.EST_EPI = 1');
      SQL.Add('AND    PK.EST_ERV = 1'); 

      { Grade }
      if REC_SHE_DEF.PSQ_FB_CP_DGCP <> EmptyStr then
      SQL.Add('AND      PK.DGCP  LIKE ''' + REC_SHE_DEF.PSQ_FB_CP_DGCP + '%''');
      SQL.Add('ORDER BY PK.DTEV DESC');

      { Empresa Logada }
      ParamByName('VW_IDEP').Value := RECParametros.ID;
      Open;
    end;

    { Compras Abertas }
    with EST_CPA do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID  ,PK.IDEP,PK.SGEP,PK.DTEV,');
      SQL.Add('       PK.IDPK,PK.DEPK,PK.DSPK,');
      SQL.Add('       PK.EST_CTNR    ,PK.CTNR_PPRD,PK.CTNR_PEMB,PK.CTNR_PDSB,PK.CTNR_PCHP,');
      SQL.Add('       PK.DECD,PK.GPCD,');
      SQL.Add('       PK.ABCR,PK.DECV,');

      SQL.Add('       PK.IDCP,PK.SKU ,PK.DGCP,PK.DSCP,');
      SQL.Add('       PK.QTDE,PK.QTRL,');
      SQL.Add('       PK.QTSP,PK.RLSP,');
      SQL.Add('       PK.CF_VPRC_PAD_ORI,PK.CF_VPRC_COM,');

      SQL.Add('       PK.STPD,PK.D_STCO,');
      SQL.Add('       PK.STFI,PK.BQST');

      SQL.Add('FROM   VW_PSQ_CAD_PRO_EST_EPC AS PK');
      SQL.Add('WHERE  PK.IDEP = :VW_IDEP');
      SQL.Add('AND    PK.IDAK = :IDAK');

      { Grade }
      if REC_SHE_DEF.PSQ_FB_CP_DGCP <> EmptyStr then
      SQL.Add('AND PK.DGCP LIKE ''' + REC_SHE_DEF.PSQ_FB_CP_DGCP + '%''');

      { Situação }
      if REC_SHE_DEF.PSQ_FB_DEST <> EmptyStr then
      SQL.Add('AND      PK.DEST LIKE ''' + REC_SHE_DEF.PSQ_FB_DEST + '%''');
      SQL.Add('ORDER BY PK.DTEV DESC');

      { Empresa Logada }
      ParamByName('VW_IDEP').Value := RECParametros.ID;
      Open;
    end;

    { Compras Fechadas }
    with EST_CPF do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID  ,PK.IDEP,EP.FANTASIA_SIGLA AS SGEP,PK.DTEV,');
      SQL.Add('       PK.IDPK AS IDPK,PK.DEPK AS DEPK ,PK.DTCA AS  DSPK,');
      SQL.Add('       PK.CTNR AS PED_CTNR,PK.CTNR_RPRD,PK.CTNR_REMB,PK.CTNR_RDSB,PK.CTNR_RCHP,');
      SQL.Add('       CD.FANTASIA AS DECD      ,CD.GRUPO AS GPCD,');
      SQL.Add('       CR.FANTASIA_ABREV AS ABCR,CV.LOGIN AS DECV,');

      SQL.Add('       FK.IDCP,FK.SKU ,FK.DGCP,CP.GRD_SG AS DSCP,');
      SQL.Add('       FK.QTDE,FK.QTRL,');
      SQL.Add('       FK.QTSP,FK.RLSP,');
      SQL.Add('       TRIM(CAST(IIF(FK.ORIG = 1,''USD'',''R$'') AS VARCHAR(3))) AS VPRC_PAD_ORI,');
      SQL.Add('       FK.VPRC_COM,');

      SQL.Add('       PK.STPD,PK.STCO AS D_STCO,');
      SQL.Add('       PK.STFI,PK.BQST');

      SQL.Add('FROM ' + oREPZero('PED_COM_CAB','_',RECParametros.VW_IDEP,3) + ' AS PK');
      SQL.Add('JOIN ' + oREPZero('PED_COM_ITE','_',RECParametros.VW_IDEP,3) + ' AS FK ON (FK.IDPK = PK.IDPK)');

      SQL.Add('JOIN   TAB_PAR_SIS AS EP ON (EP.ID   = PK.IDEP)');

      SQL.Add('JOIN   CAD_FOR  AS CD ON (CD.IDCD = PK.IDCD)');
      SQL.Add('JOIN   TAB_USER AS CV ON (CV.IDLG = PK.IDCV)');
      SQL.Add('JOIN   CAD_REP  AS CR ON (CR.IDCR = PK.IDCR)');
      SQL.Add('JOIN   CAD_PRO  AS CP ON (CP.IDCP = FK.IDCP)');

      SQL.Add('WHERE  FK.IDAK = :IDAK');
      SQL.Add('AND    FK.REST LIKE ''FIM%''');

      { Grade }
      if REC_SHE_DEF.PSQ_FB_CP_DGCP <> EmptyStr then
      SQL.Add('AND      FK.DGCP LIKE ''' + REC_SHE_DEF.PSQ_FB_CP_DGCP + '%''');
      SQL.Add('ORDER BY FK.DTEV DESC');
      Open;
    end;

    { Vends Pronta Entrega }
    with EST_EPV do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID  ,PK.IDEP,PK.SGEP,PK.DTEV,');
      SQL.Add('       PK.IDPK,PK.DEPK,PK.DSPK,');
      SQL.Add('       PK.DECD,PK.GPCD,');
      SQL.Add('       PK.ABCR,PK.DECV,');

      SQL.Add('       PK.IDCP,PK.SKU ,PK.DGCP,PK.DSCP,');
      SQL.Add('       PK.QTDE,PK.QTRL,');
      SQL.Add('       PK.QTSP,PK.RLSP,');
      SQL.Add('       PK.VPRC_COM    ,');

      SQL.Add('       PK.STPD,PK.D_STCO,');
      SQL.Add('       PK.STFI,PK.BQST');

      SQL.Add('FROM   VW_PSQ_CAD_PRO_EST_EPV AS PK');
      SQL.Add('WHERE  PK.IDEP = :VW_IDEP');
      SQL.Add('AND    PK.IDAK = :IDAK');

      { Grade }
      if REC_SHE_DEF.PSQ_FB_CP_DGCP <> EmptyStr then
      SQL.Add('AND PK.DGCP LIKE ''' + REC_SHE_DEF.PSQ_FB_CP_DGCP + '%''');

      { Situação }
      if REC_SHE_DEF.PSQ_FB_DEST <> EmptyStr then
      SQL.Add('AND      PK.DEST    LIKE ''' + REC_SHE_DEF.PSQ_FB_DEST + '%''');
      SQL.Add('ORDER BY PK.DTEV DESC');

      { Empresa Logada }
      ParamByName('VW_IDEP').Value := RECParametros.ID;
      Open;
    end;

    { Vendas Separadas }
    with EST_ESP do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID  ,PK.IDEP,PK.SGEP,PK.DTEV,');
      SQL.Add('       PK.IDPK,PK.DEPK,PK.DSPK,');
      SQL.Add('       PK.LGSP,PK.DSSP,');
      SQL.Add('       PK.DECD,PK.GPCD,');
      SQL.Add('       PK.ABCR,PK.DECV,');

      SQL.Add('       PK.ITEM,PK.EST_CDET,PK.EST_LOTE,PK.EST_MAPA,PK.EST_CDI,PK.EST_CTNR,');

      SQL.Add('       PK.IDCP,PK.SKU ,PK.DGCP,PK.DSCP,');
      SQL.Add('       PK.QTDE,PK.QTRL,');
      SQL.Add('       PK.QTSP,PK.RLSP,');
      SQL.Add('       PK.VPRC_COM    ,');

      SQL.Add('       PK.STPD,PK.D_STCO,');
      SQL.Add('       PK.STFI,PK.BQST');

      SQL.Add('FROM   VW_PSQ_CAD_PRO_EST_ESP AS PK ');
      SQL.Add('WHERE  PK.IDEP = :VW_IDEP');
      SQL.Add('AND    PK.IDAK = :IDAK');

      { Grade }
      if REC_SHE_DEF.PSQ_FB_CP_DGCP <> EmptyStr then
      SQL.Add('AND PK.DGCP LIKE ''' + REC_SHE_DEF.PSQ_FB_CP_DGCP + '%''');

      { Situação }
      if REC_SHE_DEF.PSQ_FB_DEST <> EmptyStr then
      SQL.Add('AND      PK.DEST LIKE ''' + REC_SHE_DEF.PSQ_FB_DEST + '%''');
      SQL.Add('ORDER BY PK.DTEV DESC');

      { Empresa Logada }
      ParamByName('VW_IDEP').Value := RECParametros.VW_IDEP;
      Open;
    end;

    { Vendas Programadas }
    with EST_EPP do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PK.ID  ,PK.IDEP,PK.SGEP,PK.DTEV,');
      SQL.Add('       PK.IDPK,PK.DEPK,PK.DSPK,');
      SQL.Add('       PK.DECD,PK.GPCD,');
      SQL.Add('       PK.ABCR,PK.DECV,');

      SQL.Add('       PK.EST_CTNR,');
      SQL.Add('       PK.IDCP,PK.SKU ,PK.DGCP,PK.DSCP,');
      SQL.Add('       PK.QTDE,PK.QTRL,');
      SQL.Add('       PK.QTSP,PK.RLSP,');
      SQL.Add('       PK.VPRC_COM,    ');

      SQL.Add('       PK.STPD,PK.D_STCO,');
      SQL.Add('       PK.STFI,PK.BQST');

      SQL.Add('FROM   VW_PSQ_CAD_PRO_EST_EPP AS PK');
      SQL.Add('WHERE  PK.IDEP = :VW_IDEP');
      SQL.Add('AND    PK.IDAK = :IDAK');

      { Grade }
      if REC_SHE_DEF.PSQ_FB_CP_DGCP <> EmptyStr then
      SQL.Add('AND PK.DGCP LIKE ''' + REC_SHE_DEF.PSQ_FB_CP_DGCP + '%''');

      { Situação }
      if REC_SHE_DEF.PSQ_FB_DEST <> EmptyStr then
      SQL.Add('AND      PK.DEST    LIKE ''' + REC_SHE_DEF.PSQ_FB_DEST + '%''');
      SQL.Add('ORDER BY PK.DTEV DESC');

      { Empresa Logada }
      ParamByName('VW_IDEP').Value := RECParametros.ID;
      Open;
    end;

    { Ficha Técnica }
    with CAD_PRO_FIC do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT FIRST 1');
      SQL.Add('       PK.IDCP,PK.UCOM,');

      SQL.Add('       NULLIF(PK.MPESO ,0) AS MPESO ,NULLIF(PK.MPSCN ,0) AS MPSCN ,NULLIF(PK.MPSBR,0) AS MPSBR,');
      SQL.Add('       NULLIF(PK.MMETRO,0) AS MMETRO,NULLIF(PK.MGRAMA,0) AS MGRAMA,NULLIF(PK.MREND,0) AS MREND,');
      SQL.Add('       NULLIF(PK.MLGRT ,0) AS MLGRT ,NULLIF(PK.MLGRU ,0) AS MLGRU ,');
      SQL.Add('       NULLIF(PK.MELAL ,0) AS MELAL ,NULLIF(PK.MELAC ,0) AS MELAC ,');
      SQL.Add('       NULLIF(PK.MENCL ,0) AS MENCL ,NULLIF(PK.MENCC ,0) AS MENCC ,');

      SQL.Add('       ''('' || PK.UCOM || '') '' || PK.UCDBE_NO AS UCDBE_NO,');
      SQL.Add('       NULLIF(PK.UQTDE,0) AS UQTDE,NULLIF(PK.UQTDE_VEN_MUL,0) AS UQTDE_VEN_MUL,');
      SQL.Add('       PK.MABNT_NO,');

      SQL.Add('       NULLIF(TRIM(CAST(');

      SQL.Add('       ASCII_CHAR(13) || ASCII_CHAR(10) ||');

      SQL.Add('       ''Composição Têxtil ...: '' || COALESCE(PK.DCCP     ,'''') || ASCII_CHAR(13) || ASCII_CHAR(10) || ASCII_CHAR(13)  || ASCII_CHAR(10) ||');

      SQL.Add('       ''Gramatura ...: ''         || COALESCE(PK.MGRAMA_NO,'''') || ASCII_CHAR(13) || ASCII_CHAR(10) ||');
      SQL.Add('       ''Encolhimento ...: ''      || COALESCE(PK.MENC_NO  ,'''') || ASCII_CHAR(13) || ASCII_CHAR(10) ||');
      SQL.Add('       ''Norma Técnica ...: ''     || COALESCE(PK.MABNT_NO ,'''') || ASCII_CHAR(13) || ASCII_CHAR(10) || ASCII_CHAR(13)  || ASCII_CHAR(10) ||');

      SQL.Add('       ''Conteúdo ...: ''          || COALESCE(PK.UCON     ,'''')');

      SQL.Add('       AS VARCHAR(512))),'''') AS INFADCPL,');
      SQL.Add('       PK.INFADCAD');

      SQL.Add('FROM   VW_PSQ_CAD_PRO  AS PK ');
      SQL.Add('WHERE  PK.IDAK = :IDAK');
      Open;
    end;

    { Consulta Principal }
    with Consulta do
    begin
      Close;
      SQL.Clear;

      { RECURSIVE INI }
      SQL.Add('WITH RECURSIVE PK');
      SQL.Add('AS (');

      SQL.Add('SELECT PK.IDAK,PK.IDEP,PK.DEEP,PK.IDCF,PK.DECF,');
      SQL.Add('       PK.DTEV,PK.REST,');

      SQL.Add('       PK.ARTIGO,PK.CEAN,PK.CF_SKU,PK.CF_CEAN,');
      SQL.Add('       PK.FIS_NCM,PK.FIS_PIPI ,');
      SQL.Add('       PK.DECP,PK.DCCP,PK.DSCP,');

      SQL.Add('       PK.COL_NO,PK.SEG_NO,');
      SQL.Add('       PK.GRP_NO,PK.SGP_NO,');
      SQL.Add('       PK.CAT_NO,PK.SCT_NO,');

      SQL.Add('       PK.FIS_ORIG ,PK.FIS_XORIG,');
      SQL.Add('       PK.FIS_XPAIS,PK.FIS_FPAIS,');
      SQL.Add('       PK.INFADCAD');

      SQL.Add('FROM   VW_PSQ_CAD_PRO AS PK');

      { Inicialização }
      if REC_SHE_DEF.PSQ_FB_PD then { Padrão }
      begin
        SQL.Add('WHERE PK.IDCP = 0');
      end;

      { Situação }
      if REC_SHE_DEF.PSQ_FB_DEST <> EmptyStr then
      begin
        SQL.Add(IFThen(Pos('WHERE',Consulta.SQL.Text) = 0,'WHERE','AND'));
        SQL.Add('PK.DEST LIKE ''' + REC_SHE_DEF.PSQ_FB_DEST + '%''');
      end;

      { Situação Abreviada }
      if REC_SHE_DEF.PSQ_FB_STFI <> EmptyStr then
      begin
        SQL.Add(IFThen(Pos('WHERE',Consulta.SQL.Text) = 0,'WHERE','AND'));
        SQL.Add('PK.STFI LIKE ''' + REC_SHE_DEF.PSQ_FB_STFI + '%''');
      end;

      { Período }
      if (BDPSQ_PER_INI.Date > 0) and (BDPSQ_PER_FIM.Date > 0) then
      begin
        SQL.Add(IFThen(Pos('WHERE',Consulta.SQL.Text) = 0,'WHERE','AND'));
        SQL.Add(BBPSQ_PER_MENU.Description + ' BETWEEN ''' + FormatDateTime('mm/dd/yy',BDPSQ_PER_INI.Date) +  ''' AND ''' + FormatDateTime('mm/dd/yy',BDPSQ_PER_FIM.Date) + '''');
      end;

      SQL.Add('),'); { RECURSIVE FIM }

      { CTE INI }
      SQL.Add('CTE_PSQ');
      SQL.Add('AS    (');

      if REC_SHE_DEF.PSQ_FB_SL_PK.Count = 0 then
         SQL.Add('SELECT PK.* FROM PK') else
      begin
        { Âncora Principal }
        { Pedido }
        SQL.Add('SELECT PK.* FROM PK');
        SQL.Add('WHERE  PK.ARTIGO LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[0] + '%''');

        for i := 0 to REC_SHE_DEF.PSQ_FB_SL_PK.Count - 1 do
        begin
          { Apenas Números }
          if oBSONumero(REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i]) then
          begin
            { NCM }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.NCM = ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '''');

            { EAN-13 }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.CEAN = ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '''');
          end else

          begin
            { Descrição }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.DECP CONTAINING ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '''');

            { Composição }
            SQL.Add('UNION  ALL');
            SQL.Add('SELECT PK.* FROM PK');
            SQL.Add('WHERE  PK.DCCP LIKE ''' + REC_SHE_DEF.PSQ_FB_SL_PK.Strings[i] + '%''');
          end;
        end;
      end;

      SQL.Add(')'); { CTE FIM }

      { CTE SELECT }
      SQL.Add('SELECT     DISTINCT');
      SQL.Add('           PK.IDAK   ,PK.IDEP,PK.DEEP,PK.IDCF,PK.DECF,');
      SQL.Add('           PK.ARTIGO ,PK.DECP,');
      SQL.Add('           PK.FIS_NCM,PK.FIS_PIPI,');

      SQL.Add('           NULLIF(TRIM(CAST(ASCII_CHAR(13) || ASCII_CHAR(10) ||');
      SQL.Add('           ''Origem da Mercadoria ...: ''  || PK.FIS_XPAIS   || IIF(PK.FIS_ORIG < 2,'''','' - '' || PK.FIS_XORIG) || '' - ''  || PK.FIS_FPAIS || ASCII_CHAR(13) || ASCII_CHAR(10) || ASCII_CHAR(13) || ASCII_CHAR(10) ||');

      SQL.Add('           ''Coleções ...: ''      || COALESCE(PK.COL_NO    ,'''') || ASCII_CHAR(13) || ASCII_CHAR(10) ||');
      SQL.Add('           ''Segmentos ...: ''     || COALESCE(PK.SEG_NO    ,'''') || ASCII_CHAR(13) || ASCII_CHAR(10) ||');

      SQL.Add('           ''Grupos ...: ''        || COALESCE(PK.GRP_NO    ,'''') || IIF(PK.SGP_NO     IS NOT NULL,'', '' || PK.SGP_NO    ,'''') || ASCII_CHAR(13) || ASCII_CHAR(10) ||');
      SQL.Add('           ''Categorias ...: ''    || COALESCE(PK.CAT_NO    ,'''') || IIF(TB_SCT.SCT_NO IS NOT NULL,'', '' || TB_SCT.SCT_NO,'''') || ASCII_CHAR(13) || ASCII_CHAR(10) ||');
      SQL.Add('           ''Market Places ...: '' || COALESCE(TB_MKP.MKP_NO,'''')');

      SQL.Add('           AS VARCHAR(812))),'''') AS INFADCAD,');

      SQL.Add('           MIN(PK.REST) OVER(PARTITION BY PK.IDAK) AS REST');

      SQL.Add('FROM       CTE_PSQ AS PK');
      SQL.Add('LEFT  JOIN VW_PSQ_CAD_PRO_SCT AS TB_SCT ON (TB_SCT.IDAK = PK.IDAK)');
      SQL.Add('LEFT  JOIN VW_PSQ_CAD_PRO_MKP AS TB_MKP ON (TB_MKP.IDAK = PK.IDAK)');


      { Sub Query }
      if REC_SHE_DEF.PSQ_FB_SC then
      begin
        SQL.Add('WHERE EXISTS');
        SQL.Add('(');

        SQL.Add('SELECT FK.IDPK FROM CAD_PRO AS FK');
        SQL.Add('WHERE  FK.IDAK = PK.IDAK');

        { Grade }
        if REC_SHE_DEF.PSQ_FB_CP_DGCP <> EmptyStr then
           SQL.Add('AND FK.DGCP CONTAINING ''' + REC_SHE_DEF.PSQ_FB_CP_DGCP + '''');

        SQL.Add(')');
      end;

      SQL.Add('ORDER BY  PK.DTEV DESC');
      Prepare;
      Open;
    end;
  finally
    HCDSPrincipal1Consulta.Tag    := IFThen(Screen.Height > 864,350,250) + DPPrincipal1Titulo.Height;
    HCDSPrincipal1Consulta.Height := HCDSPrincipal1Consulta.Tag + IFThen(CAD_PRO_FICMABNT_NO.AsString <> EmptyStr,45,0);


    { DOCK MANAGER }
    { Rodapé }
    FDockControlPrincipal1RodapeLE := VCDSPrincipal1RodapeLE.Tag; { EST_EPE }
    VCDSPrincipal1RodapeLE.Tag     := DBGEST_EPESKU.Width       + DBGEST_EPEEF_SGEP.Width  + 5 + { Produtos }
                                      DBGEST_EPEEPE_QTDE.Width  + DBGEST_EPEEPE_QTRL.Width + 5 + { Saldo Disponível }

    IFThen(DBGEST_EPEREST.Visible,DBGEST_EPEREST.Width,0)       + 5 + { Situação }
    IFThen(DBGEST_EPE.Bands[1].Visible,DBGEST_EPEDSCP.Width   + DBGEST_EPEDGCP.Width  ,00) + 5 + { Grade }
    IFThen(DBGEST_EPE.Bands[3].Visible,DBGEST_EPEEEP_QTDE.Width + DBGEST_EPEEEP_QTRL.Width,45) + 5 ; { Saldo Programado }
//    IFThen(DBGEST_EPE.Bands[4].Visible,120,0); { Eventos }

    VCDSPrincipal1RodapeLE.Tag := IFThen(VCDSPrincipal1RodapeLE.Tag < 400,400,VCDSPrincipal1RodapeLE.Tag);

    if FDockControlPrincipal1RodapeLE <> VCDSPrincipal1RodapeLE.Tag then
    begin
      VCDSPrincipal1RodapeLE.HelpContext := 0;
      _SetDockControl(VCDSPrincipal1RodapeLE,VCDSPrincipal1RodapeLE.Tag,lHorizontal,True ,True);

      TCDSPrincipal1RodapeLE.HelpContext := 0;
      _SetDockControl(TCDSPrincipal1RodapeLE,VCDSPrincipal1RodapeLE.Tag,lHorizontal,False,True);


      DPPrincipal1RodapeLEB.HelpContext := 0;
      _SetDockControl(DPPrincipal1RodapeLEB,DPPrincipal1RodapeLEB.Tag ,lVertical  ,True ,True);
    end;

    { CONSULTA }
    DBGConsulta.Filter.Clear; { Filters }
    DBGConsultaDECP.Field.FocusControl; { Focused }

    { Estoque Pronta Entrega }
    DBGEST_EPE.Filter.Clear; { Filters }
    if EST_EPEDGCP.AsString <> EmptyStr then { Focused }
    DBGEST_EPEDGCP.Field.FocusControl else { Grade }
    DBGEST_EPESKU.Field.FocusControl; { SKU }

    { Estoque Físico }
    DBGEST_EFI.Filter.Clear; { Filters }
    if EST_EFIDGCP.AsString <> EmptyStr then { Focused }
    DBGEST_EFIDGCP.Field.FocusControl else { Grade }
    DBGEST_EFISKU.Field.FocusControl; { SKU }

    { Estoque Antecipado }
    DBGEST_EAT.Filter.Clear; { Filters }
    if EST_EATDGCP.AsString <> EmptyStr then { Focused }
    DBGEST_EATDGCP.Field.FocusControl else { Grade }
    DBGEST_EATSKU.Field.FocusControl; { SKU }

    { Estoque Substituto }
    DBGEST_ESU.Filter.Clear; { Filters }
    if EST_ESUDGCP.AsString <> EmptyStr then { Focused }
    DBGEST_ESUDGCP.Field.FocusControl else { Grade }
    DBGEST_ESUSKU.Field.FocusControl; { SKU }

    { Estoque Piloto }
    DBGEST_EPI.Filter.Clear; { Filters }
    if EST_EPIDGCP.AsString <> EmptyStr then { Focused }
    DBGEST_EPIDGCP.Field.FocusControl else { Grade }
    DBGEST_EPISKU.Field.FocusControl; { SKU }

    { Estoque Revisado }
    DBGEST_ERV.Filter.Clear; { Filters }
    if EST_ERVDGCP.AsString <> EmptyStr then { Focused }
    DBGEST_ERVDGCP.Field.FocusControl else { Grade }
    DBGEST_ERVSKU.Field.FocusControl; { SKU }

    { Compras Abertas }
    DBGEST_CPA.Filter.Clear; { Filters }
    if EST_CPADGCP.AsString <> EmptyStr then { Focused }
    DBGEST_CPADGCP.Field.FocusControl else { Grade }
    DBGEST_CPASKU.Field.FocusControl; { SKU }

    { Compras Fechadas }
    DBGEST_CPF.Filter.Clear; { Filters }
    if EST_CPFDGCP.AsString <> EmptyStr then { Focused }
    DBGEST_CPFDGCP.Field.FocusControl else { Grade }
    DBGEST_CPFSKU.Field.FocusControl; { SKU }

    { Vendas Pronta Entrega }
    DBGEST_EPV.Filter.Clear; { Filters }
    if EST_EPVDGCP.AsString <> EmptyStr then { Focused }
    DBGEST_EPVDGCP.Field.FocusControl else { Grade }
    DBGEST_EPVSKU.Field.FocusControl; { SKU }

    { Vendas Separadas }
    DBGEST_ESP.Filter.Clear; { Filters }
    if EST_ESPDGCP.AsString <> EmptyStr then { Focused }
    DBGEST_ESPDGCP.Field.FocusControl else { Grade }
    DBGEST_ESPSKU.Field.FocusControl; { SKU }

    { Vendas Programadas }
    DBGEST_EPP.Filter.Clear; { Filters }
    if EST_EPPDGCP.AsString <> EmptyStr then { Focused }
    DBGEST_EPPDGCP.Field.FocusControl else { Grade }
    DBGEST_EPPSKU.Field.FocusControl; { SKU }

    if Consulta.RecNo > 0 then
    begin
      { PAGES MANAGER }
      { Estoque }
      if EST_EPECDEV.AsInteger = 8 then
      begin
        TCDSPrincipal1Rodape.ActiveChildIndex := 0; 
        TCDSEST_EFI.ActiveChildIndex := 1; { Antecipado }
      end else

      if EST_EPECDEV.AsInteger = 10 then
      begin
        TCDSPrincipal1Rodape.ActiveChildIndex := 0; 
        TCDSEST_EFI.ActiveChildIndex := 2; { Substituto }
      end else

      if EST_EPECDEV.AsInteger = 12 then
      begin
        TCDSPrincipal1Rodape.ActiveChildIndex := 0; 
        TCDSEST_EFI.ActiveChildIndex := 3; { Piloto }
      end else

      if EST_EPECDEV.AsInteger = 16 then
      begin
        TCDSPrincipal1Rodape.ActiveChildIndex := 0;
        TCDSEST_EFI.ActiveChildIndex := 4; { Revisado }
      end else

      if EST_EPECDEV.AsInteger = 17 then
      begin
        TCDSPrincipal1Rodape.ActiveChildIndex := 0;
        TCDSEST_EFI.ActiveChildIndex := 4; { Defeito }
      end else

      { Vendas }
      if EST_EPECDEV.AsInteger = 26 then
      begin
        TCDSPrincipal1Rodape.ActiveChildIndex := 1; 
        TCDSEST_PDV.ActiveChildIndex := 0; { Pronta Entrega }
      end else

      if EST_EPECDEV.AsInteger = 27 then
      begin
        TCDSPrincipal1Rodape.ActiveChildIndex := 1;
        TCDSEST_PDV.ActiveChildIndex := 1; { Separadas }
      end else

      if EST_EPECDEV.AsInteger = 24 then
      begin
        TCDSPrincipal1Rodape.ActiveChildIndex := 1;
        TCDSEST_PDV.ActiveChildIndex := 2; { Programadas }
      end else

      if EST_EPECDEV.AsInteger = 25 then
      begin
        TCDSPrincipal1Rodape.ActiveChildIndex := 1;
        TCDSEST_PDV.ActiveChildIndex := 2; { Reserva de Containers }
      end else

      { Compras }
      if EST_EPECDEV.AsInteger = 23 then
      begin
        TCDSPrincipal1Rodape.ActiveChildIndex := 2;
        if EST_CPFDTEV.AsDateTime > EST_CPADTEV.AsDateTime then
        TCDSEST_PDC.ActiveChildIndex := 1 else
        TCDSEST_PDC.ActiveChildIndex := 0;
      end else

      { Físico }
      begin
        TCDSPrincipal1Rodape.ActiveChildIndex := 0;
        TCDSEST_EFI.ActiveChildIndex := 0;
      end;

      { Estoque Pronta Entrega }
      TCDSPrincipal1RodapeLE.ActiveChildIndex := 0;
      PostMessage(TWinControl(DBGEST_EPE).Handle, WM_SETFOCUS, 0, 0);
      TWinControl(DBGEST_EPE).SetFocus;
    end else
    begin
      { Pesquisa }
      DPPrincipal1Consulta1.Caption := 'Registro(s) não Encontrado(s)';
      BEPSQ_CAD.SetFocus(False);
    end;

    if TCDSPrincipal.Tag = 0 then
    begin
      TCDSPrincipal1Rodape.HelpContext := 0;
      _SetDockControl(TCDSPrincipal1Rodape,DSPrincipal1.Width - VCDSPrincipal1RodapeLE.Tag,lHorizontal,False,True);
    end;

    oUnLockWindowUpdate; { Destrava }
  end;
end;

procedure TFrmCAD_PRO_ADM.ConsultaBeforeClose(DataSet: TDataSet);
begin
  CAD_PRO_FIC.Close; { Ficha Técnica }

  { Estoque }
  EST_EPE.Close; { Pronta Entrega }
  EST_EFI.Close; { Físico }
  EST_EAT.Close; { Antecipado }
  EST_ESU.Close; { Substituto }
  EST_ERV.Close; { Revisado }
  EST_EPI.Close; { Piloto }

  { Compras }
  EST_CPA.Close; { Aberto  }
  EST_CPF.Close; { Fechado }

  { Vendas }
  EST_EPV.Close; { Pronta Entrega }
  EST_ESP.Close; { Separadas }
  EST_EPP.Close; { Programados }
end;

procedure TFrmCAD_PRO_ADM.ConsultaAfterOpen(DataSet: TDataSet);
begin
  { Ficha Técnica }
  if CAD_PRO_FIC.State = dsInactive then
  begin
    CAD_PRO_FIC.Prepare;
    CAD_PRO_FIC.Open;
  end;

  { Estoque Pronta Entrega }
  if EST_EPE.State = dsInactive then
  begin
    EST_EPE.Prepare;
    EST_EPE.Open;
  end;

  { Estoque Físico }
  if EST_EFI.State = dsInactive then
  begin
    EST_EFI.Prepare;
    EST_EFI.Open;
  end;

  { Estoque Anteciipado }
  if EST_EAT.State = dsInactive then
  begin
    EST_EAT.Prepare;
    EST_EAT.Open;
  end;

  { Estoque Substituto }
  if EST_ESU.State = dsInactive then
  begin
    EST_ESU.Prepare;
    EST_ESU.Open;
  end;

  { Estoque Piloto }
  if EST_EPI.State = dsInactive then
  begin
    EST_EPI.Prepare;
    EST_EPI.Open;
  end;

  { Estoque Revisado }
  if EST_ERV.State = dsInactive then
  begin
    EST_ERV.Prepare;
    EST_ERV.Open;
  end;

  { Compras Abertas }
  if EST_CPA.State = dsInactive then
  begin
    EST_CPA.Prepare;
    EST_CPA.Open;
  end;

  { Compras Fechadas }
  if EST_CPF.State = dsInactive then
  begin
    EST_CPF.Prepare;
    EST_CPF.Open;
  end;

  { Vendas Pronta Entrega }
  if EST_EPV.State = dsInactive then
  begin
    EST_EPV.Prepare;
    EST_EPV.Open;
  end;

  { Vendas Separadas }
  if EST_ESP.State = dsInactive then
  begin
    EST_ESP.Prepare;
    EST_ESP.Open;
  end;

  { Vendas Programadas }
  if EST_EPP.State = dsInactive then
  begin
    EST_EPP.Prepare;
    EST_EPP.Open;
  end;
end;

procedure TFrmCAD_PRO_ADM.DTSConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  if Consulta.State <> dsInactive then
  begin
    { VER TAM TELA }
    { Largura }
    DBGConsultaDECP.MinWidth := IFThen(Screen.Width > 864,400,200); { Descrição }

    { FIT }
    DBGConsulta.ApplyBestFit(DBGConsultaARTIGO); { Artigos }
    DBGConsulta.ApplyBestFit(DBGConsultaDECP  ); { Descrição }
    DBGConsulta.ApplyBestFit(DBGConsultaDECF  ); { Fabricante }
    DBGConsulta.ApplyBestFit(DBGConsultaDEEP  ); { Revendedor }
  end;
end;

procedure TFrmCAD_PRO_ADM.DBGConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    { SITUAÇÕES  }
    { Pré Cadastro }
    if ANode.Values[DBGConsultaREST.Index] = 'PRÉ' then
       AFont.Color := $00C8F0F0;

    { Cancelados }
    if (ANode.Values[DBGConsultaREST.Index] = 'C') then
        AFont.Color := $000024B3 else

    { Inativos }
    if (ANode.Values[DBGConsultaREST.Index] = 'I') then
        AFont.Color := $00002EE6;

    { Fora de Linha }
    if (ANode.Values[DBGConsultaREST.Index] = 'FORA L') then
        AFont.Color := $00002EE6;

    { Fora de Prazo }
    if (ANode.Values[DBGConsultaREST.Index] = 'FORA P') then
        AFont.Color := $00002EE6;

    { Suspenso }
    if (ANode.Values[DBGConsultaREST.Index] = 'S') then
        AFont.Color := $00002EE6;

    { VIP }
    if ANode.Values[DBGConsultaREST.Index] = 'VIP' then
       AFont.Color := clPurple;

    { IPI }
    if AColumn = DBGConsultaFIS_PIPI then
    if ANode.Values[DBGConsultaFIS_PIPI.Index] <> Null then
    if ANode.Values[DBGConsultaFIS_PIPI.Index]  > 0    then
    begin
      AFont.Color := $000024B3;
      AFont.Name  := 'Segoe UI Semibold';
      AFont.Style := [fsBold];
    end;
  end;

  if ANode.Selected then
  begin
    { Pré Cadastro }
    if ANode.Values[DBGConsultaREST.Index] = 'PRÉ' then
    begin
      AColor      := $00C8F0F0;
      AFont.Color := clWindowText;
    end else

    { Cancelados }
    if ANode.Values[DBGConsultaREST.Index] = 'C' then
    begin
      AColor      := $000024B3;
      AFont.Color := clHighlightText;
    end else

    { Inativos }
    if ANode.Values[DBGConsultaREST.Index] = 'I' then
    begin
      AColor      := $00002EE6;
      AFont.Color := clHighlightText;
    end else

    { Fora de Linha }
    if ANode.Values[DBGConsultaREST.Index] = 'FORA L' then
    begin
      AColor      := $00002EE6;
      AFont.Color := clHighlightText;
    end else

    { Fora de Prazo }
    if ANode.Values[DBGConsultaREST.Index] = 'FORA P' then
    begin
      AColor      := $00002EE6;
      AFont.Color := clHighlightText;
    end else

    { Suspenso }
    if ANode.Values[DBGConsultaREST.Index] = 'S' then
    begin
      AColor      := $00002EE6;
      AFont.Color := clHighlightText;
    end else

    { Fora de Linha }
    if ANode.Values[DBGConsultaREST.Index] = 'VIP' then
    begin
      AColor      := clPurple;
      AFont.Color := clHighlightText;
    end else
    begin
    //  AColor      := $00750000;//$00400000;
    //  AFont.Color := clHighlightText;
    end;
  end;

  if ASelected then
  begin
    AColor      := clHighlight; //$00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;

procedure TFrmCAD_PRO_ADM.DBGConsultaDblClick(Sender: TObject);
begin
  ACTEEdit.Execute;
end;

procedure TFrmCAD_PRO_ADM.DBGConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
       VK_insert: ACTEAppend.Execute;
       vk_return: ACTEEdit.Execute;
       VK_delete: ACTEDelete.Execute;
       VK_escape: ACTECancel.Execute;
  end;
end;

procedure TFrmCAD_PRO_ADM.CAD_PRO_FICAfterOpen(DataSet: TDataSet);
begin
  { Focused }
  if CAD_PRO_FICMGRAMA.AsFloat > 0 then
  DBGCAD_PRO_FICMGRAMA.Field.FocusControl else

  if (CAD_PRO_FICUCOM.AsString = 'M') and (CAD_PRO_FICMGRAMA.AsFloat > 0) then
  DBGCAD_PRO_FICMMETRO.Field.FocusControl else

  if CAD_PRO_FICMPESO.AsFloat > 0 then
  DBGCAD_PRO_FICMPESO.Field.FocusControl else

  if CAD_PRO_FICMMETRO.AsFloat > 0 then
  DBGCAD_PRO_FICMMETRO.Field.FocusControl;
end;

procedure TFrmCAD_PRO_ADM.CAD_PRO_FICCalcFields(DataSet: TDataSet);
begin
  CAD_PRO_FICC_UQTDE.Value := FormatFloat(',##,0.00',CAD_PRO_FICUQTDE.AsFloat) + ' x ' + CAD_PRO_FICUQTDE_VEN_MUL.AsString;
end;

procedure TFrmCAD_PRO_ADM.CAD_PRO_PRCAfterOpen(DataSet: TDataSet);
begin
  { Focused }
  DBGCAD_PRO_PRCC_CF_VPRC_PAD.Field.FocusControl; { Preço Atacado }
end;

procedure TFrmCAD_PRO_ADM.CAD_PRO_PRCCalcFields(DataSet: TDataSet);
begin
  CAD_PRO_PRCC_CF_VPRC_PAD.Value := FormatFloat(CAD_PRO_PRCCF_VPRC_ORI.AsString + ' ,##,0.00#',CAD_PRO_PRCCF_VPRC_PAD.AsFloat);
end;

procedure TFrmCAD_PRO_ADM.DTSCAD_PRO_IMGDataChange(Sender: TObject;
  Field: TField);
begin
  if Consulta.State <> dsInactive then
  begin
    PNLCAD_PRO_IMG_PIX.Caption := _oLoadJPG(CAD_PRO_IMGIMG_ID,CAD_PRO_IMGIMG_PAD,IMGCAD_PRO_IMG_PAD,True); { True - força visualização }

    DBCAD_PRO_IMG_ILA1.Hint := CAD_PRO_IMGD_ILA_INS1.AsString;
    DBCAD_PRO_IMG_ILA2.Hint := CAD_PRO_IMGD_ILA_INS2.AsString;
    DBCAD_PRO_IMG_ILA3.Hint := CAD_PRO_IMGD_ILA_INS3.AsString;
    DBCAD_PRO_IMG_ILA4.Hint := CAD_PRO_IMGD_ILA_INS4.AsString;
    DBCAD_PRO_IMG_ILA5.Hint := CAD_PRO_IMGD_ILA_INS5.AsString;
    DBCAD_PRO_IMG_ILA6.Hint := CAD_PRO_IMGD_ILA_INS6.AsString;
    DBCAD_PRO_IMG_ILA7.Hint := CAD_PRO_IMGD_ILA_INS7.AsString;
    DBCAD_PRO_IMG_ILA8.Hint := CAD_PRO_IMGD_ILA_INS8.AsString;

    BVCAD_PRO_IMG_ILA1.Hint := DBCAD_PRO_IMG_ILA1.Hint;
    BVCAD_PRO_IMG_ILA2.Hint := DBCAD_PRO_IMG_ILA2.Hint;
    BVCAD_PRO_IMG_ILA3.Hint := DBCAD_PRO_IMG_ILA3.Hint;
    BVCAD_PRO_IMG_ILA4.Hint := DBCAD_PRO_IMG_ILA4.Hint;
    BVCAD_PRO_IMG_ILA5.Hint := DBCAD_PRO_IMG_ILA5.Hint;
    BVCAD_PRO_IMG_ILA6.Hint := DBCAD_PRO_IMG_ILA6.Hint;
    BVCAD_PRO_IMG_ILA7.Hint := DBCAD_PRO_IMG_ILA7.Hint;
    BVCAD_PRO_IMG_ILA8.Hint := DBCAD_PRO_IMG_ILA8.Hint;
  end;
end;

procedure TFrmCAD_PRO_ADM.EST_EPEBeforeOpen(DataSet: TDataSet);
begin
  { COLUMNS }
  DBGEST_EPEREST.Visible    := False; { Situação }
  DBGEST_EPEEF_SGEP.Visible := False; { Local }

  { BANDS }
  DBGEST_EPE.Bands[1].Visible := False; { Grade }
  DBGEST_EPE.Bands[3].Visible := False; { Saldo Programado }
  DBGEST_EPE.Bands[4].Visible := False; { Eventos }

  { TAM PAD }
  DBGEST_EPEREST.Width := 45; { Situação }
end;

procedure TFrmCAD_PRO_ADM.EST_EPEBeforeClose(DataSet: TDataSet);
begin
  CAD_PRO_PRC.Close; { Tabela de Preços }
  CAD_PRO_IMG.Close; { Catálogos }
end;

procedure TFrmCAD_PRO_ADM.EST_EPEAfterOpen(DataSet: TDataSet);
begin
  { Tabela de Preços }
  if CAD_PRO_PRC.State = dsInactive then
  begin
    CAD_PRO_PRC.Prepare;
    CAD_PRO_PRC.Open;
  end;

  { Catálogo }
  if  CAD_PRO_IMG.State = dsInactive then
  begin
    CAD_PRO_IMG.Prepare;
    CAD_PRO_IMG.Open;
  end;
end;

procedure TFrmCAD_PRO_ADM.EST_EPEAfterScroll(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  begin
    { Situação }
    if EST_EPEREST.AsString <> 'A' then
    DBGEST_EPEREST.Visible := True;

    { Local }
    if (EST_EPEEF_SGEP.AsString <> EmptyStr) and (EST_EPEEF_SGEP.AsString <> RECParametros.SGEP) then
    DBGEST_EPEEF_SGEP.Visible := True;

    { Grade }
    if EST_EPEDGCP.AsString <> EmptyStr then
    DBGEST_EPE.Bands[1].Visible := True;

    { Saldo Programado }
    if EST_EPEEEP_QTDE.AsFloat <> 0 then
    DBGEST_EPE.Bands[3].Visible := True;

    { Eventos }
    if EST_EPEDEEV.AsString <> EmptyStr then
    DBGEST_EPE.Bands[4].Visible := True;
  end;
end;

procedure TFrmCAD_PRO_ADM.EST_EPECalcFields(DataSet: TDataSet);
begin
  EST_EPEC_ID.Value := EST_EPE.RecNo;
end;

procedure TFrmCAD_PRO_ADM.DBGEST_EPECustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  { TAM GRADE }
  if AColumn = DBGEST_EPEDGCP then
  if lENGTH(ANode.Values[DBGEST_EPEDGCP.Index]) > 20 then
     AFont.Size := 8;

  if not ASelected then
  begin
    { SITUAÇÕES  }
    { Pré Cadastro }
    if AColumn = DBGEST_EPEREST then
    if ANode.Values[DBGEST_EPEREST.Index] = 'PRÉ' then
       AFont.Color := $00C8F0F0 else

    { Cancelados }
    if ANode.Values[DBGEST_EPEREST.Index] = 'C' then
       AFont.Color := $000024B3 else

    { Fora Linha / Prazo }
    if LeftStr(ANode.Values[DBGEST_EPEREST.Index],1) = 'F' then
       AFont.Color := $000024B3 else

    { Inativos }
    if ANode.Values[DBGEST_EPEREST.Index] = 'I' then
       AFont.Color := $00002EE6 else

    { Suspenso }
    if ANode.Values[DBGEST_EPEREST.Index] = 'S' then
       AFont.Color := $00002EE6 else

    { Exclusivo }
    if ANode.Values[DBGEST_EPEREST.Index] = 'VIP' then
       AFont.Color := clPurple;

    { Estoque Pronta Entrega }
    if (AColumn = DBGEST_EPEEPE_QTDE) or (AColumn = DBGEST_EPEEPE_QTRL) then
    if (ANode.Values[DBGEST_EPEEPE_QTDE.Index] <> Null) then

    
    { Estoque Programado }
    if (AColumn = DBGEST_EPEEEP_QTDE) or (AColumn = DBGEST_EPEEEP_QTRL) then
    if (ANode.Values[DBGEST_EPEEEP_QTDE.Index] <> Null) then
    begin
      AColor      := clInfoBk; //$00FCFEF1; //$00FFFFD2; //$00FFFFE1;
      AFont.Color := clWindowText;

      if (ANode.Values[DBGEST_EPEEEP_QTDE.Index] <  0) then
          AFont.Color := $000024B3;
    end;
  end;

  if ANode.Selected then
  begin
    { Pré Cadastro }
    if ANode.Values[DBGEST_EPEREST.Index] = 'PRÉ' then
    begin
      AColor      := $00C8F0F0;
      AFont.Color := clWindowText;
    end else

    { Cancelados }
    if ANode.Values[DBGEST_EPEREST.Index] = 'C' then
    begin
      AColor      := $000024B3;
      AFont.Color := clHighlightText;
    end else

    { Fora de Linha / Prazo }
    if LeftStr(ANode.Values[DBGEST_EPEREST.Index],1) = 'F' then
    begin
      AColor      := $000024B3;
      AFont.Color := clHighlightText;
    end else

    { Inativos }
    if ANode.Values[DBGEST_EPEREST.Index] = 'I' then
    begin
      AColor      := $00002EE6;
      AFont.Color := clHighlightText;
    end else

    { Suspenso }
    if ANode.Values[DBGEST_EPEREST.Index] = 'S' then
    begin
      AColor      := $00002EE6;
      AFont.Color := clHighlightText;
    end else

    { Exclusivo }
    if ANode.Values[DBGEST_EPEREST.Index] = 'VIP' then
    begin
      AColor      := clPurple;
      AFont.Color := clHighlightText;
    end else
    begin
      AColor      := $00750000;//$00400000;
      AFont.Color := clHighlightText;
    end;
  end;

  if ASelected then
  begin
    AColor      := clHighlight; //$00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;

procedure TFrmCAD_PRO_ADM.DBGEST_EPE_CPLCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
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

procedure TFrmCAD_PRO_ADM.EST_EFIBeforeOpen(DataSet: TDataSet);
begin
  DBGEST_EFISGEP.Visible   := False; { Local     }
//  DBGEST_EFICTNR.Visible      := False; { Container }
//  DBGEST_EFILOTE.Visible      := False; { Lote      }
  DBGEST_EFIEST_DERO.Visible      := False; { Número    }
  DBGEST_EFIEST_DECE.Visible      := False; { Emitente  }
  DBGEST_EFI.Bands[1].Visible := False; { Grade     }
end;

procedure TFrmCAD_PRO_ADM.EST_EFIAfterScroll(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  begin
    { Local }
    if (EST_EFISGEP.AsString <> EmptyStr) and (EST_EFISGEP.AsString <> RECParametros.SGEP) then
    DBGEST_EFISGEP.Visible := True;

    { Container
    if EST_EFICTNR.AsString <> EmptyStr then
    DBGEST_EFICTNR.Visible := True;
    }

    { Lote
    if EST_EFILOTE.AsString <> EmptyStr then
    DBGEST_EFILOTE.Visible := True;
    }

    { Número }
    if (EST_EFIEST_DERO.AsString <> EmptyStr) and (EST_EFIEST_DERO.AsString <> EST_EFIEST_CDRO.AsString) then
    DBGEST_EFIEST_DERO.Visible := True;

    { Emitente }
    if EST_EFIEST_DECE.AsString <> EmptyStr then
    DBGEST_EFIEST_DECE.Visible := True;

    { Grade }
    if EST_EFIDGCP.AsString <> EmptyStr then
    DBGEST_EFI.Bands[1].Visible := True;
  end;
end;

procedure TFrmCAD_PRO_ADM.EST_EFICalcFields(DataSet: TDataSet);
begin
  EST_EFIC_ID.Value := EST_EFI.RecNo;
end;

procedure TFrmCAD_PRO_ADM.DTSEST_EFIDataChange(Sender: TObject;
  Field: TField);
begin
  if Consulta.State <> dsInactive then
  begin
    { FIT }
    DBGEST_EFI.ApplyBestFit(DBGEST_EFISKU ); { SKU }
    DBGEST_EFI.ApplyBestFit(DBGEST_EFIEST_DERO); { Documento }
    DBGEST_EFI.ApplyBestFit(DBGEST_EFIEST_DECE); { Emitente  }

    { Grade }
    DBGEST_EFI.ApplyBestFit(DBGEST_EFIDSCP );
    DBGEST_EFI.ApplyBestFit(DBGEST_EFIDGCP );

    { VER TAM TELA  }
    { Largura }
    DBGEST_EFIDGCP.Width := IFThen(Screen.Width           > 1536    ,DBGEST_EFIDGCP.Width,
                              IFThen(DBGEST_EFIDGCP.Width > 150 ,150,DBGEST_EFIDGCP.Width)); { Grade }
  end;
end;

procedure TFrmCAD_PRO_ADM.DBGEST_EFICustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  { TAM GRADE }
  if AColumn = DBGEST_EFIDGCP then
  if lENGTH(ANode.Values[DBGEST_EFIDGCP.Index]) > 20 then
     AFont.Size := 8;

  if not ASelected then
  begin
    { Zebra }
    if ANode.Values[DBGEST_EFIC_ID.Index] <> Null then
    if ANode.Values[DBGEST_EFIC_ID.Index] mod 2 <> 0 then
       AColor := $00F0F0F0 else
       AColor := clHighLightText;

    { Lançamentos }
    if (AColumn = DBGEST_EFIQTDE) or (AColumn = DBGEST_EFIQTRL) then
    if (ANode.Values[DBGEST_EFIQTDE.Index] <> Null) then
    begin
      AColor      := $00FAFEE9;
      AFont.Color := clWindowText;

      if (ANode.Values[DBGEST_EFIQTDE.Index] <  0) then
      AFont.Color := $000024B3;
    end;
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

procedure TFrmCAD_PRO_ADM.EST_EATBeforeOpen(DataSet: TDataSet);
begin
  DBGEST_EATSGEP.Visible   := False; { Local     }
  DBGEST_EATEST_CTNR.Visible      := False; { Container }
  DBGEST_EATEST_LOTE.Visible      := False; { Lote      }
  DBGEST_EATEST_DERO.Visible      := False; { Número    }
  DBGEST_EATEST_DECE.Visible      := False; { Emitente  }
  DBGEST_EAT.Bands[1].Visible := False; { Grade     }
end;

procedure TFrmCAD_PRO_ADM.EST_EATAfterScroll(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  begin
    { Local }
    if (EST_EATSGEP.AsString <> EmptyStr) and (EST_EATSGEP.AsString <> RECParametros.SGEP) then
    DBGEST_EATSGEP.Visible := True;

    { Container }
    if EST_EATEST_CTNR.AsString <> EmptyStr then
    DBGEST_EATEST_CTNR.Visible := True;

    { Lote }
    if EST_EATEST_LOTE.AsString <> EmptyStr then
    DBGEST_EATEST_LOTE.Visible := True;

    { Número }
    if (EST_EATEST_DERO.AsString <> EmptyStr) and (EST_EATEST_DERO.AsString <> EST_EATEST_CDRO.AsString) then
    DBGEST_EATEST_DERO.Visible := True;

    { Emitente }
    if EST_EATEST_DECE.AsString <> EmptyStr then
    DBGEST_EATEST_DECE.Visible := True;

    { Grade }
    if EST_EATDGCP.AsString <> EmptyStr then
    DBGEST_EAT.Bands[1].Visible := True;
  end;
end;

procedure TFrmCAD_PRO_ADM.EST_EATCalcFields(DataSet: TDataSet);
begin
  EST_EATC_ID.Value := EST_EAT.RecNo;
end;

procedure TFrmCAD_PRO_ADM.DTSEST_EATDataChange(Sender: TObject;
  Field: TField);
begin
  if Consulta.State <> dsInactive then
  begin
    { FIT }
    DBGEST_EAT.ApplyBestFit(DBGEST_EATSKU    ); { SKU     }
    DBGEST_EAT.ApplyBestFit(DBGEST_EATEST_DERO); { Documento }
    DBGEST_EAT.ApplyBestFit(DBGEST_EATEST_DECE); { Emitente  }

    { Grade }
    DBGEST_EAT.ApplyBestFit(DBGEST_EATDSCP );
    DBGEST_EAT.ApplyBestFit(DBGEST_EATDGCP );

    { VER TAM TELA  }
    { Largura }
    DBGEST_EATDGCP.Width := IFThen(Screen.Width           > 1536    ,DBGEST_EATDGCP.Width,
                              IFThen(DBGEST_EATDGCP.Width > 150 ,150,DBGEST_EATDGCP.Width)); { Grade }
  end;
end;

procedure TFrmCAD_PRO_ADM.DBGEST_EATCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  { TAM GRADE }
  if AColumn = DBGEST_EATDGCP then
  if lENGTH(ANode.Values[DBGEST_EATDGCP.Index]) > 20 then
     AFont.Size := 8;

  if not ASelected then
  begin
    { Zebra }
    if ANode.Values[DBGEST_EATC_ID.Index] <> Null then
    if ANode.Values[DBGEST_EATC_ID.Index] mod 2 <> 0 then
       AColor := $00F0F0F0 else
       AColor := clHighLightText;

    { Lançamentos }
    if (AColumn = DBGEST_EATQTDE) or (AColumn = DBGEST_EATQTRL) then
    if (ANode.Values[DBGEST_EATQTDE.Index] <> Null) then
    begin
      AColor      := $00FAFEE9;
      AFont.Color := clWindowText;

      if (ANode.Values[DBGEST_EATQTDE.Index] <  0) then
      AFont.Color := $000024B3;
    end;
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

procedure TFrmCAD_PRO_ADM.EST_ESUBeforeOpen(DataSet: TDataSet);
begin
  DBGEST_ESUSGEP.Visible   := False; { Local     }
  DBGEST_ESUEST_CTNR.Visible      := False; { Container }
  DBGEST_ESUEST_LOTE.Visible      := False; { Lote      }
  DBGEST_ESUEST_DERO.Visible      := False; { Número    }
  DBGEST_ESUEST_DECE.Visible      := False; { Emitente  }
  DBGEST_ESU.Bands[1].Visible := False; { Grade     }
end;

procedure TFrmCAD_PRO_ADM.EST_ESUAfterScroll(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  if EST_ESU.State  <> dsInactive then
  if EST_ESU.RecNo   > 0 then
  begin
    { Local }
    if (EST_ESUSGEP.AsString <> EmptyStr) and (EST_ESUSGEP.AsString <> RECParametros.SGEP) then
    DBGEST_ESUSGEP.Visible := True;

    { Container }
    if EST_ESUEST_CTNR.AsString <> EmptyStr then
    DBGEST_ESUEST_CTNR.Visible := True;

    { Lote }
    if EST_ESUEST_LOTE.AsString <> EmptyStr then
    DBGEST_ESUEST_LOTE.Visible := True;

    { Número }
    if (EST_ESUEST_DERO.AsString <> EmptyStr) and (EST_ESUEST_DERO.AsString <> EST_ESUEST_CDRO.AsString) then
    DBGEST_ESUEST_DERO.Visible := True;

    { Emitente }
    if EST_ESUEST_DECE.AsString <> EmptyStr then
    DBGEST_ESUEST_DECE.Visible := True;

    { Grade }
    if EST_ESUDGCP.AsString <> EmptyStr then
    DBGEST_ESU.Bands[1].Visible := True;
  end;
end;

procedure TFrmCAD_PRO_ADM.EST_ESUCalcFields(DataSet: TDataSet);
begin
  EST_ESUC_ID.Value := EST_ESU.RecNo;
end;

procedure TFrmCAD_PRO_ADM.DTSEST_ESUDataChange(Sender: TObject;
  Field: TField);
begin
  if Consulta.State <> dsInactive then
  begin
    { FIT }
    DBGEST_ESU.ApplyBestFit(DBGEST_ESUSKU    ); { SKU     }
    DBGEST_ESU.ApplyBestFit(DBGEST_ESUEST_DERO); { Documento }
    DBGEST_ESU.ApplyBestFit(DBGEST_ESUEST_DECE); { Emitente  }

    { Grade }
    DBGEST_ESU.ApplyBestFit(DBGEST_ESUDSCP );
    DBGEST_ESU.ApplyBestFit(DBGEST_ESUDGCP );

    { VER TAM TELA  }
    { Largura }
    DBGEST_ESUDGCP.Width := IFThen(Screen.Width           > 1536    ,DBGEST_ESUDGCP.Width,
                              IFThen(DBGEST_ESUDGCP.Width > 150 ,150,DBGEST_ESUDGCP.Width)); { Grade }
  end;
end;

procedure TFrmCAD_PRO_ADM.DBGEST_ESUCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  { TAM GRADE }
  if AColumn = DBGEST_ESUDGCP then
  if lENGTH(ANode.Values[DBGEST_ESUDGCP.Index]) > 20 then
     AFont.Size := 8;

  if not ASelected then
  begin
    { Zebra }
    if ANode.Values[DBGEST_ESUC_ID.Index] <> Null then
    if ANode.Values[DBGEST_ESUC_ID.Index] mod 2 <> 0 then
       AColor := $00F0F0F0 else
       AColor := clHighLightText;

    { Lançamentos }
    if (AColumn = DBGEST_ESUQTDE) or (AColumn = DBGEST_ESUQTRL) then
    if (ANode.Values[DBGEST_ESUQTDE.Index] <> Null) then
    begin
      AColor      := $00FAFEE9;
      AFont.Color := clWindowText;

      if (ANode.Values[DBGEST_ESUQTDE.Index] <  0) then
      AFont.Color := $000024B3;
    end;
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

procedure TFrmCAD_PRO_ADM.EST_EPIBeforeOpen(DataSet: TDataSet);
begin
  DBGEST_EPISGEP.Visible   := False; { Local     }
  DBGEST_EPIEST_CTNR.Visible      := False; { Container }
  DBGEST_EPIEST_LOTE.Visible      := False; { Lote      }
  DBGEST_EPIEST_DERO.Visible      := False; { Número    }
  DBGEST_EPIEST_DECE.Visible      := False; { Emitente  }
  DBGEST_EPI.Bands[1].Visible := False; { Grade     }
end;

procedure TFrmCAD_PRO_ADM.EST_EPIAfterScroll(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  begin
    { Local }
    if (EST_EPISGEP.AsString <> EmptyStr) and (EST_EPISGEP.AsString <> RECParametros.SGEP) then
    DBGEST_EPISGEP.Visible := True;

    { Container }
    if EST_EPIEST_CTNR.AsString <> EmptyStr then
    DBGEST_EPIEST_CTNR.Visible := True;

    { Lote }
    if EST_EPIEST_LOTE.AsString <> EmptyStr then
    DBGEST_EPIEST_LOTE.Visible := True;

    { Número }
    if (EST_EPIEST_DERO.AsString <> EmptyStr) and (EST_EPIEST_DERO.AsString <> EST_EPIEST_CDRO.AsString) then
    DBGEST_EPIEST_DERO.Visible := True;

    { Emitente }
    if EST_EPIEST_DECE.AsString <> EmptyStr then
    DBGEST_EPIEST_DECE.Visible := True;

    { Grade }
    if EST_EPIDGCP.AsString <> EmptyStr then
    DBGEST_EPI.Bands[1].Visible := True;
  end;
end;

procedure TFrmCAD_PRO_ADM.EST_EPICalcFields(DataSet: TDataSet);
begin
  EST_EPIC_ID.Value := EST_EPI.RecNo;
end;

procedure TFrmCAD_PRO_ADM.DTSEST_EPIDataChange(Sender: TObject;
  Field: TField);
begin
  if Consulta.State <> dsInactive then
  begin
    { FIT }
    DBGEST_EPI.ApplyBestFit(DBGEST_EPISKU ); { SKU     }
    DBGEST_EPI.ApplyBestFit(DBGEST_EPIEST_DERO); { Documento }

    { Grade }
    DBGEST_EPI.ApplyBestFit(DBGEST_EPIDSCP );
    DBGEST_EPI.ApplyBestFit(DBGEST_EPIDGCP );

    { VER TAM TELA  }
    { Largura }
    DBGEST_EPIDGCP.Width := IFThen(Screen.Width           > 1536    ,DBGEST_EPIDGCP.Width,
                              IFThen(DBGEST_EPIDGCP.Width > 150 ,150,DBGEST_EPIDGCP.Width)); { Grade }
  end;
end;

procedure TFrmCAD_PRO_ADM.DBGEST_EPICustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  { TAM GRADE }
  if AColumn = DBGEST_EPIDGCP then
  if lENGTH(ANode.Values[DBGEST_EPIDGCP.Index]) > 20 then
     AFont.Size := 8;

  if not ASelected then
  begin
    { Zebra }
    if ANode.Values[DBGEST_EPIC_ID.Index] <> Null then
    if ANode.Values[DBGEST_EPIC_ID.Index] mod 2 <> 0 then
       AColor := $00F0F0F0 else
       AColor := clHighLightText;

    { Lançamentos }
    if (AColumn = DBGEST_EPIQTDE) or (AColumn = DBGEST_EPIQTRL) then
    if (ANode.Values[DBGEST_EPIQTDE.Index] <> Null) then
    begin
      AColor      := $00FAFEE9;
      AFont.Color := clWindowText;

      if (ANode.Values[DBGEST_EPIQTDE.Index] <  0) then
      AFont.Color := $000024B3;
    end;
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

procedure TFrmCAD_PRO_ADM.EST_ERVBeforeOpen(DataSet: TDataSet);
begin
  DBGEST_ERVSGEP.Visible   := False; { Local     }
  DBGEST_ERVEST_CTNR.Visible      := False; { Container }
  DBGEST_ERVEST_LOTE.Visible      := False; { Lote      }
  DBGEST_ERVEST_DERO.Visible      := False; { Número    }
  DBGEST_ERVEST_DECE.Visible      := False; { Emitente  }
  DBGEST_ERV.Bands[1].Visible := False; { Grade     }
end;

procedure TFrmCAD_PRO_ADM.EST_ERVAfterScroll(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  if EST_ERV.State  <> dsInactive then
  if EST_ERV.RecNo   > 0 then
  begin
    { Local }
    if (EST_ERVSGEP.AsString <> EmptyStr) and (EST_ERVSGEP.AsString <> RECParametros.SGEP) then
    DBGEST_ERVSGEP.Visible := True;

    { Container }
    if EST_ERVEST_CTNR.AsString <> EmptyStr then
    DBGEST_ERVEST_CTNR.Visible := True;

    { Lote }
    if EST_ERVEST_LOTE.AsString <> EmptyStr then
    DBGEST_ERVEST_LOTE.Visible := True;

    { Número }
    if (EST_ERVEST_DERO.AsString <> EmptyStr) and (EST_ERVEST_DERO.AsString <> EST_ERVEST_CDRO.AsString) then
    DBGEST_ERVEST_DERO.Visible := True;

    { Emitente }
    if EST_ERVEST_DECE.AsString <> EmptyStr then
    DBGEST_ERVEST_DECE.Visible := True;

    { Grade }
    if EST_ERVDGCP.AsString <> EmptyStr then
    DBGEST_ERV.Bands[1].Visible := True;
  end;
end;

procedure TFrmCAD_PRO_ADM.EST_ERVCalcFields(DataSet: TDataSet);
begin
  EST_ERVC_ID.Value := EST_ERV.RecNo;
end;

procedure TFrmCAD_PRO_ADM.DTSEST_ERVDataChange(Sender: TObject;
  Field: TField);
begin
  if Consulta.State <> dsInactive then
  begin
    { FIT }
    DBGEST_ERV.ApplyBestFit(DBGEST_ERVSKU ); { SKU       }
    DBGEST_ERV.ApplyBestFit(DBGEST_ERVEST_DERO); { Documento }
    DBGEST_ERV.ApplyBestFit(DBGEST_ERVEST_DECE); { Emitente  }

    { Grade }
    DBGEST_ERV.ApplyBestFit(DBGEST_ERVDSCP);
    DBGEST_ERV.ApplyBestFit(DBGEST_ERVDGCP);

    { VER TAM TELA  }
    { Largura }
    DBGEST_ERVDGCP.Width := IFThen(Screen.Width           > 1536    ,DBGEST_ERVDGCP.Width,
                              IFThen(DBGEST_ERVDGCP.Width > 150 ,150,DBGEST_ERVDGCP.Width)); { Grade }
  end;
end;

procedure TFrmCAD_PRO_ADM.DBGEST_ERVCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  { TAM GRADE }
  if AColumn = DBGEST_ERVDGCP then
  if lENGTH(ANode.Values[DBGEST_ERVDGCP.Index]) > 20 then
     AFont.Size := 8;

  if not ASelected then
  begin
    { Zebra }
    if ANode.Values[DBGEST_ERVC_ID.Index] <> Null then
    if ANode.Values[DBGEST_ERVC_ID.Index] mod 2 <> 0 then
       AColor := $00F0F0F0 else
       AColor := clHighLightText;

    { Lançamentos }
    if (AColumn = DBGEST_ERVQTDE) or (AColumn = DBGEST_ERVQTRL) then
    if (ANode.Values[DBGEST_ERVQTDE.Index] <> Null) then
    begin
      AColor      := $00FAFEE9;
      AFont.Color := clWindowText;

      if (ANode.Values[DBGEST_ERVQTDE.Index] <  0) then
      AFont.Color := $000024B3;
    end;
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

procedure TFrmCAD_PRO_ADM.EST_CPABeforeOpen(DataSet: TDataSet);
begin
  DBGEST_CPASGEP.Visible   := False; { Local       }
  DBGEST_CPAEST_CTNR.Visible      := False; { Container   }
  DBGEST_CPACTNR_PPRD.Visible := False; { Produção    }
  DBGEST_CPACTNR_PEMB.Visible := False; { Embarque    }
  DBGEST_CPACTNR_PDSB.Visible := False; { Desembarque }
  DBGEST_CPA.Bands[1].Visible := False; { Grade       }
end;

procedure TFrmCAD_PRO_ADM.EST_CPAAfterScroll(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  if EST_CPA.State  <> dsInactive then
  if EST_CPA.RecNo   > 0 then
  begin
    { Local }
    if (EST_CPASGEP.AsString <> EmptyStr) and (EST_CPASGEP.AsString <> RECParametros.SGEP) then
    DBGEST_CPASGEP.Visible := True;

    { Container }
    if EST_CPAEST_CTNR.AsString <> EmptyStr then
    DBGEST_CPAEST_CTNR.Visible  := True;

    { Produção }
    if (EST_CPACTNR_PPRD.AsDateTime > 0) and (EST_CPAEST_CTNR.AsString <> EmptyStr) then
    DBGEST_CPACTNR_PPRD.Visible := True;

    { Produção }
    if (EST_CPACTNR_PEMB.AsDateTime > 0) and (EST_CPAEST_CTNR.AsString <> EmptyStr) then
    DBGEST_CPACTNR_PEMB.Visible := True;

    { Produção }
    if (EST_CPACTNR_PDSB.AsDateTime > 0) and (EST_CPAEST_CTNR.AsString <> EmptyStr) then
    DBGEST_CPACTNR_PDSB.Visible := True;

    { Grade }
    if EST_CPADGCP.AsString <> EmptyStr then
    DBGEST_CPA.Bands[1].Visible := True;

    { Moeda }
    EST_CPACF_VPRC_COM.DisplayFormat          := EST_CPACF_VPRC_PAD_ORI.AsString + ' ,##,0.00'; { Tabela }
    DBGEST_CPACF_VPRC_COM.SummaryFooterFormat := EST_CPACF_VPRC_PAD_ORI.AsString + ' ,##,0.00'; { Grid }
    DBGEST_CPACF_VPRC_COM.Caption             := 'Preço ' + EST_CPACF_VPRC_PAD_ORI.AsString;
  end;
end;

procedure TFrmCAD_PRO_ADM.EST_CPACalcFields(DataSet: TDataSet);
begin
  EST_CPAC_ID.Value := EST_CPA.RecNo;
end;

procedure TFrmCAD_PRO_ADM.DTSEST_CPADataChange(Sender: TObject;
  Field: TField);
begin
  if Consulta.State <> dsInactive then
  begin
    { FIT }
    DBGEST_CPA.ApplyBestFit(DBGEST_CPASKU); { SKU }

    { Grade }
    DBGEST_CPA.ApplyBestFit(DBGEST_CPADSCP);
    DBGEST_CPA.ApplyBestFit(DBGEST_CPADGCP  );

    { VER TAM TELA  }
    { Largura }
    DBGEST_CPADGCP.Width := IFThen(Screen.Width         > 1536    ,DBGEST_CPADGCP.Width,
                            IFThen(DBGEST_CPADGCP.Width > 150 ,150,DBGEST_CPADGCP.Width)); { Grade }
  end;
end;

procedure TFrmCAD_PRO_ADM.DBGEST_CPACustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  { TAM GRADE }
  if AColumn = DBGEST_CPADGCP then
  if lENGTH(ANode.Values[DBGEST_CPADGCP.Index]) > 20 then
     AFont.Size := 8;

  if not ASelected then
  begin
    { Zebra }
    if ANode.Values[DBGEST_CPAC_ID.Index] <> Null then
    if ANode.Values[DBGEST_CPAC_ID.Index] mod 2 <> 0 then
       AColor := $00F0F0F0 else
       AColor := clHighLightText;

    { Compras Abertas }
    if (AColumn = DBGEST_CPAQTDE) or (AColumn = DBGEST_CPAQTRL) then
    if (ANode.Values[DBGEST_CPAQTDE.Index] <> Null) then
    begin
      AColor      := clInfoBk;
      AFont.Color := clWindowText;

      if (ANode.Values[DBGEST_CPAQTDE.Index] <  0) then
      AFont.Color := $000024B3;
    end;

    { Preços }
    if AColumn = DBGEST_CPACF_VPRC_COM then
    begin
      AColor      := clInfoBk;
      AFont.Color := clGrayText;
    end;

    { Compras Embarcadas }
    if (AColumn = DBGEST_CPAQTSP) or (AColumn = DBGEST_CPARLSP) then
    if (ANode.Values[DBGEST_CPAQTSP.Index] <> Null) then
    begin
      AColor      := $00FAFEE9;
      AFont.Color := clWindowText;

      if (ANode.Values[DBGEST_CPAQTSP.Index] <  0) then
      AFont.Color := $000024B3;
    end;

    { Containers }
    if (AColumn = DBGEST_CPACTNR_PCHP) or (AColumn = DBGEST_CPAEST_CTNR) then
    begin
      AColor      := $00FAFEE9;
      AFont.Color := clGrayText;
    end;
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

procedure TFrmCAD_PRO_ADM.EST_CPFBeforeOpen(DataSet: TDataSet);
begin
  DBGEST_CPFSGEP.Visible   := False; { Local       }
  DBGEST_CPFPED_CTNR.Visible      := False; { Container   }
  DBGEST_CPFCTNR_RPRD.Visible := False; { Produção    }
  DBGEST_CPFCTNR_REMB.Visible := False; { Embarque    }
  DBGEST_CPFCTNR_RDSB.Visible := False; { Desembarque }
  DBGEST_CPF.Bands[1].Visible := False; { Grade       }
end;

procedure TFrmCAD_PRO_ADM.EST_CPFAfterScroll(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  if EST_CPF.State  <> dsInactive then
  if EST_CPF.RecNo   > 0 then
  begin
    { Local }
    if (EST_CPFSGEP.AsString <> EmptyStr) and (EST_CPFSGEP.AsString <> RECParametros.SGEP) then
    DBGEST_CPFSGEP.Visible := True;

    { Container }
    if EST_CPFPED_CTNR.AsString <> EmptyStr then
    DBGEST_CPFPED_CTNR.Visible  := True;

    { Produção }
    if (EST_CPFCTNR_RPRD.AsDateTime > 0) and (EST_CPFPED_CTNR.AsString <> EmptyStr) then
    DBGEST_CPFCTNR_RPRD.Visible := True;

    { Produção }
    if (EST_CPFCTNR_REMB.AsDateTime > 0) and (EST_CPFPED_CTNR.AsString <> EmptyStr) then
    DBGEST_CPFCTNR_REMB.Visible := True;

    { Produção }
    if (EST_CPFCTNR_RDSB.AsDateTime > 0) and (EST_CPFPED_CTNR.AsString <> EmptyStr) then
    DBGEST_CPFCTNR_RDSB.Visible := True;

    { Grade }
    if EST_CPFDGCP.AsString <> EmptyStr then
    DBGEST_CPF.Bands[1].Visible := True;

    { Moeda }
    EST_CPFVPRC_COM.DisplayFormat          := EST_CPFVPRC_PAD_ORI.AsString + ' ,##,0.00'; { Tabela }
    DBGEST_CPFVPRC_COM.SummaryFooterFormat := EST_CPFVPRC_PAD_ORI.AsString + ' ,##,0.00'; { Grid }
    DBGEST_CPFVPRC_COM.Caption             := 'Preço ' + EST_CPFVPRC_PAD_ORI.AsString;
  end;
end;

procedure TFrmCAD_PRO_ADM.EST_CPFCalcFields(DataSet: TDataSet);
begin
  EST_CPFC_ID.Value := EST_CPF.RecNo;
end;

procedure TFrmCAD_PRO_ADM.DTSEST_CPFDataChange(Sender: TObject;
  Field: TField);
begin
  if Consulta.State <> dsInactive then
  begin
    { FIT }
    DBGEST_CPF.ApplyBestFit(DBGEST_CPFSKU); { SKU }

    { Grade }
    DBGEST_CPF.ApplyBestFit(DBGEST_CPFDSCP);
    DBGEST_CPF.ApplyBestFit(DBGEST_CPFDGCP  );

    { VER TAM TELA  }
    { Largura }
    DBGEST_CPFDGCP.Width := IFThen(Screen.Width         > 1536    ,DBGEST_CPFDGCP.Width,
                            IFThen(DBGEST_CPFDGCP.Width > 150 ,150,DBGEST_CPFDGCP.Width)); { Grade }
  end;
end;

procedure TFrmCAD_PRO_ADM.DBGEST_CPFCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  { TAM GRADE }
  if AColumn = DBGEST_CPFDGCP then
  if lENGTH(ANode.Values[DBGEST_CPFDGCP.Index]) > 20 then
     AFont.Size := 8;

  if not ASelected then
  begin
    { Compras Efetuadas }
    if (AColumn = DBGEST_CPFQTDE) or (AColumn = DBGEST_CPFQTRL) then
    if (ANode.Values[DBGEST_CPFQTDE.Index] <> Null) then
    begin
      AColor      := clInfoBk;
      AFont.Color := clWindowText;

      if (ANode.Values[DBGEST_CPFQTDE.Index] <  0) then
      AFont.Color := $000024B3;
    end;

    { Preços }
    if AColumn = DBGEST_CPFVPRC_COM then
    begin
      AColor      := clInfoBk;
      AFont.Color := clGrayText;
    end;

    { Compras Recebidas }
    if (AColumn = DBGEST_CPFQTSP) or (AColumn = DBGEST_CPFRLSP) or (AColumn = DBGEST_CPFVPRC_COM) then
    if (ANode.Values[DBGEST_CPFQTSP.Index] <> Null) then
    begin
      AColor      := $00FAFEE9;
      AFont.Color := clWindowText;

      if (ANode.Values[DBGEST_CPFQTSP.Index] <  0) then
      AFont.Color := $000024B3;
    end;

    { Containers }
    if (AColumn = DBGEST_CPFCTNR_RCHP) or (AColumn = DBGEST_CPFPED_CTNR) then
    begin
      AColor      := $00FAFEE9;
      AFont.Color := clGrayText;
    end;
  end;

  if ANode.Selected then
  begin
    AColor      := clWindowText; //$00750000;//$00400000;
    AFont.Color := clHighlightText;
  end;

  if ASelected then
  begin
    AColor      := clHighlight; //$00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;

procedure TFrmCAD_PRO_ADM.EST_EPVBeforeOpen(DataSet: TDataSet);
begin
  { COLUMNS }
  DBGEST_EPVSGEP.Visible := False; { Local }
  DBGEST_EPVSTPD.Visible    := False; { Tipo }
  DBGEST_EPVDECV.Visible    := False; { Vendedor }

  { BANDS }
  DBGEST_EPV.Bands[1].Visible := False; { Grade }
end;

procedure TFrmCAD_PRO_ADM.EST_EPVAfterScroll(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  if EST_EPV.State  <> dsInactive then
  if EST_EPV.RecNo   > 0 then
  begin
    { COLUMNS }
    { Local }
    if (EST_EPVSGEP.AsString <> EmptyStr) and (EST_EPVSGEP.AsString <> RECParametros.SGEP) then
    DBGEST_EPVSGEP.Visible := True;

    { Tipo }
    if EST_EPVSTPD.AsString <> RECParametros.PED_STPD then
    DBGEST_EPVSTPD.Visible  := True;

    { Vendedor }
    if EST_EPVDECV.AsString <> RECParametros.DECV_PAD then
    DBGEST_EPVDECV.Visible  := True;

    { BANDS }
    { Grade }
    if EST_EPVDGCP.AsString <> EmptyStr then
    DBGEST_EPV.Bands[1].Visible := True;
  end;
end;

procedure TFrmCAD_PRO_ADM.EST_EPVCalcFields(DataSet: TDataSet);
begin
  EST_EPVC_ID.Value := EST_EPV.RecNo;
end;

procedure TFrmCAD_PRO_ADM.DTSEST_EPVDataChange(Sender: TObject;
  Field: TField);
begin
  if Consulta.State <> dsInactive then
  begin
    { FIT }
    DBGEST_EPV.ApplyBestFit(DBGEST_EPVSKU ); { SKU }
    DBGEST_EPV.ApplyBestFit(DBGEST_EPVDEPK); { Pedido }
    DBGEST_EPV.ApplyBestFit(DBGEST_EPVSTFI); { Situação }

    { Clientes }
    DBGEST_EPV.ApplyBestFit(DBGEST_EPVDECD);
    if DBGEST_EPVDECD.Width  > 150 then
       DBGEST_EPVDECD.Width := 150;

    if not DBGEST_EPVSTPD.Visible then
    DBGEST_EPVDECD.Width := DBGEST_EPVDECD.Width + DBGEST_EPVSTPD.Width;

    { Representantes }
    DBGEST_EPV.ApplyBestFit(DBGEST_EPVDECR);
    if DBGEST_EPVDECR.Width  > 110 then
       DBGEST_EPVDECR.Width := 110;

    if not DBGEST_EPVDECV.Visible then
    DBGEST_EPVDECD.Width := DBGEST_EPVDECD.Width + DBGEST_EPVDECV.Width;

    { Cobrança }
    DBGEST_EPV.ApplyBestFit(DBGEST_EPVDECO);
    if DBGEST_EPVDECO.Width  > 120 then
       DBGEST_EPVDECO.Width := 120;

    { Grade }
    DBGEST_EPV.ApplyBestFit(DBGEST_EPVDSCP);
    DBGEST_EPV.ApplyBestFit(DBGEST_EPVDGCP  );

    { VER TAM TELA  }
    { Largura }
    DBGEST_EPVDGCP.Width := IFThen(Screen.Width         > 1536    ,DBGEST_EPVDGCP.Width,
                            IFThen(DBGEST_EPVDGCP.Width > 150 ,150,DBGEST_EPVDGCP.Width)); { Grade }

    { Grupos Comerciais }
    DBGEST_EPVGPCD.Visible := (EST_EPVGPCD.AsString <> EmptyStr);
  end;
end;

procedure TFrmCAD_PRO_ADM.DBGEST_EPVCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  { TAM GRADE }
  if AColumn = DBGEST_EPVDGCP then
  if lENGTH(ANode.Values[DBGEST_EPVDGCP.Index]) > 20 then
     AFont.Size := 8;

  if not ASelected then
  begin
    { Zebra }
    if ANode.Values[DBGEST_EPVC_ID.Index] <> Null then
    if ANode.Values[DBGEST_EPVC_ID.Index] mod 2 <> 0 then
       AColor := $00F0F0F0 else
       AColor := clHighLightText;

    { Lançamentos }
    if (AColumn = DBGEST_EPVQTDE) or (AColumn = DBGEST_EPVQTRL) then
    if (ANode.Values[DBGEST_EPVQTDE.Index] <> Null) then
    begin
      AColor      := $00FAFEE9;
      AFont.Color := clWindowText;

      if (ANode.Values[DBGEST_EPVQTDE.Index] <  0) then
      AFont.Color := $000024B3;
    end;

    { Preços }
    if AColumn = DBGEST_EPVVPRC_COM then
    begin
      AColor      := $00FAFEE9;
      AFont.Color := clGrayText;
    end;
  end;

  if ANode.Selected then
  begin
    { Bloqueados }
    if ANode.Values[DBGEST_EPVBQST.Index] = 1 then
    begin
      AColor      := $00002EE6;
      AFont.Color := clHighlightText;
    end else
    begin
      AColor      := $00750000;//$00400000;
      AFont.Color := clHighlightText;
    end;
  end;

  if ASelected then
  begin
    AColor      := clHighlight; //$00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;

procedure TFrmCAD_PRO_ADM.EST_ESPBeforeOpen(DataSet: TDataSet);
begin
  { COLUMNS }
  DBGEST_ESPSGEP.Visible := False; { Local }
  DBGEST_ESPEST_CTNR.Visible    := False; { Container }
  DBGEST_ESPEST_LOTE.Visible    := False; { Lote }
  DBGEST_ESPSTPD.Visible    := False; { Tipo }
  DBGEST_ESPDECV.Visible    := False; { Vendedor }

  { BANDS }
  DBGEST_ESP.Bands[1].Visible := False; { Grade }
end;

procedure TFrmCAD_PRO_ADM.EST_ESPAfterScroll(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  if EST_ESP.State  <> dsInactive then
  if EST_ESP.RecNo   > 0 then
  begin
    { COLUMNS }
    { Local }
    if (EST_ESPSGEP.AsString <> EmptyStr) and (EST_ESPSGEP.AsString <> RECParametros.SGEP) then
    DBGEST_ESPSGEP.Visible := True;

    { Container }
    if EST_ESPEST_CTNR.AsString <> EmptyStr then
    DBGEST_ESPEST_CTNR.Visible  := True;

    { Lote }
    if EST_ESPEST_LOTE.AsString <> EmptyStr then
    DBGEST_ESPEST_LOTE.Visible  := True;

    { Tipo }
    if EST_ESPSTPD.AsString <> RECParametros.PED_STPD then
    DBGEST_ESPSTPD.Visible  := True;

    { Vendedor }
    if EST_ESPDECV.AsString <> RECParametros.DECV_PAD then
    DBGEST_ESPDECV.Visible  := True;

    { BANDS }
    { Grade }
    if EST_ESPDGCP.AsString <> EmptyStr then
    DBGEST_ESP.Bands[1].Visible := True;
  end;
end;

procedure TFrmCAD_PRO_ADM.EST_ESPCalcFields(DataSet: TDataSet);
begin
  EST_ESPC_ID.Value := EST_ESP.RecNo;
end;

procedure TFrmCAD_PRO_ADM.DBGEST_ESPCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  { TAM GRADE }
  if AColumn = DBGEST_ESPDGCP then
  if lENGTH(ANode.Values[DBGEST_ESPDGCP.Index]) > 20 then
     AFont.Size := 8;

  if not ASelected then
  begin
    { Zebra }
    if ANode.Values[DBGEST_ESPC_ID.Index] <> Null then
    if ANode.Values[DBGEST_ESPC_ID.Index] mod 2 <> 0 then
       AColor := $00F0F0F0 else
       AColor := clHighLightText;

    { Lançamentos }
    if (AColumn = DBGEST_ESPQTDE) or (AColumn = DBGEST_ESPQTRL) then
    if (ANode.Values[DBGEST_ESPQTDE.Index] <> Null) then
    begin
      AColor      := clWindowText;
      AFont.Color := clHighlightText;

      if (ANode.Values[DBGEST_ESPQTDE.Index] <  0) then
      AFont.Color := $000024B3;
    end;

    { Preços }
    if AColumn = DBGEST_ESPVPRC_COM then
    begin
      AColor      := clWindowText;
      AFont.Color := $00FBFBFB;
    end;
  end;

  if ANode.Selected then
  begin
    { Bloqueados }
    if ANode.Values[DBGEST_ESPBQST.Index] = 1 then
    begin
      AColor      := $00002EE6;
      AFont.Color := clHighlightText;
    end else
    begin
      AColor      := clWindowText; //$00750000;//$00400000;
      AFont.Color := clHighlightText;
    end;
  end;

  if ASelected then
  begin
    AColor      := clHighlight; //$00E1AD40;
    AFont.Color := clHighlightText;
    AFont.Style := [];
  end;
end;

procedure TFrmCAD_PRO_ADM.DTSEST_ESPDataChange(Sender: TObject;
  Field: TField);
begin
  if Consulta.State <> dsInactive then
  begin
    { FIT }
    DBGEST_ESP.ApplyBestFit(DBGEST_ESPSKU ); { SKU }
    DBGEST_ESP.ApplyBestFit(DBGEST_ESPDEPK); { Pedido }
    DBGEST_ESP.ApplyBestFit(DBGEST_ESPSTFI); { Situação }

    { Clientes }
    DBGEST_ESP.ApplyBestFit(DBGEST_ESPDECD);
    if DBGEST_ESPDECD.Width  > 150 then
       DBGEST_ESPDECD.Width := 150;

    if not DBGEST_ESPSTPD.Visible then
    DBGEST_ESPDECD.Width := DBGEST_ESPDECD.Width + DBGEST_ESPSTPD.Width;

    { Representantes }
    DBGEST_ESP.ApplyBestFit(DBGEST_ESPDECR);
    if DBGEST_ESPDECR.Width  > 110 then
       DBGEST_ESPDECR.Width := 110;

    if not DBGEST_ESPDECV.Visible then
    DBGEST_ESPDECD.Width := DBGEST_ESPDECD.Width + DBGEST_ESPDECV.Width;

    { Cobrança }
    DBGEST_ESP.ApplyBestFit(DBGEST_ESPDECO);
    if DBGEST_ESPDECO.Width  > 120 then
       DBGEST_ESPDECO.Width := 120;

    { Grade }
    DBGEST_ESP.ApplyBestFit(DBGEST_ESPDSCP);
    DBGEST_ESP.ApplyBestFit(DBGEST_ESPDGCP  );

    { VER TAM TELA  }
    { Largura }
    DBGEST_ESPDGCP.Width := IFThen(Screen.Width         > 1536    ,DBGEST_ESPDGCP.Width,
                            IFThen(DBGEST_ESPDGCP.Width > 150 ,150,DBGEST_ESPDGCP.Width)); { Grade }

    { Grupos Comerciais }
    DBGEST_ESPGPCD.Visible := (EST_ESPGPCD.AsString <> EmptyStr);
  end;
end;

procedure TFrmCAD_PRO_ADM.EST_EPPBeforeOpen(DataSet: TDataSet);
begin
  { COLUMNS }
  DBGEST_EPPSGEP.Visible := False; { Local }
  DBGEST_EPPEST_CTNR.Visible    := False; { Container }
  DBGEST_EPPSTPD.Visible    := False; { Tipo }
  DBGEST_EPPDECV.Visible    := False; { Vendedor }

  { BANDS }
  DBGEST_EPP.Bands[1].Visible := False; { Grade }
end;

procedure TFrmCAD_PRO_ADM.EST_EPPAfterScroll(DataSet: TDataSet);
begin
  if Consulta.State <> dsInactive then
  if EST_EPP.State  <> dsInactive then
  if EST_EPP.RecNo   > 0 then
  begin
    { COLUMNS }
    { Local }
    if (EST_EPPSGEP.AsString <> EmptyStr) and (EST_EPPSGEP.AsString <> RECParametros.SGEP) then
    DBGEST_EPPSGEP.Visible := True;

    { Container }
    if EST_EPPEST_CTNR.AsString <> EmptyStr then
    DBGEST_EPPEST_CTNR.Visible  := True;

    { Tipo }
    if EST_EPPSTPD.AsString <> RECParametros.PED_STPD then
    DBGEST_EPPSTPD.Visible  := True;

    { Vendedor }
    if EST_EPPDECV.AsString <> RECParametros.DECV_PAD then
    DBGEST_EPPDECV.Visible  := True;

    { BANDS }
    { Grade }
    if EST_EPPDGCP.AsString <> EmptyStr then
    DBGEST_EPP.Bands[1].Visible := True;
  end;
end;

procedure TFrmCAD_PRO_ADM.EST_EPPCalcFields(DataSet: TDataSet);
begin
  EST_EPPC_ID.Value := EST_EPP.RecNo;
end;

procedure TFrmCAD_PRO_ADM.DTSEST_EPPDataChange(Sender: TObject;
  Field: TField);
begin
  if Consulta.State <> dsInactive then
  if EST_EPP.State  <> dsInactive then
  if EST_EPP.RecNo   > 0 then
  begin
    { FIT }
    DBGEST_EPP.ApplyBestFit(DBGEST_EPPSKU ); { SKU }
    DBGEST_EPP.ApplyBestFit(DBGEST_EPPDEPK); { Pedido }
    DBGEST_EPP.ApplyBestFit(DBGEST_EPPSTFI); { Situação }

    { Clientes }
    DBGEST_EPP.ApplyBestFit(DBGEST_EPPDECD);
    if DBGEST_EPPDECD.Width  > 150 then
       DBGEST_EPPDECD.Width := 150;

    if not DBGEST_EPPSTPD.Visible then
    DBGEST_EPPDECD.Width := DBGEST_EPPDECD.Width + DBGEST_EPPSTPD.Width;

    { Representantes }
    DBGEST_EPP.ApplyBestFit(DBGEST_EPPDECR);
    if DBGEST_EPPDECR.Width  > 110 then
       DBGEST_EPPDECR.Width := 110;

    if not DBGEST_EPPDECV.Visible then
    DBGEST_EPPDECD.Width := DBGEST_EPPDECD.Width + DBGEST_EPPDECV.Width;

    { Cobrança }
    DBGEST_EPP.ApplyBestFit(DBGEST_EPPDECO);
    if DBGEST_EPPDECO.Width  > 120 then
       DBGEST_EPPDECO.Width := 120;

    { Grade }
    DBGEST_EPP.ApplyBestFit(DBGEST_EPPDSCP);
    DBGEST_EPP.ApplyBestFit(DBGEST_EPPDGCP  );

    { VER TAM TELA  }
    { Largura }
    DBGEST_EPPDGCP.Width := IFThen(Screen.Width         > 1536    ,DBGEST_EPPDGCP.Width,
                            IFThen(DBGEST_EPPDGCP.Width > 150 ,150,DBGEST_EPPDGCP.Width)); { Grade }

    { Grupos Comerciais }
    DBGEST_EPPGPCD.Visible := (EST_EPPGPCD.AsString <> EmptyStr);
  end;
end;

procedure TFrmCAD_PRO_ADM.DBGEST_EPPCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  { TAM GRADE }
  if AColumn = DBGEST_EPPDGCP then
  if lENGTH(ANode.Values[DBGEST_EPPDGCP.Index]) > 20 then
     AFont.Size := 8;

  if not ASelected then
  begin
    { Lançamentos }
    if (AColumn = DBGEST_EPPQTDE) or (AColumn = DBGEST_EPPQTRL) then
    if (ANode.Values[DBGEST_EPPQTDE.Index] <> Null) then
    begin
      AColor      := $00FAFEE9;
      AFont.Color := clWindowText;

      if (ANode.Values[DBGEST_EPPQTDE.Index] <  0) then
      AFont.Color := $000024B3;
    end;

    { Preços }
    if AColumn = DBGEST_EPPVPRC_COM then
    begin
      AColor      := $00FAFEE9;
      AFont.Color := clGrayText;
    end;
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

procedure TFrmCAD_PRO_ADM.DTSEST_EPEDataChange(Sender: TObject;
  Field: TField);
var
  APosCount,
  APosHeight: Word;
begin
  if Consulta.State <> dsInactive then
  if EST_EPE.State  <> dsInactive then
  if EST_EPE.RecNo   > 0 then
  begin
    { FIT }
    DBGEST_EPE.ApplyBestFit(DBGEST_EPESKU    ); { SKU      }
    DBGEST_EPE.ApplyBestFit(DBGEST_EPEDEEV); { Eventos  }

    { Situação }
    DBGEST_EPEREST.Width := IFThen(Length(EST_EPEREST.AsString) > 3,75,45);

    { Grade }
    DBGEST_EPE.ApplyBestFit(DBGEST_EPEDSCP);
    DBGEST_EPE.ApplyBestFit(DBGEST_EPEDGCP);

    { VER TAM TELA  }
    { Largura }
    //DBGEST_EPEDGCP.Width := IFThen(Screen.Width           > 1536,DBGEST_EPEDGCP.Width,
    //                          IFThen(DBGEST_EPEDGCP.Width > 150 ,150,DBGEST_EPEDGCP.Width)); { Grade }

    DBGEST_EPEDGCP.Width := IFThen(DBGEST_EPEDGCP.Width > 140,140,DBGEST_EPEDGCP.Width); { Grade }

    { EST_EPE_INFADCPL }
    { SKU }
    DBGEST_EPE_CPL.ApplyBestFit(DBGEST_EPE_CPLSKU   );
    DBGEST_EPE_CPL.ApplyBestFit(DBGEST_EPE_CPLCF_SKU);

    { Cód. Barras }
    DBGEST_EPE_CPL.ApplyBestFit(DBGEST_EPE_CPLCEAN   );
    DBGEST_EPE_CPL.ApplyBestFit(DBGEST_EPE_CPLCF_CEAN);

    { DOCK MANAGER }
    { Containers }
    APosCount  := oPosCount(''#$D'',EST_EPEEPC_CTNR.AsString);
    APosHeight :=

    IFThen((APosCount = 00) and (EST_EPEEPC_CTNR.AsString =  EmptyStr),30,
    IFThen((APosCount = 00) and (EST_EPEEPC_CTNR.AsString <> EmptyStr),60));

    DPPrincipal1RodapeLEB.Tag := APosHeight;
    if DPPrincipal1RodapeLEB.Tag <> DPPrincipal1RodapeLEB.Height then
    begin
      DPPrincipal1RodapeLEB.HelpContext := 0;
      _SetDockControl(DPPrincipal1RodapeLEB,DPPrincipal1RodapeLEB.Tag,lVertical,True);
    end;
  end;
end;

end.
