unit UF_RelatorioControlePatrimonial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  UR_RelControlePatrimonial;

type
  TF_RelControlePAtrimonial = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    sbSair: TSpeedButton;
    SpeedButton1: TSpeedButton;
    CBRelatorios: TComboBox;
    Label1: TLabel;
    cbAtivo: TCheckBox;
    procedure sbSairClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_RelControlePAtrimonial: TF_RelControlePAtrimonial;

implementation

{$R *.dfm}

procedure TF_RelControlePAtrimonial.sbSairClick(Sender: TObject);
begin
   close;
end;

procedure TF_RelControlePAtrimonial.SpeedButton1Click(Sender: TObject);
var
   c_where : string;
begin
   c_where := '';
    // TIPO
   if CBRelatorios.ItemIndex = 0 then
   begin
     if cbAtivo.Checked then
        c_where := ' WHERE A.TPB_STATUS = ''A'' ';


     R_RelatorioControlePatrimonial.IB_TIPO.Close;
     R_RelatorioControlePatrimonial.IB_TIPO.SQL.Text := 'SELECT *              ' +
                                                        '  FROM TIPO_DE_BENS A ' + c_where ;
     R_RelatorioControlePatrimonial.IB_TIPO.Open;

     R_RelatorioControlePatrimonial.frxTIPO.ShowReport();
   end;

   // LOCALIZACAO
   if CBRelatorios.ItemIndex = 1 then
   begin
     if cbAtivo.Checked then
        c_where := ' WHERE A.LOC_STATUS = ''A'' ';


     R_RelatorioControlePatrimonial.IB_Localizacao.Close;
     R_RelatorioControlePatrimonial.IB_Localizacao.SQL.Text := 'SELECT *             ' +
                                                               '  FROM LOCALIZACAO A ' + c_where ;
     R_RelatorioControlePatrimonial.IB_Localizacao.Open;

     R_RelatorioControlePatrimonial.frxLocalizacao.ShowReport();
   end;

   if CBRelatorios.ItemIndex = 2 then
   begin
    if cbAtivo.Checked then
        c_where := ' WHERE A.EDC_STATUS = ''A'' ';


     R_RelatorioControlePatrimonial.IB_EstadoConservacao.Close;
     R_RelatorioControlePatrimonial.IB_EstadoConservacao.SQL.Text := 'SELECT *                       ' +
                                                                     '  FROM ESTADO_DE_CONSERVACAO A ' + c_where ;
     R_RelatorioControlePatrimonial.IB_EstadoConservacao.Open;

     R_RelatorioControlePatrimonial.frxEstadoConservacao.ShowReport();

   end;
end;

end.
