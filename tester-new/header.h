//Загрузка и получение данных
#ifndef Unit3H
#define Unit3H
/*class ContentBrowser
{
	private:
	AnsiString HTML_Text;
	public:
	ContentBrowser(AnsiString html);
	SetHtml(AnsiString html);
	AnsiString GetHtml();
};
ContentBrowser::ContentBrowser(AnsiString html="")
{
	ContentBrowser::HTML_Text = html;
}
ContentBrowser::SetHtml(AnsiString html="")
{
	ContentBrowser::HTML_Text = html;
}
AnsiString ContentBrowser::GetHtml()
{
	return  ContentBrowser::HTML_Text;
}
//Навигация
class ContentNavigation:public ContentBrowser{

};
//Основной класс
class ContentDataWeb:public ContentNavigation{

};



struct quoteData{
	char filename[255];
	char quote[500];
	int fontSize;
	char fontName[20];
	char fontColor[20];
	int left;
	int width;
	int top;
	int height;
	int autor;
	int secret;
	int procent;
};
class QuotesLS
{
	private:
		vector< quoteData > QuotesList;
	public:
		QuotesLS();
		void Add(quoteData item);
		quoteData Read(int i);
		int Count();
		int Capacity();
		void setItem(quoteData item, int i);
		void nothing();
};
QuotesLS::QuotesLS(){
       return ;
}
void QuotesLS::Add(quoteData item)
{
	 QuotesList.push_back(item);
	 return;
}
quoteData QuotesLS::Read(int i)
{
     return QuotesList.at(i);
}
int QuotesLS::Count()
{
	 return  QuotesList.size();
}
void QuotesLS::setItem(quoteData item, int i)
{
	 QuotesList[i] =  item;
	 return;
}        */
class Speech
{
	public:
		void SOTokens();
};
void Speech::SOTokens()
{
	   ISpeechObjectTokens * SOTokens; //список голосовых движков
	   HRESULT hr=NULL;
	   //заполняем список
	   hr=SpVoice1->GetDefaultInterface()->GetVoices(NULL,NULL, &SOTokens);
	   if(hr==S_OK) //если список получен
         return SOTokens;
	   else
		 return false;
};
