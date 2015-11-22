unit UP_PedCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TPPedCompra = class(TxPesqPadrao)
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure procSelect; override;
    class procedure ChamaTela(AOwner: TComponent);
  end;

var
  PPedCompra: TPPedCompra;

implementation

{$R *.dfm}

uses dm000, UDM_PedCompra, UM_PedCompra, UM_BaixaPedidoCompra;

class procedure TPPedCompra.ChamaTela(AOwner: TComponent);
begin
   PPedCompra := TPPedCompra.Create(AOwner);
   try
      PPedCompra.ShowModal;
   finally
      FreeAndNil(PPedCompra);
   end;
end;

procedure TPPedCompra.FormCreate(Sender: TObject);
begin
   inherited;
   procInicializar(dmPedCompra.PedidoCompra, True, False, MPedCompra, TMPedCompra);
end;

procedure TPPedCompra.procSelect;
begin
   inherited;
   procMontaWhere;

   dmPedCompra.PedidoCompra.Close;
   dmPedCompra.PedidoCompra.SQL.Text := ' SELECT A.*, '+
                                        '        B.EMP_RAZAO, '+
                                        '        C.DEP_NOME, '+
                                        '        D.PESS_NOME, '+
                                        '        E.UN_DESCRICAO, '+
                                        '        F.CDP_DESCRICAO, '+
                                        '        G.PRO_DESCRICAO '+
                                        '  FROM PEDIDO_COMPRA A '+
                                        '  INNER JOIN EMPRESA B ON A.PDC_EMPRESA = B.EMP_COD '+
                                        '  INNER JOIN DEPARTAMENTO C ON A.PDC_DEPARTAMENTO = C.DEP_COD '+
                                        '  INNER JOIN PESSOAS D ON A.PDC_FORNECEDOR = D.PESS_CODIGO '+
                                        '  INNER JOIN UNIDADE E ON A.PDC_UNMEDIDA = E.UN_CODIGO '+
                                        '  INNER JOIN CONDICAOPAGAMENTO F ON A.PDC_CONDICAO_PGTO = F.CDP_CODIGO '+
                                        '  INNER JOIN PRODUTOS G ON A.PDC_EMPRESA = G.PRO_EMPRESA '+
                                        '                       AND A.PDC_PRODUTO = G.PRO_CODIGO '+
                                        '  WHERE '+c_where;
   dmPedCompra.PedidoCompra.Open;
end;

procedure TPPedCompra.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   procBotaoVisivelHabilitado(Sender);
   if dmPedCompra.PedidoCompra.IsEmpty then
      Exit;

   procMontarVLocate;
   try
      TMBaixaPedidoCompra.ChamaTela(Self, dmPedCompra.PedidoCompraPDC_FORNECEDOR.AsInteger);
   finally
      procSelect;
      procLocate;
   end;
end;

end.
