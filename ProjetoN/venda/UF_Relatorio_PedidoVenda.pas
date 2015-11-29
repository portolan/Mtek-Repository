unit UF_Relatorio_PedidoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Mask, Vcl.Buttons, UDM_Venda, dm000, UR_Pedido_Venda;

type
  Tf_Pedidos = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_Pedidos: Tf_Pedidos;

implementation

{$R *.dfm}

procedure Tf_Pedidos.Button1Click(Sender: TObject);
begin
    UR_Pedido_Venda.frmRelatorios.IB_PedidoData.ParamByName('dtInicial').Value := strToDate(Edit1.Text);
    UR_Pedido_Venda.frmRelatorios.IB_PedidoData.ParamByName('dtFinal').Value   := strToDate(Edit2.Text);


    UR_Pedido_Venda.frmRelatorios.Close;
    UR_Pedido_Venda.frmRelatorios.IB_PedidoData.SQL.Text := ' SELECT A.*, '+
                                                            ' B.emp_razao, '+
                                                            ' c.dep_nome, '+
                                                            ' d.pro_descricao'+
                                                            ' FROM PEDIDOVENDA A '+
             ' INNER join EMPRESA B ON a.ped_empresa =  b.emp_cod '+
             ' INNER JOIN DEPARTAMENTO C ON A.PED_DEPOSITO = C.DEP_COD '+
             ' AND A.PED_EMPRESA = C.DEP_EMPRESAR '+
             'INNER JOIN PRODUTOS D ON A.PED_EMPRESA = D.PRO_EMPRESA '+
             ' AND A.PED_PRODUTO = D.PRO_CODIGO';

    UR_Pedido_Venda.frmRelatorios.IB_PedidoData.ParamByName('dtInicial').Value := strToDate(Edit1.Text);
    UR_Pedido_Venda.frmRelatorios.IB_PedidoData.ParamByName('dtFinal').Value   := strToDate(Edit2.Text);
    UR_Pedido_Venda.frmRelatorios.IB_PedidoData.Open;

    UR_Pedido_Venda.frmRelatorios.frxRelatorio.ShowReport();
end;


end.
