// SerielizeDoc.cpp : implementation of the CSerielizeDoc class
//

#include "stdafx.h"
#include "Serielize.h"
#include "Person.h"
#include "SerielizeDoc.h"
#include"SerielizeView.h"
#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CSerielizeDoc

IMPLEMENT_DYNCREATE(CSerielizeDoc, CDocument)

BEGIN_MESSAGE_MAP(CSerielizeDoc, CDocument)
	//{{AFX_MSG_MAP(CSerielizeDoc)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSerielizeDoc construction/destruction

CSerielizeDoc::CSerielizeDoc()
{
	// TODO: add one-time construction code here

}

CSerielizeDoc::~CSerielizeDoc()
{
}

BOOL CSerielizeDoc::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;
    if  (!AddNewRecord())//это я добавила
    return false;
	// TODO: add reinitialization code here
	// (SDI documents will reuse this document)
 POSITION pos=GetFirstViewPosition();
 CSerielizeView* pView=(CSerielizeView*) GetNextView(pos);
 if(pView)
	 pView->NewDataSet();

	return TRUE;
}



/////////////////////////////////////////////////////////////////////////////
// CSerielizeDoc serialization

void CSerielizeDoc::Serialize(CArchive& ar)
{
	m_oaPeople.Serialize(ar);
}

/////////////////////////////////////////////////////////////////////////////
// CSerielizeDoc diagnostics

#ifdef _DEBUG
void CSerielizeDoc::AssertValid() const
{
	CDocument::AssertValid();
}

void CSerielizeDoc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CSerielizeDoc commands

CPerson * CSerielizeDoc::AddNewRecord()
{
CPerson * pPerson=new CPerson();
m_oaPeople.Add(pPerson);
SetModifiedFlag();
m_iCurPosition=(m_oaPeople.GetSize()-1);
return pPerson;
}

int CSerielizeDoc::GetCurRecordNbr()
{
return (m_iCurPosition+1);
}

int CSerielizeDoc::GetTotalRecords()
{
return m_oaPeople.GetSize();
}

CPerson* CSerielizeDoc::GetCurRecord()
{
if (m_iCurPosition>=0)
	return (CPerson*)m_oaPeople[m_iCurPosition];
else
	return NULL; 
}

CPerson* CSerielizeDoc::GetNextRecord()
{
if (++m_iCurPosition<m_oaPeople.GetSize())
	return (CPerson*)m_oaPeople[m_iCurPosition];
else
	return AddNewRecord();
}

CPerson* CSerielizeDoc::GetPrevRecord()
{
if (m_oaPeople.GetSize()>0)
{
	if (--m_iCurPosition<0)
		m_iCurPosition=0;
	return (CPerson*)m_oaPeople[m_iCurPosition];
}
else
		return NULL;
}

void CSerielizeDoc::DeleteContents() 
{
	// TODO: Add your specialized code here and/or call the base class
	int liCount=m_oaPeople.GetSize ();
	int liPos;
	if(liCount>0)
	{
		for(liPos=0;liPos<liCount;liPos++)
			delete m_oaPeople[liPos];
    m_oaPeople.RemoveAll ();
	}
	CDocument::DeleteContents();
}

BOOL CSerielizeDoc::OnOpenDocument(LPCTSTR lpszPathName) 
{
	if (!CDocument::OnOpenDocument(lpszPathName))
		return FALSE;
 POSITION pos=GetFirstViewPosition();
 CSerielizeView* pView=(CSerielizeView*) GetNextView(pos);
 if(pView)
	 pView->NewDataSet();
 
	// TODO: Add your specialized creation code here
	
	return TRUE;
}

CPerson* CSerielizeDoc::GetFirstRecord()
{
	if (m_oaPeople.GetSize()>0)
	{
		m_iCurPosition=0;
		return (CPerson*) m_oaPeople[0];
	}
	else
		return NULL;
}

void CSerielizeDoc::Del()
{	
	for(int i=m_iCurPosition;i<GetTotalRecords()-1;i++)
m_oaPeople[i]=m_oaPeople[i+1];
 }


void CSerielizeDoc::OnFirst()
{
m_iCurPosition=0;
}

void CSerielizeDoc::SetPosition(int pos)
{
m_iCurPosition=pos;
}

int CSerielizeDoc::GetPosition()
{
return m_iCurPosition;
}
