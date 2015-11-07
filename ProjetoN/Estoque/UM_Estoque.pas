unit UM_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB;

type
  TMEstoque = class(TxManuPadrao)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label3: TLabel;
    Label17: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit16: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label16: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label15: TLabel;
    SpeedButton2: TSpeedButton;
    editProduto: TEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit12: TDBEdit;
    ComboBox1: TComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure editProdutoEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

    { Private declarations }
  public
    { Public declarations }
    c_codigoProduto : String;

    procedure procSelecionaItems;
  end;

var
  MEstoque: TMEstoque;

implementation

{$R *.dfm}

uses UDM_Estoque, UM_Produto, UP_Produto, UP_Marcas, UM_Bloco, UP_Prateleira,
  UP_Bloco, UP_Categoria, UDM_contabil;

procedure TMEstoque.ComboBox1Exit(Sender: TObject);
begin
  inherited;
    if TComboBox(Sender).ItemIndex = 0 then
        DM_Estoque.EstoqueESTOQ_STATUS.Value := 'a'
    else
        DM_Estoque.EstoqueESTOQ_STATUS.Value := 'i';
end;

procedure TMEstoque.editProdutoEnter(Sender: TObject);
begin
  inherited;
    PProduto := TPProduto.Create(Self);
    try
        PProduto.procInicializar(DM_Estoque.Marcas, False, True, PProduto, TPProduto);

        PProduto.ShowModal;
    finally
        DM_Estoque.EstoqueESTOQ_PRODUTO.Value := DM_Estoque.Produtos.FieldByName('pro_codigo').AsString;
        DM_Estoque.EstoqueESTOQ_EMPRESA.value := DM_Estoque.Produtos.FieldByName('pro_empresa').AsInteger;
        editProduto.Text := DM_Estoque.Produtos.FieldByName('PRO_DESCRICAO').AsString;

        if DM_Estoque.Estoque.State in [dsEdit, dsInsert] then
            procSelecionaItems;

        FreeAndNil(PProduto);
    end;
end;

procedure TMEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
    DM_Estoque.Estoque.Close;
    DM_Estoque.Produtos.Close;
    DM_Estoque.Bloco.Close;
    DM_Estoque.Prateleira.Close;
end;

procedure TMEstoque.FormCreate(Sender: TObject);
begin
  inherited;

    DM_Estoque.Produtos.Close;
    DM_Estoque.Produtos.SQL.Text := 'select * from Produtos';
    DM_Estoque.Produtos.Open;

    if DM_Estoque.Estoque.State in [dsEdit] then
            procSelecionaItems;
end;

procedure TMEstoque.procSelecionaItems;
begin
    DM_Estoque.Bloco.Close;
    DM_Estoque.Bloco.SQL.Text := 'select * from bloco where bloc_empresa = ' + DM_Estoque.EstoqueESTOQ_EMPRESA.AsString;
    DM_Estoque.Bloco.Open;
    DM_Estoque.Bloco.FetchAll;

    DM_Estoque.Prateleira.Close;
    DM_Estoque.Prateleira.SQL.Text := 'select * from prateleira where prat_empresa = ' + DM_Estoque.EstoqueESTOQ_EMPRESA.AsString;
    DM_Estoque.Prateleira.Open;
    DM_Estoque.Prateleira.FetchAll;

    DM_Estoque.Categoria.Close;
    DM_Estoque.Categoria.SQL.Text := 'select * from categoria where cat_empresa = ' + DM_Estoque.EstoqueESTOQ_EMPRESA.AsString;
    DM_Estoque.Categoria.Open;
    DM_Estoque.Categoria.FetchAll;

    editProduto.Text := DM_Estoque.ProdutosPRO_DESCRICAO.AsString;
end;

procedure TMEstoque.SpeedButton1Click(Sender: TObject);
begin
  inherited;
    PBloco := TPBloco.Create(Self);
    try
        PBloco.ShowModal;
    finally
        FreeAndNil(PBloco);
    end;
end;

procedure TMEstoque.SpeedButton2Click(Sender: TObject);
begin
  inherited;
    PPrateleira := TPPrateleira.Create(Self);
    try
        PPrateleira.ShowModal;    
    finally
        FreeAndNil(PPrateleira);
    end;
end;

procedure TMEstoque.SpeedButton3Click(Sender: TObject);
begin
  inherited;
    PProduto := TPProduto.Create(Self);
    try
        PProduto.ShowModal;    
    finally
        FreeAndNil(PProduto);
    end;
end;

procedure TMEstoque.SpeedButton4Click(Sender: TObject);
begin
  inherited;
    PCategoria := TPCategoria.Create(Self);
    try
        PCategoria.ShowModal;    
    finally
        FreeAndNil(PCategoria);
    end;
end;

end.
