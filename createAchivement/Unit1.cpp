//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
class achievementBase{//��� - ���� ������ ����������
public:
	int num;  //�����
	AnsiString name; //��� ����������
	AnsiString html_dis;  //html - �� �������
	AnsiString html_en;   //html - �������
	int img_dis;          //�������� - �� �������
	int img_en;           //�������� - �������
	int enouchAll;        //���������� ������� - ���� ��������
	int eachShow;         //��� ����������� �������� ����������� ��� ����������
	int soundOpened;      //id - ����� ��� �������� ����������
};
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

