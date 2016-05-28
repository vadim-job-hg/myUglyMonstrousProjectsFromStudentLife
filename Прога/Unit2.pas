unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, jpeg, ExtCtrls, DBGrids, Buttons;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Image1: TImage;
    StringGrid1: TStringGrid;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);



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
f:TextFile;
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
AssignFile(F,'txt.hl');
try
Reset(F);
except
Rewrite(f);
closeFile(f);
reset(f);
end;
i:=0;
while (not(EOF(f))) do
begin
if i=StringGrid1.RowCount-1 then StringGrid1.RowCount:=StringGrid1.RowCount+1;
i:=i+1;
StringGrid1.Cells[0,i]:=inttostr(i);
readln(f,s);
StringGrid1.Cells[1,i]:=S;
readln(f,s);
StringGrid1.Cells[2,i]:=S;
readln(f,s);
StringGrid1.Cells[3,i]:=S;
readln(f,s);
StringGrid1.Cells[5,i]:=S;
readln(f,s);
StringGrid1.Cells[4,i]:=S;
end;
CloseFile(f)



end;





end.
