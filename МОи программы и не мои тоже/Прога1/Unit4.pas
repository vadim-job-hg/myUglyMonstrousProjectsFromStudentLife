unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtDlgs, Buttons, jpeg, ExtCtrls, XPMan, ComCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    TrackBar1: TTrackBar;
    XPManifest1: TXPManifest;
    Image1: TImage;
    OpenDialog1: TOpenDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
openDialog1.Execute;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
if openDialog1.Execute then
begin
Edit1.Text:=openDialog1.FileName;
form1.image1.picture.LoadFromFile(openDialog1.FileName);
end;
end;

end.
