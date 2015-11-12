unit UM_Prateleira;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

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

procedure TMPrateleira.DBLookupComboBox2Enter(Sender: TObject);
begin
  inherited;
    DM_Estoque.Bloco.Close;
    DM_Estoque.Bloco.SQL.Text := 'select * from bloco where ' +
                    ' bloc_empresa = '    + DM_contabil.empresaEMP_COD.AsString +
                    'and bloc_codigo = ' + DM_Estoque.PrateleiraPRAT_BLOCO.AsString;
    DM_Estoque.Bloco.Open;
    DM_Estoque.Bloco.FetchAll;
end;

procedure TMPrateleira.FormCreate(Sender: TObject);
begin
  inherited;
    DM_contabil.empresa.Close;
    DM_contabil.empresa.SQL.Text := 'select * from empresa';
    DM_contabil.empresa.Open;
    DM_contabil.empresa.FetchAll;

    DM_Estoque.Categoria.Close;
    DM_Estoque.Categoria.SQL.Text := 'select * from categoria where cat_empresa = ' + DM_contabil.empresaEMP_COD.AsString;
    DM_Estoque.Categoria.Open;
    DM_Estoque.Categoria.FetchAll;

    DM_Estoque.Bloco.Close;
    DM_Estoque.Bloco.SQL.Text := 'select * from bloco';
    DM_Estoque.Bloco.Open;
    DM_Estoque.Bloco.FetchAll;

end;

end.
