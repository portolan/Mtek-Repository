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

uses dm000, UDM_PCP, UM_FichaTecnica, ERP, UDM_contabil, UDM_Estoque,
  UM_Estoque, UP_Estoque, UM_PCP;

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
      DM_PCP.Ficha_Tecnica.SQL.Text:= 'SELECT A.*, '+
                                               ' B.EMP_RAZAO, '+
                                               ' G.PRO_DESCRICAO '+
                                         ' FROM ficha_tecnica A '+
                                         ' INNER JOIN EMPRESA B ON A.ft_empresa = B.EMP_COD '+
                                         ' INNER JOIN PRODUTOS G ON A.ft_empresa = G.PRO_EMPRESA '+
                                           '   AND A.ft_produto = G.PRO_CODIGO '+
                                           'WHERE '+c_where;
         DM_PCP.Ficha_Tecnica.Open;
end;

end.
