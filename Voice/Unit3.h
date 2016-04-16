//---------------------------------------------------------------------------

#ifndef Unit3H
#define Unit3H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <OleServer.hpp>
#include "SpeechLib_OCX.cpp"
//---------------------------------------------------------------------------
class TForm3 : public TForm
{
__published:	// IDE-managed Components
	TMemo *memText;
	TComboBox *cbVoices;
	TButton *bbtnPlay;
	TButton *bbtnPause;
	TButton *bbtnStop;
	TSpVoice *SpVoice1;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall bbtnPlayClick(TObject *Sender);
	void __fastcall cbVoicesChange(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm3(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm3 *Form3;
//---------------------------------------------------------------------------
#endif