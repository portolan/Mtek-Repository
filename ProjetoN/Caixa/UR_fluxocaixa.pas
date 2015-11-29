unit UR_fluxocaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TUR_fluxocx = class(TForm)
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
  UR_fluxocx: TUR_fluxocx;

implementation

{$R *.dfm}

uses UR_caixaRelatorios;

procedure TUR_fluxocx.btn_relbalancaixaClick(Sender: TObject);
begin
  caixaRelatorios.IBQ_fluxocaixa_AUX.Close;
  caixaRelatorios.IBQ_fluxocaixa_AUX.ParamByName('codemp').Value := StrToInt(edit_emp.Text);
  caixaRelatorios.IBQ_fluxocaixa_AUX.ParamByName('atualdata').Value:= formatdatetime('dd/mm/yyyy', strtodate(editDtIini.Text));
  caixaRelatorios.IBQ_fluxocaixa_AUX.ParamByName('dataprevista').Value := formatdatetime('dd/mm/yyyy', strtodate(editDtIfini.Text));

  caixaRelatorios.IBQ_fluxocaixa.Close;
  caixaRelatorios.IBQ_fluxocaixa.ParamByName('codigoemp').Value := StrToInt(edit_emp.Text);
  caixaRelatorios.IBQ_fluxocaixa.ParamByName('atualdata').Value:= formatdatetime('dd/mm/yyyy', strtodate(editDtIini.Text));
  caixaRelatorios.IBQ_fluxocaixa.ParamByName('dataprevista').Value := formatdatetime('dd/mm/yyyy', strtodate(editDtIfini.Text));

   caixaRelatorios.IBQ_fluxocaixa_AUX.open;
   caixaRelatorios.IBQ_fluxocaixa.open;
   caixaRelatorios.frx_fluxocaixa.ShowReport();

end;

procedure TUR_fluxocx.FormCreate(Sender: TObject);
begin
   Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
   Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
