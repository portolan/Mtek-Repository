unit UM_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, IBX.IBCustomDataSet, IBX.IBQuery,
  IBX.IBUpdateSQL, System.Actions, Vcl.ActnList,
  Vcl.ExtDlgs;

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
    DBImage1: TDBImage;
    DBMemo1: TDBMemo;
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
    DBEdit17: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    edtMarcaDescricao: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit9: TDBEdit;
    DBEdit7: TDBEdit;
    cbStatus: TComboBox;
    DBComboBox1: TDBComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Grupo: TRadioGroup;
    OpenPictureDialog: TOpenPictureDialog;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cbStatusExit(Sender: TObject);
    procedure GrupoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure sbLoadClick(Sender: TObject);
    procedure DBImage1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procSelecionaGrupo;
  end;

var
  MProduto: TMProduto;

implementation

{$R *.dfm}

uses UDM_Estoque, UP_Categoria, UP_Produto, UP_Marcas, dm000, UP_Unidade;

procedure TMProduto.cbStatusExit(Sender: TObject);
begin
  inherited;
    if TComboBox(Sender).ItemIndex = 0 then
        DM_Estoque.ProdutosPRO_STATUS.Value := 'a'
    else
        DM_Estoque.ProdutosPRO_STATUS.Value := 'i'


end;

procedure TMProduto.DBEdit9Enter(Sender: TObject);
begin
  inherited;
    PMarcas := TPMarcas.Create(Self);
    try
        PMarcas.procInicializar(DM_Estoque.Marcas, True, True, PMarcas, TPMarcas);
        
        PMarcas.ShowModal;
    finally
        DBEdit9.Field.Value := DM_Estoque.Marcas.FieldByName('marc_codigo').AsInteger;
        edtMarcaDescricao.Text := DM_Estoque.Marcas.FieldByName('marc_descricao').AsString;
        FreeAndNil(PMarcas);
    end;
end;

procedure TMProduto.DBImage1DblClick(Sender: TObject);
begin
  inherited;
    if OpenPictureDialog.Execute then
    begin
        DM_Estoque.ProdutosPRO_IMG.LoadFromFile(OpenPictureDialog.FileName);
    end;
end;

procedure TMProduto.FormActivate(Sender: TObject);
begin
  inherited;
    procSelecionaGrupo;
end;

procedure TMProduto.FormCreate(Sender: TObject);
begin
  inherited;
    DM_Estoque.Categoria.Close;
    DM_Estoque.Categoria.SQL.Text := 'select * from categoria';
    DM_Estoque.Categoria.Open;
    DM_Estoque.Categoria.FetchAll;

    DM_Estoque.Unidade.Close;
    DM_Estoque.Unidade.SQL.Text := 'select * from unidade';
    DM_Estoque.Unidade.Open;
    DM_Estoque.Unidade.FetchAll;

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
        ShowMessage('b');
    end
    else if DM_Estoque.Produtos.FieldByName('PRO_GRUPO').AsString = 'P' then
    begin
        Grupo.ItemIndex := 1;
        ShowMessage('p');
    end
    else if DM_Estoque.Produtos.FieldByName('PRO_GRUPO').AsString = 'M' then
    begin
        Grupo.ItemIndex := 2;
        ShowMessage('m');
    end
    else
    begin

    end;
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
        Punidade.ShowModal;
    finally
        FreeAndNil(Punidade);
    end;
end;

end.
