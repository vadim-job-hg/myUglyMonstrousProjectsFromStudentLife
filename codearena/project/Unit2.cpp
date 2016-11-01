//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "SHDocVw_OCX"
#pragma resource "*.dfm"
#include <DBXJSON.hpp>
#include <memory>
#include "v8.h"
int status = 0;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button1Click(TObject *Sender)
{
	ClientSocket1->Active=true;
}
//---------------------------------------------------------------------------
void __fastcall TForm2::ClientSocket1Connect(TObject *Sender, TCustomWinSocket *Socket)

{
	Memo1->Lines->Add("Conecting to host");
	status = 1;
}
//---------------------------------------------------------------------------
void __fastcall TForm2::ClientSocket1Connecting(TObject *Sender, TCustomWinSocket *Socket)

{
	 Memo1->Lines->Add("You are connected");
	 status = 2;
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Button2Click(TObject *Sender)
{
	 ClientSocket1->Socket->SendText("{\"userid\":\"9447\",\"hashid\":\"78e2781e6c333bc764b897a529e88a87\",\"gamemode\":\"1\"}");
	 Memo1->Lines->Add("{\"userid\":\"9447\",\"hashid\":\"78e2781e6c333bc764b897a529e88a87\",\"gamemode\":\"1\"}");
}
//---------------------------------------------------------------------------


void __fastcall TForm2::Button3Click(TObject *Sender)
{
	 //Memo1->Lines->Add(ClientSocket1->Socket->ReceiveText());
	 //CppWebBrowser1->Navigate(L"http://codearena.eu/en/game/games");
}
//---------------------------------------------------------------------------



void __fastcall TForm2::Timer1Timer(TObject *Sender)
{
	if(status==2)
	{
           ClientSocket1->Socket->SendText("{\"userid\":\"9447\",\"hashid\":\"78e2781e6c333bc764b897a529e88a87\",\"gamemode\":\"1\"}");
		   Memo1->Lines->Add("{\"userid\":\"9447\",\"hashid\":\"78e2781e6c333bc764b897a529e88a87\",\"gamemode\":\"1\"}");
		   status = 3;
	}
	AnsiString temp = ClientSocket1->Socket->ReceiveText();
	if(temp.Length()>5)
	{
		//Memo1->Clear();
		Memo1->Lines->Add(temp);

	}
	/*UnicodeString myJSON = "{\"test1\" :\"1\",\"test2\":{\"test21\":\"21\",\"test22\":\"22\"}}";
	TJSONObject *JSON = (TJSONObject*)TJSONObject::ParseJSONValue(myJSON);
	TJSONPair *pair = JSON->Get("test2");
	TJSONObject *jsonObj = (TJSONObject*) pair->JsonValue;
	TJSONPair *test21 = jsonObj->Get("test21");
	String value = test21->JsonValue->ToString();
	Memo1->Lines->Add(value);    */
}
//---------------------------------------------------------------------------





