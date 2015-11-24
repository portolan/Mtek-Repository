unit Up_Emissao_NFE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, UDM_Venda, Um_Emissão_NFE, dm000;

type
  TUp_NFE = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
  procedure procSelect; override;
    { Public declarations }
  end;

var
  Up_NFE: TUp_NFE;

implementation

{$R *.dfm}

procedure TUp_NFE.FormCreate(Sender: TObject);
begin
  inherited;
  procInicializar(DM_VENDA.IB_EmissaoNFE,TRUE,FALSE,MEmissao_NFE, TMEmissao_NFE);
end;

procedure TUp_NFE.procSelect;
begin
   procMontaWhere;
   DM_VENDA.IB_EmissaoNFE.Close;
   DM_VENDA.IB_EmissaoNFE.SQL.Clear;
   DM_VENDA.IB_EmissaoNFE.SQL.Text := ' SELECT A.*, '+
                                 '        B.emp_razao, '+
                                 '        C.pess_nome  '+
                                 '  FROM EMISSAO_NFE A '+
                                 ' INNER join EMPRESA B ON A.emi_empresa =  b.emp_cod '+
                                 ' INNER JOIN PESSOAS C ON A.EMI_PESSOA = C.pess_codigo '+
                                 ' WHERE '+c_where;
   DM_VENDA.IB_EmissaoNFE.Open;
end;

end.
