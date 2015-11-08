unit UM_MovimentoEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB;

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
  private
    { Private declarations }
  public
    { Public declarations }
    procedure exibeTelaProduto;
  end;

var
  MMovimentoEstoque: TMMovimentoEstoque;

implementation

{$R *.dfm}

uses UDM_Estoque, UM_Estoque, UP_Estoque, UP_Bloco, UP_Prateleira, UP_Produto;

procedure TMMovimentoEstoque.cbTipoExit(Sender: TObject);
begin
  inherited;
    if TComboBox(Sender).ItemIndex = 0 then
        DM_Estoque.MovimentoEstoqueEM_TIPO.value := 'E'
    else
        DM_Estoque.MovimentoEstoqueEM_TIPO.Value := 'S';
end;

procedure TMMovimentoEstoque.editProdutoEnter(Sender: TObject);
begin
  inherited;
  if DM_Estoque.MovimentoEstoque.State in [dsInsert] then
        exibeTelaProduto;
end;

procedure TMMovimentoEstoque.exibeTelaProduto;
begin
    PEstoque := TPEstoque.Create(Self);
    try
        PEstoque.procInicializar(DM_Estoque.Estoque, False, True, PEstoque, TPEstoque);
        PEstoque.ShowModal;
    finally

        editProduto.Text := DM_Estoque.Estoque.FieldByName('ESTOQ_PRODUTO').AsString;
        DM_Estoque.MovimentoEstoqueEM_EMPRESA.Value := DM_Estoque.Estoque.FieldByName('ESTOQ_EMPRESA').AsInteger;
        DM_Estoque.MovimentoEstoqueEM_BLOCO.Value := DM_Estoque.Estoque.FieldByName('ESTOQ_BLOCO').AsInteger;
        DM_Estoque.MovimentoEstoqueEM_PRATELEIRA.Value := DM_Estoque.Estoque.FieldByName('ESTOQ_PRATELEIRA').AsInteger;
        DM_Estoque.MovimentoEstoqueEM_ESTOQUE.Value := DM_Estoque.Estoque.FieldByName('ESTOQ_CODIGO').AsInteger;
        DM_Estoque.MovimentoEstoqueEM_PRODUTO.Value := DM_Estoque.Estoque.FieldByName('ESTOQ_PRODUTO').AsString;

        FreeAndNil(PEstoque);
    end;
end;

procedure TMMovimentoEstoque.FormActivate(Sender: TObject);
begin
  inherited;
    if DM_Estoque.MovimentoEstoque.State in [dsEdit] then
    begin
        editProduto.Text := DM_Estoque.MovimentoEstoqueEM_PRODUTO.Value;
    end
    else if DM_Estoque.MovimentoEstoque.State in [dsInsert] then
    begin
        editProduto.SetFocus;
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
