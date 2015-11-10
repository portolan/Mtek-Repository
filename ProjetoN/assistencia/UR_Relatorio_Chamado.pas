unit UR_Relatorio_Chamado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet;

type
  TUR_Relatorio = class(TForm)
    frxChamado: TfrxReport;
    frxDBChamado: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UR_Relatorio: TUR_Relatorio;

implementation

{$R *.dfm}

uses UDM_Servico;

end.
