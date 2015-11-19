unit UM_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, IBX.IBCustomDataSet, IBX.IBQuery,
  IBX.IBUpdateSQL, System.Actions, Vcl.ActnList,
  Vcl.ExtDlgs, Data.DB;

type
  TMProduto = class(TxManuPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    Label30: TLabel;
    DBEdit16: TDBEdit;
    GroupBox3: TGroupBox;
    Label17: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label34: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit7: TDBEdit;
    cbStatus: TComboBox;
    DBComboBox1: TDBComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Grupo: TRadioGroup;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    DBImage1: TDBImage;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit33: TDBEdit;
    OpenPictureDialog: TOpenPictureDialog;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cbStatusExit(Sender: TObject);
    procedure GrupoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure sbLoadClick(Sender: TObject);
    procedure DBImage1DblClick(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procSelecionaGrupo;
    procedure procSelecionaItems;
  end;

var
  MProduto: TMProduto;

implementation

{$R *.dfm}

uses UDM_Estoque, UP_Categoria, UP_Produto, UP_Marcas, dm000, UP_Unidade,
  UDM_contabil, UM_Unidade, UM_Categoria;

procedure TMProduto.cbStatusExit(Sender: TObject);
begin
  inherited;
    if TComboBox(Sender).ItemIndex = 0 then
        DM_Estoque.ProdutosPRO_STATUS.Value := 'A'
    else
        DM_Estoque.ProdutosPRO_STATUS.Value := 'I';
end;

procedure TMProduto.DBImage1DblClick(Sender: TObject);
begin
  inherited;
    if OpenPictureDialog.Execute then
    begin
        DM_Estoque.ProdutosPRO_IMG.LoadFromFile(OpenPictureDialog.FileName);
    end;
end;

procedure TMProduto.DBLookupComboBox4Exit(Sender: TObject);
begin
  inherited;
    if TDBLookupComboBox(Sender).Text <> EmptyStr then
        procSelecionaItems;
end;

procedure TMProduto.FormActivate(Sender: TObject);
begin
  inherited;
    procSelecionaGrupo;
end;

procedure TMProduto.FormCreate(Sender: TObject);
begin
  inherited;

    if DM_Estoque.Produtos.State in [dsEdit] then
        procSelecionaItems;

    DM_Estoque.Unidade.Close;
    DM_Estoque.Unidade.SQL.Text := 'select * from unidade';
    DM_Estoque.Unidade.Open;
    DM_Estoque.Unidade.FetchAll;

    DM_Estoque.Marcas.Close;
    DM_Estoque.Marcas.SQL.Text := 'select * from marcas';
    DM_Estoque.Marcas.Open;
    DM_Estoque.Marcas.FetchAll;

    DM_contabil.empresa.Close;
    DM_contabil.empresa.SQL.Text := 'select * from empresa';
    DM_contabil.empresa.Open;
    DM_contabil.empresa.FetchAll;
end;

procedure TMProduto.GrupoClick(Sender: TObject);
begin
  inherited;
    if (Grupo.ItemIndex = 0) then
    begin
        DM_Estoque.ProdutosPRO_GRUPO.Value := 'B';
    end
    else if (Grupo.ItemIndex = 1) then
    begin
        DM_Estoque.ProdutosPRO_GRUPO.Value := 'P';
    end
    else if (Grupo.ItemIndex = 2) then
    begin
        DM_Estoque.ProdutosPRO_GRUPO.Value := 'M';
    end;
end;

procedure TMProduto.procSelecionaGrupo;
begin
    if DM_Estoque.Produtos.FieldByName('PRO_GRUPO').AsString = 'B' then
    begin
        Grupo.ItemIndex := 0;
    end
    else if DM_Estoque.Produtos.FieldByName('PRO_GRUPO').AsString = 'P' then
    begin
        Grupo.ItemIndex := 1;
    end
    else if DM_Estoque.Produtos.FieldByName('PRO_GRUPO').AsString = 'M' then
    begin
        Grupo.ItemIndex := 2;
    end
    else
    begin

    end;
end;

procedure TMProduto.procSelecionaItems;
begin
    DM_Estoque.Categoria.Close;
    DM_Estoque.Categoria.SQL.Text := 'select * from categoria where CAT_EMPRESA = ' + DM_Estoque.ProdutosPRO_EMPRESA.AsString;
    DM_Estoque.Categoria.Open;
    DM_Estoque.Categoria.FetchAll;
end;

procedure TMProduto.sbLoadClick(Sender: TObject);
begin
  inherited;
    OpenPictureDialog.Execute();
end;

procedure TMProduto.SpeedButton1Click(Sender: TObject);
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

procedure TMProduto.SpeedButton2Click(Sender: TObject);
begin
  inherited;

    Punidade := TPUnidade.Create(Self);
    try
        PUnidade.procInicializar(DM_Estoque.Unidade, False, False, MUnidade, TMUnidade);
        Punidade.ShowModal;
    finally
        FreeAndNil(Punidade);
    end;
end;

end.
