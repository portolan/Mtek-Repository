unit Up_Pedido_Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, UDM_Venda, dm000, Um_Pedido_Venda,
  Um_Emissão_NFE;

type
  TUP_VENDA = class(TxPesqPadrao)
    bt_Gera_Relatorio: TButton;
    procedure FormCreate(Sender: TObject);
  private

    { Private declarations }
  public
  procedure procSelect; override;
    { Public declarations }
  end;

var
  UP_VENDA: TUP_VENDA;

implementation

{$R *.dfm}


procedure TUP_VENDA.FormCreate(Sender: TObject);
begin
  inherited;
  procInicializar(DM_VENDA.IB_Venda,TRUE,FALSE,Frm_Pedido_Venda, TFrm_Pedido_Venda);

end;

procedure TUP_VENDA.procSelect;
begin
   inherited;
   procMontaWhere;
      DM_VENDA.IB_Venda.Close;
      DM_VENDA.IB_Venda.SQL.Text:= 'SELECT A.*,            '+
                                   '       B.EMP_RAZAO,     '+
                                   '       C.DEP_NOME,      '+
                                   '       D.PRO_DESCRICAO '+
                                   ' FROM PEDIDOVENDA A '+
                                   ' INNER JOIN EMPRESA B ON A.PED_EMPRESA = B.EMP_COD'+
                                   ' INNER JOIN DEPARTAMENTO C ON A.PED_DEPOSITO = C.DEP_COD '+
                                   ' AND A.PED_EMPRESA = C.DEP_EMPRESAR '+
                                   ' INNER JOIN PRODUTOS D ON A.PED_EMPRESA = D.PRO_EMPRESA '+
                                   ' AND A.PED_PRODUTO = D.PRO_CODIGO '+
                                   '    WHERE '+c_where;
      DM_VENDA.IB_Venda.Open;
end;


end.
