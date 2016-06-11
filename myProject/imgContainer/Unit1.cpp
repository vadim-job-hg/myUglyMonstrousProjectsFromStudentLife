//---------------------------------------------------------------------------

#include <vcl.h>
#include <jpeg.hpp>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>
#pragma hdrstop
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
int count;
void checkFiles();
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
   TJPEGImage *jpeg = new TJPEGImage;
   OpenDialog3->Filter = "*.jpg, *.jpeg";
   if(OpenDialog3->Execute())
   {
	  try
	  {
		  jpeg->LoadFromFile(OpenDialog3->FileName);
		  Image1->Picture->Assign(jpeg);
         // jpeg->Assign(Image1->Picture->Bitmap);
	  }
	  catch(std::exception& e)
	  {
	  }
   }
   delete jpeg;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::N2Click(TObject *Sender)
{
   if(SaveDialog1->Execute())
   {
	   imageFile  = SaveDialog1->FileName;
   }
   checkFiles();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N3Click(TObject *Sender)
{
   if(SaveDialog2->Execute())
   {
	   indexFile  = SaveDialog2->FileName;
   }
   ofstream outbal((indexFile).c_str(), ios::out | ios::binary|ios::trunc);
   outbal.write((char *) count, sizeof(count));
   outbal.close();
   checkFiles();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N4Click(TObject *Sender)
{
   if(OpenDialog1->Execute())
   {
		imageFile  = OpenDialog1->FileName;
   }
   checkFiles();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N5Click(TObject *Sender)
{
   struct indRec new_item;
   if(OpenDialog2->Execute())
   {
	   indexFile  = OpenDialog2->FileName;
   }
   ifstream inbal(indexFile.c_str(), ios::in | ios::binary);
   if(!inbal) {
		exit(0);
   }
   Form1->ListBox1->Clear();
   inbal.seekg(0, ios::beg);
   if(!inbal.eof())
   {
	   if(!inbal.fail()&&inbal.good())
	   {
			if(!inbal.read((char *)count, sizeof(int)))
			{
                count = 0;
			}
			Form1->ListBox1->Items->Add(count);
	   }
   }
   /*while(!inbal.eof())
   {
	   if(!inbal.fail()&&inbal.good())
	   {
			if(inbal.read((char *) &new_item, sizeof(struct indRec)))
			{
				Form1->ListBox1->Items->Add(new_item.name);
			}
	   }
   } */
   inbal.close();
   checkFiles();

}
//---------------------------------------------------------------------------

void __fastcall TForm1::N6Click(TObject *Sender)
{
	Form1->Close();
}
//---------------------------------------------------------------------------
void checkFiles()
{
	if(Form1->indexFile!=""/*&&Form1->imageFile!=""*/)
	{
		Form1->Button3->Enabled=true;
		Form1->Button2->Enabled=true;
	}
	else
	{
		Form1->Button3->Enabled=false;
		Form1->Button2->Enabled=false;
	}
}
void __fastcall TForm1::Button3Click(TObject *Sender)
{
   struct indRec new_item;
   AnsiString Temp;
   TJPEGImage *jpeg = new TJPEGImage;
   Form1->ListBox1->Clear();
   ofstream outbal((indexFile+"_temp").c_str(), ios::out | ios::binary|ios::trunc);
   ifstream inbal(indexFile.c_str(), ios::in | ios::binary);
   if(!inbal) {
		exit(0);
   }
   Form1->ListBox1->Clear();
   inbal.seekg(0, ios::beg);
   while(!inbal.eof())
   {
		if(inbal.read((char *) &new_item, sizeof(struct indRec)))
		{
			if(!inbal.fail())
			{
				 Form1->ListBox1->Items->Add(new_item.name);
				 outbal.write((char *) &new_item, sizeof(struct indRec));
			}
		}
   }
   inbal.seekg(0, ios::end);
   Form1->ListBox1->Items->Add(new_item.name);
   Temp = Form1->Edit1->Text;
   strcpy(new_item.name, Temp.c_str());
   Form1->ListBox1->Items->Add(new_item.name);
   outbal.write((char *) &new_item, sizeof(struct indRec));
   outbal.close();
   inbal.close();
   remove((indexFile).c_str());
   rename((indexFile+"_temp").c_str(), (indexFile).c_str());
}
//---------------------------------------------------------------------------

