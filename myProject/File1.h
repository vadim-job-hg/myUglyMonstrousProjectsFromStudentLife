#include "Unit2.h";
#include <utilcls.h>
#include <mshtml.h>
#include <ocidl.h>
#include <iostream>
#include <objidl.h>
#include <memory>
#include <string>
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
class achievementImgBase{  // ��� - ���� ������ ����������� ����������
public:
	int num;              //id �����������
	AnsiString FileName;  //��� �����
};
class soundBase{   //id - ���� ������ ������
public:
	int num;      //id - ������
	AnsiString FileName;  // ��� �����
};
class achievement{  //��� ����������
public:
	int num;       //������ ����������
	int enouchReady; //������� �������� ����������� ��������
	bool opened;     //������� ���������� ��� ���
};
class quoteBase{ //��� - ���� ������ �����
public:
	int num;    //id ������
	int soundShow;   //   id �����
	AnsiString html;// ����� ������
	AnsiString Autor;// ����� ������
	int Group;//��� ������
	int background;   //�������� ����
};
class quoteImgBase{
public:
	int num;      //id ���� ������
	AnsiString FileName;          //��� ����� ����
};
class dopContentBase{
public:
	int num;       //������ ����������
	int Type;  //����� ���� ��������
	AnsiString name; //��� ����������
};
class dopContent{
public:
	int num;       //������ ��������
	bool opened;     //������� ��� ���
};
class lessonBase{      //    ��� ���� ������ ������
	int num;               // ����� ����������
	AnsiString number;     //����� �������
	AnsiString name;       //�������� �����
	AnsiString FileName;	//Html �������
	int imgOpened;          //�������� ��������� �����
};
class lesson{
public:
	int num;     // id �����
	bool opened; //������ ��� ���

};
class ExerciseBase{ //���� ����������
	int num;     // id ����������
	AnsiString FileName;	//���� ����������
};
class Exercise{
	int num;     // id ����������
	int Lesson; //id �����
	bool opened; //������ ��� ���
};
class User{
public:
	AnsiString Login; //�����
	AnsiString PassWord;//������
	int AnoingLevel;    //������� �����������������
	bool Say;		//���������� �����?
	int LessonesPased; //�������� ������
	unsigned long ExercisePassed; //�������� ����������
	unsigned long ExerciseLoaded; //���������� ����������
	unsigned long ClearPassed;//���������� ��� ������
	int ClearPassedRunning;//������
	unsigned long Tiped;         //���������� ��������
	unsigned long Words;     	//���������� ����
	unsigned long Errors;    	  //������� ��������
	unsigned long quotesOpened;  //������� �����
	unsigned long quotesSecretOpened;  //������� ��������� �����
	unsigned long quotesCommicsOpened;//������� ����� �� ���������
	unsigned long quotesCartoonOpened;//������� ����� �� ������������
	unsigned long quotesMovieOpened;//������� ����� �� �������
	unsigned long quotesBooksOpened;//������� ����� �� ����
	unsigned long quotesGamesOpened;//������� ����� �� ���
	unsigned long quotesClassicsOpened;//������� ����� ���������
	unsigned long quotesCurrentOpened;//������� ����� ����������� ���������
	unsigned long quotesSeen;   //������� �����
	unsigned long SecondLastPased;//����� �� ��������� ����
	unsigned long SecondPasedSr;//������� ����� �����������
	float ErrorsSr;   //������� ���������� ������
	int achievementUnlocked; //������� ����������
	unsigned long SecondsWork;//����� �� �����������
};
void LoadHtmlFromStream(TCppWebBrowser *pCppWebBrowser,
TMemoryStream *pMemStream);
void loadHtml()
{
	try
	{
		Form2->CppWebBrowser1->Navigate((ExtractFilePath(Application->ExeName) + "\Temp.html").w_str());
	}
	catch (int)
	{

	}
}
void loadHtml2(AnsiString HTML_Text)
{
    try
	{
		TMemoryStream *pStream = new TMemoryStream();
		pStream->Write(HTML_Text.c_str(), HTML_Text.Length());
		LoadHtmlFromStream(Form2->CppWebBrowser1, pStream);
		delete pStream;
	}
	catch (int)
	{

	}
}
void createProfile(String UserName)
{

}
void removeProfile(String UserName)
{

}
void goProfile(String UserName)
{

}
void LoadHtmlFromStream(TCppWebBrowser *pCppWebBrowser,
TMemoryStream *pMemStream)
{
	if(pMemStream && pCppWebBrowser)
	{
	IPersistStreamInit *pPSI;
	pMemStream->Seek(0, 0);
	if(!pCppWebBrowser->Document)
	{
	pCppWebBrowser->Navigate(L"about:blank");
	while(!pCppWebBrowser->Document)
	Application->ProcessMessages();
	}
	_di_IStream pStreamAdapter(*(new TStreamAdapter(pMemStream, soReference)));
	if(SUCCEEDED(pCppWebBrowser->Document->QueryInterface(
	IID_IPersistStreamInit, (LPVOID*)&pPSI)))
	pPSI->Load(pStreamAdapter);
	}
}
void LoadMainMenu()
{
     loadHtml2("<b>f</b>h");
}
