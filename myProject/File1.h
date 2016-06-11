#include "Unit2.h";
#include <utilcls.h>
#include <mshtml.h>
#include <ocidl.h>
#include <iostream>
#include <objidl.h>
#include <memory>
#include <string>
class achievementBase{//Тип - База данных достижений
public:
	int num;  //номер
	AnsiString name; //Имя достижения
	AnsiString html_dis;  //html - не открыто
	AnsiString html_en;   //html - открыто
	int img_dis;          //картинка - не открыто
	int img_en;           //картинка - открыто
	int enouchAll;        //Внутренний счетчик - макс значение
	int eachShow;         //Шаг внутреннего счетчика показуещего ход выполнения
	int soundOpened;      //id - звука при открытии достижения
};
class achievementImgBase{  // Тип - База данных изображений достижений
public:
	int num;              //id изображения
	AnsiString FileName;  //Имя файла
};
class soundBase{   //id - База данных звуков
public:
	int num;      //id - индекс
	AnsiString FileName;  // Имя файла
};
class achievement{  //Тип достижения
public:
	int num;       //Индекс достижения
	int enouchReady; //Текущее значение внутреннего счетчика
	bool opened;     //Открыто достижение или нет
};
class quoteBase{ //Тип - База данных цитат
public:
	int num;    //id цитаты
	int soundShow;   //   id Звука
	AnsiString html;// Текст цитаты
	AnsiString Autor;// Автор Цитаты
	int Group;//Тип цитаты
	int background;   //Картинка фона
};
class quoteImgBase{
public:
	int num;      //id фона цитаты
	AnsiString FileName;          //имя файла фона
};
class dopContentBase{
public:
	int num;       //Индекс достижения
	int Type;  //Номер типа контента
	AnsiString name; //Имя достижения
};
class dopContent{
public:
	int num;       //Индекс контента
	bool opened;     //Открыто или нет
};
class lessonBase{      //    Тип База данных уроков
	int num;               // Номер Упражнения
	AnsiString number;     //Номер текстом
	AnsiString name;       //Название урока
	AnsiString FileName;	//Html Контент
	int imgOpened;          //Картинка открытого урока
};
class lesson{
public:
	int num;     // id Урока
	bool opened; //Открыт или нет

};
class ExerciseBase{ //База упражнений
	int num;     // id Упражнения
	AnsiString FileName;	//Файл упражнения
};
class Exercise{
	int num;     // id Упражнения
	int Lesson; //id урока
	bool opened; //Открыт или нет
};
class User{
public:
	AnsiString Login; //Логин
	AnsiString PassWord;//Пароль
	int AnoingLevel;    //Уровень раздражительности
	bool Say;		//Озвучивать текст?
	int LessonesPased; //Пройдено Уроков
	unsigned long ExercisePassed; //Пройдено Упражнений
	unsigned long ExerciseLoaded; //Загруженно Упражнений
	unsigned long ClearPassed;//Упражнений без ошибок
	int ClearPassedRunning;//Подряд
	unsigned long Tiped;         //Напечатано символов
	unsigned long Words;     	//Напечатано слов
	unsigned long Errors;    	  //Сделано опечаток
	unsigned long quotesOpened;  //Открыто цитат
	unsigned long quotesSecretOpened;  //Открыто секретных цитат
	unsigned long quotesCommicsOpened;//Открыто цитат из коммиксов
	unsigned long quotesCartoonOpened;//Открыто цитат из мультфильмов
	unsigned long quotesMovieOpened;//Открыто цитат из фильмов
	unsigned long quotesBooksOpened;//Открыто цитат из книг
	unsigned long quotesGamesOpened;//Открыто цитат из игр
	unsigned long quotesClassicsOpened;//Открыто цитат классиков
	unsigned long quotesCurrentOpened;//Открыто цитат современных писателей
	unsigned long quotesSeen;   //Увидели цитат
	unsigned long SecondLastPased;//Время за последний урок
	unsigned long SecondPasedSr;//Среднее время прохождение
	float ErrorsSr;   //Среднее количество ошибок
	int achievementUnlocked; //Открыто достижений
	unsigned long SecondsWork;//Время за тренажерами
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
