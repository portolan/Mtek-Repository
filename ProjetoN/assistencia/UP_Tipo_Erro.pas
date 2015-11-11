unit UP_Tipo_Erro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TP_Tipo_Erro = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procSelect;Override;
  end;

var
  P_Tipo_Erro: TP_Tipo_Erro;

implementation

{$R *.dfm}

uses UDM_Servico, UM_Tipo_Erro;

procedure TP_Tipo_Erro.FormCreate(Sender: TObject);
begin
  inherited;
  procInicializar(DM_Servico.IB_Tipo_Erro, True, False, M_Tipo_Erro, TM_Tipo_Erro);
  funcAtribuiFiltros;
end;

procedure TP_Tipo_Erro.procSelect;
begin
  inherited;
    procMontaWhere;
    DM_Servico.IB_Tipo_Erro.Close;
    DM_Servico.IB_Tipo_Erro.SQL.Text := 'SELECT * FROM TIPOS_ERROS WHERE '+ C_WHERE;
    DM_Servico.IB_Tipo_Erro.Open;
end;

end.
