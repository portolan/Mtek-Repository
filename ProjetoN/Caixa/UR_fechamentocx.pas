unit UR_fechamentocx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, frxClass,
  frxDBSet, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TREL_fechamentocx = class(TForm)
    lb_inicialcx: TLabel;
    btn_relfechamcaixa: TButton;
    lbn_empresa: TLabel;
    edit_empresa: TEdit;
    editDtIni: TMaskEdit;
    Image1: TImage;
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

uses dm000, UR_caixaRelatorios, UDM_contabil;


procedure TREL_fechamentocx.btn_relfechamcaixaClick(Sender: TObject);
begin

  try
  caixaRelatorios.IBQ_receber.Close;
  caixaRelatorios.IBQ_receber.SQL.Text := 'select * from fechamentocx_receber(:codigoempresa, :dataini)';
  caixaRelatorios.IBQ_receber.ParamByName('codigoempresa').Value := StrToInt(edit_empresa.Text);
  caixaRelatorios.IBQ_receber.ParamByName('dataini').Value :=  formatdatetime('dd/mm/yyyy', strtodate(editDtIni.Text));

  caixaRelatorios.IBQ_pagar.Close;
  caixaRelatorios.IBQ_pagar.SQL.Text := 'select * from fechamentocx_PAGAR(:codigoempresa, :dataini);';
  caixaRelatorios.IBQ_pagar.ParamByName('codigoempresa').Value := StrToInt(edit_empresa.Text);
  caixaRelatorios.IBQ_pagar.ParamByName('dataini').Value :=  formatdatetime('dd/mm/yyyy', strtodate(editDtIni.Text));

  caixaRelatorios.IBQ_fechamento.Close;
  caixaRelatorios.IBQ_fechamento.SQL.Text := 'select * from REL_FECHAMENTOCAIXA(:codigoemp,:datainicial)';
  caixaRelatorios.IBQ_fechamento.ParamByName('codigoemp').Value := StrToInt(edit_empresa.Text);
  caixaRelatorios.IBQ_fechamento.ParamByName('datainicial').Value :=  formatdatetime('dd/mm/yyyy', strtodate(editDtIni.Text));
  caixaRelatorios.IBQ_receber.Open;
  caixaRelatorios.IBQ_pagar.Open;
  caixaRelatorios.IBQ_fechamento.Open;
  caixaRelatorios.frx_fechamento.ShowReport();

 except
    on E: Exception do
      begin
       ShowMessage('Campos Obrigatórios!' );
       Abort;
      end;

 end;

end;


procedure TREL_fechamentocx.FormCreate(Sender: TObject);
begin
   //posicionando tela no meio
   Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
   Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
