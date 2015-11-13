unit UM_Prateleira;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB;

type
  TMPrateleira = class(TxManuPadrao)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MPrateleira: TMPrateleira;

implementation

{$R *.dfm}

uses UDM_Estoque, UDM_contabil;

procedure TMPrateleira.DBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
    try
        DM_Estoque.Categoria.Close;
        DM_Estoque.Categoria.SQL.Text := 'select * from categoria where cat_empresa = ' +
                                      DM_Estoque.PrateleiraPRAT_EMPRESA.AsString;
        DM_Estoque.Categoria.Open;
        DM_Estoque.Categoria.FetchAll;
    except on E: Exception do
        ShowMessage('Houve algum problema!' + sLineBreak +
        '1 - Verifique se campo empresa está selecionado' + sLineBreak +
        '2 - Verifique se Existe Alguma Categoria cadastrada!');
    end;
end;

procedure TMPrateleira.DBLookupComboBox2Enter(Sender: TObject);
begin
  inherited;
    try
        DM_Estoque.Bloco.Close;
        DM_Estoque.Bloco.SQL.Text := 'select * from bloco where bloc_empresa = ' +
                                      DM_Estoque.PrateleiraPRAT_EMPRESA.AsString;
        DM_Estoque.Bloco.Open;
        DM_Estoque.Bloco.FetchAll;
    except on E: Exception do
        ShowMessage('Houve algum problema!' + sLineBreak +
        '1 - Verifique se campo empresa está selecionado' + sLineBreak +
        '2 - Verifique se Existe Algum Bloco cadastrado!');
    end;

end;

procedure TMPrateleira.FormCreate(Sender: TObject);
begin
  inherited;
    DM_contabil.empresa.Close;
    DM_contabil.empresa.SQL.Text := 'select * from empresa';
    DM_contabil.empresa.Open;
    DM_contabil.empresa.FetchAll;

    if DM_Estoque.Prateleira.State in [dsEdit] then
    begin
        DM_Estoque.Bloco.Close;
        DM_Estoque.Bloco.SQL.Text := 'select * from bloco where bloc_empresa = ' +
                                      DM_Estoque.PrateleiraPRAT_EMPRESA.AsString;
        DM_Estoque.Bloco.Open;
        DM_Estoque.Bloco.FetchAll;

        DM_Estoque.Categoria.Close;
        DM_Estoque.Categoria.SQL.Text := 'select * from categoria where cat_empresa = ' +
                                      DM_Estoque.PrateleiraPRAT_EMPRESA.AsString;
        DM_Estoque.Categoria.Open;
        DM_Estoque.Categoria.FetchAll;
    end;


end;

end.
