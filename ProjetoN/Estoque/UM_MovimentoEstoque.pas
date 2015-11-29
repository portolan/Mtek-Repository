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
    DBLookupComboBox1: TDBLookupComboBox;
    Label12: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cbTipoExit(Sender: TObject);
    procedure editProdutoEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbTipoChange(Sender: TObject);
    procedure sbGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tipoMovimento:String;

    procedure exibeTelaProduto;
    procedure procDefineTipo;

  end;

var
  MMovimentoEstoque: TMMovimentoEstoque;

implementation

{$R *.dfm}

uses UDM_Estoque, UM_Estoque, UP_Estoque, UP_Bloco, UP_Prateleira, UP_Produto,
  UEstoque, UM_Bloco, UM_Prateleira, UDM_contabil, R_contabil, UDM_PedCompra;

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
    dts : TDataSource;
begin
    PEstoque := TPEstoque.Create(Self);
    try
        DM_Estoque.Estoque.Close;

        DM_Estoque.Estoque.SQL.Text := 'select a.*, pro_descricao, emp_razao, bloc_descricao, prat_descricao, cat_descricao from estoque a '+
                         'left join produtos on estoq_empresa = pro_empresa and estoq_produto = pro_codigo         '+
                         'inner join empresa on emp_cod = pro_empresa                                               '+
                         'inner join bloco on estoq_bloco = bloc_codigo and estoq_empresa = bloc_empresa            '+
                         'inner join prateleira on estoq_prateleira = prat_codigo and estoq_empresa = prat_empresa  '+
                         'inner join categoria on estoq_categoria = cat_codigo and estoq_empresa = cat_empresa      ';


        DM_Estoque.Estoque.Open;
        PEstoque.procInicializar(DM_Estoque.Estoque, False, True, PEstoque, TPEstoque);
        PEstoque.ShowModal;
    finally

        editProduto.Text := DM_Estoque.Estoque.FieldByName('PRO_DESCRICAO').AsString;
        DM_Estoque.MovimentoEstoqueEM_EMPRESA.Value := DM_Estoque.Estoque.FieldByName('ESTOQ_EMPRESA').AsInteger;
        DM_Estoque.MovimentoEstoqueEM_BLOCO.Value := DM_Estoque.Estoque.FieldByName('ESTOQ_BLOCO').AsInteger;
        DM_Estoque.MovimentoEstoqueEM_PRATELEIRA.Value := DM_Estoque.Estoque.FieldByName('ESTOQ_PRATELEIRA').AsInteger;
        DM_Estoque.MovimentoEstoqueEM_ESTOQUE.Value := DM_Estoque.Estoque.FieldByName('ESTOQ_CODIGO').AsInteger;
        DM_Estoque.MovimentoEstoqueEM_PRODUTO.Value := DM_Estoque.Estoque.FieldByName('ESTOQ_PRODUTO').AsString;

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

procedure TMMovimentoEstoque.FormCreate(Sender: TObject);
begin
  inherited;
    DM_contabil.departamento.Close;
    DM_contabil.departamento.SQL.Text := 'select * from departamento';
    DM_contabil.departamento.Open;
    DM_contabil.departamento.FetchAll;
end;

procedure TMMovimentoEstoque.procDefineTipo;
begin
    if cbTipo.ItemIndex = 0 then
        DM_Estoque.MovimentoEstoqueEM_TIPO.value := 'E'
    else
        DM_Estoque.MovimentoEstoqueEM_TIPO.Value := 'S';

    tipoMovimento := DM_Estoque.MovimentoEstoque.FieldByName('EM_TIPO').AsString;
end;

procedure TMMovimentoEstoque.sbGravarClick(Sender: TObject);
var
    baixou:boolean;
    qtd, qtdmin : double;
begin
    procBotaoVisivelHabilitado(Sender);

   try
      if QryPadrao.State in [dsInsert,dsEdit] then
      begin
         QryPadrao.Post;
         baixou := funcBaixaEstoque(DM_Estoque.MovimentoEstoque.FieldByName('EM_EMPRESA').AsInteger,
                 DM_Estoque.MovimentoEstoque.FieldByName('EM_PRODUTO').AsString,
                 DM_Estoque.MovimentoEstoque.FieldByName('EM_BLOCO').AsInteger,
                 DM_Estoque.MovimentoEstoque.FieldByName('EM_PRATELEIRA').AsInteger,
                 DM_Estoque.MovimentoEstoque.FieldByName('EM_ESTOQUE').AsInteger,
                 DM_Estoque.MovimentoEstoque.FieldByName('EM_QTD').AsFloat,
                 DM_Estoque.MovimentoEstoque.FieldByName('EM_TIPO').AsString);

        if DM_Estoque.MovimentoEstoqueEM_TIPO.AsString = 'S' then
        begin
            if funcEstoqueBaixo(DM_Estoque.MovimentoEstoqueEM_EMPRESA.value,
                                   DM_Estoque.MovimentoEstoqueEM_BLOCO.value,
                                   DM_Estoque.MovimentoEstoqueEM_PRATELEIRA.value,
                                   DM_Estoque.MovimentoEstoqueEM_ESTOQUE.value,
                                   DM_Estoque.MovimentoEstoqueEM_PRODUTO.value, qtd, qtdmin) then
            begin
                dmPedCompra.funcGerarSolicitacao(DM_Estoque.MovimentoEstoqueEM_EMPRESA.value,
                                                 DM_Estoque.MovimentoEstoqueEM_DPTO.Value,
                                                 DM_Estoque.MovimentoEstoqueEM_PRODUTO.Value,
                                                 abs(qtd-qtdmin),
                                                 0,false);
            end;
        end;

      end;

      if b_finalizaTransacao and (QryPadrao.Transaction.Intransaction) and (baixou) then
         QryPadrao.Transaction.Commit
      else
      begin
         QryPadrao.Transaction.Rollback;
         close;
      end;

      b_gravou := True;

      close;
   except
      on E: Exception do
      begin
         Application.MessageBox(PChar('Erro ao Gravar Registro! '+sLineBreak+sLineBreak+
                                ' Erro :'+sLineBreak+ e.Message),PChar(Self.Caption), MB_OK+MB_ICONERROR);

      end;
   end;
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
        PBloco.procInicializar(DM_Estoque.Bloco, False, False, MBloco, TMBloco);
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
        PPrateleira.procInicializar(DM_Estoque.Prateleira, False, False, MPrateleira, TMPrateleira);
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
