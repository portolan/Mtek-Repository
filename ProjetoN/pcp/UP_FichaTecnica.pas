unit UP_FichaTecnica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TP_FichaTecnica = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
  procedure procSelect; override;
    { Public declarations }
  end;

var
  P_FichaTecnica: TP_FichaTecnica;

implementation

{$R *.dfm}

uses dm000, UDM_PCP, UM_FichaTecnica, ERP, UDM_contabil;

procedure TP_FichaTecnica.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_PCP.Ficha_Tecnica,TRUE,FALSE,M_FichaTecnica,TM_FichaTecnica);
    funcAtribuiFiltros;
end;

procedure TP_FichaTecnica.procSelect;
begin
  inherited;
      procMontaWhere;
      DM_PCP.Ficha_Tecnica.Close;
      DM_PCP.Ficha_Tecnica.SQL.Text:= 'select a.*, b.emp_razao  from ficha_tecnica a'+
         ' inner join empresa b on a.ft_empresa= b.emp_cod where '+c_where;
         DM_PCP.Ficha_Tecnica.Open;
end;

end.
