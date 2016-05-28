// SerielizeDoc.h : interface of the CSerielizeDoc class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_SERIELIZEDOC_H__4D28EA8D_4EC2_11DA_BC3B_00000100082C__INCLUDED_)
#define AFX_SERIELIZEDOC_H__4D28EA8D_4EC2_11DA_BC3B_00000100082C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


class CSerielizeDoc : public CDocument
{
protected: // create from serialization only
	CSerielizeDoc();
	DECLARE_DYNCREATE(CSerielizeDoc)

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSerielizeDoc)
	public:
	virtual BOOL OnNewDocument();
	virtual void Serialize(CArchive& ar);
	virtual void DeleteContents();
	virtual BOOL OnOpenDocument(LPCTSTR lpszPathName);
	//}}AFX_VIRTUAL

// Implementation
public:
	int GetPosition();
	void SetPosition(int pos);
	void OnFirst();
	
void Del();
	CPerson* GetFirstRecord();
	CPerson* GetPrevRecord();
	CPerson* GetNextRecord();
	CPerson* GetCurRecord();
	int GetTotalRecords();
	int GetCurRecordNbr();
	CPerson * AddNewRecord();
	int m_iCurPosition;
	virtual ~CSerielizeDoc();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CSerielizeDoc)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
private:
	CObArray m_oaPeople;

};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SERIELIZEDOC_H__4D28EA8D_4EC2_11DA_BC3B_00000100082C__INCLUDED_)
