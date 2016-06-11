//---------------------------------------------------------------------------

#include <vcl.h>
#include <jpeg.hpp>
#pragma hdrstop

#include "Unit1.h"
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
void __fastcall TForm1::Edit1KeyPress(TObject *Sender, wchar_t &Key)
{
	if ((Key >= '0') && (Key <= '9')) {} // צטפנû
	else Key = 0; // םו צטפנא
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit3KeyPress(TObject *Sender, wchar_t &Key)
{
	if ((Key >= '0') && (Key <= '9')) {} // צטפנû
	else Key = 0; // םו צטפנא
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit2KeyPress(TObject *Sender, wchar_t &Key)
{
	if ((Key >= '0') && (Key <= '9')) {} // צטפנû
	else Key = 0; // םו צטפנא
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit4KeyPress(TObject *Sender, wchar_t &Key)
{
	if ((Key >= '0') && (Key <= '9')) {} // צטפנû
	else Key = 0; // םו צטפנא
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit7KeyPress(TObject *Sender, wchar_t &Key)
{
	if (((Key >= '0') && (Key <= '9'))||(Key=='.')) {} // צטפנû
	else Key = 0; // םו צטפנא
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit8KeyPress(TObject *Sender, wchar_t &Key)
{
	if (((Key >= '0') && (Key <= '9'))||(Key=='-')) {} // צטפנû
	else Key = 0; // םו צטפנא
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit9KeyPress(TObject *Sender, wchar_t &Key)
{
   	if (((Key >= '0') && (Key <= '9'))) {} // צטפנû
	else Key = 0; // םו צטפנא
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N5Click(TObject *Sender)
{
	Form1->Close();
}
//---------------------------------------------------------------------------

