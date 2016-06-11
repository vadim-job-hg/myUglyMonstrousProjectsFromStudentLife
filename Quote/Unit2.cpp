//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include "Unit2.h"
#include "header.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;
TFont *qFont;
TJPEGImage *examp = new TJPEGImage;
int left=0;
int width=825;
int top=0;
int height=89;
int index = 1;
bool add = true;
quoteData temp;
QuotesLS qList;
void reloadQuote();
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button1Click(TObject *Sender)
{
	if  (FontDialog1->Execute())
	{
		qFont=FontDialog1->Font;
		Image1->Canvas->Font = qFont;
		Image1->Canvas->Font->Size = qFont->Size;
		Form2->Image1->Canvas->Pen->Color=qFont->Color;
		reloadQuote();
		temp.fontSize = qFont->Size;
	}
}
//---------------------------------------------------------------------------
void reloadQuote()
{
	Form2->Image1->Picture->Bitmap->Assign(examp);
	Form2->Image1->Canvas->Brush->Style=bsClear;
	int count = Form2->RichEdit1->Lines->Count;
	if(count>0)
	{
		int heightSQ =  (int)(height/count);
		for(int i=0; i<count; i++)
		{
		   Form2->Image1->Canvas->TextRect(Rect(left,top+i*heightSQ,width, left+(i+1)*heightSQ),left, top+i*heightSQ,Form2->RichEdit1->Lines->Strings[i]);     //Form2->RichEdit1->Lines->Strings[i]
		}
	}

}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button2Click(TObject *Sender)
{
	if  (OpenPictureDialog1->Execute())
	{
		examp->LoadFromFile(OpenPictureDialog1->FileName);
		reloadQuote();
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Edit1KeyPress(TObject *Sender, wchar_t &Key)
{
	if ((Key < '0') || (Key > '9'))
	{
		Key = 0;
	}
	reloadQuote();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Edit2KeyPress(TObject *Sender, wchar_t &Key)
{
	if ((Key < '0') || (Key > '9'))
	{
		Key = 0;
	}
	reloadQuote();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Edit3KeyPress(TObject *Sender, wchar_t &Key)
{
	if ((Key < '0') || (Key > '9'))
	{
		Key = 0;
	}
	reloadQuote();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Edit4KeyPress(TObject *Sender, wchar_t &Key)
{
	if ((Key < '0') || (Key > '9'))
	{
		Key = 0;
	}
	reloadQuote();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Edit1Change(TObject *Sender)
{
	left = Edit1->Text.ToInt();
	reloadQuote();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Edit2Change(TObject *Sender)
{
	top = Edit2->Text.ToInt();
	reloadQuote();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Edit3Change(TObject *Sender)
{
	width = Edit3->Text.ToInt();
	reloadQuote();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Edit4Change(TObject *Sender)
{
	height = Edit4->Text.ToInt();
	reloadQuote();
}
//---------------------------------------------------------------------------





void __fastcall TForm2::RichEdit1Change(TObject *Sender)
{
    reloadQuote();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::FormCreate(TObject *Sender)
{
	strcpy(temp.fontName, "Tahoma");
	strcpy(temp.quote, "");
	temp.fontSize = 12;
	strcpy(temp.fontName, "");
   	strcpy(temp.fontColor, "clWindowText");
	for(int i=1; i<=100; i++)
	{
		 ComboBox2->Items->Append(i);
	}
	ComboBox2->ItemIndex=99;
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button3Click(TObject *Sender)
{
	index = 0;
	if(qList.Count()<index+1)
	{
		add = true;
	}
	else
	{
		add = false;
		temp = qList.Read(index);
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Button4Click(TObject *Sender)
{
	if(index>0)
	{
		index--;
		if(qList.Count()<index+1)
		{
			add = true;
		}
		else
		{
			add = false;
			temp = qList.Read(index);
		}
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Button6Click(TObject *Sender)
{

		if(qList.Count()>index+1)
		{
			add = true;
		}
		else
		{
			index++;
			add = false;
			temp = qList.Read(index);
		}
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Button5Click(TObject *Sender)
{
  	if(qList.Count()>index+1)
	{
		add = true;
	}
	else
	{
		index = qList.Count() - 1;
		add = false;
		temp = qList.Read(index);
	}
}
//---------------------------------------------------------------------------

