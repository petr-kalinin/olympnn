const eps=0.000000001;
var a,b,s:double;
begin
read(a,b,s);
if abs(s-a-b)<eps then write(1)
                  else write(0);
end.
{��� ������� 㤮���� ࠡ���� � Pascal ABC, ⠪ ��� ⠬ ��ᨢ�� ����䥩�,
���� �⫠��� � ����� ࠧ������ ��� �� ���� ��࠭. �� ⠬ ��� ������� ����⢥����
⨯�� �஬� real. �᫨ ���� (��� ᥩ��), ���� ����� � �� FP. �� �� ⠪ � ����祩
IP-����?}