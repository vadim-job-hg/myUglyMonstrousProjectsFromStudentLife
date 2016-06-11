//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Dialogs.hpp>
#include <ExtDlgs.hpp>
#include <ExtCtrls.hpp>
#include <Menus.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TEdit *Edit1;
	TEdit *Edit2;
	TEdit *Edit3;
	TEdit *Edit4;
	TLabel *Label5;
	TEdit *Edit5;
	TImage *Image1;
	TComboBox *ComboBox1;
	TButton *Button2;
	TLabel *Label6;
	TComboBox *ComboBox2;
	TMemo *Memo1;
	TMainMenu *MainMenu1;
	TCheckBox *CheckBox1;
	TLabel *Label7;
	TEdit *Edit7;
	TEdit *Edit8;
	TLabel *Label8;
	TEdit *Edit9;
	TLabel *Label9;
	TComboBox *ComboBox3;
	TLabel *Label10;
	TMenuItem *N1;
	TMenuItem *N2;
	TMenuItem *N3;
	TMenuItem *N4;
	TMenuItem *N5;
	void __fastcall Edit1KeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall Edit3KeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall Edit2KeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall Edit4KeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall Edit7KeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall Edit8KeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall Edit9KeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall N5Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
