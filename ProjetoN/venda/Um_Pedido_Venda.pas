unit Um_Pedido_Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Vcl.Mask, Vcl.DBCtrls, dm000, UDM_Venda,
  ufrm_Relacionamento, UP_empresa, UDM_empresa, Um_Condição_Pagamento,
  UDM_contabil, UM_empresa, UM_departamento, Datasnap.DBClient, UM_Pessoa,
  UDM_Estoque, UM_Produto, UP_Produto, UP_departamento, Up_Emissao_NFE;

type
  TFrm_Pedido_Venda = class(TxManuPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    frm_empresa: TfrmRelacionamento;
    frm_produto: TfrmRelacionamento;
    ComboBox1: TComboBox;
    frm_departamento: TfrmRelacionamento;
    procedure FormShow(Sender: TObject);
    procedure DBEdit18Enter(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pedido_Venda: TFrm_Pedido_Venda;

implementation

{$R *.dfm}


procedure TFrm_Pedido_Venda.ComboBox1Exit(Sender: TObject);
begin
  inherited;
  if ComboBox1.ItemIndex = 0 then
   begin
      DM_VENDA.IB_VendaPED_SITUACAO.Value := 'A';
   end
   ELSE if ComboBox1.ItemIndex= 1 then
        begin
          DM_VENDA.IB_VendaPED_SITUACAO.Value := 'F'
        end;

end;

procedure TFrm_Pedido_Venda.DBEdit18Enter(Sender: TObject);
begin
  inherited;
  DBEdit18.Text:=DateToStr(date);
end;

procedure TFrm_Pedido_Venda.DBEdit3Change(Sender: TObject);
begin
  inherited;

end;

//busca a empresa abrindo o form de EMPRESA

{procedure TFrm_Pedido_Venda.DBEdit4Change(Sender: TObject);
begin
  inherited;
    P_empresa := TP_empresa.Create(self);
  try
    P_empresa.procInicializar(DM_contabil.empresa,false,true,P_empresa,TP_empresa);
    P_empresa.ShowModal;
  finally
    DM_VENDA.IB_VendaPED_EMPRESA.Value := DM_contabil.empresaEMP_COD.AsInteger;
  end;
end; }

procedure TFrm_Pedido_Venda.FormShow(Sender: TObject);
begin
  inherited;
  frm_empresa.procInicializar(DM_VENDA.IB_VendaPED_EMPRESA,
                              DM_VENDA.IB_VendaEMP_RAZAO,
                              DM_VENDA.DS_VENDA,
                              ' SELECT A.EMP_COD, '+
                              '        A.EMP_RAZAO'+
                              ' FROM EMPRESA A    '+
                              ' WHERE A.EMP_COD = :EMP ',
                               P_empresa, TP_empresa, ['EMP'], ['PED_EMPRESA'],
                               ['EMP_COD', 'EMP_RAZAO']);
  frm_produto.procInicializar(DM_VENDA.IB_VendaPED_PRODUTO,
                              DM_VENDA.IB_VendaPRO_DESCRICAO,
                              DM_VENDA.DS_Venda,
                              ' SELECT A.PRO_CODIGO, '+
                              '        A.PRO_DESCRICAO '+
                              '   FROM PRODUTOS A '+
                              '  WHERE A.PRO_EMPRESA = :EMP '+
                              '    AND A.PRO_CODIGO = :PRO ',
                              Pproduto, TPproduto, ['EMP', 'PRO'],
                              ['PED_PRODUTO','PED_DESCRICAO'],
                              ['PRO_CODIGO','PRO_DESCRICAO']);
  frm_departamento.procInicializar(DM_VENDA.IB_VendaPED_DEPOSITO,
                                   DM_VENDA.IB_VendaDEP_NOME,
                                   DM_VENDA.DS_Venda,
                                   ' SELECT A.DEP_COD, '+
                                   '        A.DEP_NOME '+
                                   '   FROM DEPARTAMENTO A '+
                                   '  WHERE A.DEP_EMPRESAR = :EMP '+
                                   '    AND A.DEP_COD = :DPTO ',
                                   P_departamento, TP_departamento, ['EMP', 'DPTO'],
                                   ['PED_EMPRESA','PED_DEPOSITO'],
                                   ['DEP_COD','DEP_NOME']);

end;

end.
