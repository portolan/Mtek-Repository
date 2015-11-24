unit Up_titulospagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  Tp_titulospagar = class(TxPesqPadrao)
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    Relatrios1: TMenuItem;
    titulosapagar1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure titulosapagar1Click(Sender: TObject);


  private
    { Private declarations }
  public
    procedure procSelect; override;
    class procedure chamaTela(xPai: TComponent);
    class procedure procChamaTela(Owner : TComponent);
  end;

var
  p_titulospagar: Tp_titulospagar;

implementation

{$R *.dfm}

uses Udm_contaspagar, Um_titulospagar, relatorio;

class procedure Tp_titulospagar.chamaTela(xPai: TComponent);

begin
p_titulospagar := Tp_titulospagar.Create(xPai);
try
   p_titulospagar.ShowModal;
finally
  Freeandnil(P_titulospagar);
end;
end;

procedure Tp_titulospagar.FormCreate(Sender: TObject);
begin
  inherited;
   procInicializar(dm_contaspagar.titulospagar, true, false, m_titulospagar, Tm_titulospagar);
   funcAtribuiFiltros;
end;

procedure Tp_titulospagar.titulosapagar1Click(Sender: TObject);
begin
  inherited;
  relcontasp:=Trelcontasp.Create(Owner);
  try
    relcontasp.ShowModal;
  finally
     FreeAndNil(relcontasp);
  end;
end;

class procedure Tp_titulospagar.procChamaTela(Owner: TComponent);
begin
  p_titulospagar := Tp_titulospagar.Create(Owner);
  try
     p_titulospagar.ShowModal;
  finally
     FreeAndNil(p_titulospagar);
  end;
end;

procedure Tp_titulospagar.procSelect;
begin
   inherited;
   procMontaWhere;
   dm_contaspagar.titulospagar.Close;
   dm_contaspagar.titulospagar.SQL.Text:='select TTP_CODIGO,'+
                                         '          TTP_CON_CODIGO,      '+
                                         '          TTP_CTB_CODIGO,      '+
                                         '          TTP_DESCONTO,        '+
                                         '          TTP_DESCRICAO,       '+
                                         '          TTP_DT_BAIXA,        '+
                                         '          TTP_DT_CANCELAMENTO, '+
                                         '          TTP_DT_EMISSAO,      '+
                                         '          TTP_DT_PAGAMENTO,    '+
                                         '          TTP_DT_VENCIMENTO,   '+
                                         '          TTP_EMP_CODIGO,      '+
                                         '          TTP_MR_DIARIA,       '+
                                         '          TTP_MT_ATRASO,       '+
                                         '          TTP_PARCELA,         '+
                                         '          TTP_PES_CODIGO,      '+
                                         '          TTP_SITUACAO,        '+
                                         '          TTP_TP_MORA,         '+
                                         '          TTP_TP_MULTA,        '+
                                         '          TTP_TP_TITULO,       '+
                                         '          TTP_VL_ORIGINAL,     '+
                                         '          TTP_VL_PAGO,         '+
                                         '          TTP_VL_TOTAL,        '+
                                         '          EMP_RAZAO,           '+
                                         '          PESS_NOME            '+
                                         'from TITULOSP '+
                                         'inner join empresa on EMP_COD=TTP_EMP_CODIGO '+
                                         'INNER JOIN PESSOAS ON PESS_CODIGO=TTP_PES_CODIGO where '+c_where;
   dm_contaspagar.titulospagar.open;
end;





end.
