// Serielize.h : main header file for the SERIELIZE application
//

#if !defined(AFX_SERIELIZE_H__4D28EA87_4EC2_11DA_BC3B_00000100082C__INCLUDED_)
#define AFX_SERIELIZE_H__4D28EA87_4EC2_11DA_BC3B_00000100082C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CSerielizeApp:
// See Serielize.cpp for the implementation of this class
//

class CSerielizeApp : public CWinApp
{
public:
	CSerielizeApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSerielizeApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation
	//{{AFX_MSG(CSerielizeApp)
	afx_msg void OnAppAbout();
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SERIELIZE_H__4D28EA87_4EC2_11DA_BC3B_00000100082C__INCLUDED_)
