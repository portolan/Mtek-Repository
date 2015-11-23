unit Um_Emissão_NFE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, dm000, UDM_Venda, Vcl.Mask, Vcl.DBCtrls, ufrm_Relacionamento,
  UM_empresa, UM_Pessoa, UP_empresa, UP_Pessoa;

type
  TMEmissao_NFE = class(TxManuPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    frm_Empresa: TfrmRelacionamento;
    frm_Pessoa: TfrmRelacionamento;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MEmissao_NFE: TMEmissao_NFE;

implementation

{$R *.dfm}

procedure TMEmissao_NFE.FormShow(Sender: TObject);
begin
  inherited;
  frm_empresa.procInicializar(DM_VENDA.IB_VendaPED_EMPRESA,
                              DM_VENDA.IB_VendaEMP_RAZAO,
                              DM_VENDA.DS_VENDA,
                              ' SELECT A.EMP_COD, '+
                              '        A.EMP_RAZAO'+
                              ' FROM EMPRESA A    '+
                              ' WHERE A.EMP_COD = :EMP ',
                               P_empresa, TP_empresa, ['EMP'], ['PED_EMPRESA'],
                               ['EMP_COD', 'EMP_RAZAO']);
  frm_Pessoa.procInicializar(DM_VENDA.IB_EmissaoNFEEMI_PESSOA,
                             DM_VENDA.IB_EmissaoNFEPESS_NOME,
                             DM_VENDA.DS_EmissaoNFE,
                             ' SELECT A.PESS_CODIGO, '+
                             '        A.PESS_NOME '+
                             '   FROM PESSOAS A '+
                             '  WHERE A.PESS_CODIGO = :COD ',
                             PPessoa, TPPessoa,['COD'], ['EMI_PESSOA'],
                             ['PESS_CODIGO','PESS_NOME']);
end;

end.
