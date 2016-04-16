// SerielizeView.cpp : implementation of the CSerielizeView class
//

#include "stdafx.h"
#include "Serielize.h"
#include "Person.h"
#include "SerielizeDoc.h"
#include "SerielizeView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CSerielizeView

IMPLEMENT_DYNCREATE(CSerielizeView, CFormView)

BEGIN_MESSAGE_MAP(CSerielizeView, CFormView)
	//{{AFX_MSG_MAP(CSerielizeView)
	ON_BN_CLICKED(IDC_FIRST, OnFirst)
	ON_BN_CLICKED(IDC_PREV, OnPrev)
	ON_BN_CLICKED(IDC_NEXT, OnNext)
	ON_EN_CHANGE(IDC_TYPE, OnChangeType)
	ON_EN_CHANGE(IDC_REYS, OnChangeReys)
	ON_EN_CHANGE(IDC_COST, OnChangeCost)
	ON_EN_CHANGE(IDC_NPAS, OnChangeNpas)
	ON_EN_CHANGE(IDC_ST, OnChangeSt)
	ON_BN_CLICKED(IDC_DEL, OnDel)
	ON_BN_CLICKED(IDC_RAZR, OnRazr)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSerielizeView construction/destruction

CSerielizeView::CSerielizeView()
	: CFormView(CSerielizeView::IDD)
{
	//{{AFX_DATA_INIT(CSerielizeView)
	m_COST = 0.0f;
	m_NPAS = 0;
	m_REYS = 0;
	m_TYPE = _T("");
	m_ST = 0.0f;
	m_Nom=1;
	m_Nom = 0;
	m_SumCOST = 0.0f;
	m_SumNPAS = 0;

	//}}AFX_DATA_INIT
	// TODO: add construction code here

}

CSerielizeView::~CSerielizeView()
{
}

void CSerielizeView::DoDataExchange(CDataExchange* pDX)
{
	CFormView::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CSerielizeView)
	DDX_Text(pDX, IDC_COST, m_COST);
	DDX_Text(pDX, IDC_NPAS, m_NPAS);
	DDX_Text(pDX, IDC_REYS, m_REYS);
	DDX_Text(pDX, IDC_TYPE, m_TYPE);
	DDX_Text(pDX, IDC_ST, m_ST);
	DDX_Text(pDX, IDC_NBR, m_Nom);
	DDX_Text(pDX, IDC_SumCOST, m_SumCOST);
	DDX_Text(pDX, IDC_SumNPAS, m_SumNPAS);
	
	//}}AFX_DATA_MAP
}

BOOL CSerielizeView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs

	return CFormView::PreCreateWindow(cs);
}

void CSerielizeView::OnInitialUpdate()
{
	CFormView::OnInitialUpdate();
	GetParentFrame()->RecalcLayout();
	ResizeParentToFit();

}

/////////////////////////////////////////////////////////////////////////////
// CSerielizeView diagnostics

#ifdef _DEBUG
void CSerielizeView::AssertValid() const
{
	CFormView::AssertValid();
}

void CSerielizeView::Dump(CDumpContext& dc) const
{
	CFormView::Dump(dc);
}

CSerielizeDoc* CSerielizeView::GetDocument() // non-debug version is inline
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CSerielizeDoc)));
	return (CSerielizeDoc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CSerielizeView message handlers

void CSerielizeView::PopulateView()
{
	CSerielizeDoc* pDoc=GetDocument();
	if (pDoc)
	{
		if (m_pPerson)
		{
			m_TYPE=m_pPerson->GetType();
			m_REYS=m_pPerson->GetReys();
			m_COST=m_pPerson->GetCost();
			m_NPAS=m_pPerson->GetNpas();
			if ((m_COST>0) && (m_NPAS>0)) m_ST=m_COST/m_NPAS; else m_ST=0;			
		}
		UpdateData (FALSE);
	}

}

void CSerielizeView::OnFirst() 
{
	m_Nom=0;
	// TODO: Add your control notification handler code here
	CSerielizeDoc* pDoc=GetDocument();
	if (pDoc)
	{
		m_pPerson=pDoc->GetFirstRecord();
	if ((m_COST>0) && (m_NPAS>0)) m_ST=m_COST/m_NPAS; else m_ST=0;
		if (m_pPerson)
			PopulateView();
	}
	UpdateData (FALSE);
}

void CSerielizeView::OnPrev() 
{
	if (m_Nom--<0) m_Nom=0;// TODO: Add your control notification handler code here
	CSerielizeDoc* pDoc=GetDocument();
	if (pDoc)
	{
		m_pPerson=pDoc->GetPrevRecord();
		
	}
	if ((m_COST>0) && (m_NPAS>0)) m_ST=m_COST/m_NPAS; else m_ST=0;
	if (m_pPerson)
			PopulateView();
	UpdateData (FALSE);
}

void CSerielizeView::OnNext() 
{	m_Nom++;
	// TODO: Add your control notification handler code here
		CSerielizeDoc* pDoc=GetDocument();
	if (pDoc)
	{
		m_pPerson=pDoc->GetNextRecord();
		

	}
if ((m_COST>0) && (m_NPAS>0)) m_ST=m_COST/m_NPAS; else m_ST=0;
 if (m_pPerson)
			PopulateView();UpdateData (FALSE);
}

void CSerielizeView::NewDataSet()
{
//	if ((m_COST>0) && (m_NPAS>0)) m_ST=m_COST/m_NPAS;
	OnFirst();
}

void CSerielizeView::OnChangeType() 
{
	// TODO: If this is a RICHEDIT control, the control will not
	UpdateData(TRUE);
	if (m_pPerson)
		m_pPerson->SetType(m_TYPE);
}

void CSerielizeView::OnChangeReys() 
{
	// TODO: If this is a RICHEDIT control, the control will not
	UpdateData(TRUE);
	if (m_pPerson)
		m_pPerson->SetReys(m_REYS);
	
}

void CSerielizeView::OnChangeCost() 
{
	// TODO: If this is a RICHEDIT control, the control will not
	UpdateData(TRUE);
	if (m_pPerson)
		m_pPerson->SetCost(m_COST);
	OnChangeSt(); 
if ((m_COST>0) && (m_NPAS>0)) m_ST=m_COST/m_NPAS; else m_ST=0; 
	
}

void CSerielizeView::OnChangeNpas() 
{
	// TODO: If this is a RICHEDIT control, the control will not
	UpdateData(TRUE);
	if (m_pPerson)
		m_pPerson->SetNpas(m_NPAS);
	OnChangeSt();
	if ((m_COST>0) && (m_NPAS>0)) m_ST=m_COST/m_NPAS; else m_ST=0; 

}

void CSerielizeView::OnChangeSt() 
{
	// TODO: If this is a RICHEDIT control, the control will not
	UpdateData(TRUE);
	if ((m_COST>0) && (m_NPAS>0)) m_ST=m_COST/m_NPAS; else m_ST=0; 

	
}

void CSerielizeView::OnDel() 
{
CSerielizeDoc* pDoc=GetDocument();
	if (pDoc)
	{
		pDoc->Del();
		if (m_pPerson)
			PopulateView();}
		if (m_Nom=pDoc->GetTotalRecords()-1) {
			m_pPerson->SetNpas(0);
			m_pPerson->SetType("");
    		m_pPerson->SetReys(0);
			m_pPerson->SetCost(0);
			}
		OnPrev();// TODO: Add your control notification handler code here
	


}

void CSerielizeView::OnRazr() 
{
	CSerielizeDoc* pDoc=GetDocument();
//CPerson* help;
	int k=pDoc->GetTotalRecords ();
m_SumNPAS=0;
m_SumCOST=0;
if (pDoc)
{ while (k)
{m_SumNPAS+=m_pPerson->GetNpas();
 m_SumCOST+=m_pPerson->GetCost();
 m_pPerson=pDoc->GetNextRecord();
 k--;
		//m_pPerson=pDoc->GetFirstRecord();
		//if(m_pPerson)
		//{

		/*m_SumNPAS=m_pPerson->GetNpas();
        m_SumCOST=m_pPerson->GetCost();
	    for(int i=0;i<=pDoc->GetTotalRecords()-1;i++)	
        {
		m_pPerson=pDoc->GetNextRecord();
		m_SumNPAS+=m_pPerson->GetNpas();
        m_SumCOST+=m_pPerson->GetCost();
		}*/
		//}

	// TODO: Add your control notification handler code here

OnFirst();
}
UpdateData(FALSE);
}}