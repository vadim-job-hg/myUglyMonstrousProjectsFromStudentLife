//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit2.h"
#include "Unit1.h"
#include "File1.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "SHDocVw_OCX"
#pragma link "SHDocVw_OCX"
#pragma resource "*.dfm"
TForm2 *Form2;
String Login;

//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm2::FormCreate(TObject *Sender)
{
	Login=Form1->ComboBox1->Text;
	goProfile(Login);
}
//---------------------------------------------------------------------------


void __fastcall TForm2::FormClose(TObject *Sender, TCloseAction &Action)
{
exit(1);
}
//---------------------------------------------------------------------------



void __fastcall TForm2::N24Click(TObject *Sender)
{
	LoadMainMenu();
}
//---------------------------------------------------------------------------

