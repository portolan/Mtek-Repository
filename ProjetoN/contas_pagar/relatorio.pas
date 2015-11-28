unit relatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, IBX.IBStoredProc;

type
  Trelcontasp = class(TForm)
    frxDB: TfrxDBDataset;
    frxContasperiodo: TfrxReport;
    relatorio: TIBQuery;
    Button1: TButton;
    relatorioTTP_CODIGO: TIntegerField;
    relatorioTTP_DESCRICAO: TIBStringField;
    relatorioTTP_SITUACAO: TIBStringField;
    relatorioPESS_NOME: TIBStringField;
    relatorioTTP_VL_TOTAL: TIBBCDField;
    relatorioTTP_DT_VENCIMENTO: TDateField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relcontasp: Trelcontasp;

implementation

{$R *.dfm}



procedure Trelcontasp.Button1Click(Sender: TObject);
begin
Application.CreateForm(Trelcontasp, relcontasp);
relcontasp.relatorio.Close;
relcontasp.relatorio.ParamByName('empresa').Value:=Edit1.text;
relcontasp.relatorio.ParamByName('dataInicial').Value:=DateTimePicker1.Date;
relcontasp.relatorio.ParamByName('dataFinal').Value:=DateTimePicker2.Date;
relcontasp.relatorio.Open;
frxContasperiodo.LoadFromFile('relatorio.fr3');
relcontasp.relatorio.Close;
relcontasp.frxContasperiodo.ShowReport();
end;

end.
