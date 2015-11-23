unit UDM_Estoque;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  IBX.IBUpdateSQL, Vcl.Dialogs;

type
  TDM_Estoque = class(TDataModule)
    Produtos: TIBQuery;
    UProdutos: TIBUpdateSQL;
    DSProdutos: TDataSource;
    Estoque: TIBQuery;
    DSEstoque: TDataSource;
    UuEstoque: TIBUpdateSQL;
    UMarcas: TIBUpdateSQL;
    DSMarcas: TDataSource;
    Marcas: TIBQuery;
    MarcasMARC_CODIGO: TIntegerField;
    MarcasMARC_DESCRICAO: TIBStringField;
    MarcasMARC_OBS: TIBStringField;
    DSMovimentoEstoque: TDataSource;
    UMovimentoEstoque: TIBUpdateSQL;
    Categoria: TIBQuery;
    UCategoria: TIBUpdateSQL;
    DSCategoria: TDataSource;
    QueryGenerico: TIBQuery;
    ProdutosPRO_CODIGO: TIBStringField;
    ProdutosPRO_CODREF: TIBStringField;
    ProdutosPRO_CODBARRAS: TIBStringField;
    ProdutosPRO_STATUS: TIBStringField;
    ProdutosPRO_DTCADASTRO: TDateField;
    ProdutosPRO_DESCRICAO: TIBStringField;
    ProdutosPRO_MARCA: TIntegerField;
    ProdutosPRO_MOEDA: TIBStringField;
    ProdutosPRO_CATEGORIA: TIntegerField;
    ProdutosPRO_PESO: TIBBCDField;
    ProdutosPRO_CUSTOMEDIO: TIBBCDField;
    ProdutosPRO_VALORIZACAO: TIBBCDField;
    ProdutosPRO_VLRFRETE: TIBBCDField;
    ProdutosPRO_PERCENCARG: TIBBCDField;
    ProdutosPRO_VLRENCARG: TIBBCDField;
    ProdutosPRO_PERCMARGLUCR: TIBBCDField;
    ProdutosPRO_VLRMARGLUCR: TIBBCDField;
    ProdutosPRO_VLRVENDA: TIBBCDField;
    ProdutosPRO_OBS: TIBStringField;
    ProdutosPRO_IMG: TBlobField;
    Bloco: TIBQuery;
    DSBloco: TDataSource;
    UBloco: TIBUpdateSQL;
    BlocoBLOC_EMPRESA: TIntegerField;
    BlocoBLOC_CODIGO: TIntegerField;
    BlocoBLOC_DESCRICAO: TIBStringField;
    BlocoBLOC_OBS: TIBStringField;
    UPrateleira: TIBUpdateSQL;
    DSPrateleira: TDataSource;
    Prateleira: TIBQuery;
    PrateleiraPRAT_EMPRESA: TIntegerField;
    PrateleiraPRAT_CODIGO: TIntegerField;
    PrateleiraPRAT_DESCRICAO: TIBStringField;
    PrateleiraPRAT_OBS: TIBStringField;
    CategoriaCAT_EMPRESA: TIntegerField;
    CategoriaCAT_CODIGO: TIntegerField;
    CategoriaCAT_DESCRICAO: TIBStringField;
    CategoriaCAT_NCM: TIBStringField;
    CategoriaCAT_OBS: TIBStringField;
    Unidade: TIBQuery;
    DSUnidade: TDataSource;
    UUnidade: TIBUpdateSQL;
    ProdutosPRO_UNID: TIntegerField;
    UnidadeUN_CODIGO: TIntegerField;
    UnidadeUN_DESCRICAO: TIBStringField;
    UnidadeUN_OBS: TIBStringField;
    ProdutosPRO_GRUPO: TIBStringField;
    EstoqueESTOQ_EMPRESA: TIntegerField;
    EstoqueESTOQ_PRODUTO: TIBStringField;
    EstoqueESTOQ_BLOCO: TIntegerField;
    EstoqueESTOQ_PRATELEIRA: TIntegerField;
    EstoqueESTOQ_CODIGO: TIntegerField;
    EstoqueESTOQ_STATUS: TIBStringField;
    EstoqueESTOQ_QTD: TIBBCDField;
    EstoqueESTOQ_QTDMIN: TIBBCDField;
    EstoqueESTOQ_QTDMAX: TIBBCDField;
    EstoqueESTOQ_CUSTOMEDIO: TIBBCDField;
    EstoqueESTOQ_CATEGORIA: TIntegerField;
    EstoqueESTOQ_TIPO: TIntegerField;
    EstoqueESTOQ_DTCADASTRO: TDateField;
    EstoqueESTOQ_OBS: TIBStringField;
    ProdutosPRO_CLASSFISCAL: TIBStringField;
    ProdutosPRO_CSTCSOSN: TIBStringField;
    ProdutosPRO_NCMSH: TIBStringField;
    ProdutosPRO_EXTIPI: TIBStringField;
    ProdutosPRO_SITTRIB: TIBStringField;
    ProdutosPRO_PIS: TIBStringField;
    ProdutosPRO_COFINS: TIBStringField;
    ProdutosPRO_CSTPIS: TIBStringField;
    ProdutosPRO_ESTATUAL: TIBStringField;
    EstoqueESTOQ_CHAVE: TIBStringField;
    ProdutosPRO_EMPRESA: TIntegerField;
    EstoquePRO_DESCRICAO: TIBStringField;
    ProdutosEMP_RAZAO: TIBStringField;
    ProdutosCAT_DESCRICAO: TIBStringField;
    EstoqueEMP_RAZAO: TIBStringField;
    EstoqueBLOC_DESCRICAO: TIBStringField;
    EstoquePRAT_DESCRICAO: TIBStringField;
    EstoqueCAT_DESCRICAO: TIBStringField;
    PrateleiraPRAT_QTDMAXIMA: TIntegerField;
    BlocoBLOC_QTDMAXIMA: TIntegerField;
    PrateleiraPRAT_CATEGORIA: TIntegerField;
    BlocoBLOC_CATEGORIA: TIntegerField;
    PrateleiraPRAT_BLOCO: TIntegerField;
    MovimentoEstoque: TIBQuery;
    MovimentoEstoqueEM_EMPRESA: TIntegerField;
    MovimentoEstoqueEM_PRODUTO: TIBStringField;
    MovimentoEstoqueEM_BLOCO: TIntegerField;
    MovimentoEstoqueEM_PRATELEIRA: TIntegerField;
    MovimentoEstoqueEM_ESTOQUE: TIntegerField;
    MovimentoEstoqueEM_CODIGO: TIntegerField;
    MovimentoEstoqueEM_TIPO: TIBStringField;
    MovimentoEstoqueEM_QTD: TIBBCDField;
    MovimentoEstoqueEM_DATA: TDateTimeField;
    MovimentoEstoqueEM_OBS: TIBStringField;
    MovimentoEstoqueEM_VALOR_FINANCEIRO: TIBBCDField;
    MovimentoEstoqueEM_PEDIDOCOMPRAORIGEM: TIntegerField;
    MovimentoEstoquePRO_DESCRICAO: TIBStringField;
    MovimentoEstoqueEMP_RAZAO: TIBStringField;
    MovimentoEstoqueBLOC_DESCRICAO: TIBStringField;
    MovimentoEstoquePRAT_DESCRICAO: TIBStringField;
    MovimentoEstoqueEM_DPTO: TIntegerField;
    procedure ProdutosAfterInsert(DataSet: TDataSet);
    procedure EstoqueAfterInsert(DataSet: TDataSet);
    procedure MarcasAfterInsert(DataSet: TDataSet);
    procedure MovimentoEstoqueAfterInsert(DataSet: TDataSet);
    procedure CategoriaAfterInsert(DataSet: TDataSet);
    procedure BlocoAfterInsert(DataSet: TDataSet);
    procedure PrateleiraAfterInsert(DataSet: TDataSet);
    procedure UnidadeAfterInsert(DataSet: TDataSet);
    procedure MovimentoEstoqueBeforePost(DataSet: TDataSet);
    procedure ProdutosBeforePost(DataSet: TDataSet);
    procedure EstoqueBeforePost(DataSet: TDataSet);
    procedure PrateleiraBeforePost(DataSet: TDataSet);
    procedure MovimentoEstoqueAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    function funcPrateleiraVerificaBlocos:boolean;
    function funcVerificaPrateleiraDisponivel:boolean;
  end;

var
  DM_Estoque: TDM_Estoque;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000, UDM_contabil, UEstoque, UDM_PedCompra, UM_PedCompra;

{$R *.dfm}

{ TDM_Estoque }

procedure TDM_Estoque.BlocoAfterInsert(DataSet: TDataSet);
begin
    Bloco.FieldByName('BLOC_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_BLOCO');

end;

procedure TDM_Estoque.CategoriaAfterInsert(DataSet: TDataSet);
begin
    Categoria.FieldByName('CAT_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_CATEGORIA');
end;

procedure TDM_Estoque.EstoqueAfterInsert(DataSet: TDataSet);
begin
    Estoque.FieldByName('ESTOQ_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_ESTOQUE');
end;

procedure TDM_Estoque.EstoqueBeforePost(DataSet: TDataSet);
var
    qryDin : TIBQuery;
    i_qtdMaxPrateleira : integer;
    i_qtd : integer;
begin
    DM_Estoque.Estoque.FieldByName('ESTOQ_DTCADASTRO').Value := Date;
    DM_Estoque.Estoque.FieldByName('ESTOQ_QTD').Value := Abs(DM_Estoque.Estoque.FieldByName('ESTOQ_QTD').AsFloat);
    DM_Estoque.Estoque.FieldByName('ESTOQ_QTDMAX').Value := Abs(DM_Estoque.Estoque.FieldByName('ESTOQ_QTDMAX').AsFloat);
    DM_Estoque.Estoque.FieldByName('ESTOQ_QTDMIN').Value := Abs(DM_Estoque.Estoque.FieldByName('ESTOQ_QTDMIN').AsFloat);

    if Estoque.State in [dsInsert] then
    begin
        qryDin := funcCriaQuery;
        qryDin.Close;
        qryDin.SQL.Text := 'select prat_qtdmaxima as qtdmax from prateleira where '+
                           'prat_empresa = ' + EstoqueESTOQ_EMPRESA.AsString +
                           ' and prat_bloco  = ' + EstoqueESTOQ_BLOCO.AsString +
                           ' and prat_codigo = ' + EstoqueESTOQ_PRATELEIRA.AsString;
        qryDin.Open;
        i_qtdMaxPrateleira := qryDin.FieldByName('qtdmax').AsInteger;

        qryDin.Close;
        qryDin.SQL.Text := 'select count(1) as qtd from estoque where '+
                           'estoq_empresa = :codEmpresa and estoq_bloco = :codBloco '+
                           ' and estoq_prateleira = :codPrateleira';
        qryDin.ParamByName('codEmpresa').Value    := EstoqueESTOQ_EMPRESA.AsString;
        qryDin.ParamByName('codBloco').Value      := EstoqueESTOQ_BLOCO.AsString;
        qryDin.ParamByName('codPrateleira').Value := EstoqueESTOQ_PRATELEIRA.AsString;
        qryDin.Open;
        i_qtd := qryDin.FieldByName('qtd').AsInteger;

        if (i_qtd >= i_qtdMaxPrateleira) then
        begin
            ShowMessage('Quantidade Máxima de Produtos para esta prateleira obtidas!');
            funcVerificaPrateleiraDisponivel;
            Estoque.Cancel;
            Estoque.Edit;
        end;
    end;
end;

procedure TDM_Estoque.MarcasAfterInsert(DataSet: TDataSet);
begin
    Marcas.FieldByName('MARC_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_MARCAS');
end;

procedure TDM_Estoque.MovimentoEstoqueAfterInsert(DataSet: TDataSet);
begin
    MovimentoEstoque.FieldByName('EM_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_ESTOQ_MOVIMENTO');
end;

procedure TDM_Estoque.MovimentoEstoqueAfterPost(DataSet: TDataSet);
var
    qry : TIBQuery;
begin

    if (MovimentoEstoqueEM_TIPO.AsString = 'E') and (not MovimentoEstoqueEM_PEDIDOCOMPRAORIGEM.IsNull) then
    begin
        funcCalcCustoMedio(MovimentoEstoqueEM_EMPRESA.value,
                           MovimentoEstoqueEM_PRODUTO.value,
                           MovimentoEstoqueEM_BLOCO.value,
                           MovimentoEstoqueEM_PRATELEIRA.value,
                           MovimentoEstoqueEM_ESTOQUE.value);
    end;


end;

procedure TDM_Estoque.MovimentoEstoqueBeforePost(DataSet: TDataSet);
begin
    DM_Estoque.MovimentoEstoque.FieldByName('EM_QTD').Value := Abs(DM_Estoque.MovimentoEstoque.FieldByName('EM_QTD').AsFloat);
    DM_Estoque.MovimentoEstoque.FieldByName('EM_DATA').Value := Now;
end;

procedure TDM_Estoque.PrateleiraAfterInsert(DataSet: TDataSet);
begin
    Prateleira.FieldByName('PRAT_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_PRATELEIRA');
end;

procedure TDM_Estoque.PrateleiraBeforePost(DataSet: TDataSet);
var
    qryDin : TIBQuery;
    i_qtdMaxBloco : integer;
    i_qtd : integer;
begin
    if Prateleira.State in [dsInsert] then
    begin
        qryDin := funcCriaQuery;
        qryDin.Close;
        qryDin.SQL.Text := 'select count(1) as qtd from prateleira where '+
                           'prat_empresa = :codEmpresa and prat_bloco = :codBloco';
        qryDin.ParamByName('codEmpresa').Value   := PrateleiraPRAT_EMPRESA.AsString;
        qryDin.ParamByName('codBloco').Value     := PrateleiraPRAT_BLOCO.AsString;
        qryDin.Open;

        i_qtd := qryDin.FieldByName('qtd').AsInteger;

        qryDin.Close;
        qryDin.SQL.Text := 'select bloc_qtdmaxima as qtdmax from bloco where '+
                           'bloc_empresa = ' + PrateleiraPRAT_EMPRESA.AsString +
                           ' and bloc_codigo  = ' + PrateleiraPRAT_BLOCO.AsString;
        qryDin.Open;
        i_qtdMaxBloco := qryDin.FieldByName('qtdmax').AsInteger;

        if (i_qtd >= i_qtdMaxBloco) then
        begin
            showMessage('Quantidade Máxima de Prateleiras para este bloco obtida!');
            Prateleira.Cancel;
            Prateleira.Edit;
        end;
    end;
end;

procedure TDM_Estoque.ProdutosAfterInsert(DataSet: TDataSet);
begin
    Produtos.FieldByName('PRO_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_PRODUTOS');
end;

procedure TDM_Estoque.ProdutosBeforePost(DataSet: TDataSet);
begin
    DM_Estoque.Produtos.FieldByName('PRO_DTCADASTRO').Value := Date;
    DM_Estoque.Produtos.FieldByName('PRO_PESO').Value := Abs(DM_Estoque.Produtos.FieldByName('PRO_PESO').AsFloat);
    DM_Estoque.Produtos.FieldByName('PRO_VLRFRETE').Value := Abs(DM_Estoque.Produtos.FieldByName('PRO_VLRFRETE').AsFloat);
    DM_Estoque.Produtos.FieldByName('PRO_VLRVENDA').Value := Abs(DM_Estoque.Produtos.FieldByName('PRO_VLRVENDA').AsFloat);
end;

procedure TDM_Estoque.UnidadeAfterInsert(DataSet: TDataSet);
begin
    Unidade.FieldByName('UN_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_UNIDADE');
end;


function TDM_Estoque.funcPrateleiraVerificaBlocos:boolean;
var
    qryDin : TIBQuery;
    i_qtdMaxBloco : integer;
begin
    if Prateleira.State in [dsInsert] then
    begin
        qryDin := funcCriaQuery;
        qryDin.Close;
        qryDin.SQL.Text := 'select bloc_qtdmaxima as qtdmax from bloco where '+
                           'bloc_empresa = ' + PrateleiraPRAT_EMPRESA.AsString +
                           ' and bloc_codigo  = ' + PrateleiraPRAT_BLOCO.AsString;
        qryDin.Open;
        i_qtdMaxBloco := qryDin.FieldByName('qtdmax').AsInteger;

        if (funcContaPrateleiraPorBloco(PrateleiraPRAT_EMPRESA.Value,
                                    PrateleiraPRAT_BLOCO.Value) > i_qtdMaxBloco) then
        begin
            raise Exception.Create('Quantidade Máxima de Prateleiras para este bloco obtida!');
            Prateleira.Cancel;
            prateleira.Transaction.Rollback;
        end;
    end;
end;

//todo
function TDM_Estoque.funcVerificaPrateleiraDisponivel: boolean;
var
    qryDin : TIBQuery;
    i_qtdMaxPrateleira : integer;
    i_codPrat : integer;
    i_codBloc : integer;
    s_descric : String;
begin
    begin
        qryDin := funcCriaQuery;


        qryDin.Close;
        qryDin.SQL.Text := 'select first 1 p.prat_descricao descric,'+
                           'p.prat_bloco bloc, p.prat_codigo prat from prateleira p where  '+
                           ' p.prat_categoria = :v_categoria and                     '+
                           ' p.prat_qtdmaxima > (select count(1) from estoque q where q.estoq_empresa = p.prat_empresa and   '+
                           ' q.estoq_bloco = p.prat_bloco and q.estoq_prateleira = p.prat_codigo)';
        qryDin.ParamByName('v_categoria').Value    := EstoqueESTOQ_CATEGORIA.AsInteger;
        qryDin.Open;
        i_codbloc := qryDin.FieldByName('bloc').AsInteger;
        i_codPrat := qryDin.FieldByName('prat').AsInteger;
        s_descric := qryDin.FieldByName('descric').AsString;

        if (qryDin.IsEmpty) then
        begin
            ShowMessage('Não há prateleiras disponíveis para este produto!');
            Result := False;
        end
        else
        begin
            ShowMessage('Há uma prateleira disponível para este produto!'+ sLineBreak +
            ' Bloco : ' + intToStr(i_codBloc) + ' Prateleira : ' + intToStr(i_codPrat) +
            ' Descrição : ' + s_descric);
            Result := True;
        end;
    end;
end;

end.

