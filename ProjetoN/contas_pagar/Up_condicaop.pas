unit Up_condicaop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  Tp_condicaopag = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure procSelect; override;
    class procedure chamaTela(xPai: TComponent);
  end;

var
  p_condicaopag: Tp_condicaopag;

implementation

{$R *.dfm}

uses Udm_contaspagar, Um_condicaop ;

class procedure Tp_condicaopag.chamaTela(xPai: TComponent);

begin
p_condicaopag := Tp_condicaopag.Create(xPai);
try
   p_condicaopag.ShowModal;
finally
  Freeandnil(p_condicaopag);
end;
end;

procedure Tp_condicaopag.FormCreate(Sender: TObject);
begin
   inherited;
   procInicializar(dm_contaspagar.condicaoPag, True, False, m_condicaopag, Tm_condicaopag);
end;

procedure Tp_condicaopag.procSelect;
begin
   inherited;
   procMontaWhere;
   dm_contaspagar.condicaopag.Close;
   dm_contaspagar.condicaopag.SQL.Text:='select * from condicaopagamento where '+c_where;
   dm_contaspagar.condicaopag.open;
end;

end.
