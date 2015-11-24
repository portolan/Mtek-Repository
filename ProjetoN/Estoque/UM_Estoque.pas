unit UM_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, IBX.IBQuery, Vcl.Grids;

type
  TMEstoque = class(TxManuPadrao)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label3: TLabel;
    Label17: TLabel;
    Label1: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    SpeedButton2: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit16: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    editProduto: TEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit12: TDBEdit;
    ComboBox1: TComboBox;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label9: TLabel;
    editCategoria: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure editProdutoEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
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
  UP_Bloco, UP_Categoria, UDM_contabil, dm000, UEstoque, UM_Prateleira,
  UM_Categoria;

procedure TMEstoque.ComboBox1Exit(Sender: TObject);
begin
  inherited;
    if TComboBox(Sender).ItemIndex = 0 then
        DM_Estoque.EstoqueESTOQ_STATUS.Value := 'A'
    else
        DM_Estoque.EstoqueESTOQ_STATUS.Value := 'I';
end;

procedure TMEstoque.DBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
    if DM_Estoque.Bloco.IsEmpty then
        raise Exception.Create('Erro - Verifique se existe bloco para comportar este produto!');
end;

procedure TMEstoque.DBLookupComboBox2Enter(Sender: TObject);
begin
  inherited;
    if DM_Estoque.Estoque.State in [dsinsert] then
    begin
        try
            DM_Estoque.Prateleira.Close;
            DM_Estoque.Prateleira.SQL.Text := 'select * from prateleira where prat_empresa = ' +
                                               DM_Estoque.EstoqueESTOQ_EMPRESA.AsString +
                                               ' and prat_bloco = ' +
                                               DM_Estoque.EstoqueESTOQ_BLOCO.AsString +
                                               ' and prat_categoria = ' +
                                               DM_Estoque.ProdutosPRO_CATEGORIA.AsString;
            DM_Estoque.Prateleira.Open;
            DM_Estoque.Prateleira.FetchAll;


        except on E: Exception do
            raise Exception.Create('Erro - Soluções : ' + sLineBreak +
                                       '1 - Verifique se a categoria deste produto se enquadra nesta Prateleira!' + sLineBreak +
                                       '2 - Verifique se existem Prateleiras cadastradas' + sLineBreak +
                                       '3 - Verifique se está selecionado o Bloco!');
        end;

    end
    else
    begin
        DM_Estoque.Prateleira.Close;
        DM_Estoque.Prateleira.SQL.Text := 'select * from prateleira';
        DM_Estoque.Prateleira.Open;
        DM_Estoque.Prateleira.FetchAll;
    end;
end;

procedure TMEstoque.editProdutoEnter(Sender: TObject);
begin
  inherited;
    if DM_Estoque.Estoque.State in [dsInsert] then
    begin
        PProduto := TPProduto.Create(Self);
        try
            PProduto.procInicializar(DM_Estoque.Produtos, False, True, PProduto, TPProduto);

            PProduto.Caption := 'Selecione um Produto...';
            PProduto.Height := 350;
            PProduto.ShowModal;

        finally
            DM_Estoque.EstoqueESTOQ_PRODUTO.Value := DM_Estoque.Produtos.FieldByName('pro_codigo').AsString;
            DM_Estoque.EstoqueESTOQ_EMPRESA.value := DM_Estoque.Produtos.FieldByName('pro_empresa').AsInteger;
            DM_Estoque.EstoqueESTOQ_CATEGORIA.Value := DM_Estoque.Produtos.FieldByName('pro_categoria').AsInteger;
            editProduto.Text := DM_Estoque.Produtos.FieldByName('PRO_DESCRICAO').AsString;

            if DM_Estoque.Estoque.State in [dsEdit, dsInsert] then
                procSelecionaItems;

            FreeAndNil(PProduto);
        end;
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

    if DM_Estoque.Estoque.State in [dsEdit] then
    begin
        procSelecionaItems;
        DBEdit5.ReadOnly := true;
        DBEdit5.ParentColor := true;
    end;
end;

procedure TMEstoque.procSelecionaItems;
var
    qryDin : TIBQuery;
begin
    DM_Estoque.Bloco.Close;
    DM_Estoque.Bloco.SQL.Text := 'select * from bloco where bloc_empresa = ' + DM_Estoque.EstoqueESTOQ_EMPRESA.AsString;
    DM_Estoque.Bloco.Open;
    DM_Estoque.Bloco.FetchAll;

    DM_Estoque.Prateleira.Close;
    DM_Estoque.Prateleira.SQL.Text := 'select * from prateleira';
    DM_Estoque.Prateleira.Open;
    DM_Estoque.Prateleira.FetchAll;


    qryDin := funcCriaQuery;
    qryDin.Close;
    qryDin.SQL.Text := 'select a.pro_descricao nomeProduto from produtos a where ' +
                       'pro_empresa = ' + DM_Estoque.EstoqueESTOQ_EMPRESA.AsString + ' and ' +
                       'pro_codigo  = ' + DM_Estoque.EstoqueESTOQ_PRODUTO.AsString;
    qryDin.Open;

    editProduto.Text := qryDin.FieldByName('nomeProduto').AsString;


    qryDin.Close;
    qryDin.SQL.Text := 'select cat_descricao nomecat from categoria where ' +
                                     ' cat_empresa = '    + DM_Estoque.EstoqueESTOQ_EMPRESA.AsString +
                                     ' and cat_codigo = ' + DM_Estoque.EstoqueESTOQ_CATEGORIA.AsString;
    qryDin.Open;
    editCategoria.Text := qryDin.FieldByName('nomecat').AsString;


end;

procedure TMEstoque.SpeedButton1Click(Sender: TObject);
begin
  inherited;
    PBloco := TPBloco.Create(Self);
    try
        PBloco.procInicializar(DM_Estoque.Bloco, False, False, MBloco, TMBloco);
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
        PPrateleira.procInicializar(DM_Estoque.Prateleira, False, False, MPrateleira, TMPrateleira);
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
        PCategoria.procInicializar(DM_Estoque.Categoria, False, False, MCategoria, TMCategoria);
        PCategoria.ShowModal;    
    finally
        FreeAndNil(PCategoria);
    end;
end;

end.
