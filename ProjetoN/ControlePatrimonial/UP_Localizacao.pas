unit UP_Localizacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TPLocalizacao = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure procSelect; override;
  end;

var
  PLocalizacao: TPLocalizacao;

implementation

{$R *.dfm}

uses udmControlePatrimonial, UM_Localizacao ;

{ TxPesqPadrao1 }

procedure TPLocalizacao.FormCreate(Sender: TObject);
begin
   inherited;
   procInicializar(DMControlePatrimonial.Localizacao, True, False, MLocalizacao, TMLocalizacao);
end;

procedure TPLocalizacao.procSelect;
begin
   inherited;
   procMontaWhere;

   DMControlePatrimonial.Localizacao.Close;
   DMControlePatrimonial.Localizacao.SQL.Text := ' SELECT * FROM LOCALIZACAO A WHERE '+c_where;
   DMControlePatrimonial.Localizacao.Open;
end;

end.
