alias wstart {
  %:echo 13�����������������15Whois13���������� $+ $align(%::nick) $+ ���Ŀ
  %:echo 13������������������15 $+ %::nick $+ 13�������������������� � � ��>
  %:echo 13�15Addy13�15 $replace(%::address,@,13@15,.,13.15)
  %:echo 13�15Name13�15 %::realname
}
alias wend {
  %:echo 13������������������15 $+ %::nick $+ 13�������������������� � � ��>
  %:echo 13�����������������15Whois13������ $+ $align(%::nick) $+ ���������
}
alias dns.start {
  %:echo  13��������15DNS13������������ � � ��>
  .timer -m 1 300 echo $timestamp 13��������15DNS13������������ � � ��>
}
alias untitled.load echo  -a Untitled Theme v1.2 By: sreid
alias untitled.st return $replace($remove($remove($duration($$1),ks,k,ays,ay,rs,r,ins,in,ecs,ec),$chr(32)),:,13:15)
alias align return $right($str(�,$len($1-)),-3)
