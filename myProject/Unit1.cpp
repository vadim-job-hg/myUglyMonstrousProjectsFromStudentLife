//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
#include "File1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Image1Click(TObject *Sender)
{
	Form2->Show();
   //	Form1->Hide();
}
//---------------------------------------------------------------------------



void __fastcall TForm1::Image3Click(TObject *Sender)
{
	createProfile(Form1->ComboBox1->Text);
}
//---------------------------------------------------------------------------

