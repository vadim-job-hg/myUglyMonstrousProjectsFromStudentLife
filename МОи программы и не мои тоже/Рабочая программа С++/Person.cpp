// Person.cpp: implementation of the CPerson class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "Serielize.h"
#include "Person.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif
IMPLEMENT_SERIAL(CPerson,CObject,1)
//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CPerson::CPerson()
{
m_TYPE=" ";
m_REYS=0;
m_COST=0;
m_NPAS=0;

}

CPerson::~CPerson()
{

}

void CPerson::Serialize(CArchive &ar)
{
	CObject::Serialize(ar);
	if (ar.IsStoring())
		ar<<m_TYPE<<m_REYS<<m_COST<<m_NPAS;
	else
		ar>>m_TYPE>>m_REYS>>m_COST>>m_NPAS;
}



void CPerson::SetType(CString sType)
{m_TYPE=sType;

}

void CPerson::SetReys(long lReys)
{m_REYS=lReys;

}

void CPerson::SetCost(float fCost)
{  m_COST=fCost;

}

void CPerson::SetNpas(long lNpas)
{
m_NPAS=lNpas;
}

CString CPerson::GetType()
{
return m_TYPE;
}

float CPerson::GetCost()
{
return m_COST;
}

long CPerson::GetNpas()
{
return m_NPAS;
}


long CPerson::GetReys()
{
return m_REYS;
}
