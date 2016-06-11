//---------------------------------------------------------------------------

#ifndef Unit2H
#define Unit2H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "SHDocVw_OCX.h"
#include <OleCtrls.hpp>
//---------------------------------------------------------------------------
class TForm2 : public TForm
{
__published:	// IDE-managed Components
	TCppWebBrowser *CppWebBrowser1;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall FormResize(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall CppWebBrowser1BeforeNavigate2(TObject *Sender, LPDISPATCH pDisp,
          Variant *URL, Variant *Flags, Variant *TargetFrameName, Variant *PostData,
          Variant *Headers, VARIANT_BOOL *Cancel);
	void __fastcall CppWebBrowser1NavigateComplete2(TObject *Sender, LPDISPATCH pDisp,
          Variant *URL);
private:	// User declarations
public:		// User declarations
	__fastcall TForm2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif
