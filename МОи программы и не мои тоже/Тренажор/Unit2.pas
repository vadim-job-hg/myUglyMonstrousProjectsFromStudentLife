unit Unit2;

interface
uses
Windows, Messages, Classes, Controls,
ActiveX, OleCtrls,StdCtrls;
type
TAxControl = class(TOleControl)//
private
CControlData : TControlData2; // Информация об ActiveX.
protected
procedure InitControlData; override;
public
property CData : TControlData2 read CControlData;
constructor Create (AOwn : TComponent;AGUID : TGUID);
end;

implementation

constructor TAxControl. Create (AOwn : TComponent ;AGUID : TGUID);
begin
FillChar(CControlData,sizeof(CControlData),0); // Обнуляете поле с информацией об Active
CControlData.ClassID :=AGUID; // Указываете QUID компонента,который будет создаваться.
inherited Create (AOwn); // Вызываете конструктор предка.
ControlStyle := ControlStyle + [csClickEvents]; // Стиль отображения
end ;
///////////////////////////////////////////////////////////////////////////////////
procedure TAxControl. InitControlData;
begin
ControlData := @CControlData; // Указываете адрес, где находится информация об ActiveX.
end;

end.
 