unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    OpenDialog1: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
type
vopr=packed record //тип записи файла
    vop:string[200];//поле вопроса
    otv1:string[200]; //поля ответов
    otv2:string[200]; //поля ответов
    otv3:string[200]; // поля ответов
    otv4:string[200];  //поля ответов
    otv5:string[200]; //поля ответов
    prav1:integer;    //номер правильного
    prav2:integer;//правильных ответов может быть несколько
    prav3:integer;//поэтому и полей несколько
end;

var
  Form1: TForm1;
   f:file of vopr;
   wri,err,i:integer;
   a:vopr;   //переменная типа vopr для считывания с файла
implementation

uses Unit3, Unit4;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);


begin
opendialog1.Execute();
 AssignFile(f,opendialog1.FileName);//vopros dbt - вайл с вопросами
 //сопоставление файла файловой переменной f
 Reset(f);
//открытие для записи
i:=0;
wri:=0;
err:=0;
if (i<filesize(f)-1) then begin
  read(f,a);
   edit6.Text:=a.vop;
   edit1.Text:=a.otv1;
   edit2.Text:=a.otv2;
   edit3.Text:=a.otv3;
   edit4.Text:=a.otv4;
   edit5.Text:=a.otv5;
end;

edit7.text:=inttostr(a.prav1);
edit8.text:=inttostr(a.prav2);
edit9.text:=inttostr(a.prav3);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
label er,wr;
begin
//поиск правильного ответа
if((checkbox1.Checked=true) and (a.prav1<>1) and (a.prav2<>1) and (a.prav3<>1)) then begin
err:=err+1;
goto er;
end;
if((checkbox2.Checked=true) and (a.prav1<>2) and (a.prav2<>2) and (a.prav3<>2)) then begin
err:=err+1;
goto er;
end;
if((checkbox3.Checked=true) and (a.prav1<>3) and (a.prav2<>3) and (a.prav3<>3)) then begin
err:=err+1;
goto er;
end;
if((checkbox4.Checked=true) and (a.prav1<>4) and (a.prav2<>4) and (a.prav3<>4)) then begin
err:=err+1;
goto er;
end;
if((checkbox5.Checked=true) and (a.prav1<>5) and (a.prav2<>5) and (a.prav3<>5)) then begin
err:=err+1;
goto er;
end;


if((a.prav1=1) or (a.prav2=1) or (a.prav3=1)) then if(checkbox1.Checked=false)then begin
err:=err+1;
goto er;
end;
if((a.prav1=2) or (a.prav2=2) or (a.prav3=2)) then if(checkbox2.Checked=false)then begin
err:=err+1;
goto er;
end;
if((a.prav1=3) or (a.prav2=3) or (a.prav3=3)) then if(checkbox3.Checked=false)then begin
err:=err+1;
goto er;
end;
if((a.prav1=4) or (a.prav2=4) or (a.prav3=4)) then if(checkbox4.Checked=false)then begin
err:=err+1;
goto er;
end;
if( (a.prav1=5) or (a.prav2=5) or (a.prav3=5)) then if(checkbox5.Checked=false)then begin
err:=err+1;
goto er;
end;


wri:=wri+1;
label1.Caption:='Правильных = ' + inttostr(wri);
goto wr;
er: label3.Caption:='Неправильных = ' +inttostr(err);


wr:i:=i+1;
if(eof(f)) then
begin

  form3.Show;
  form3.Label1.Caption:=label1.Caption;
  form3.Label3.Caption:=label3.Caption;
  if((wri+err)*1/5>wri) then
    begin
    Form3.label4.font.Color:= clRed;
    form3.Label4.Caption:='Ужас какой';
    end;
  if((wri+err)*1/5<wri) then
    begin
    Form3.label4.font.Color:= clYellow;
    form3.Label4.Caption:='Плохо';
    end;
  if((wri+err)*2/5<wri) then
    begin
    Form3.label4.font.Color:= clOlive;
    form3.Label4.Caption:='Старайся давай';
  end;
  if((wri+err)*3/5<wri) then
    begin
    Form3.label4.font.Color:= clAqua;
    form3.Label4.Caption:='Ладно сойдёт';
    end;
  if((wri+err)*4/5<wri) then
    begin
      Form3.label4.font.Color:= clGreen;
      form3.Label4.Caption:='Молодец';
    end;
if(err=0) then
begin
Form3.label4.font.Color:= clGreen;
form3.Label4.Caption:='Великолепно';
end;
form1.hide;
end;
if (not(eof(f))) then begin
 label2.Caption:='Вопрос N'+inttostr(i+1);
   read(f,a);
   edit6.Text:=a.vop;
   edit1.Text:=a.otv1;
   edit2.Text:=a.otv2;
   edit3.Text:=a.otv3;
   edit4.Text:=a.otv4;
   edit5.Text:=a.otv5;

   edit7.text:=inttostr(a.prav1);
edit8.text:=inttostr(a.prav2);
edit9.text:=inttostr(a.prav3);
 checkbox1.Checked:=false;
 checkbox2.Checked:=false;
 checkbox3.Checked:=false;
 checkbox4.Checked:=false;
 checkbox5.Checked:=false;
end
else begin
  closefile(f);
end;

end;

end.

