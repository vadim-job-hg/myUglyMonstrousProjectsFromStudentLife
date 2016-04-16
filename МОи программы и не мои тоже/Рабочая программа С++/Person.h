// Person.h: interface for the CPerson class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_PERSON_H__4D28EA98_4EC2_11DA_BC3B_00000100082C__INCLUDED_)
#define AFX_PERSON_H__4D28EA98_4EC2_11DA_BC3B_00000100082C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CPerson : public CObject  
{
	DECLARE_SERIAL(CPerson)
public:
	long GetReys();
	long m_NPAS;
	float m_COST;
	long m_REYS;
	CString m_TYPE;
	long GetNpas();
	float GetCost();
	CString GetType();
	void SetNpas(long lNpas);
	void SetCost(float fCost);
	void SetReys(long lReys);
	void SetType(CString sType);
	virtual void Serialize (CArchive &ar);
	CPerson();
	virtual ~CPerson();

};

#endif // !defined(AFX_PERSON_H__4D28EA98_4EC2_11DA_BC3B_00000100082C__INCLUDED_)
