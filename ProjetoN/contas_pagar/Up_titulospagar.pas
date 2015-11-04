unit Up_titulospagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tp_titulospagar = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure procSelect; override;
    class procedure chamaTela(xPai: TComponent);
  end;

var
  p_titulospagar: Tp_titulospagar;

implementation

{$R *.dfm}

uses Udm_contaspagar, Um_titulospagar;

class procedure Tp_titulospagar.chamaTela(xPai: TComponent);

begin
p_titulospagar := Tp_titulospagar.Create(xPai);
try
   p_titulospagar.ShowModal;
finally
  Freeandnil(P_titulospagar);
end;
end;

procedure Tp_titulospagar.FormCreate(Sender: TObject);
begin
  inherited;
   procInicializar(dm_contaspagar.titulospagar, true, false, m_titulospagar, Tm_titulospagar);
   funcAtribuiFiltros;
   nomeQry := 'TITULOSP';
end;

procedure Tp_titulospagar.procSelect;
begin
  inherited;
   dm_contaspagar.titulospagar.Close;
   dm_contaspagar.titulospagar.SQL.Text:='select a.*  from TITULOSP a';
   dm_contaspagar.titulospagar.open;
end;

end.
