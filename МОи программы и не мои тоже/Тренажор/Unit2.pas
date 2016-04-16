unit Unit2;

interface
uses
Windows, Messages, Classes, Controls,
ActiveX, OleCtrls,StdCtrls;
type
TAxControl = class(TOleControl)//
private
CControlData : TControlData2; // ���������� �� ActiveX.
protected
procedure InitControlData; override;
public
property CData : TControlData2 read CControlData;
constructor Create (AOwn : TComponent;AGUID : TGUID);
end;

implementation

constructor TAxControl. Create (AOwn : TComponent ;AGUID : TGUID);
begin
FillChar(CControlData,sizeof(CControlData),0); // ��������� ���� � ����������� �� Active
CControlData.ClassID :=AGUID; // ���������� QUID ����������,������� ����� �����������.
inherited Create (AOwn); // ��������� ����������� ������.
ControlStyle := ControlStyle + [csClickEvents]; // ����� �����������
end ;
///////////////////////////////////////////////////////////////////////////////////
procedure TAxControl. InitControlData;
begin
ControlData := @CControlData; // ���������� �����, ��� ��������� ���������� �� ActiveX.
end;

end.
 