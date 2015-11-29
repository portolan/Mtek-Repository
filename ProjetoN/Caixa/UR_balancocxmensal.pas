unit UR_balancocxmensal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TREL_balancocxmes = class(TForm)
    Image1: TImage;
    lbn_empresa: TLabel;
    edit_empcod: TEdit;
    lb_inicialcx2: TLabel;
    editDtI_inicial: TMaskEdit;
    lb_finalcx2: TLabel;
    editDtI_final: TMaskEdit;
    btn_relbalancaixa: TButton;
    procedure btn_relbalancaixaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  REL_balancocxmes: TREL_balancocxmes;

implementation

{$R *.dfm}

uses UR_caixaRelatorios;

procedure TREL_balancocxmes.btn_relbalancaixaClick(Sender: TObject);
begin
  caixaRelatorios.IBQ_balancomensalAUX.close;
  caixaRelatorios.IBQ_balancomensalAUX.SQL.Text := 'select * from  rel_balancomensal_aux(:codigoemp,:datainicial,:datafinal);';
  caixaRelatorios.IBQ_balancomensalAUX.ParamByName('codigoemp').Value := StrToInt(edit_empcod.Text);
  caixaRelatorios.IBQ_balancomensalAUX.ParamByName('datainicial').Value := formatdatetime('dd/mm/yyyy', strtodate(editDtI_inicial.Text));
  caixaRelatorios.IBQ_balancomensalAUX.ParamByName('datafinal').Value := formatdatetime('dd/mm/yyyy', strtodate(editDtI_final.Text));

  caixaRelatorios.IBQ_balancomensal.Close;
  caixaRelatorios.IBQ_balancomensal.SQL.Text :='select * from rel_balancomensal(:codigoemp,:datainicial,:datafinal);';
  caixaRelatorios.IBQ_balancomensal.ParamByName('codigoemp').Value := StrToInt(edit_empcod.Text);
  caixaRelatorios.IBQ_balancomensal.ParamByName('datainicial').Value := formatdatetime('dd/mm/yyyy', strtodate(editDtI_inicial.Text));
  caixaRelatorios.IBQ_balancomensal.ParamByName('datafinal').Value := formatdatetime('dd/mm/yyyy', strtodate(editDtI_final.Text));

  caixaRelatorios.IBQ_balancomensalAUX.Open;
  caixaRelatorios.IBQ_balancomensal.Open;
  caixaRelatorios.frx_balancomensal.ShowReport();
end;

procedure TREL_balancocxmes.FormCreate(Sender: TObject);
begin
   Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
   Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
