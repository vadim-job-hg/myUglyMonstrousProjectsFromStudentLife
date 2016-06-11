//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit2.h"
#include "Unit1.h"
#include "File1.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "SHDocVw_OCX"
#pragma resource "*.dfm"
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm2::FormCreate(TObject *Sender)
{
	wchar_t URL[100];
	AnsiString FilePath = "Z:/myProject";
	String a=strcat(FilePath.c_str(),"/lessons/textHTML/8_0.html");
	StringToWideChar(a, URL, 100);
	CppWebBrowser1->Navigate(URL,0,NULL,NULL,NULL);
	loadMenu("345");
   //	loadMenu(1);
}
//---------------------------------------------------------------------------
void __fastcall TForm2::FormResize(TObject *Sender)
{
	 CppWebBrowser1->Left=8;
	 CppWebBrowser1->Width=Form2->Width-24;
	 CppWebBrowser1->Top=8;
	 CppWebBrowser1->Height=Form2->Height-50;
}
//---------------------------------------------------------------------------
void __fastcall TForm2::FormClose(TObject *Sender, TCloseAction &Action)
{
exit(1);
}

//---------------------------------------------------------------------------
void __fastcall TForm2::CppWebBrowser1BeforeNavigate2(TObject *Sender, LPDISPATCH pDisp,
		  Variant *URL, Variant *Flags, Variant *TargetFrameName, Variant *PostData,
          Variant *Headers, VARIANT_BOOL *Cancel)
{
   //*URL;
}
//---------------------------------------------------------------------------
void __fastcall TForm2::CppWebBrowser1NavigateComplete2(TObject *Sender, LPDISPATCH pDisp,
          Variant *URL)
{
//Label1->Caption="2";
}
//---------------------------------------------------------------------------
