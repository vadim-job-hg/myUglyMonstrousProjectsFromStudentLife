unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
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
    Edit7: TEdit;
    Label1: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
   f,f1:file of vopr;
   b:vopr;
   i:integer;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);

begin
 AssignFile(f,'vopros.dbt');//vopros dbt - вайл с вопросами
 //AssignFile(f1,'vopros.dbt');
 //сопоставление файла файловой переменной f
 Rewrite(f);
 edit6.text:='';
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
edit7.Text:='0';
edit8.Text:='0';
edit9.Text:='0';
// reset(f1);
//открытие для записи
i:=0;
{if(not(eof(f1))) then begin
read(f1,b);
edit6.text:=b.vop;
edit1.Text:=b.otv1;
edit2.Text:=b.otv2;
edit3.Text:=b.otv3;
edit4.Text:=b.otv4;
edit5.Text:=b.otv5;
edit7.Text:=inttostr(b.prav1);
edit8.Text:=inttostr(b.prav2);
edit9.Text:=inttostr(b.prav3);
end;}
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
label g;
var
a:vopr;//переменная типа vopr для считывания с файла
begin
{if(eof(f1)) then goto g;
if(not(eof(f1))) then begin
read(f1,b);
edit6.text:=b.vop;
edit1.Text:=b.otv1;
edit2.Text:=b.otv2;
edit3.Text:=b.otv3;
edit4.Text:=b.otv4;
edit5.Text:=b.otv5;
edit7.Text:=inttostr(b.prav1);
edit8.Text:=inttostr(b.prav2);
edit9.Text:=inttostr(b.prav3);
end
else begin}

//end;




   a.prav1:=strtoint(edit7.Text);
   a.prav2:=strtoint(edit8.Text);
   a.prav3:=strtoint(edit9.Text);
   a.vop:=edit6.Text;
   a.otv1:=edit1.Text;
   a.otv2:=edit2.Text;
   a.otv3:=edit3.Text;
   a.otv4:=edit4.Text;
   a.otv5:=edit5.Text;
   write(f,a);
   g: edit6.text:='';
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
edit7.Text:='0';
edit8.Text:='0';
edit9.Text:='0';
      {edit1.text:='';
      edit2.text:='';
      edit3.text:='';
      edit4.text:='';
      edit5.text:='';
      edit6.text:='';
      edit7.text:='';}
{write(f,a);
// i:=i+1;}

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
closefile(f);
//closefile(f1);
form1.Close;
end;

end.
