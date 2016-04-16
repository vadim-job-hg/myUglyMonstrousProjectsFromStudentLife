//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit3.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm3 *Form3;
//---------------------------------------------------------------------------
__fastcall TForm3::TForm3(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm3::FormCreate(TObject *Sender)
{
	ISpeechObjectTokens * SOTokens; //������ ��������� �������
   HRESULT hr=NULL;
   //��������� ������
   hr=SpVoice1->GetDefaultInterface()->GetVoices(NULL,NULL, &SOTokens);
   if(hr==S_OK) //���� ������ �������
   {  //������� ���������� � ������� � ComboBox
      for(int i=0;i < SOTokens->Count;i++)
      {
         cbVoices->Items->AddObject(SOTokens->Item(i)->GetDescription(0),
		 	(TObject*)SOTokens->Item(i));
         SOTokens->Item(i)->AddRef();
      }
      if(cbVoices->Items->Count>0)
      {  //���� ������ ���� - ������������� �� ������ � ������
		 cbVoices->ItemIndex=0;
		 cbVoicesChange(Sender);
	  }
   }
}
//---------------------------------------------------------------------------
void __fastcall TForm3::bbtnPlayClick(TObject *Sender)
{
	SpVoice1->Speak(memText->Text.c_str(), 0);
}
//---------------------------------------------------------------------------


void __fastcall TForm3::cbVoicesChange(TObject *Sender)
{
      ISpeechObjectToken * SOToken;
   //�������� ������ � ��������� ��������� ������
   SOToken=(ISpeechObjectToken *)cbVoices->Items->Objects[cbVoices->ItemIndex];
   //� ��������� ��� ��� ���������������
   SpVoice1->GetDefaultInterface()->_set_Voice(SOToken);
}
//---------------------------------------------------------------------------

