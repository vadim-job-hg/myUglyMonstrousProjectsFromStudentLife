unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, jpeg, ExtCtrls, MPlayer,mmsystem, Buttons;


type
  TForm3 = class(TForm)
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    MediaPlayer1: TMediaPlayer;
    OpenDialog1: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);






  private

    { Private declarations }
  public
  
    { Public declarations }
  end;

var
  Form3: TForm3;
  
implementation




uses Unit2;

{$R *.dfm}

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Form2.Show;
 form2.Top:=form3.Top;
 form2.Left:=form3.Left;
 form2.Height:=form3.Height;
 form2.Width:=form3.Width;
end;









procedure TForm3.BitBtn1Click(Sender: TObject);
var f:TextFile;
S:String;
i:integer;
begin
AssignFile(F,'txt.hl');
try
Append(F);
except
Rewrite(f);
closeFile(f);
Append(f);
end;
S:=DateToStr(DateTimePicker2.Time);
Writeln(f,s);    {Запись нового события}
S:=DateToStr(DateTimePicker1.Date);
Writeln(f,s);
S:=Edit1.Text;
Writeln(f,s);
If radioButton1.Checked=true then s:='1'{1 раз в день}
        else if radioButton2.Checked=true then s:='2' {В неделю}
          else if radioButton3.Checked=true then s:='3' {В месяц}
             else if radioButton4.Checked=true then s:='4' {В год}
              else  s:='5'; {не повторять}
Writeln(f,s);
writeln(f,'');
CloseFile(F);


AssignFile(F,'txt.hl');
try
Reset(F);                  {Обновление таблицы}
except
Rewrite(f);
closeFile(f);
reset(f);
end;
i:=0;
while (not(EOF(f))) do
begin
if i=Form2.StringGrid1.RowCount-1 then Form2.StringGrid1.RowCount:=Form2.StringGrid1.RowCount+1;
i:=i+1;
Form2.StringGrid1.Cells[0,i]:=inttostr(i);
readln(f,s);
Form2.StringGrid1.Cells[1,i]:=S;
readln(f,s);
Form2.StringGrid1.Cells[2,i]:=S;
readln(f,s);
Form2.StringGrid1.Cells[3,i]:=S;
readln(f,s);
Form2.StringGrid1.Cells[5,i]:=S;
readln(f,s);
Form2.StringGrid1.Cells[4,i]:=S;
end;
CloseFile(f);
Form3.Close;
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
Form3.Close;
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin

OpenDialog1.Execute;
MediaPlayer1.FileName:=OpenDialog1.FileName;
MediaPlayer1.Play;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
MediaPlayer1.FileName:='D:\1.wav';
end;
procedure TForm3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if CanClose then
 begin
  if modalResult=mrOk then
  begin
  // проверка
  // если все Ok
  New(pEv);
 pEv^.Ev_DateTime:=;
 pEv^.Ev_Content:=;
 Ev_List.Add(pEv);
  // если не все Ok
   CanClose :=false;
  end;
 end;
end;

end.
