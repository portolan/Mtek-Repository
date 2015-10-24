unit xCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, data.db, datasnap.DBClient,
  Vcl.Mask, Vcl.DBCtrls;

type
  TCadastroPadrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Sair: TSpeedButton;
    Gravar: TSpeedButton;
    Cancelar: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  function f_valida_campo_obr(bbo_msg: boolean; DataS: TDataSource): boolean;
  procedure p_pinta_campo(campo: TComponent);
  function TestaCpfCgc(Dado: string): String;
  function TestaCGC(Dado : string) : boolean;
  function TestaCPF(Dado : string) : boolean;

  end;

var
  CadastroPadrao: TCadastroPadrao;


implementation

{$R *.dfm}

procedure TCadastroPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if KEY = vk_F5 then
      Gravar.Click;

   if KEY = VK_F6 then
      Cancelar.Click;

   if KEY = VK_ESCAPE then
      Sair.Click;

end;

function TCadastroPadrao.f_valida_campo_obr(bbo_msg: boolean;
  DataS: TDataSource): boolean;
var
   nnr_campos, nnr_aux : integer;
   nnr_comp : integer;
   sds_campos, sds_nome_campo : string;
   Shape : TShape;
begin
   result := true;
   try
      if (TClientDataSet(DataS.DataSet).State in[dsInsert,dsEdit])then
      begin
         sds_campos := '';
         nnr_aux    := 1;
         nnr_campos := TClientDataSet(DataS.DataSet).FieldCount;
         while (nnr_aux <= nnr_campos) do
         begin
            if (TClientDataSet(DataS.DataSet).Fields.FieldByNumber(nnr_aux).DisplayLabel <> '') then
            begin
               if not(TClientDataSet(DataS.DataSet).Fields.FieldByNumber(nnr_aux).Lookup) then
               begin
                  if(TClientDataSet(DataS.DataSet).Fields.FieldByNumber(nnr_aux).AutoGenerateValue <> arAutoInc) then
                  begin
                     if(TClientDataSet(DataS.DataSet).Fields.FieldByNumber(nnr_aux).Required) and ((Trim(TClientDataSet(DataS.DataSet).Fields.FieldByNumber(nnr_aux).AsString) = '')) then
                     begin
                       sds_campos := sds_campos+TClientDataSet(DataS.DataSet).Fields.FieldByNumber(nnr_aux).DisplayLabel+#13;
   //                  sds_campos := 'Favor verifique os campos em azul!';
                        for nnr_comp := 0 to Self.ComponentCount - 1 do
                        begin
                           if(Self.Components[nnr_comp].Name = TClientDataSet(DataS.DataSet).Fields.FieldByNumber(nnr_aux).FieldName)then// is TDbEdit) then
                           begin
                              p_pinta_campo(Self.Components[nnr_comp]);
                           end;
                        end;
                     end;
                  end;
               end;
            end;
            nnr_aux := nnr_aux + 1;
         end;
         if(sds_campos <> '') then
         begin
            if(bbo_msg) then
            begin
               MessageDlg('Existem campos obrigatórios com valores nulos, favor verifique!'+#13+sds_campos,mtInformation,[mbOk],0);
            end;
            result := false;
            exit;
         end
         else
         begin
            result := true;
         end;
      end;
   except
      if(bbo_msg) then
      begin
         if(sds_campos <> '') then
         begin
            MessageDlg('Existem campos obrigatórios com valores nulos, favor verifique!'+#13+sds_campos,mtInformation,[mbOk],0);
            result := false;
         end
         else
         begin
            result := true;
         end;
      end
      else
      begin
         if(sds_campos <> '') then
         begin
            result := false;
         end
         else
         begin
            result := true;
         end;
      end;
   end;
end;

procedure TCadastroPadrao.p_pinta_campo(campo: TComponent);
var
   SP : TShape;
begin
   if(campo is TDBedit) then
   begin
      with campo as TDbEdit do
      begin
         Color := clMoneyGreen;
      end;
   end;
   if(campo is TDBLookupComboBox) then
   begin
      with campo as TDBLookupComboBox do
      begin
         Color := clMoneyGreen;
      end;
   end;
end;

function TCadastroPadrao.TestaCGC(Dado: string): boolean;
var
   D1 : array[1..12] of byte;
   I, DF1, DF2, DF3, DF4, DF5, DF6, Resto1, Resto2, PrimeiroDigito, SegundoDigito : Integer;
begin
   Result := true;
   if Length(Dado) = 14 then
   begin
      for I := 1 to 12 do
      if Dado[I] in ['0'..'9'] then
         D1[I] := StrToInt(Dado[I])
      else
         Result := false;
      if Result then
      begin
         DF1 := 0;
         DF2 := 0;
         DF3 := 0;
         DF4 := 0;
         DF5 := 0;
         DF6 := 0;
         Resto1 := 0;
         Resto2 := 0;
         PrimeiroDigito := 0;
         SegundoDigito := 0;
         DF1 := 5*D1[1] + 4*D1[2] + 3*D1[3] + 2*D1[4] + 9*D1[5] + 8*D1[6] +
                7*D1[7] + 6*D1[8] + 5*D1[9] + 4*D1[10] + 3*D1[11] + 2*D1[12];
         DF2 := DF1 div 11;
         DF3 := DF2 * 11;
         Resto1 := DF1 - DF3;

         if (Resto1 = 0) or (Resto1 = 1) then
            PrimeiroDigito := 0
         else
            PrimeiroDigito := 11 - Resto1;

         DF4 := 6*D1[1] + 5*D1[2] + 4*D1[3] + 3*D1[4] + 2*D1[5] + 9*D1[6] +
         8*D1[7] + 7*D1[8] + 6*D1[9] + 5*D1[10] + 4*D1[11] + 3*D1[12] +
         2*PrimeiroDigito;

         DF5 := DF4 div 11;
         DF6 := DF5 * 11;
         Resto2 := DF4 - DF6;
         if (Resto2 = 0) or (Resto2 = 1) then
            SegundoDigito := 0
         else
            SegundoDigito := 11 - Resto2;
         if (PrimeiroDigito <> StrToInt(Dado[13])) or
                  (SegundoDigito <> StrToInt(Dado[14])) then
             Result := false;
         end;
      end
      else
         if Length(Dado) <> 0 then
            Result := false;
end;

function TCadastroPadrao.TestaCPF(Dado: string): boolean;
var
   D1 : array[1..9] of byte;
   I,DF1,DF2,DF3,DF4,DF5,DF6,Resto1,Resto2,PrimeiroDigito,SegundoDigito : integer;
begin
   Result := true;
   if Length(Dado) = 11 then
   begin
       for I := 1 to 9 do
            if Dado[I] in ['0'..'9'] then
                 D1[I] := StrToInt(Dado[I])
            else
                 Result := false;
       if Result then
       begin
          DF1 := 0;
          DF2 := 0;
          DF3 := 0;
          DF4 := 0;
          DF5 := 0;
          DF6 := 0;
          Resto1 := 0;
          Resto2 := 0;
          PrimeiroDigito := 0;
          SegundoDigito := 0;
          DF1 := 10*D1[1] + 9*D1[2] + 8*D1[3] + 7*D1[4] + 6*D1[5] + 5*D1[6] +
                 4*D1[7] + 3*D1[8] + 2*D1[9];

          DF2 := DF1 div 11;
          DF3 := DF2 * 11;
          Resto1 := DF1 - DF3;
          if (Resto1 = 0) or (Resto1 = 1) then
             PrimeiroDigito := 0
          else
              PrimeiroDigito := 11 - Resto1;

          DF4 := 11*D1[1] + 10*D1[2] + 9*D1[3] + 8*D1[4] + 7*D1[5] + 6*D1[6] +
          5*D1[7] + 4*D1[8] + 3*D1[9] + 2*PrimeiroDigito;
          DF5 := DF4 div 11;
          DF6 := DF5 * 11;
          Resto2 := DF4 - DF6;

          if (Resto2 = 0) or (Resto2 = 1) then
             SegundoDigito := 0
          else
              SegundoDigito := 11 - Resto2;

          if (PrimeiroDigito <> StrToInt(Dado[10])) or
               (SegundoDigito <> StrToInt(Dado[11])) then
          Result := false;
      end;
      end
      else
         if Length(Dado) <> 0 then
            Result := false;

end;

function TCadastroPadrao.TestaCpfCgc(Dado: string): String;
var
   i: integer;

begin
   for i:= 1 to length(Dado) do begin
   if not (Dado[i] in ['0'..'9']) then
      delete(Dado,i,1);

   end;
   if ((length(Dado) <> 11) and (length(Dado) <> 14)) then
   begin
      MessageDlg('ATENÇÃO: O número informado NÃO representa' + #13 +
                 'um CPF ou CGC válido pelas regras da Receita Federal',mtWarning,[mbOK],0);

   end;

   if length(Dado) = 14 then
   begin
   if TestaCGC(Dado) then
   begin
     insert('-',Dado,13);
     insert('/',Dado,9);
     insert('.',Dado,6);
     insert('.',Dado,3);
   end
   else
      MessageDlg('O número informado NÃO representa um CGC' + #13 +
                  'válido pelas regras da Receita Federal', mtWarning, [mbOK], 0);

   end;
   if length(Dado) = 11 then
   begin
      if TestaCPF(Dado) then
      begin
         insert('-',Dado,10);
         insert('.',Dado,7);
         insert('.',Dado,4);
      end
      else
         MessageDlg('O número informado NÃO representa um CPF' + #13 +
                     'válido pelas regras da Receita Federal', mtWarning, [mbOK], 0);
      end;
   Result := Dado;

end;

end.
