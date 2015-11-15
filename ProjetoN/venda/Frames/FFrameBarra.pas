unit FFrameBarra;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, jpeg;

type
   TFrmFrameBarra = class(TFrame)
    W7Panel1: TPanel;
    LblBarraTitulo: TLabel;
    procedure FrameResize(Sender: TObject);
    procedure LblBarraTituloDblClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

implementation

{$R *.dfm}

procedure TFrmFrameBarra.FrameResize(Sender: TObject);
begin
//   LblBarraTitulo.Caption:=UpperCase(LblBarraTitulo.Caption)+StringOfChar(' ',5) ;
end;

procedure TFrmFrameBarra.LblBarraTituloDblClick(Sender: TObject);
begin

   if Screen.ActiveForm.BorderStyle=bsDialog then
      exit;

   if Screen.ActiveForm.WindowState=wsNormal then
      Screen.ActiveForm.WindowState:=wsMaximized
   else
      Screen.ActiveForm.WindowState:=wsNormal;
end;

end.
