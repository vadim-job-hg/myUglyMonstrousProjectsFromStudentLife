; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CSerielizeView
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "Serielize.h"
LastPage=0

ClassCount=5
Class1=CSerielizeApp
Class2=CSerielizeDoc
Class3=CSerielizeView
Class4=CMainFrame

ResourceCount=3
Resource1=IDR_MAINFRAME
Resource2=IDD_ABOUTBOX
Class5=CAboutDlg
Resource3=IDD_SERIELIZE_FORM

[CLS:CSerielizeApp]
Type=0
HeaderFile=Serielize.h
ImplementationFile=Serielize.cpp
Filter=N

[CLS:CSerielizeDoc]
Type=0
HeaderFile=SerielizeDoc.h
ImplementationFile=SerielizeDoc.cpp
Filter=N
BaseClass=CDocument
VirtualFilter=DC
LastObject=CSerielizeDoc

[CLS:CSerielizeView]
Type=0
HeaderFile=SerielizeView.h
ImplementationFile=SerielizeView.cpp
Filter=D
BaseClass=CFormView
VirtualFilter=VWC
LastObject=CSerielizeView


[CLS:CMainFrame]
Type=0
HeaderFile=MainFrm.h
ImplementationFile=MainFrm.cpp
Filter=T




[CLS:CAboutDlg]
Type=0
HeaderFile=Serielize.cpp
ImplementationFile=Serielize.cpp
Filter=D
LastObject=CAboutDlg

[DLG:IDD_ABOUTBOX]
Type=1
Class=?
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[MNU:IDR_MAINFRAME]
Type=1
Class=?
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_SAVE
Command4=ID_FILE_SAVE_AS
Command5=ID_FILE_MRU_FILE1
Command6=ID_APP_EXIT
Command7=ID_EDIT_UNDO
Command8=ID_EDIT_CUT
Command9=ID_EDIT_COPY
Command10=ID_EDIT_PASTE
Command11=ID_VIEW_TOOLBAR
Command12=ID_VIEW_STATUS_BAR
Command13=ID_APP_ABOUT
CommandCount=13

[ACL:IDR_MAINFRAME]
Type=1
Class=?
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_SAVE
Command4=ID_EDIT_UNDO
Command5=ID_EDIT_CUT
Command6=ID_EDIT_COPY
Command7=ID_EDIT_PASTE
Command8=ID_EDIT_UNDO
Command9=ID_EDIT_CUT
Command10=ID_EDIT_COPY
Command11=ID_EDIT_PASTE
Command12=ID_NEXT_PANE
Command13=ID_PREV_PANE
CommandCount=13

[DLG:IDD_SERIELIZE_FORM]
Type=1
Class=?
ControlCount=21
Control1=IDC_TYPE,edit,1350631552
Control2=IDC_REYS,edit,1350631552
Control3=IDC_STATIC,static,1342308352
Control4=IDC_STATIC,static,1342308352
Control5=IDC_FIRST,button,1342242816
Control6=IDC_PREV,button,1342242816
Control7=IDC_NEXT,button,1342242816
Control8=IDC_STATIC,static,1342308352
Control9=IDC_NBR,edit,1350633600
Control10=IDC_STATIC,static,1342308352
Control11=IDC_COST,edit,1350631552
Control12=IDC_STATIC,static,1342308352
Control13=IDC_NPAS,edit,1350631552
Control14=IDC_STATIC,static,1342308352
Control15=IDC_ST,edit,1350633600
Control16=IDC_DEL,button,1342242816
Control17=IDC_RAZR,button,1342242816
Control18=IDC_STATIC,static,1342308352
Control19=IDC_SumCOST,edit,1350633600
Control20=IDC_SumNPAS,edit,1350633600
Control21=IDC_SumST,edit,1350633600

[TB:IDR_MAINFRAME]
Type=1
Class=?
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_SAVE
Command4=ID_EDIT_CUT
Command5=ID_EDIT_COPY
Command6=ID_EDIT_PASTE
Command7=ID_FILE_PRINT
Command8=ID_APP_ABOUT
CommandCount=8

