alias faint.load echo -at 12faint theme v1.3 by 12sreid, http://www.ciphering.net/
alias whois.start {
  %:echo 12����������12�
  %:echo � 12whois ���
  %:echo ��������������������������12������ ���� ��� �� � �
  %:echo ���12Nick:��� %::nick
  %:echo ���12Name:��� %::realname
  %:echo ���12Addy:��� %::address

}
alias whois.end {
  %:echo ��������������������������12������ ���� ��� �� � �
  %:echo � 12/whois ��
  %:echo 12����������12�
}
alias whois.chan %:echo ���12Chan:��� %::chan
alias whois.serv %:echo ���12Serv:��� %::wserver - %::serverinfo
alias whois.away %:echo ���12Away:��� %::away
alias whois.idle %:echo ���12Idle:��� $ut($gettok(%::text,1,32)) - sign on time12: $ut2(%::signontime)
alias whois.stat %:echo ���12Stat:��� %::text
alias whois.type %:echo ���12Type:��� %::text
alias ut return $replace($duration($$1),secs,12s,mins,12m,sec,12s,min,12m,hrs,12h,hr,12h)
alias ut2 return $gettok($1-,2-,32)
