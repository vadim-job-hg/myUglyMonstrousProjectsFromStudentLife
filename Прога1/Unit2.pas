unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, jpeg, ExtCtrls, DBGrids, Buttons, XPMan;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Image1: TImage;
    StringGrid1: TStringGrid;
    BitBtn1: TBitBtn;
    XPManifest1: TXPManifest;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);



 private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
implementation

uses Unit3;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);

begin

 Form3.Show;
 form3.Top:=form2.Top;
 form3.Left:=form2.Left;
 form3.Height:=form2.Height;
 form3.Width:=form2.Width;
 form2.hide;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
s:string;
i:integer;
begin
{верхушка таблицы}
StringGrid1.Cells[0,0]:='N';
StringGrid1.Cells[1,0]:='Время';
StringGrid1.Cells[2,0]:='Дата';
StringGrid1.Cells[3,0]:='Событие';
StringGrid1.Cells[4,0]:='Мелодия';
StringGrid1.Cells[5,0]:='Частота';

{Заполнение таблицы}
for i:=0 to Form1.Ev_List.count-1 do
begin
 Form1.pEv:=Form1.Ev_List.items[i];
if i=StringGrid1.RowCount-1 then StringGrid1.RowCount:=StringGrid1.RowCount+1;
StringGrid1.Cells[0,i+1]:=inttostr(i+1);
StringGrid1.Cells[1,i]:=DateTimeToStr(Form1.pEv^.Ev_DateTime);
StringGrid1.Cells[2,i]:=ContentToStr(Form1.pEv^.Ev_Content);
StringGrid1.Cells[3,i]:=SoundToStr(Form1.pEv^.Ev_Sound);
StringGrid1.Cells[5,i]:=S;
readln(f,s);
StringGrid1.Cells[4,i]:=S;
end;
CloseFile(f)



end;





procedure TForm2.BitBtn1Click(Sender: TObject);
begin
 Form1.Ev_List.Delete(StringGrid1.Row);
end;

end.
