alias infernal.whois {
  %:echo  13 ��������������Ŀ
  %:echo  13 � /whois start 13�
  %:echo  13 ������������������������������������� �
  %:echo    13 � nick 13� %::nick 13( $+ %::realname $+ 13)
  %:echo    13 � addy 13� $replace(%::address,@,13@)
  if (%::chan) {
    var %i = $numtok(%::chan,32),%m = 0
    while (%i) {
      var %c = $gettok(%::chan,%i,32),%p = $left(%c,1),%f = $prefix
      if (%p isin $prefix) {
        while (%f) {
          var %y = $left(%f,1)
          if (%p == %y) {
            if ($me ison $right(%c,-1)) {
              var %u = $+(#,$right(%c,-2),)
              inc %m
            }
            else { var %u = $right(%c,-1) }
            set -nu0 %_wchan. [ $+ [ %y ] ] $addtok(%_wchan. [ $+ [ %y ] ],%u,32)
          }
          var %f = $right(%f,-1)
        }
      }
      else {
        if ($me ison %c) { inc %m }
        set -nu0 %_wchan. $addtok(%_wchan.,$iif($me ison %c,$+(#,$right(%c,-1),),%c),32)
      }
      dec %i
    }
    %:echo    13 � chan 13�������� �
    var %f = $prefix
    while (%f) {
      var %v = $eval($+(%,_wchan.,$left(%f,1)),2)
      if (%v) { %:echo    13 �      13� $iif($left(%f,1),$ifmatch, ) 13� $replace(%v,$chr(35),13#) }
      var %f = $right(%f,-1)
    }
    if (%_wchan.) { %:echo    13 �      13�   13� $replace(%_wchan.,$chr(35),13#) }
    %:echo    13 �      13�������� �
    %:echo    13 �      13� ? 13� $numtok(%::chan,32) total13, %m common channel(s)
    %:echo    13 �      13�������� �
  }
  %:echo    13 � serv 13� %::wserver $+(13,$chr(40),,%::serverinfo,13,$chr(41))
  if (%::away) { %:echo    13 � away 13� %::away }
  if (%::idletime) {
    %:echo    13 � idle 13� $duration(%::idletime)
    %:echo    13 � conn 13� $duration($calc($ctime - $ctime(%::signontime))) ago $+(13,$chr(40),,%::signontime,13,$chr(41))
  }
  %:echo  13 ������������������������������������� �
  %:echo  13 � /whois end 13�
  %:echo  13 ��������������
  unset %thm.auth %thm.ownip
}
alias infernal.whowas {
  %:echo  13 ���������������Ŀ
  %:echo  13 � /whowas start 13�
  %:echo  13 �������������������������������������� �
  %:echo    13 � nick 13� %::nick $+(13,$chr(40),,%::realname,13,$chr(41))
  %:echo    13 � addy 13� $replace(%::address,@,13@)
  if (%::wserver) { %:echo    13 � serv 13� %::wserver }
  if (%::serverinfo) { %:echo    13 � quit 13� $asctime($ctime(%::serverinfo),dddd $+ $chr(44) mmm dd yyyy $+ $chr(44) HH:nn:ss) }
  %:echo  13 �������������������������������������� �
  %:echo  13 � /whowas end 13�
  %:echo  13 ���������������
}
