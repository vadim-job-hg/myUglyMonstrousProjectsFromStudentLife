// SerielizeView.h : interface of the CSerielizeView class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_SERIELIZEVIEW_H__4D28EA8F_4EC2_11DA_BC3B_00000100082C__INCLUDED_)
#define AFX_SERIELIZEVIEW_H__4D28EA8F_4EC2_11DA_BC3B_00000100082C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


class CSerielizeView : public CFormView
{
protected: // create from serialization only
	CSerielizeView();
	DECLARE_DYNCREATE(CSerielizeView)

public:
	//{{AFX_DATA(CSerielizeView)
	enum { IDD = IDD_SERIELIZE_FORM };
	float	m_COST;
	long	m_NPAS;
	long	m_REYS;
	CString	m_TYPE;
	float	m_ST;
	int		m_Nom;
	float	m_SumCOST;
	long	m_SumNPAS;
	//}}AFX_DATA

// Attributes
public:
	CSerielizeDoc* GetDocument();

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSerielizeView)
	public:
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	virtual void OnInitialUpdate(); // called first time after construct
	//}}AFX_VIRTUAL

// Implementation
public:
	void NewDataSet();
	void PopulateView();
	virtual ~CSerielizeView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CSerielizeView)
	afx_msg void OnFirst();
	afx_msg void OnPrev();
	afx_msg void OnNext();
	afx_msg void OnChangeType();
	afx_msg void OnChangeReys();
	afx_msg void OnChangeCost();
	afx_msg void OnChangeNpas();
	afx_msg void OnChangeSt();
	afx_msg void OnDel();
	afx_msg void OnRazr();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
private:
	CPerson* m_pPerson;
};

#ifndef _DEBUG  // debug version in SerielizeView.cpp
inline CSerielizeDoc* CSerielizeView::GetDocument()
   { return (CSerielizeDoc*)m_pDocument;
 }
#endif

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SERIELIZEVIEW_H__4D28EA8F_4EC2_11DA_BC3B_00000100082C__INCLUDED_)
