unit UM_contasreceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TM_contasreceber = class(TxManuPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    SITUAÇÃO: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    ttr_codigo: TDBEdit;
    ttr_descricao: TDBEdit;
    ttr_emissao: TDBEdit;
    ttr_vencimento: TDBEdit;
    ttp_dt_pagamento: TDBEdit;
    ttr_dt_baixa: TDBEdit;
    ttr_dt_cancelamento: TDBEdit;
    ttr_tp_titulo: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    ttr_desconto: TDBEdit;
    ttr_parcela: TDBEdit;
    ttr_vl_original: TDBEdit;
    ttr_vl_pago: TDBEdit;
    ttr_vl_total: TDBEdit;
    ttr_mora: TDBEdit;
    ttp_multa: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_contasreceber: TM_contasreceber;

implementation

{$R *.dfm}

uses UDM_contasreceber, UDM_financeiro, UDM_contabil, UDM_PedCompra,
  Udm_contaspagar;



procedure TM_contasreceber.FormCreate(Sender: TObject);
begin
  inherited;
    dmPedCompra.Pessoa.Close;
    dmPedCompra.Pessoa.sql.Text := 'select * from pessoas';
    dmPedCompra.Pessoa.Open;
    dmPedCompra.Pessoa.FetchAll;

    DM_contabil.empresa.Close;
    DM_contabil.empresa.sql.Text := 'select * from empresa';
    DM_contabil.empresa.Open;
    DM_contabil.empresa.FetchAll;

    DM_financeiro.contasbancarias.Close;
    DM_financeiro.contasbancarias.sql.Text := 'select * from contabancaria';
    DM_financeiro.contasbancarias.Open;
    DM_financeiro.contasbancarias.FetchAll;

    dm_contaspagar.condicaoPag.Close;
    dm_contaspagar.condicaoPag.sql.Text := 'select * from condicaopagamento';
    dm_contaspagar.condicaoPag.Open;
    dm_contaspagar.condicaoPag.FetchAll;
end;

end.
