unit UM_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TMEstoque = class(TxManuPadrao)
    DBMemo1: TDBMemo;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label17: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit16: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    ComboBox1: TComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure DBEdit2Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MEstoque: TMEstoque;

implementation

{$R *.dfm}

uses UDM_Estoque, UM_Produto, UP_Produto, UP_Marcas, UM_Bloco, UP_Prateleira,
  UP_Bloco, UP_Categoria;

procedure TMEstoque.ComboBox1Exit(Sender: TObject);
begin
  inherited;
    if TComboBox(Sender).ItemIndex = 0 then
        DM_Estoque.EstoqueESTOQ_STATUS.Value := 'a'
    else
        DM_Estoque.EstoqueESTOQ_STATUS.Value := 'i';
end;

procedure TMEstoque.DBEdit2Enter(Sender: TObject);
begin
  inherited;
    PProduto := TPProduto.Create(Self);
    try
        PProduto.procInicializar(DM_Estoque.Marcas, True, True, PProduto, TPProduto);

        PProduto.ShowModal;
    finally
        DBEdit2.Field.Value := DM_Estoque.Produtos.FieldByName('pro_codigo').AsInteger;
        DBEdit2.Text := DM_Estoque.Produtos.FieldByName('pro_descricao').AsString;
        FreeAndNil(PProduto);
    end;
end;

procedure TMEstoque.FormCreate(Sender: TObject);
begin
  inherited;
    DM_Estoque.Bloco.Close;
    DM_Estoque.Bloco.SQL.Text := 'select * from bloco';
    DM_Estoque.Bloco.Open;
    DM_Estoque.Bloco.FetchAll;

    DM_Estoque.Prateleira.Close;
    DM_Estoque.Prateleira.SQL.Text := 'select * from prateleira';
    DM_Estoque.Prateleira.Open;
    DM_Estoque.Prateleira.FetchAll;

    DM_Estoque.Categoria.Close;
    DM_Estoque.Categoria.SQL.Text := 'select * from categoria';
    DM_Estoque.Categoria.Open;
    DM_Estoque.Categoria.FetchAll;
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
