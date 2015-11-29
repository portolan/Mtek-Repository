unit UR_RelatorioContabil;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  frxClass, frxDBSet;

type
  TR_RelatorioContabil = class(TDataModule)
    frxLANC_DIAS: TfrxReport;
    frxDBLANC_DIAS: TfrxDBDataset;
    IB_LANC_DIAS: TIBQuery;
    IB_LANC_DIASLANC_NR_LOTE: TIntegerField;
    IB_LANC_DIASLANC_NR_LANCAMENTO: TIntegerField;
    IB_LANC_DIASLANC_DT_LANCAMENTO: TDateField;
    IB_LANC_DIASLANC_DEBITO: TIBStringField;
    IB_LANC_DIASLANC_CREDITO: TIBStringField;
    IB_LANC_DIASLANC_HISTORICO: TIBStringField;
    IB_LANC_DIASLANC_VALOR: TIBBCDField;
    IB_LANC_DIASLANC_TIPO: TIBStringField;
    frxRazaoS: TfrxReport;
    frxDBRazaoS: TfrxDBDataset;
    IB_RazaoS: TIBQuery;
    IB_RazaoSSUM: TIBBCDField;
    IB_RazaoSEMP_CNPJ: TIBStringField;
    IB_RazaoSEMP_RAZAO: TIBStringField;
    frxdebito: TfrxReport;
    frxDBDEBITO: TfrxDBDataset;
    IB_DEBITO: TIBQuery;
    IB_DEBITOLANC_NR_LOTE: TIntegerField;
    IB_DEBITOLANC_NR_LANCAMENTO: TIntegerField;
    IB_DEBITOLANC_DT_LANCAMENTO: TDateField;
    IB_DEBITOLANC_DEBITO: TIBStringField;
    IB_DEBITOLANC_CENTRODECUSTO_DB: TIBStringField;
    IB_DEBITOLANC_HISTORICO: TIBStringField;
    IB_DEBITOLANC_VALOR: TIBBCDField;
    IB_DEBITOLANC_TIPO: TIBStringField;
    IB_DEBITOEMP_RAZAO: TIBStringField;
    frxCREDITO: TfrxReport;
    frxDBCREDITO: TfrxDBDataset;
    IB_CREDITO: TIBQuery;
    IB_CREDITOLANC_NR_LOTE: TIntegerField;
    IB_CREDITOLANC_NR_LANCAMENTO: TIntegerField;
    IB_CREDITOLANC_DT_LANCAMENTO: TDateField;
    IB_CREDITOLANC_CREDITO: TIBStringField;
    IB_CREDITOLANC_CENTRODECUSTO_CR: TIBStringField;
    IB_CREDITOLANC_HISTORICO: TIBStringField;
    IB_CREDITOLANC_VALOR: TIBBCDField;
    IB_CREDITOLANC_TIPO: TIBStringField;
    IB_CREDITOEMP_RAZAO: TIBStringField;
    frxEMP: TfrxReport;
    frxDBEMP: TfrxDBDataset;
    IB_EMP: TIBQuery;
    IB_EMPEMP_COD: TIntegerField;
    IB_EMPEMP_CNPJ: TIBStringField;
    IB_EMPEMP_RAZAO: TIBStringField;
    IB_EMPEMP_NOMEF: TIBStringField;
    IB_EMPEMP_CIDADE: TIBStringField;
    IB_EMPEMP_TITULAR: TIBStringField;
    IB_DEP: TIBQuery;
    IB_DEPDEP_COD: TIntegerField;
    IB_DEPDEP_NOME: TIBStringField;
    IB_DEPDEP_DESC: TIBStringField;
    frxDBDEP: TfrxDBDataset;
    frxDEP: TfrxReport;
    frxep: TfrxReport;
    frxDBEP: TfrxDBDataset;
    IB_EP: TIBQuery;
    IB_EPEMP_COD: TIntegerField;
    IB_EPEMP_RAZAO: TIBStringField;
    IB_EPDEP_NOME: TIBStringField;
    IB_EPDEP_DESC: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R_RelatorioContabil: TR_RelatorioContabil;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
