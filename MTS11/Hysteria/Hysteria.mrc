alias Hysteria.load {
  echo -a %::pre 12�������11�������13�������12������ $+ Ŀ
  echo -a %::pre 12L12oaded 11Hysteria 13mts 12t12heme...12�
  echo -a %::pre 12By: 11StoleN13@11DALnet1,1...........12�
  echo -a %::pre 12email: 11st0len13@11h11otmail.11c11om1,1...12�
  echo -a %::pre 12�������11�������13�������12��������
}
alias Hysteria.topic {
  %:echo 15       $+ 15 $+ %::15 $+ 12�����������11������� ���13�� ���� ��� � 
  %:echo 13T13opic $+ : $+ 12� $+ 00 %::text
  %:echo 12 $+ %::12 $+ � $+ %::15 $+ ����12�12�
}
alias Hysteria.endtopic {
  %:echo 12� $+ 1513 $+ S13et 13b13y:00 $+ %::00 %::nick  $+ %::13 $+ 13on $+ 00 $+ %:: %::text
  %:echo 12 $+ ������12�������11������������������� ���13������ ���� ��� �
}
alias whois1 { 
  %:echo 12  12 $+ %::12 $+ � $+ %::13 $+ �����13 /whois 12����11������13������� ����� ���� ��� �
  %:echo 12 $+ 12 $+ � $+ �12��11����12���13 %::nick 12��������11�������������� ���13��� ��� �� � 
  %:echo 12 $+ 12� � 13H13ost:00 %::address 
  %:echo 12 $+ 12� � 13N13ame:00 %::realname 
}
alias whois2 {
  %:echo 12 $+ %::12 $+ �� $+ ��11����12���13 %::nick 12��������11�������������� ���13��� ��� �� � 
  %:echo 12  12 $+ %::12 $+ ������13 End of /whois 11�������13��� ����� ���� ��� � 
}
alias whowas1 {
  %:echo 15  15 $+ %::15 $+ � $+ %::13 $+ �����13 /whowas 15����������������� ����� ���� ��� �
  %:echo 15 $+ 15 $+ � $+  $+ �15���������13 %::nick 15���������������������� ������ ��� �� � 
  %:echo 15 $+ 15� � 13H13ost:14 %::address 
  %:echo 15 $+ 15� � 13N13ame:14 %::realname 
}
alias whowas2 {
  %:echo 15 $+ %::15 $+ �� $+ ���������13 %::nick 15���������������������� ������ ��� �� � 
  %:echo 15  15 $+ %::15 $+ ������13 End of /whowas15���������� ����� ���� ��� �
}
alias nosuchnick {
  %:echo 15  15 $+ %::15 $+ � $+ %::13 $+ �����13/whowas 15����������������� ����� ���� ��� �
  %:echo 15 $+ 15 $+ � $+  $+ �15���������13 %::nick 15���������������������� ������ ��� �� � 
  %:echo 15 $+ 15� � 13T13here was no such Nick
}
alias Hysteria.raw.004 {
  %:echo 14(13U13sermodes:15 $+ %:: $gettok(%::text,3,32) $+ 14)
  %:echo 14(13C13hanmodes:15 $+ %:: $gettok(%::text,4,32) $+ 14)
}
alias Hysteria.st return $remove($duration($$1),ks,k,ays,ay,rs,r,ins,in,ecs,ec) 