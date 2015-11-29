unit UP_BensImobilizados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TP_BensImobilizados = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
    procedure sbNovoClick(Sender: TObject);
    procedure sbAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
     procedure procSelect; override;
  end;

var
  P_BensImobilizados: TP_BensImobilizados;

implementation

{$R *.dfm}

uses dm000, udmControlePatrimonial, UM_BensImobilizados, UP_NotaBemImobilizado;

{ TP_BensImobilizados }

procedure TP_BensImobilizados.FormCreate(Sender: TObject);
begin
  inherited;
  procInicializar(DMControlePatrimonial.BenImobilizado, True, False, P_PesquisaNotaBemImobilizado, TP_PesquisaNotaBemImobilizado);
end;

procedure TP_BensImobilizados.FormShow(Sender: TObject);
begin
  inherited;
   procselect;
end;

procedure TP_BensImobilizados.procSelect;
begin
  inherited;
   procMontaWhere;

   DMControlePatrimonial.BenImobilizado.Close;
   DMControlePatrimonial.BenImobilizado.SQL.Text := ' SELECT * FROM BENS_IMOBILIZADOS A WHERE '+c_where;
   DMControlePatrimonial.BenImobilizado.Open;
end;

procedure TP_BensImobilizados.sbAlterarClick(Sender: TObject);
begin
   procMontarVLocate;

   MBensImobilizados := TMBensImobilizados.Create(Self);
   try
      if not (DMControlePatrimonial.BenImobilizado.Active) then
      DMControlePatrimonial.BenImobilizado.Open;


      DMControlePatrimonial.BenImobilizado.Edit;
      MBensImobilizados.QryPadrao := DMControlePatrimonial.BenImobilizado;
      MBensImobilizados.b_finalizaTransacao := true;
      MBensImobilizados.ShowModal;
   finally
      FreeAndNil(MBensImobilizados);
      procSelect;
      procLocate;
   end;

end;

procedure TP_BensImobilizados.sbNovoClick(Sender: TObject);
begin
   P_PesquisaNotaBemImobilizado := TP_PesquisaNotaBemImobilizado.Create(Self);
   try
      P_PesquisaNotaBemImobilizado.ShowModal;
   finally
     FreeAndNil(P_PesquisaNotaBemImobilizado);
   end;

end;

end.
