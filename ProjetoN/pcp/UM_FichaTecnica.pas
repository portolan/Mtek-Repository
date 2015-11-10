unit UM_FichaTecnica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Tabs, Vcl.DockTabSet, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TM_FichaTecnica = class(TxManuPadrao)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    db_produto: TDBEdit;
    db_codigo: TDBEdit;
    db_unidade: TDBEdit;
    db_custo_unitario: TDBEdit;
    db_mao_obra: TDBEdit;
    db_custototal: TDBEdit;
    db_tempoproducao: TDBEdit;
    db_empresa: TDBEdit;
    procedure db_produtoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_FichaTecnica: TM_FichaTecnica;

implementation

{$R *.dfm}

uses dm000, UDM_PCP, UP_FichaTecnica, UDM_Estoque, UP_Produto;

procedure TM_FichaTecnica.db_produtoEnter(Sender: TObject);
begin
  inherited;
      PProduto := TPProduto.Create(self);
  try
      PProduto.procInicializar(DM_Estoque.Produtos,false,true,PProduto,TPProduto);
      PProduto.ShowModal;
  finally
    DM_PCP.Ficha_TecnicaFT_PRODUTO.Value:= DM_Estoque.ProdutosPRO_CODIGO.AsString;
    DM_PCP.Ficha_TecnicaFT_EMPRESA.Value := DM_Estoque.ProdutosPRO_EMPRESA.AsInteger;
    FreeAndNil(PProduto);
  end;
end;

end.

