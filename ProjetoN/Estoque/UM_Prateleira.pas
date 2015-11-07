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
    procedure FormCreate(Sender: TObject);
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

procedure TMPrateleira.FormCreate(Sender: TObject);
begin
  inherited;
    DM_contabil.empresa.Close;
    DM_contabil.empresa.SQL.Text := 'select * from empresa';
    DM_contabil.empresa.Open;
    DM_contabil.empresa.FetchAll;
end;

end.
