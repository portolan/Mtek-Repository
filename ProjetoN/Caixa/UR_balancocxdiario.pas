unit UR_balancocxdiario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TREL_balancocxdia = class(TForm)
    Image1: TImage;
    lbn_empresa: TLabel;
    edit_emp: TEdit;
    lb_inicialcx2: TLabel;
    editDtIini: TMaskEdit;
    lb_finalcx2: TLabel;
    editDtIfini: TMaskEdit;
    btn_relbalancaixa: TButton;
    procedure btn_relbalancaixaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  REL_balancocxdia: TREL_balancocxdia;

implementation

{$R *.dfm}

uses UR_caixaRelatorios;

procedure TREL_balancocxdia.btn_relbalancaixaClick(Sender: TObject);
begin
  try

  caixaRelatorios.IBQ_balancodiarioAUX.close;
  caixaRelatorios.IBQ_balancodiarioAUX.SQL.Text := 'select * from rel_balancodiario_aux(:codigoemp,:datainicial,:datafinal);';
  caixaRelatorios.IBQ_balancodiarioAUX.ParamByName('codigoemp').Value := StrToInt(edit_emp.Text);
  caixaRelatorios.IBQ_balancodiarioAUX.ParamByName('datainicial').Value := formatdatetime('dd/mm/yyyy', strtodate(editDtIini.Text));
  caixaRelatorios.IBQ_balancodiarioAUX.ParamByName('datafinal').Value := formatdatetime('dd/mm/yyyy', strtodate(editDtIfini.Text));


  caixaRelatorios.IBQ_balancodiario.Close;
  caixaRelatorios.IBQ_balancodiario.SQL.Text:= 'select * from rel_balancodiario(:codigoemp,:datainicial,:datafinal);';
  caixaRelatorios.IBQ_balancodiario.ParamByName('codigoemp').Value := StrToInt(edit_emp.Text);
  caixaRelatorios.IBQ_balancodiario.ParamByName('datainicial').Value := formatdatetime('dd/mm/yyyy', strtodate(editDtIini.Text));
  caixaRelatorios.IBQ_balancodiario.ParamByName('datafinal').Value := formatdatetime('dd/mm/yyyy', strtodate(editDtIfini.Text));
  caixaRelatorios.IBQ_balancodiarioAUX.Open;
  caixaRelatorios.IBQ_balancodiario.Open;
  caixaRelatorios.frx_balancodiario.ShowReport();
  except
    on E: Exception do
      begin
       ShowMessage('Campos Obrigatórios!' );
       Abort;
      end;
  end;
end;

procedure TREL_balancocxdia.FormCreate(Sender: TObject);
begin
    //posicionando tela no meio
   Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
   Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;
end.

