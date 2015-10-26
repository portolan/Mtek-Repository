program SolutiosERP;

uses
  Vcl.Forms,
  login in 'login.pas' {tela_login};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Ttela_login, tela_login);
  Application.Run;
end.
