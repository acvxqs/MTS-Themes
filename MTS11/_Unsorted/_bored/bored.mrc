;bored MTS script file  (http://escripting.tk)
;by LeYeR                   (leyerpunk@tujefa.org)
alias t.b.whois {
  var %cc = $gettok(%::address, $numtok(%::address, 46), 46)
  %:echo 14�14�15�����15�����������������������������������������
  ;if u have a a country hash\ini\txt put ur $id instead $_c
  %:echo 14� $+ $_align(9, 00 $+ %::nick $+ ) $+ 14� 11(10 $+ %::address $+ 11) 15< $+ $_c(%::nick) $+ 15>
  %:echo 14� $+ $_align(9,11i10rcnam11e:) $+ 14� %::realname 
  if (%::chan) { %:echo 14� $+ $_align(9,11c10hannel11s:) $+ 14� $_br(%::chan) }
  if (%::text) { %:echo 14� $+ $_align(9,11a10wa11y:) $+ 14� %::text }
  %:echo 14� $+ $_align(9,11s10erve11r:) $+ 14� %::wserver $iif(%::serverinfo,15< $+ %::serverinfo $+ 15>)
  if (%::idletime) { %:echo 14� $+ $_align(9,11i10dl11e:) $+ 14� %::idletime }
  if (%::signontime) { %:echo 14� $+ $_align(9,11l10ogge11d:) $+ 14� %::signontime }
  %:echo 14�14�15�����15�����������������������������������������
}
alias _align { return $2- $+ $str( ,$calc($1 - $len($strip($2-)))) }
alias t.b.whowas {
  var %cc = $gettok(%::address, $numtok(%::address, 46), 46)
  %:echo 14�14�15�����15�������15��������������15�����������15�����15������
  %:echo 14� $+ $_align(9,15 $+ %::nick $+ ) $+ 14� 11(10 $+ %::address $+ 11) 15< $+ $_c(%::nick) $+ 15>
  %:echo 14� $+ $_align(9,11i10rcnam11e:) $+ 14� %::realname
  %:echo 14� $+ $_align(9,11s10erve11r:) $+ 14� %::wserver $iif(%::serverinfo,15< $+ %::serverinfo $+ 15>)
  %:echo 14�14�15�����15�������15����������15���������15��������15����15�����
}
alias -l _br return $replace($1-,@,15@,+,15+)
