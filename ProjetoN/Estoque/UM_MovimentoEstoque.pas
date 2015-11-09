unit UM_MovimentoEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, IBX.IBQuery;

type
  TMMovimentoEstoque = class(TxManuPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    editEmpresa: TDBEdit;
    Label2: TLabel;
    editEstoque: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    editBloco: TDBEdit;
    Label11: TLabel;
    editPrateleira: TDBEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBMemo1: TDBMemo;
    SpeedButton3: TSpeedButton;
    editProduto: TEdit;
    cbTipo: TComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cbTipoExit(Sender: TObject);
    procedure editProdutoEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbTipoChange(Sender: TObject);
    procedure sbGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure exibeTelaProduto;
    procedure procDefineTipo;
  end;

var
  MMovimentoEstoque: TMMovimentoEstoque;

implementation

{$R *.dfm}

uses UDM_Estoque, UM_Estoque, UP_Estoque, UP_Bloco, UP_Prateleira, UP_Produto,
  UEstoque;

procedure TMMovimentoEstoque.cbTipoChange(Sender: TObject);
begin
  inherited;
    procDefineTipo;
end;

procedure TMMovimentoEstoque.cbTipoExit(Sender: TObject);
begin
  inherited;
    procDefineTipo;
end;

procedure TMMovimentoEstoque.editProdutoEnter(Sender: TObject);
begin
  inherited;
  if DM_Estoque.MovimentoEstoque.State in [dsInsert] then
        exibeTelaProduto;
end;
procedure TMMovimentoEstoque.exibeTelaProduto;
var
    qryDin : TIBQuery;
begin
    PEstoque := TPEstoque.Create(Self);
    try

        qryDin := funcCriaQuery;
        qryDin.Close;
        qryDin.SQL.Text := 'select a.*, pro_descricao from estoque a '+
            'inner join produtos on estoq_empresa = pro_empresa and estoq_produto = pro_codigo';
        qryDin.Open;

        PEstoque.procInicializar(qryDin, False, True, PEstoque, TPEstoque);
        PEstoque.ShowModal;
    finally

        editProduto.Text := qryDin.FieldByName('ESTOQ_PRODUTO').AsString;
        DM_Estoque.MovimentoEstoqueEM_EMPRESA.Value := qryDin.FieldByName('ESTOQ_EMPRESA').AsInteger;
        DM_Estoque.MovimentoEstoqueEM_BLOCO.Value := qryDin.FieldByName('ESTOQ_BLOCO').AsInteger;
        DM_Estoque.MovimentoEstoqueEM_PRATELEIRA.Value := qryDin.FieldByName('ESTOQ_PRATELEIRA').AsInteger;
        DM_Estoque.MovimentoEstoqueEM_ESTOQUE.Value := qryDin.FieldByName('ESTOQ_CODIGO').AsInteger;
        DM_Estoque.MovimentoEstoqueEM_PRODUTO.Value := qryDin.FieldByName('ESTOQ_PRODUTO').AsString;

        FreeAndNil(PEstoque);
    end;
end;

procedure TMMovimentoEstoque.FormActivate(Sender: TObject);
var
    qryDin : TIBQuery;
begin
  inherited;
    if DM_Estoque.MovimentoEstoque.State in [dsEdit] then
    begin
        qryDin := funcCriaQuery;
        qryDin.Close;
        qryDin.SQL.Text := 'select pro_descricao from produtos where pro_empresa = ' + DM_Estoque.MovimentoEstoqueEM_EMPRESA.AsString
           + 'and pro_codigo = ' + DM_Estoque.MovimentoEstoqueEM_PRODUTO.AsString;
        qryDin.Open;
        editProduto.Text := qryDin.FieldByName('pro_descricao').AsString;

        if DM_Estoque.MovimentoEstoqueEM_TIPO.Value = 'E' then
            cbTipo.ItemIndex := 0
        else
        if DM_Estoque.MovimentoEstoqueEM_TIPO.Value = 'S' then
            cbTipo.ItemIndex := 1;

    end
    else if DM_Estoque.MovimentoEstoque.State in [dsInsert] then
    begin
        editProduto.SetFocus;
    end;
end;

procedure TMMovimentoEstoque.procDefineTipo;
begin
    if cbTipo.ItemIndex = 0 then
        DM_Estoque.MovimentoEstoqueEM_TIPO.value := 'E'
    else
        DM_Estoque.MovimentoEstoqueEM_TIPO.Value := 'S';
end;

procedure TMMovimentoEstoque.sbGravarClick(Sender: TObject);
begin
  inherited;
    funcBaixaEstoque(DM_Estoque.Produtos.FieldByName('EM_EMPRESA').AsInteger,
                     DM_Estoque.Produtos.FieldByName('EM_PRODUTO').AsString,
                     DM_Estoque.Produtos.FieldByName('EM_BLOCO').AsInteger,
                     DM_Estoque.Produtos.FieldByName('EM_PRATELEIRA').AsInteger,
                     DM_Estoque.Produtos.FieldByName('EM_ESTOQUE').AsInteger,
                     DM_Estoque.Produtos.FieldByName('EM_QTD').AsFloat,
                     DM_Estoque.Produtos.FieldByName('EM_TIPO').AsString);
end;

procedure TMMovimentoEstoque.SpeedButton1Click(Sender: TObject);
begin
  inherited;
    PEstoque := TPEstoque.Create(Self);
    PEstoque.procChamaTela;
end;

procedure TMMovimentoEstoque.SpeedButton2Click(Sender: TObject);
begin
  inherited;
    PBloco := TPBloco.Create(Self);
    try
        PBloco.ShowModal;
    finally
        FreeAndNil(PBloco);
    end;
end;

procedure TMMovimentoEstoque.SpeedButton3Click(Sender: TObject);
begin
  inherited;
    PPrateleira := TPPrateleira.Create(Self);
    try
        PPrateleira.ShowModal;
    finally
        FreeAndNil(PPrateleira);
    end;
end;

procedure TMMovimentoEstoque.SpeedButton4Click(Sender: TObject);
begin
  inherited;
    PProduto := TPProduto.Create(Self);
    try
        PProduto.showModal;
    finally
        FreeAndNil(PProduto);
    end;
end;




end.
