unit UP_Marcas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPMarcas = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure procSelect; Override;
  end;

var
  PMarcas: TPMarcas;

implementation

{$R *.dfm}

uses UDM_Estoque, UM_Marcas;

procedure TPMarcas.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_Estoque.Marcas, False, False, PMarcas, TPMarcas);
    //TelaManutencao := MMarcas;
    //CTelaManutencao := TPMarcas;
end;

procedure TPMarcas.procSelect;
begin
  inherited;
    DM_Estoque.Marcas.Close;
    DM_Estoque.Marcas.SQL.Text := 'select * from Marcas';
    DM_Estoque.Marcas.Close;
end;

end.
