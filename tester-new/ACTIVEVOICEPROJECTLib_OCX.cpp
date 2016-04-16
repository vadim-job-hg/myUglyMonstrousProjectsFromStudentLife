// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 34747 $
// File generated on 10.01.2015 18:47:49 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Windows\speech\XVoice.dll (1)
// LIBID: {EEE78583-FE22-11D0-8BEF-0060081841DE}
// LCID: 0
// Helpfile: 
// HelpString: Microsoft Direct Speech Synthesis
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
// ************************************************************************ //

#include <vcl.h>
#pragma hdrstop

#include <olectrls.hpp>
#include <oleserver.hpp>
#if defined(USING_ATL)
#include <atl\atlvcl.h>
#endif

#pragma option -w-8122
#include "ACTIVEVOICEPROJECTLib_OCX.h"

#if !defined(__PRAGMA_PACKAGE_SMART_INIT)
#define      __PRAGMA_PACKAGE_SMART_INIT
#pragma package(smart_init)
#endif

namespace Activevoiceprojectlib_tlb
{



// *********************************************************************//
// OCX PROXY CLASS IMPLEMENTATION
// (The following variables/methods implement the class TDirectSS which
// allows "Microsoft Direct Speech Synthesis Class" to be hosted in CBuilder IDE/apps).
// *********************************************************************//
int   TDirectSS::EventDispIDs[15] = {
    0x00000001, 0x00000002, 0x00000003, 0x00000004, 0x00000005, 0x00000006,
    0x00000007, 0x00000008, 0x00000009, 0x0000000A, 0x0000000B, 0x0000000C,
    0x0000000D, 0x0000000E, 0x0000000F};

TControlData2 TDirectSS::CControlData =
{
  // GUID of CoClass and Event Interface of Control
  {0xEEE78591, 0xFE22, 0x11D0,{ 0x8B, 0xEF, 0x00,0x60, 0x08, 0x18,0x41, 0xDE} }, // CoClass
  {0xEEE78597, 0xFE22, 0x11D0,{ 0x8B, 0xEF, 0x00,0x60, 0x08, 0x18,0x41, 0xDE} }, // Events

  // Count of Events and array of their DISPIDs
  15, &EventDispIDs,

  // Pointer to Runtime License string
  NULL,  // HRESULT(0x80004002)

  // Flags for OnChanged PropertyNotification
  0x00000000,
  401,// (IDE Version)

  // Count of Font Prop and array of their DISPIDs
  0, Activex::PDispIDList(NULL),

  // Count of Pict Prop and array of their DISPIDs
  0, Activex::PDispIDList(NULL),
  0, // Reserved
  0, // Instance count (used internally)
  0, // List of Enum descriptions (internal)
};

GUID     TDirectSS::DEF_CTL_INTF = {0xEEE78590, 0xFE22, 0x11D0,{ 0x8B, 0xEF, 0x00,0x60, 0x08, 0x18,0x41, 0xDE} };
TNoParam TDirectSS::OptParam;

static inline void ValidCtrCheck(TDirectSS *)
{
   delete new TDirectSS((TComponent*)(0));
};

void __fastcall TDirectSS::InitControlData()
{
  ControlData = (TControlData*)&CControlData;
  CControlData.FirstEventOfs = System::PByte(&FOnClickIn) - System::PByte(this);
};

void __fastcall TDirectSS::CreateControl()
{
  if (!m_OCXIntf)
  {
    _ASSERTE(DefaultDispatch);
    DefaultDispatch->QueryInterface(DEF_CTL_INTF, (LPVOID*)&m_OCXIntf);
  }
};

TCOMIDirectSS __fastcall TDirectSS::GetDefaultInterface()
{
  CreateControl();
  return m_OCXIntf;
};

void __fastcall TDirectSS::Speak(BSTR text)
{
  GetDefaultInterface()->Speak(text);
}

void __fastcall TDirectSS::Select(int index)
{
  GetDefaultInterface()->Select(index);
}

BSTR __fastcall TDirectSS::EngineID(int index)
{
  BSTR pVal = 0;
  OLECHECK(GetDefaultInterface()->EngineID(index, (BSTR*)&pVal));
  return pVal;
}

BSTR __fastcall TDirectSS::ModeName(int index)
{
  BSTR pVal = 0;
  OLECHECK(GetDefaultInterface()->ModeName(index, (BSTR*)&pVal));
  return pVal;
}

BSTR __fastcall TDirectSS::MfgName(int index)
{
  BSTR pVal = 0;
  OLECHECK(GetDefaultInterface()->MfgName(index, (BSTR*)&pVal));
  return pVal;
}

BSTR __fastcall TDirectSS::ProductName(int index)
{
  BSTR pVal = 0;
  OLECHECK(GetDefaultInterface()->ProductName(index, (BSTR*)&pVal));
  return pVal;
}

BSTR __fastcall TDirectSS::ModeID(int index)
{
  BSTR pVal = 0;
  OLECHECK(GetDefaultInterface()->ModeID(index, (BSTR*)&pVal));
  return pVal;
}

BSTR __fastcall TDirectSS::Speaker(int index)
{
  BSTR pVal = 0;
  OLECHECK(GetDefaultInterface()->Speaker(index, (BSTR*)&pVal));
  return pVal;
}

BSTR __fastcall TDirectSS::Style(int index)
{
  BSTR pVal = 0;
  OLECHECK(GetDefaultInterface()->Style(index, (BSTR*)&pVal));
  return pVal;
}

long __fastcall TDirectSS::Gender(int index)
{
  long Gender;
  OLECHECK(GetDefaultInterface()->Gender(index, (long*)&Gender));
  return Gender;
}

long __fastcall TDirectSS::Age(int index)
{
  long pVal;
  OLECHECK(GetDefaultInterface()->Age(index, (long*)&pVal));
  return pVal;
}

long __fastcall TDirectSS::Features(int index)
{
  long pVal;
  OLECHECK(GetDefaultInterface()->Features(index, (long*)&pVal));
  return pVal;
}

long __fastcall TDirectSS::Interfaces(int index)
{
  long pVal;
  OLECHECK(GetDefaultInterface()->Interfaces(index, (long*)&pVal));
  return pVal;
}

long __fastcall TDirectSS::EngineFeatures(int index)
{
  long pVal;
  OLECHECK(GetDefaultInterface()->EngineFeatures(index, (long*)&pVal));
  return pVal;
}

long __fastcall TDirectSS::LanguageID(int index)
{
  long pVal;
  OLECHECK(GetDefaultInterface()->LanguageID(index, (long*)&pVal));
  return pVal;
}

BSTR __fastcall TDirectSS::Dialect(int index)
{
  BSTR pVal = 0;
  OLECHECK(GetDefaultInterface()->Dialect(index, (BSTR*)&pVal));
  return pVal;
}

void __fastcall TDirectSS::AudioPause(void)
{
  GetDefaultInterface()->AudioPause();
}

void __fastcall TDirectSS::AudioReset(void)
{
  GetDefaultInterface()->AudioReset();
}

void __fastcall TDirectSS::AudioResume(void)
{
  GetDefaultInterface()->AudioResume();
}

void __fastcall TDirectSS::Inject(BSTR value)
{
  GetDefaultInterface()->Inject(value);
}

BSTR __fastcall TDirectSS::Phonemes(long charset, long Flags, BSTR input)
{
  BSTR output = 0;
  OLECHECK(GetDefaultInterface()->Phonemes(charset, Flags, input, (BSTR*)&output));
  return output;
}

void __fastcall TDirectSS::PosnGet(long* hi, long* lo)
{
  GetDefaultInterface()->PosnGet(hi, lo);
}

void __fastcall TDirectSS::TextData(long characterset, long Flags, BSTR text)
{
  GetDefaultInterface()->TextData(characterset, Flags, text);
}

void __fastcall TDirectSS::InitAudioDestMM(long deviceid)
{
  GetDefaultInterface()->InitAudioDestMM(deviceid);
}

void __fastcall TDirectSS::AboutDlg(long hWnd, BSTR title)
{
  GetDefaultInterface()->AboutDlg(hWnd, title);
}

void __fastcall TDirectSS::GeneralDlg(long hWnd, BSTR title)
{
  GetDefaultInterface()->GeneralDlg(hWnd, title);
}

void __fastcall TDirectSS::LexiconDlg(long hWnd, BSTR title)
{
  GetDefaultInterface()->LexiconDlg(hWnd, title);
}

void __fastcall TDirectSS::TranslateDlg(long hWnd, BSTR title)
{
  GetDefaultInterface()->TranslateDlg(hWnd, title);
}

long __fastcall TDirectSS::FindEngine(BSTR EngineID, BSTR MfgName, BSTR ProductName, BSTR ModeID, 
                                      BSTR ModeName, long LanguageID, BSTR Dialect, BSTR Speaker, 
                                      BSTR Style, long Gender, long Age, long Features, 
                                      long Interfaces, long EngineFeatures, long RankEngineID, 
                                      long RankMfgName, long RankProductName, long RankModeID, 
                                      long RankModeName, long RankLanguage, long RankDialect, 
                                      long RankSpeaker, long RankStyle, long RankGender, 
                                      long RankAge, long RankFeatures, long RankInterfaces, 
                                      long RankEngineFeatures)
{
  long index;
  OLECHECK(GetDefaultInterface()->FindEngine(EngineID, MfgName, ProductName, ModeID, ModeName, 
                                             LanguageID, Dialect, Speaker, Style, Gender, Age, 
                                             Features, Interfaces, EngineFeatures, RankEngineID, 
                                             RankMfgName, RankProductName, RankModeID, RankModeName, 
                                             RankLanguage, RankDialect, RankSpeaker, RankStyle, 
                                             RankGender, RankAge, RankFeatures, RankInterfaces, 
                                             RankEngineFeatures, (long*)&index));
  return index;
}

void __fastcall TDirectSS::GetPronunciation(long charset, BSTR text, long Sense, BSTR* Pronounce, 
                                            long* PartOfSpeech, BSTR* EngineInfo)
{
  GetDefaultInterface()->GetPronunciation(charset, text, Sense, Pronounce, PartOfSpeech, EngineInfo);
}

void __fastcall TDirectSS::InitAudioDestDirect(long direct)
{
  GetDefaultInterface()->InitAudioDestDirect(direct);
}

void __fastcall TDirectSS::InitAudioDestObject(long object)
{
  GetDefaultInterface()->InitAudioDestObject(object);
}

long __fastcall TDirectSS::Find(BSTR RankList)
{
  long index;
  OLECHECK(GetDefaultInterface()->Find(RankList, (long*)&index));
  return index;
}

void __fastcall TDirectSS::LexAddTo(unsigned_long lex, long charset, BSTR text, BSTR Pronounce, 
                                    long PartOfSpeech, long EngineInfo, long engineinfosize)
{
  GetDefaultInterface()->LexAddTo(lex, charset, text, Pronounce, PartOfSpeech, EngineInfo, 
                                  engineinfosize);
}

void __fastcall TDirectSS::LexGetFrom(long lex, long charset, BSTR text, long Sense, BSTR* Pronounce, 
                                      long* PartOfSpeech, long* EngineInfo, long* sizeofengineinfo)
{
  GetDefaultInterface()->LexGetFrom(lex, charset, text, Sense, Pronounce, PartOfSpeech, EngineInfo, 
                                    sizeofengineinfo);
}

void __fastcall TDirectSS::LexRemoveFrom(long lex, BSTR text, long Sense)
{
  GetDefaultInterface()->LexRemoveFrom(lex, text, Sense);
}

void __fastcall TDirectSS::QueryLexicons(long f, long* pdw)
{
  GetDefaultInterface()->QueryLexicons(f, pdw);
}

void __fastcall TDirectSS::ChangeSpelling(long lex, BSTR stringa, BSTR stringb)
{
  GetDefaultInterface()->ChangeSpelling(lex, stringa, stringb);
}

long __fastcall TDirectSS::get_Attributes(long Attrib)
{
  long pVal;
  OLECHECK(GetDefaultInterface()->get_Attributes(Attrib, (long*)&pVal));
  return pVal;
}

void __fastcall TDirectSS::set_Attributes(long Attrib, long pVal/*[in]*/)
{
  GetDefaultInterface()->set_Attributes(Attrib, pVal/*[in]*/);
}

BSTR __fastcall TDirectSS::get_AttributeString(long Attrib)
{
  BSTR pVal = 0;
  OLECHECK(GetDefaultInterface()->get_AttributeString(Attrib, (BSTR*)&pVal));
  return pVal;
}

void __fastcall TDirectSS::set_AttributeString(long Attrib, BSTR pVal/*[in]*/)
{
  GetDefaultInterface()->set_AttributeString(Attrib, pVal/*[in]*/);
}

long __fastcall TDirectSS::get_AttributeMemory(long Attrib, long* size)
{
  long pVal;
  OLECHECK(GetDefaultInterface()->get_AttributeMemory(Attrib, size, (long*)&pVal));
  return pVal;
}

void __fastcall TDirectSS::set_AttributeMemory(long Attrib, long* size, long pVal/*[in]*/)
{
  GetDefaultInterface()->set_AttributeMemory(Attrib, size, pVal/*[in]*/);
}

IUnknownPtr& TVoiceProp::GetDefaultInterface()
{
  if (!m_DefaultIntf)
    Connect();
  return m_DefaultIntf;
}

_di_IUnknown __fastcall TVoiceProp::GetDunk()
{
  _di_IUnknown diUnk;
  if (m_DefaultIntf) {
    IUnknownPtr punk = m_DefaultIntf;
    diUnk = LPUNKNOWN(punk);
  }
  return diUnk;
}

void __fastcall TVoiceProp::Connect()
{
  if (!m_DefaultIntf) {
    _di_IUnknown punk = GetServer();
    m_DefaultIntf = punk;
    if (ServerData->EventIID != GUID_NULL)
      ConnectEvents(GetDunk());
  }
}

void __fastcall TVoiceProp::Disconnect()
{
  if (m_DefaultIntf) {

    if (ServerData->EventIID != GUID_NULL)
      DisconnectEvents(GetDunk());
    m_DefaultIntf.Reset();
  }
}

void __fastcall TVoiceProp::BeforeDestruction()
{
  Disconnect();
}

void __fastcall TVoiceProp::ConnectTo(IUnknownPtr intf)
{
  Disconnect();
  m_DefaultIntf = intf;
  if (ServerData->EventIID != GUID_NULL)
    ConnectEvents(GetDunk());
}

void __fastcall TVoiceProp::InitServerData()
{
  static Oleserver::TServerData sd;
  sd.ClassID = CLSID_VoiceProp;
  sd.IntfIID = __uuidof(IUnknown);
  sd.EventIID= GUID_NULL;
  ServerData = &sd;
}


};     // namespace Activevoiceprojectlib_tlb


// *********************************************************************//
// The Register function is invoked by the IDE when this module is 
// installed in a Package. It provides the list of Components (including
// OCXes) implemented by this module. The following implementation
// informs the IDE of the OCX proxy classes implemented here.
// *********************************************************************//
namespace Activevoiceprojectlib_ocx
{

void __fastcall PACKAGE Register()
{
  // [1]
  TComponentClass cls_ocx[] = {
                              __classid(Activevoiceprojectlib_tlb::TDirectSS)
                           };
  RegisterComponents("TEXTTOSPEECH", cls_ocx,
                     sizeof(cls_ocx)/sizeof(cls_ocx[0])-1);
  // [1]
  TComponentClass cls_svr[] = {
                              __classid(Activevoiceprojectlib_tlb::TVoiceProp)
                           };
  RegisterComponents("TEXTTOSPEECH", cls_svr,
                     sizeof(cls_svr)/sizeof(cls_svr[0])-1);
}

};     // namespace Activevoiceprojectlib_ocx
