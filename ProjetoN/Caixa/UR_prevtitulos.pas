unit UR_prevtitulos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask;

type
  TREL_prevtitulos = class(TForm)
    btn_relfechamcaixa: TButton;
    lb_finalcx: TLabel;
    lb_inicialcx: TLabel;
    lbn_empresa: TLabel;
    edit_empresacd: TEdit;
    Image1: TImage;
    edit_atualdata: TMaskEdit;
    edit_dataprev: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn_relfechamcaixaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  REL_prevtitulos: TREL_prevtitulos;

implementation

{$R *.dfm}

uses UR_caixaRelatorios;

procedure TREL_prevtitulos.btn_relfechamcaixaClick(Sender: TObject);
begin
  try
  caixaRelatorios.IBQ_prevpagar.Close;
  caixaRelatorios.IBQ_prevpagar.SQL.Text :='select * from rel_previcontas_Pagar (:codigoemp,:atualdata,:dataprevista);';
  caixaRelatorios.IBQ_prevpagar.ParamByName('codigoemp').Value := StrToInt(edit_empresacd.Text);
  caixaRelatorios.IBQ_prevpagar.ParamByName('atualdata').Value:= formatdatetime('dd/mm/yyyy', strtodate(edit_atualdata.Text));
  caixaRelatorios.IBQ_prevpagar.ParamByName('dataprevista').Value := formatdatetime('dd/mm/yyyy', strtodate(edit_dataprev.Text));

  caixaRelatorios.IBQ_prevreceber.Close;
  caixaRelatorios.IBQ_prevreceber.SQL.Text := 'select * from rel_previcontas_Receber (:codigoemp,:atualdata,:dataprevista);';
  caixaRelatorios.IBQ_prevreceber.ParamByName('codigoemp').Value := StrToInt(edit_empresacd.Text);
  caixaRelatorios.IBQ_prevreceber.ParamByName('atualdata').Value:= formatdatetime('dd/mm/yyyy', strtodate(edit_atualdata.Text));
  caixaRelatorios.IBQ_prevreceber.ParamByName('dataprevista').Value := formatdatetime('dd/mm/yyyy', strtodate(edit_dataprev.Text));

  caixaRelatorios.IBQ_prevtitulos.Close;
  caixaRelatorios.IBQ_prevtitulos.SQL.Text := ' select * from rel_previsaoContas(:codigoemp,:atualdata,:dataprevista);';
  caixaRelatorios.IBQ_prevtitulos.ParamByName('codigoemp').Value := StrToInt(edit_empresacd.Text);
  caixaRelatorios.IBQ_prevtitulos.ParamByName('atualdata').Value:= formatdatetime('dd/mm/yyyy', strtodate(edit_atualdata.Text));
  caixaRelatorios.IBQ_prevtitulos.ParamByName('dataprevista').Value := formatdatetime('dd/mm/yyyy', strtodate(edit_dataprev.Text));

  caixaRelatorios.IBQ_prevpagar.open;
  caixaRelatorios.IBQ_receber.open;
  caixaRelatorios.IBQ_prevtitulos.open;
  caixaRelatorios.frx_prevtitulos.ShowReport();
  except
    on E: Exception do
      begin
       ShowMessage('Campos Obrigatórios!' );
       Abort;
      end;
 end;
end;

procedure TREL_prevtitulos.FormCreate(Sender: TObject);
begin
   Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
   Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
