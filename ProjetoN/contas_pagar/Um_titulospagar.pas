unit Um_titulospagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tm_titulospagar = class(TxManuPadrao)
    Label1: TLabel;
    ttp_codigo: TDBEdit;
    Label2: TLabel;
    ttp_empresa: TDBEdit;
    Label3: TLabel;
    ttp_pessoa: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    ttp_descricao: TDBEdit;
    Label7: TLabel;
    ttp_emissao: TDBEdit;
    Label8: TLabel;
    ttp_vencimento: TDBEdit;
    Label9: TLabel;
    ttp_dt_pagamento: TDBEdit;
    Label10: TLabel;
    ttp_dt_baixa: TDBEdit;
    Label11: TLabel;
    ttp_dt_cancelamento: TDBEdit;
    Label12: TLabel;
    ttp_tp_titulo: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label5: TLabel;
    SITUAÇÃO: TLabel;
    Label20: TLabel;
    ttp_desconto: TDBEdit;
    Label21: TLabel;
    ttp_parcela: TDBEdit;
    Label22: TLabel;
    ttp_vl_original: TDBEdit;
    Label23: TLabel;
    ttp_vl_pago: TDBEdit;
    Label24: TLabel;
    ttp_vl_total: TDBEdit;
    Label25: TLabel;
    ttp_mora: TDBEdit;
    Label26: TLabel;
    ttp_multa: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    emp_razao: TDBEdit;
    pess_nome: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;

    procedure FormCreate(Sender: TObject);
    procedure ttp_empresaExit(Sender: TObject);
    procedure ttp_pessoaExit(Sender: TObject);

  private
    { Private declarations }
     function funcBuscaEmpresa : boolean;
     function funcBuscaPessoa  : boolean;
  public
    { Public declarations }
  end;

var
  m_titulospagar: Tm_titulospagar;

implementation

{$R *.dfm}

uses Udm_contaspagar, UDM_contabil, UP_empresa, UP_Pessoa, UDM_financeiro;

procedure Tm_titulospagar.FormCreate(Sender: TObject);
begin
  inherited;
    ttp_codigo.Enabled:=false;
    ttp_vl_total.Enabled:=false;

    DM_financeiro.contasbancarias.Close;
    DM_financeiro.contasbancarias.SQL.Text := 'select * from contabancaria';
    DM_financeiro.contasbancarias.Open;
    DM_financeiro.contasbancarias.FetchAll;

    dm_contaspagar.condicaoPag.Close;
    dm_contaspagar.condicaoPag.SQL.Text := 'select * from CONDICAOPAGAMENTO';
    dm_contaspagar.condicaoPag.Open;
    dm_contaspagar.condicaoPag.FetchAll;
end;



function Tm_titulospagar.funcBuscaEmpresa: boolean;
begin
   Result := False;

   dm_contaspagar.QryAux.Close;
   dm_contaspagar.QryAux.SQL.Clear;
   dm_contaspagar.QryAux.SQL.Text := ' SELECT A.EMP_RAZAO             '+
                                     '   FROM EMPRESA A               '+
                                     '  WHERE A.EMP_COD = :CD_EMPRESA ';
   dm_contaspagar.QryAux.ParamByName('CD_EMPRESA').AsInteger := dm_contaspagar.titulospagarTTP_EMP_CODIGO.AsInteger;
   dm_contaspagar.QryAux.Open;

   if not dm_contaspagar.QryAux.IsEmpty then
   begin
      dm_contaspagar.titulospagarEMP_RAZAO.AsString := dm_contaspagar.QryAux.FieldByName('EMP_RAZAO').AsString;
      Result := True;
   end
   else
   begin
      dm_contaspagar.titulospagarTTP_PES_CODIGO.Clear;
      dm_contaspagar.titulospagarPESS_NOME.Clear;
   end;
end;

function Tm_titulospagar.funcBuscaPessoa: boolean;
begin
   Result := False;

   dm_contaspagar.QryAux.Close;
   dm_contaspagar.QryAux.SQL.Clear;
   dm_contaspagar.QryAux.SQL.Text := ' SELECT A.PESS_NOME                 '+
                                     '   FROM PESSOAS A                   '+
                                     '  WHERE A.PESS_CODIGO = :CD_PESSOA  ';
   dm_contaspagar.QryAux.ParamByName('CD_PESSOA').AsInteger := dm_contaspagar.titulospagarTTP_PES_CODIGO.AsInteger;
   dm_contaspagar.QryAux.Open;

   if not dm_contaspagar.QryAux.IsEmpty then
   begin
      dm_contaspagar.titulospagarPESS_NOME.AsString := dm_contaspagar.QryAux.FieldByName('PESS_NOME').AsString;
      Result := True;
   end
   else
   begin
      dm_contaspagar.titulospagarTTP_PES_CODIGO.Clear;
      dm_contaspagar.titulospagarPESS_NOME.Clear;
   end;

end;

procedure Tm_titulospagar.ttp_empresaExit(Sender: TObject);

    procedure procPesquisaEmpresa;
    begin

       TP_empresa.chamaTela(Self);
       if not DM_contabil.empresa.IsEmpty then
       begin
          dm_contaspagar.titulospagarTTP_EMP_CODIGO.AsInteger := DM_contabil.empresaEMP_COD.AsInteger;
          dm_contaspagar.titulospagarEMP_RAZAO.AsString       := DM_contabil.empresaEMP_RAZAO.AsString;
       end
       else
       begin
          dm_contaspagar.titulospagarTTP_EMP_CODIGO.Clear;
          dm_contaspagar.titulospagarEMP_RAZAO.Clear;
          if ttp_empresa.CanFocus then
             ttp_empresa.SetFocus;
       end;
    end;
begin
   inherited;
   if not funcBuscaEmpresa then
      procPesquisaEmpresa;
end;

procedure Tm_titulospagar.ttp_pessoaExit(Sender: TObject);

    procedure procPesquisaPessoa;
    begin
    end;

begin
   inherited;
   if not funcBuscaPessoa then
      procPesquisaPessoa;
end;

end.

