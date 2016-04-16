unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, jpeg, OleCtrls;

type
PEvRec=^TEVRec;
TEvRec=record
 Ev_DateTime:TDateTime;
 Ev_Content:string[255];
 Ev_Sound:string[20];
end;

type
  TForm1 = class(TForm)
    MonthCalendar1: TMonthCalendar;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Timer1: TTimer;
    DateTimePicker1: TDateTimePicker;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
    Ev:TEvRec;
    pEv:PEvRec;
    f:file of TEvRec;
    Ev_List:TList;
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit4, Unit5;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Form2.Show;

end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
DateTimePicker1.DateTime:=now();

end;



procedure TForm1.FormCreate(Sender: TObject);
begin
assignFile(f, 'ev.dat'); { File selected in dialog }
Reset(F);
Ev_List:=Tlist.Create;
while not EOF(f) do
begin
 Read(F, Ev);
 New(pEv);
 pEv^.Ev_DateTime:=Ev.Ev_DateTime;
 pEv^.Ev_Content:=Ev.Ev_Content;
 Ev_List.Add(pEv);
end;
CloseFile(F);


MonthCalendar1.Date:=Now();
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form5.Show;
end;

end.
