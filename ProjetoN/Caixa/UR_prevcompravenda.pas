unit UR_prevcompravenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TREL_prevcompravenda = class(TForm)
    btn_relprev: TButton;
    Image1: TImage;
    lbn_empresa: TLabel;
    edit_empresacd: TEdit;
    lb_inicialcx: TLabel;
    edit_atualdata: TMaskEdit;
    lb_finalcx: TLabel;
    edit_dataprev: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn_relprevClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  REL_prevcompravenda: TREL_prevcompravenda;

implementation

{$R *.dfm}

uses UR_caixaRelatorios;

procedure TREL_prevcompravenda.btn_relprevClick(Sender: TObject);
begin
  caixaRelatorios.IBQ_vendas.Close;
  caixaRelatorios.IBQ_vendas.SQL.Text:='  select * from rel_previpedidos_vendas(:codigoemp,:atualdata,:dataprevista);';
  caixaRelatorios.IBQ_vendas.ParamByName('codigoemp').Value := StrToInt(edit_empresacd.Text);
  caixaRelatorios.IBQ_vendas.ParamByName('atualdata').Value:= formatdatetime('dd/mm/yyyy', strtodate(edit_atualdata.Text));
  caixaRelatorios.IBQ_vendas.ParamByName('dataprevista').Value := formatdatetime('dd/mm/yyyy', strtodate(edit_dataprev.Text));

  caixaRelatorios.IBQ_compras.Close;
  caixaRelatorios.IBQ_compras.SQL.Text :=' select * from rel_previpedidos_compras (:codigoemp,:atualdata,:dataprevista);';
  caixaRelatorios.IBQ_compras.ParamByName('codigoemp').Value := StrToInt(edit_empresacd.Text);
  caixaRelatorios.IBQ_compras.ParamByName('atualdata').Value:= formatdatetime('dd/mm/yyyy', strtodate(edit_atualdata.Text));
  caixaRelatorios.IBQ_compras.ParamByName('dataprevista').Value := formatdatetime('dd/mm/yyyy', strtodate(edit_dataprev.Text));

  caixaRelatorios.IBQ_prevpedidos.Close;
  caixaRelatorios.IBQ_prevpedidos.SQL.Text:= 'select * from rel_previsaoPedidos(:codigoemp,:atualdata,:dataprevista);';
  caixaRelatorios.IBQ_prevpedidos.ParamByName('codigoemp').Value := StrToInt(edit_empresacd.Text);
  caixaRelatorios.IBQ_prevpedidos.ParamByName('atualdata').Value:= formatdatetime('dd/mm/yyyy', strtodate(edit_atualdata.Text));
  caixaRelatorios.IBQ_prevpedidos.ParamByName('dataprevista').Value := formatdatetime('dd/mm/yyyy', strtodate(edit_dataprev.Text));

  caixaRelatorios.IBQ_vendas.Open;
  caixaRelatorios.IBQ_compras.Open;
  caixaRelatorios.IBQ_prevpedidos.Open;
  caixaRelatorios.frx_prevpedidos.ShowReport();

  end;

procedure TREL_prevcompravenda.FormCreate(Sender: TObject);
begin
   Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
   Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
