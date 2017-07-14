
alias cfusion.banner {
  color inactive $color(editbox)
  %:echo 
  %:echo %::pre 00Cold Fusion14:15
  %:echo %::pre 00:15 Theme for MTS/1.1 by 00ice-man15@00efnet
  %:echo %::pre 00:15 Bugs/suggestions? mattdouglas@gmail.com
  %:echo %::pre 00:15 Ugly font? bright.fon is included in zip file
  %:echo %::pre 00:15 No timestamp? just type "/timestamp on"
  %:echo 
}

alias cfusion.chanmode { 
  if ($1 isop $2) return @
  elseif ($1 ishop $2) return %
  elseif ($1 isvo $2) return +
  else return  
}

alias cfusion.mychanmode {
  if ($me isop $1) return @
  elseif ($me ishop $1) return %
  elseif ($me isvo $1) return +
  else return  
}

alias cfusion.dur {
  return $remove($duration($$1),ks,k,ays,ay,rs,r,ins,in,ecs,ec)
}

alias cfusion.perc {
  var %calc = $calc($$1 / $$2)
  if $chr(46) !isin %calc { return %calc $+ 00 $+ $chr(37) }
  elseif $gettok(%calc,1,46) > 0 { return $gettok(%calc,1,46) $+ $left($gettok(%calc,2,46),2) $+ $chr(37) } 
  else { return $left($gettok(%calc,2,46),2) $+ $chr(37) }
}

alias cfusion.align {
  if $len($strip($2-)) <= $1 { return $2- $+ $str( ,$calc($1 - $len($strip($2-)))) }
  else { return $left($2-,$1) $+ $str( ,$calc($1 - $len($strip($2-)))) }
}

alias cfusion.listbegin {
  %:echo   $+ %::c3 $+ � $+ %::c2 $+ �� $+ %::c4 $+ �
  %:echo  $+ %::c4 $+ � $+ %::c3 $+ � $+ %::c4 $+ � $+ %::c2 $+ � $+ %::c3 $+ ������������� $+ %::c2 $+ ����������������� ������� $+ %::c4 $+ ������� ������� ���� ��� �
}

alias cfusion.listtext {
  %:echo  $+ %::c2 $+ ��  $+ %::c2 � %::text
}

alias cfusion.listsep {
  %:echo  $+ %::c3 $+ �� $+ %::c2 $+ � $+ %::c4 $+ � $+ %::c3 $+ � $+ %::c4 $+ �������� $+ %::c2 $+ �������������� $+ %::c3 $+ �������������������� ���������� ������ ���  $+ %::c3 �
}

alias cfusion.listend {
  %:echo  $+ %::c3 $+ �� $+ %::c2 $+ � $+ %::c4 $+ � $+ %::c3 $+ � $+ %::c4 $+ ���������������� $+ %::c2 $+ ����������������� $+ %::c3 $+ ��������������� ���������� ���� ���  $+ %::c3 �
  %:echo   $+ %::c4 $+ � $+ %::c2 $+ �� $+ %::c3 $+ �
}

alias cfusion.whoisstart {
  %:echo    $+ %::c3 $+ ��� $+ %::c2 $+ ��� $+ %::c4 $+ Ŀ
  %:echo  $+ %::c4 $+ �� $+ %::c3 $+ � $+ %::c4 $+ � $+ %::c2 $+ ���� $+ %::c3 $+ �������� $+ %::c2 $+ �������� $+ %::c4 $+ ������� ����� ���� ��� �
  %:echo  $+ %::c4 $+ �  $+ %::c3 $+ � nick  $+ %::c4 $+ �00 %::nick 14(15 $+ %::address $+ 14) 
  %:echo  $+ %::c2 $+ � �  $+ %::c3 $+ name  $+ %::c2 $+ �15 %::realname
}

alias cfusion.whoisadmin {
  %:echo  $+ %::c2 $+ � �  $+ %::c3 $+ admn �00 $1 15is a network admin.
}

alias cfusion.whoisreg {
  if %::isregd == is { %:echo  $+ %::c2 $+ � �  $+ %::c3 $+ regd �00 %::nick 15is a registered nick. }
}

alias cfusion.whoischan {
  %:echo  $+ %::c2 $+ � �  $+ %::c3 $+ chan $+ %::c2 �15 $replace(%::chan,@,00@15,+,00+15)
}

alias cfusion.whoisserver {
  %:echo  $+ %::c2 $+ � �  $+ %::c3 $+ serv �15 %::wserver 14(15 $+ %::serverinfo $+ 14)
}

alias cfusion.whoisaway {
  %:echo  $+ %::c2 $+ � �  $+ %::c3 $+ away �15 %::text
}

alias cfusion.whoistrue {
  %:echo  $+ %::c2 $+ � �  $+ %::c3 $+ true �00 %::nick 15 $+ %::text
}

alias cfusion.whoisrealhost {
  %:echo  $+ %::c2 $+ � �  $+ %::c3 $+ host �15 %::text
}

alias cfusion.whoisoper {
  %:echo  $+ %::c2 $+ � �  $+ %::c3 $+ oper �00 %::nick 15is an irc operator.
}

alias cfusion.whoisidle {
  %:echo  $+ %::c2 $+ � �  $+ %::c3 $+ idle �00 $cfusion.dur(%::idletime) $+ 14,15 signed on14:00 $cfusion.dur($calc($ctime - $ctime(%::signontime))) 15ago
}

alias cfusion.whoisend {
  %:echo  $+ %::c3 $+ ���� $+ %::c2 $+ ��� $+ %::c4 $+ �� $+ %::c3 $+ � $+ %::c4 $+ ������ $+ %::c2 $+ ���������� $+ %::c3 $+ ������������� �������� ���� ���  $+ %::c3 �
  %:echo    $+ %::c4 $+ �� $+ %::c2 $+ ��� $+ %::c3 $+ ���
} 

alias cfusion.lusersstart {
  %:echo   $+ %::c4 $+ : $+ %::c2 $+ >  00 Invisible 14:15 %::text 14[15 $+ $cfusion.perc(%::users,%::text) $+ 14]
  %:echo   $+ %::c4 $+ : $+ %::c2 $+ >  00 Servers   14:15 %::value linked to $network
}
alias cfusion.raw.255 {
  %:echo   $+ %::c4 $+ : $+ %::c2 $+ >  00 Clients   14:15 %::users clients connected
  ;  %:echo   $+ %::c4 $+ : $+ %::c2 $+ >  00 Servers   14:15 %::value directly linked
}
alias cfusion.lusersend {
  %:echo   $+ %::c4 $+ : $+ %::c2 $+ >  00 Global users14:15 %::users $+ 14,00 Max14:15 %::value 14[15 $+ $cfusion.perc(%::users,%::value) full14]
}

alias cfusion.topic { }
alias cfusion.endtopic {
  %:echo %::pre  $+ %::c2 $+ Topic $+ %::c4 $+ :15 $chan(%::chan).topic 14(15 $+ set by: %::nick $+ 14)
}

; this is modified from blue.mts by tig0ti (its 5am and too tired to make own =\)
alias cfusion.names {
  if (%::chan != %cfusion.name.chan) {
    cfusion.listbegin %::chan names
    %:echo  $+ %::c2 $+ ��  $+ %::c2 �00 %::chan names14: $iif($nick(%::chan,0) > 1,(15 $+ $+(total/,$nick(%::chan,0)) $+(+o/,$nick(%::chan,0,o)) $+(+v/,$nick(%::chan,0,v)) $+(-o/,$nick(%::chan,0,r)) $+(bans/,$ibl(%::chan,0)) $+ 14))
    cfusion.listsep %::chan scan
    %cfusion.name.chan = %::chan
  }
  var %x = 0
  %::text = %out $sorttok($gettok(%::text,2-,32),32)
  while ($gettok(%::text,$+($calc(1 + %x),-,$calc(%x + 5)),32)) {
    var %names = $ifmatch, %y = 1, %out
    while ($gettok(%names,%y,32)) {
      %out = $addtok(%out,14(15 $+ $cfusion.align(11,$+($ifmatch)) $+ 14),32)
      inc %y
    }
    %:echo  $+ %::c2 $+ ��  $+ %::c2 � %out
    inc %x 5
  }
}
alias cfusion.endnames {
  cfusion.listend
  if (-s isin %:echo) %:echo -
  unset %cfusion.name.*
}

alias cfusion.raw.001 {
  %:echo   $+ %::c4 $+ : $+ %::c2 $+ >00 Server Statistics14:
  %:echo   $+ %::c4 $+ : $+ %::c2 $+ >  00 Server    14:15 %::server 14[15 $+ %::value $+ 14]
}

alias cfusion.raw.004 {
  %:echo   $+ %::c4 $+ : $+ %::c2 $+ >  00 UserModes 14:15 $gettok(%::text,3,32) $+ 
  %:echo   $+ %::c4 $+ : $+ %::c2 $+ >  00 ChanModes 14:15 $gettok(%::text,4,32) $+ 
}
