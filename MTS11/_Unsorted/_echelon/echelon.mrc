alias -l ech.form return $+(14�15[11,$1,15]14�15)
alias echelon.whois {
  var %r = $rand(1,4),%r2 = $rand(1,4)
  %:echo $+($str(�,21),14- �15-,$str(�,%r),00�15Ŀ)
  %:echo 14����-15�0�14�15[11/whois1515]14���15��14� $+ $str(�,%r) $+ �15��14���
  %:echo $ech.form(nick) %::nick $+ $iif(quakenet isin $server && %::echwhois.auth,11 (15authed as $ifmatch $+ 11)15) $+ $iif(%::operline,11 (15IRC operator11)15) $+ 11,15 %::realname
  %:echo $ech.form(addy) $replace(%::address,@,11@15,.,11.15,~,11~15) $+ $iif($readini($scriptdir $+ nn-echelon.ini,countries,$gettok(%::address,-1,46)),11 $+ $chr(44) $+ 15 $ifmatch)
  if (%::chan) %:echo $ech.form(chan) $replace(%::chan,@#,11@15#,+#,11+15#,$chr(35),14#15)
  if (%::wserver) %:echo $ech.form(serv) $replace(%::wserver,.,11.15) $+ $iif(%::serverinfo,11 $+ $chr(44) $+ 15 $ifmatch)
  if (%::away) %:echo $ech.form(away) %::away
  if (%::idletime) %:echo $ech.form(idle) $duration(%::idletime) $+ 11,15 signed on $duration($calc($ctime - $ctime(%::signontime))) ago
  %:echo 14��15-14�����15[11end15]14�15��00��15�14�15� $+ $str(�,%r2) $+ 14�-�Ŀ
  %:echo $+($str(�,17),14-�-�15�-00�15�,$str(�,%r2),14�)
  unset %::echwhois.auth
}
alias echelon.whowas {
  var %r = $rand(1,4),%r2 = $rand(1,4)
  %:echo $str(�,20) 14- �15- $+ $str(�,%r) $+ 00�15Ŀ
  %:echo 14����-15�0�14�15[11/whowas1515]14���15��14� $+ $str(�,%r) $+ �15��14��
  %:echo $ech.form(nick) %::nick $+ 11,15 %::realname
  %:echo $ech.form(addy) $replace(%::address,@,11@15,.,11.15,~,11~15) $+ $iif($readini($scriptdir $+ nn-echelon.ini,countries,$gettok(%::address,-1,46)),11 $+ $chr(44) $+ 15 $ifmatch)
  if (%::chan) %:echo $ech.form(chan) $replace(%::chan,@#,11@15#,+#,11+15#,$chr(35),14#15)
  if (%::wserver) %:echo $ech.form(serv) $replace(%::wserver,.,11.15)
  if (%::serverinfo) %:echo $ech.form(quit) $asctime($ctime(%::serverinfo),dddd $+ $chr(44) mmm dd yyyy $+ $chr(44) HH:nn:ss)
  %:echo 14��15-14�����15[11end15]14�15��00��15�14�15� $+ $str(�,%r2) $+ 14�-�Ŀ
  %:echo $str(�,16) 14-�-�15�-00�15� $+ $str(�,%r2) $+ 14�
}
alias echelon.welc {
  if ($1 == 1) {
    var %r = $rand(1,5)
    %:echo $+($str(�,20),14- �15-,$str(�,%r),�00�15Ŀ)
    %:echo $+(14���15���14��15[11welcome15]14���15,$str(�,%r),�14�-���) �
    %:echo $ech.form(welc) Welcome $2-
  }
  if ($1 == 2) {
    %:echo $ech.form(serv) $left($4,-1)
    %:echo $ech.form(vers) $7
  }
  if ($1 == 3) {
    var %r = $rand(1,5)
    %:echo $ech.form(crea) $5-
    %:echo $+(14��������15[11end15]14��-��15,$str(�,%r),0��15�14�Ŀ)
    %:echo $+($str(�,16),14- �15-,$str(�,%r),�00�15��)
  }
}
alias echelon.topic {
  if ($1 == 1) {
    var %r = $rand(1,5)
    %:echo $+($str(�,16),14- �15-,$str(�,%r),�00�15Ŀ)
    %:echo $+(14���15���14��15[11topic15]14��15,$str(�,%r),�14�-��) �
    %:echo $ech.form(topc) $2-
  }
  if ($1 == 2) {
    var %r = $rand(1,5)
    %:echo $ech.form(user) $2
    %:echo $ech.form(time) $asctime($ctime($3-),dddd $+ $chr(44) mmm dd yyyy $+ $chr(44) HH:nn:ss)
    %:echo $+(14��������15[11end15]14��-��15,$str(�,%r),0��15�14�Ŀ)
    %:echo $+($str(�,16),14- �15-,$str(�,%r),�00�15��)
  }
}
alias echelon.lusers {
  if ($1 == 1) {
    var %r = $rand(1,5)
    %:echo $+($str(�,25),14- �15-,$str(�,%r),�00�15Ŀ)
    %:echo $+(14�15[11/lusers15]14�15[11global info15]14�,$str(�,%r),�15��-�14-��)
    %:echo 14�15 $echelon.align(7,$calc($2 + $3)) 14�15 users total
    %:echo 14�15 $echelon.align(7,$2) 14�15 visible ( $+ $+($int($calc($2 / ($2 + $3) * 100)),%) $+ )
    %:echo 14�15 $echelon.align(7,$3) 14�15 invisible ( $+ $+($int($calc($3 / ($2 + $3) * 100)),%) $+ )
    %:echo 14�15 $echelon.align(7,$4) 14�15 servers
    %:echo 14�15 $echelon.align(7,$int($calc(($2 + $3) / $4))) 14�15 average users per server
    %:echo 14���15���0�15��14��15[11local info15]14���-15���14�� -
  }
  if ($1 == 2) { %:echo 14�15 $echelon.align(7,$2) 14�15 operators online }
  if ($1 == 3) { %:echo 14�15 $echelon.align(7,$2) 14�15 unknown connections }
  if ($1 == 4) { %:echo 14�15 $echelon.align(7,$2) 14�15 channels formed }
  if ($1 == 5) {
    var %r = $rand(1,5)
    %:echo 14�15 $echelon.align(7,$3) 14�15 users total
    %:echo 14�15 $echelon.align(7,$6) 14�15 servers
    %:echo $+(14��15���14��-���15[11end15]14��15��00�15���-14,$str(�,%r),15��14Ŀ)
    %:echo $+($str(�,21),14- �15-,$str(�,%r),�00�15��)
  }
}
alias -l echelon.align { return $+($str( ,$calc($1 - $len($2-))),$2-) }
alias echelon.eval {
  var %a = $str( ,$calc(15 - $len($2)))
  if (%::chan) { %:echo 14�11�14�11 $+($1,14,$echelon.brack($3) 11,%a,$2,14) $iif($4-,$4-,$address) %:comments }
  else { %:echo 14�11�14�11 $+($1,14,(query) 11,%a,$2,14) $iif($3-,$3-,$address) %:comments }
}
alias echelon.txtal {
  if ($strip($2)) var %m = $right($2,1)
  else var %m =  
  var %a = $str( ,$calc(15 - $len($3)))
  if ($1 == -t) %:echo $+(11,%m,14/15,$3,%a,14>) $4-
  else %:echo $+(11,%m,14!15,$3,%a)  $4-
}
alias -l echelon.brack { if ($1) return ( $+ $1- $+ 14) }
alias echelon { me is using [echelon] MTS theme by greeny. }