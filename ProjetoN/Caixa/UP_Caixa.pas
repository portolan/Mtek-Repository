unit UP_caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Menus;

type
  TP_caixa = class(TxPesqPadrao)
    MainMenu1: TMainMenu;
    Caixa1: TMenuItem;
    Relatrios1: TMenuItem;
    FechamentoCaixa1: TMenuItem;
    AbrirCaixa1: TMenuItem;
    FecharCaixa1: TMenuItem;
    lb_saldoanterior: TLabel;
    lb_saldototal: TLabel;
    edit_saldoant: TEdit;
    edit_saldototal: TEdit;
    BalanoPerodo1: TMenuItem;
    PrevisodeContasReceberPagar1: TMenuItem;
    PrevisodeVendasCompras1: TMenuItem;
    procedure FechamentoCaixa1Click(Sender: TObject);
    procedure AbrirCaixa1Click(Sender: TObject);
    procedure FecharCaixa1Click(Sender: TObject);
    procedure BalanoPerodo1Click(Sender: TObject);
    procedure PrevisodeContasReceberPagar1Click(Sender: TObject);
    procedure PrevisodeVendasCompras1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  P_caixa: TP_caixa;

implementation

{$R *.dfm}

uses UDM_caixa, UM_caixa, UR_fechamentocx, UP_abrircx, UP_fecharcx,
  UR_balancocx, UR_prevtitulos, UR_prevcompravenda;

procedure TP_caixa.AbrirCaixa1Click(Sender: TObject);
begin
  inherited;
  UP_abrircaixa := TUP_abrircaixa.Create(Self);
  try
      UP_abrircaixa.ShowModal;
  finally
      FreeAndNil(UP_abrircaixa);

  end;
end;

procedure TP_caixa.BalanoPerodo1Click(Sender: TObject);
begin
  inherited;
  REL_balancocx := TREL_balancocx.Create(Self);
  try
    REL_balancocx.ShowModal;
  finally
    FreeAndNil(REL_balancocx);
  end;

end;

procedure TP_caixa.FechamentoCaixa1Click(Sender: TObject);
begin
  inherited;
  REL_fechamentocx := TREL_fechamentocx.Create(Self);
    try
        REL_fechamentocx.ShowModal;
    finally
        FreeAndNil(REL_fechamentocx);
    end;
end;

procedure TP_caixa.FecharCaixa1Click(Sender: TObject);
begin
  inherited;
  UP_fecharcaixa := TUP_fecharcaixa.Create(Self);
  try
      UP_fecharcaixa.ShowModal;
  finally
      FreeAndNil(UP_fecharcaixa);

  end;
end;

procedure TP_caixa.PrevisodeContasReceberPagar1Click(Sender: TObject);
begin
  inherited;
  REL_prevtitulos := TREL_prevtitulos.Create(Self);
  try
    REL_prevtitulos.ShowModal;
  finally
    FreeAndNil(REL_prevtitulos);
  end;
end;

procedure TP_caixa.PrevisodeVendasCompras1Click(Sender: TObject);
begin
  inherited;
   REL_prevcompravenda := TREL_prevcompravenda.Create(Self);
   try
     REL_prevcompravenda.ShowModal;
   finally
     FreeAndNil(REL_prevcompravenda);
   end;
end;

end.
