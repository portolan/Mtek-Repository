program ProjectNecessauro;

uses
  Vcl.Forms,
  UTelaPadrao in 'comum\UTelaPadrao.pas' {xPesqPadrao},
  Uped001 in 'venda\Uped001.pas' {PPedido},
  dm000 in 'datamodulo\dm000.pas' {dmBanco: TDataModule},
  dm001 in 'datamodulo\dm001.pas' {dmPedido: TDataModule},
  Uped002 in 'venda\Uped002.pas' {CPedido};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmBanco, dmBanco);
  Application.CreateForm(TdmPedido, dmPedido);
  Application.CreateForm(TPPedido, PPedido);
  Application.Run;
end.
