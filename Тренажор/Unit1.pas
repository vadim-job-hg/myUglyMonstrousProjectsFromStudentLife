unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, AgentObjects_TLB, HTTSLib_TLB, StdCtrls;

type
  TForm1 = class(TForm)
    TextToSpeech1: TTextToSpeech;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
TextToSpeech1.Speak('ÂÂÂ');
end;

end.
