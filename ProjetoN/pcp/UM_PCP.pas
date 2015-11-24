unit UM_PCP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Menus, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, IBX.IBCustomDataSet, IBX.IBUpdateSQL, IBX.IBQuery, Vcl.DBCtrls,
  Vcl.Mask, ufrm_Relacionamento;

type
  TM_OP = class(TxManuPadrao)
    Label9: TLabel;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure DBEdit2Click(Sender: TObject);
    procedure DBEdit4Click(Sender: TObject);
    procedure DBEdit5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_OP: TM_OP;

implementation

{$R *.dfm}

uses UDM_PCP, dm000, UEstoque, UP_empresa, UDM_contabil, UM_departamento,
  UP_departamento, UM_FichaTecnica, UP_FichaTecnica, UDM_Estoque, UM_Estoque,
  UP_Estoque, UM_Produto, UP_Produto;

procedure TM_OP.DBEdit2Click(Sender: TObject);
begin
  inherited;
      PProduto:= TPProduto.Create(self);
  try
    PProduto.procInicializar(DM_Estoque.Produtos,false,true,PProduto,TPProduto);
    PProduto.ShowModal;
  finally
    DM_PCP.OrdemProducaoOP_PRODUTO.Value:= DM_Estoque.ProdutosPRO_CODIGO.AsString;
  end;
  DBEdit3.Text := DM_Estoque.ProdutosPRO_DESCRICAO.AsString;
end;

procedure TM_OP.DBEdit4Click(Sender: TObject);
begin
  inherited;
P_empresa := TP_empresa.Create(self);
  try
    P_empresa.procInicializar(DM_contabil.empresa,false,true,P_empresa,TP_empresa);
    P_empresa.ShowModal;
  finally
    DM_PCP.OrdemProducaoOP_EMPRESA.Value := DM_contabil.empresaEMP_COD.AsInteger;
  end;
  DBEdit6.Text := DM_contabil.empresaEMP_RAZAO.AsString;
end;

procedure TM_OP.DBEdit5Click(Sender: TObject);
begin
  inherited;
         P_departamento := TP_departamento.Create(self);
  try
    P_departamento.procInicializar(DM_contabil.departamento,false,true,P_departamento,TP_departamento);
    P_departamento.ShowModal;
  finally
    DM_PCP.OrdemProducaoOP_DEPARTAMENTO.Value := DM_contabil.departamentoDEP_COD.AsInteger;
  end;
    DBEdit7.Text := DM_contabil.departamentoDEP_NOME.AsString;
end;

procedure TM_OP.FormCreate(Sender: TObject);
begin
  inherited;
  DBEdit13.Text:=DateToStr(date);
end;

end.
