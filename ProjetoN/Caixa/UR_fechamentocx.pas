unit UR_fechamentocx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, frxClass,
  frxDBSet, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TREL_fechamentocx = class(TForm)
    lb_inicialcx: TLabel;
    lb_finalcx: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    btn_relfechamcaixa: TButton;
    lbn_empresa: TLabel;
    edit_empresa: TEdit;
    frx_fechamento: TfrxReport;
    IBQ_fechamento: TIBQuery;
    frxDB_fechamento: TfrxDBDataset;
    IBQ_fechamentoDESCRICAO: TIBStringField;
    IBQ_fechamentoDATA: TDateField;
    IBQ_fechamentoVALOR: TIBBCDField;
    procedure FormCreate(Sender: TObject);
    procedure btn_relfechamcaixaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  REL_fechamentocx: TREL_fechamentocx;

implementation

{$R *.dfm}

uses dm000;


procedure TREL_fechamentocx.btn_relfechamcaixaClick(Sender: TObject);
begin
  IBQ_fechamento.Close;
  IBQ_fechamento.Params[0].AsInteger := edit_empresa.InstanceSize;
  IBQ_fechamento.Params[1].AsDate := DateTimePicker1.Date;
  IBQ_fechamento.Open;
  //frx_fechamento.LoadFromFile('C:\Users\valeria\Desktop\Projeto ERP\trunk\ProjetoN\Caixa');
  frx_fechamento.ShowReport();
  IBQ_fechamento.Close;
end;

procedure TREL_fechamentocx.FormCreate(Sender: TObject);
begin
   Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
   Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
