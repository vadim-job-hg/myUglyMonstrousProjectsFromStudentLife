unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtDlgs, Buttons;

type
  TForm4 = class(TForm)
    OpenPictureDialog1: TOpenPictureDialog;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    Button1: TButton;
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
openpictureDialog1.Execute;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
form1.image1.picture.LoadFromFile(openpicturedialog1.FileName);
end;

end.
