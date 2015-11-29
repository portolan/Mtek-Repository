unit UR_caixaRelatorios;

interface

uses
  System.SysUtils, System.Classes, frxClass, Data.DB, IBX.IBCustomDataSet,
  IBX.IBQuery, frxDBSet;

type
  TcaixaRelatorios = class(TDataModule)
    frxDB_receber: TfrxDBDataset;
    IBQ_receber: TIBQuery;
    IBQ_pagar: TIBQuery;
    frxDB_pagar: TfrxDBDataset;
    frxDB_fechamento: TfrxDBDataset;
    IBQ_fechamento: TIBQuery;
    IBQ_fechamentoEMP: TIBStringField;
    IBQ_fechamentoDATA: TDateField;
    IBQ_fechamentoSALDOANTERIOR: TIBBCDField;
    IBQ_fechamentoTOTALE: TIBBCDField;
    IBQ_fechamentoTOTALS: TIBBCDField;
    IBQ_fechamentoSALDOTOTAL: TIBBCDField;
    frx_fechamento: TfrxReport;
    frx_balancodiario: TfrxReport;
    frxDB_balancodiario: TfrxDBDataset;
    IBQ_balancodiario: TIBQuery;
    IBQ_balancodiarioAUX: TIBQuery;
    frxDB_balancodiarioAUX: TfrxDBDataset;
    IBQ_balancodiarioAUXDATA: TDateField;
    IBQ_balancodiarioAUXENTRADAS: TIBBCDField;
    IBQ_balancodiarioAUXSAIDAS: TIBBCDField;
    IBQ_balancodiarioAUXSALDOANTERIOR: TIBBCDField;
    IBQ_balancodiarioAUXSALDOFINAL: TIBBCDField;
    IBQ_balancodiarioEMP: TIBStringField;
    IBQ_balancodiarioDATA: TDateField;
    IBQ_balancodiarioDAT: TDateField;
    IBQ_balancodiarioT_ENTRADA: TIBBCDField;
    IBQ_balancodiarioT_SAIDA: TIBBCDField;
    IBQ_balancodiarioT_DIARIO: TIBBCDField;
    frxDBD_balancomensal: TfrxDBDataset;
    frx_balancomensal: TfrxReport;
    IBQ_balancomensal: TIBQuery;
    IBQ_balancomensalAUX: TIBQuery;
    frxDB_balancomensalAUX: TfrxDBDataset;
    IBQ_balancomensalEMP: TIBStringField;
    IBQ_balancomensalDATA: TDateField;
    IBQ_balancomensalDAT: TDateField;
    IBQ_balancomensalT_ENTRADA: TIBBCDField;
    IBQ_balancomensalT_SAIDA: TIBBCDField;
    IBQ_balancomensalT_MENSAL: TIBBCDField;
    IBQ_balancomensalAUXDATA: TDateField;
    IBQ_balancomensalAUXMES: TIBStringField;
    IBQ_balancomensalAUXENTRADAS: TIBBCDField;
    IBQ_balancomensalAUXSAIDAS: TIBBCDField;
    IBQ_balancomensalAUXSALDOANTERIOR: TIBBCDField;
    IBQ_balancomensalAUXSALDOFINAL: TIBBCDField;
    IBQ_prevtitulos: TIBQuery;
    frxDB_prevtitulos: TfrxDBDataset;
    frx_prevtitulos: TfrxReport;
    IBQ_prevreceber: TIBQuery;
    frxDB_prevpagar: TfrxDBDataset;
    IBQ_prevpagar: TIBQuery;
    frxDB_prevreceber: TfrxDBDataset;
    IBQ_prevtitulosEMP: TIBStringField;
    IBQ_prevtitulosDATA: TDateField;
    IBQ_prevtitulosDAT: TDateField;
    IBQ_prevtitulosSALDOATUAL: TIBBCDField;
    IBQ_prevtitulosT_ENTRADA: TIBBCDField;
    IBQ_prevtitulosT_SAIDA: TIBBCDField;
    IBQ_prevtitulosT_TOTAL: TIBBCDField;
    IBQ_prevreceberDATA: TDateField;
    IBQ_prevreceberCODIGO: TIntegerField;
    IBQ_prevreceberDESCRICAO: TIBStringField;
    IBQ_prevreceberVALOR: TIBBCDField;
    IBQ_prevpagarDATA: TDateField;
    IBQ_prevpagarCODIGO: TIntegerField;
    IBQ_prevpagarDESCRICAO: TIBStringField;
    IBQ_prevpagarVALOR: TIBBCDField;
    IBQ_pagarCODCONT: TIntegerField;
    IBQ_pagarDESCRICAO: TIBStringField;
    IBQ_pagarDATAPAG: TDateField;
    IBQ_pagarVALOR: TIBBCDField;
    IBQ_receberCODCONT: TIntegerField;
    IBQ_receberDESCRICAO: TIBStringField;
    IBQ_receberDATAPAG: TDateField;
    IBQ_receberVALOR: TIBBCDField;
    IBQ_vendas: TIBQuery;
    frxDB_prevcompras: TfrxDBDataset;
    frx_prevpedidos: TfrxReport;
    IBQ_compras: TIBQuery;
    frxDB_prevvendas: TfrxDBDataset;
    IBQ_prevpedidos: TIBQuery;
    frxDB_prevpedidos: TfrxDBDataset;
    IBQ_vendasDATA: TDateField;
    IBQ_vendasCODIGO: TIntegerField;
    IBQ_vendasDESCRICAO: TIBStringField;
    IBQ_vendasVALOR: TIBBCDField;
    IBQ_comprasDATA: TDateField;
    IBQ_comprasCODIGO: TIntegerField;
    IBQ_comprasDESCRICAO: TIBStringField;
    IBQ_comprasVALOR: TIBBCDField;
    IBQ_prevpedidosEMP: TIBStringField;
    IBQ_prevpedidosDATA: TDateField;
    IBQ_prevpedidosDAT: TDateField;
    IBQ_prevpedidosSALDOATUAL: TIBBCDField;
    IBQ_prevpedidosT_ENTRADA: TIBBCDField;
    IBQ_prevpedidosT_SAIDA: TIBBCDField;
    IBQ_prevpedidosT_TOTAL: TIBBCDField;
    IBQ_fluxocaixa: TIBQuery;
    frxDB_fluxocaixa: TfrxDBDataset;
    frx_fluxocaixa: TfrxReport;
    IBQ_fluxocaixa_AUX: TIBQuery;
    frxDB_fluxocaixa_AUX: TfrxDBDataset;
    IBQ_fluxocaixaEMP: TIBStringField;
    IBQ_fluxocaixaDATA: TDateField;
    IBQ_fluxocaixaDAT: TDateField;
    IBQ_fluxocaixaRECEBER: TIBBCDField;
    IBQ_fluxocaixaVENDAS: TIBBCDField;
    IBQ_fluxocaixaPAGAR: TIBBCDField;
    IBQ_fluxocaixaCOMPRAS: TIBBCDField;
    IBQ_fluxocaixaPREVISAOSALDODIA: TIBBCDField;
    IBQ_fluxocaixa_AUXDATA: TDateField;
    IBQ_fluxocaixa_AUXRECEBER: TIBBCDField;
    IBQ_fluxocaixa_AUXVENDAS: TIBBCDField;
    IBQ_fluxocaixa_AUXPAGAR: TIBBCDField;
    IBQ_fluxocaixa_AUXCOMPRAS: TIBBCDField;
    IBQ_fluxocaixa_AUXSALDOANTERIOR: TIBBCDField;
    IBQ_fluxocaixa_AUXPREVISAOSALDODIA: TIBBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  caixaRelatorios: TcaixaRelatorios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000;

{$R *.dfm}

end.
