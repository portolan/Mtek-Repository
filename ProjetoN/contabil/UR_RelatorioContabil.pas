unit UR_RelatorioContabil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet,
  IBX.IBQuery, frxClass, frxDBSet, Vcl.StdCtrls;

type
  TR_RelatorioContabil = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R_RelatorioContabil: TR_RelatorioContabil;

implementation

{$R *.dfm}

end.
