;demintri theme remote file
;this theme was ported to mts from ceelow's demintri script

alias _demintri.whois {
  %:echo 14���14-14���14--16 - 14--14�15<14�-��15-�-�14� ��15�
  %:echo 14�14(15 $+ %::nick $+ $str($chr(255),$calc(11 - $len(%::nick))) $+ 14)14��15��--14-��15���-15-�
  %:echo 14�[16   address 14]�15: %::address
  %:echo 14�[16   ircname 14]�15: %::realname
  %:echo 14�[16    server 14]�15: 15 $+ %::server 16"15 $+ %::serverinfo $+ 16"
  if (%::away) %:echo 14�[16      away 14]�15: $ifmatch
  if (%::operline) %:echo 14�[16  operator 14]�15: yes.
  if (%::idletime) {
    var %:::idletime = $iif(%::idletime !isnum,$duration(%::idletime),%::idletime) 
    ;echo -a $_demintri.sdur(%:::idletime)
    %:echo 14�[16      idle 14]�15: $_demintri.sdur(%:::idletime) 14// 15signed on 16 $+ $_demintri.sdur($calc($ctime - $ctime(%::signontime))) 15ago
  }
  %:echo 14�14(15whois/who  14)14�15��--14-����15���-15-�
  %:echo 14��14-14�14-16- -14-14�14-14����15<14�-��15-�-�14� ��15��
}
alias _demintri.quit %:echo %::pre 15quited14!16irc14 >15 $+ $str($chr(255),$calc(9 - $len(%::nick))) %::nick $+ %::parentext
alias _demintri.part %:echo %::pre 15parted14!16 $+ %::chan $+ 14 >15 $+ $str($chr(255),$calc(9 - $len(%::nick))) %::nick $+ 14[16 $+ %::address $+ 14] $+ %::parentext
alias _demintri.join %:echo %::pre 15joined14!16 $+ %::chan $+ 14 >15 $+ $str($chr(255),$calc(9 - $len(%::nick))) %::nick $+ 14[16 $+ %::address $+ 14] 14[1514]
alias _demintri.sdur return $remove($duration($$1),ks,k,ays,ay,rs,r,ins,in,ecs,ec,$chr(32))
alias demintri if ($query($active)) || ($chat($active)) || ($active ischan) { say demintri[+MTS]1.0. the new blood }
alias _demintri.n tokenize 32 $1- | return 14� 00 $+ $1 $+ $str($chr(255),$calc(10 - $len($1))) $+ 14 � 00 $+ $2 $+ $str($chr(255),$calc(10 - $len($2))) $+ 14 � 00 $3 $+ $str($chr(255),$calc(10 - $len($3))) $+ 14 � 00 $+ $4 $+ $str($chr(255),$calc(10 - $len($4)))
alias _demintri.names {
  if (%::chan != %demintri.nameschan) {
    %:echo 14�15��14-16����14--15����14---[15 scan %::chan 14]16�����14----     15 ��14- 16��14--
    %demintri.nameschan = %::chan
  }
  tokenize 32 $gettok(%::text,2-,32)
  var %i = 1,%x = 4
  while ($gettok($1-,$+(%i,-,%x),32)) {  %:echo $_demintri.n($ifmatch) | inc %i %x | inc %x %x }
}
alias _demintri.endnames {
  %:echo 14�15�14-16��14 --> 15scan14/15 $+ %::chan 15o14/15 $+ $nick(%::chan,0,o) v14/15 $+ $nick(%::chan,0,v) n14/15 $+ $nick(%::chan,0,r) t14/15 $+ $nick(%::chan,0)
  unset %demintri.nameschan
}
