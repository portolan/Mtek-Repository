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
    ttp_conta: TDBEdit;
    ttp_condicao: TDBEdit;
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
    pess_descricao: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  m_titulospagar: Tm_titulospagar;

implementation

{$R *.dfm}

uses Udm_contaspagar;

end.
