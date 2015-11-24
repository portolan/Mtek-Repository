unit Um_condicaop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tm_condicaopag = class(TxManuPadrao)
    codigo: TLabel;
    cod: TDBEdit;
    DataSourceCondicao: TDataSource;
    descricao: TLabel;
    desc: TDBEdit;
    parcelas: TLabel;
    parc: TDBEdit;
    vencimento: TLabel;
    venc: TDBEdit;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  m_condicaopag: Tm_condicaopag;

implementation

{$R *.dfm}


end.
