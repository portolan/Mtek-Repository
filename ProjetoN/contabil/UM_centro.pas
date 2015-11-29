unit UM_centro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TM_centro = class(TxManuPadrao)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_centro: TM_centro;

implementation

{$R *.dfm}

uses UDM_contabil;

procedure TM_centro.FormCreate(Sender: TObject);
begin
  inherited;
    DM_contabil.empresa.Close;
    DM_contabil.empresa.SQL.Text := 'select * from empresa';
    DM_contabil.empresa.Open;
    DM_contabil.empresa.fetchAll;
end;

procedure TM_centro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    case Key of
        VK_F1 : ShowMessage('Danilo, você deve uma coca pra mim e pro erich =D');
    end;
end;

end.
