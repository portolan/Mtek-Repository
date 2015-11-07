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
    class procedure procChamaTela(Owner : TComponent);
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
end;

class procedure Tp_titulospagar.procChamaTela(Owner: TComponent);
begin
  p_titulospagar := Tp_titulospagar.Create(Owner);
  try
     p_titulospagar.ShowModal;
  finally
     FreeAndNil(p_titulospagar);
  end;
end;

procedure Tp_titulospagar.procSelect;
begin
   inherited;
   procMontaWhere;
   dm_contaspagar.titulospagar.Close;
   dm_contaspagar.titulospagar.SQL.Text:='select a.*  from TITULOSP a where '+c_where;
   dm_contaspagar.titulospagar.open;
end;

end.
