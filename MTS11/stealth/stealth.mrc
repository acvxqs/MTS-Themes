dialog stealth {
  title "Stealth [/stealth]"
  size -1 -1 176 83
  box "Theme Options", 1, 4 4 168 75
  check "Enable /motd on connect", 2, 15 24 145 16
  check "Enable /names display", 3, 15 40 132 16
  button "WEBIRC RULES!!!", 99, 125 15 33 11, hide ok
  check "Enable /who", 4, 15 56 100 16
}
on *:dialog:stealth:*:*:{
  if $devent == init {
    if (%stealth.motd == on ) did -c $dname 2
    if (%stealth.names == on ) did -c $dname 3
    if (%stealth.who == on ) did -c $dname 4
  }
  if ($devent == sclick) {
    if ($did == 2) { set %stealth.motd $iif($did($dname,2).state == 1,on,off) }
    if ($did == 3) { set %stealth.names $iif($did($dname,3).state == 1,on,off) }
    if ($did == 4) { set %stealth.who $iif($did($dname,4).state == 1,on,off) }
  }
}
alias stealth dialog -m stealth stealth
alias default.halt { return }
alias default.load {
  %:echo $default.wa(5,60,$+(�,$str(�,5),$default.po(%::c1,%::c2,welcome),,%::c1,$str(�,7),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�))  
  %:echo $default.wa(5,60,$+(��,,%::c4,Stealth Theme Loaded.. ))
  %:echo $default.wa(5,60,$+(��,,%::c4,Version 1.7 by webprofit ))
  %:echo $default.wa(5,60,$+(��,,%::c4,http://www.webproficio.com ))
  %:echo $default.wa(5,60,$+(��,,%::c4,Type '/stealth' for options ))
  %:echo $default.wa(5,60,$+(�,$str(�,5),,%::c1,$str(�,11),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�))
  linesep
}


alias default.chantopic { 
  ;332
;echo %::c1 %::chan -
  %:echo -
  %:echo $default.wa(8,70,� $+ $+($str(�,5),$default.po(%::c1,%::c2,topic: $+(,%::c3,%::chan)),,%::c1,$str(�,11),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�)) 
  var %a = 1 | while $wordwrap(%a,55,%::text) { %:echo $default.wa(8,65,�,$+(,%::c4),$wordwrap(%a,55,$+(,%::text))) | inc %a }
  %:echo $default.wa(8,70,$+(�,$str(�,10),�,$str(�,18),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�)) | linesep 
  set %:::chan. [ $+ [ %::chan ] ] $+ .topic yes
}
alias default.chantopicset { %:echo $default.wa(8,70,$+(��,,%::c3,SetBy:�����,,%::c4,%::nick,$chr(32),on,$chr(32),%::text)) }
alias default.chancreat {   
  ;329
  if (%:::chan. [ $+ [ [ %::chan ] ] $+ .topic ]  != yes) {
    %:echo -
    %:echo $default.wa(8,70,� $+ $+($str(�,5),$default.po(%::c1,%::c2,topic: $+(,%::c3,%::chan)),,%::c1,$str(�,11),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�)) 
    %:echo $default.wa(8,70,� $+ $+(,%::c4,�))   
    %:echo $default.wa(8,70,� $+ $+(,%::c4,�No Topic Has been Set))
    %:echo $default.wa(8,70,� $+ $+(,%::c4,�))
    %:echo $default.wa(8,70,$+(�,$str(�,10),�,$str(�,18),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�)) | linesep 
  }
  %:echo $default.wa(8,70,$+(��,,%::c3,Created:���,,%::c4,%::text)) 
  %:echo $default.wa(8,70,� $+ $+($str(�,5),$default.po(%::c1,%::c2,modes: $+(,%::c3,%:::chan. [ $+ [ [ %::chan ] ] $+ .modes ] )),,%::c1,$str(�,10),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�))
  if (%stealth.who == on) { %:echo $default.wa(7,70,/) | %:echo $default.wa(6,70,/) }
  else  %:echo  -
  .timerstealth 1 30  unset %:::chan*
  halt
}
alias default.chanmodes { set %:::chan. [ $+ [ %::chan ] ] $+ .modes %::modes }


alias default.po return $+($+(,$1),$chr(40),$+(,$2),$3-,$+(,$1),$chr(41))

alias default.names1 {
  if (%stealth.names == on) {
    %:echo $default.wa(5,66,� $+ $+($str(�,5),$default.po(%::c1,%::c2,names: $+(,%::c3,%::chan)),,%::c1,$str(�,11),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�))  
    var %a = 1 
    while $wordwrap(%a,50,%::text) { %:echo $default.wa(5,66,��,$+(,%::c4),$wordwrap(%a,50,$+(%::text))) | inc %a }
  }
}
alias default.names2 { if (%stealth.names == on) { %:echo $default.wa(5,66,� $+ $+($str(�,5),$default.po(%::c1,%::c2,names: $+(,%::c3,%::chan)),,%::c1,$str(�,11),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�)) | linesep } }

alias default.motd1 {  
  if (%stealth.motd == on) %:echo $default.wa(5,75,� $+ $+($str(�,5),$default.po(%::c1,%::c2,motd: $+(,%::c3,$network)),,%::c1,$str(�,11),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�))  
}
alias default.motd2 {  
  if (%stealth.motd == on)  { %:echo $default.wa(5,75,� $+ $+($str(�,5),$default.po(%::c1,%::c2,motd: $+(,%::c3,$network)),,%::c1,$str(�,11),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�))  | linesep  }
}

alias default.lusers { 
  linesep
  %:echo $default.wa(5,65,$+(�,$str(�,5),$default.po(%::c1,%::c2,lusers: $+(,%::c3,$network)),,%::c1,$str(�,7),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�))
  %:echo $default.wa(5,65,$+(��,,%::c3,Nick:������,,%::c4,$me))
  %:echo $default.wa(5,65,$+(��,,%::c3,Server:����,,%::c4,$server))
  %:echo $default.wa(5,65,$+(��,,%::c3,Users:�����,,%::c4,$+(%::users,norm) / $+(%::text,invis)))
  set %:::lusers.servs %::value
}
alias default.luserops { %:echo $default.wa(5,65,$+(��,,%::c3,Ircops:����,,%::c4,%::value))  }
alias default.luserun {  halt }
alias default.luserchan { 
  %:echo $default.wa(5,65,$+(��,,%::c3,Chans:�����,,%::c4,%::value on  $+(%:::lusers.servs,servers))) 
  %:echo $default.wa(5,65,$+(��,,%::c3,Online:����,,%::c4,$uptime(server,1))) 

}
alias default.luserstat {
  %:echo $default.wa(5,65,$+(�,$str(�,5),$default.po(%::c1,%::c2,lusers: $+(,%::c3,$network)),,%::c1,$str(�,7),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�))
  linesep
}


alias align if $len($strip($2-)) > $1 { return $left($2-,$calc($1 - 3)) $+ ... } | return $2- $+ $+ $str( ,$calc($1 - $len($strip($2-)))) 
alias align2 if $len($strip($2-)) > $1 { return $left($2-,$calc($1 - 3)) $+ ... } | return $str( ,$calc($1 - $len($strip($2-)))) $+ $2-
alias align3 if $len($strip($2-)) > $1 { return $left($2-,$calc($1 - 3)) $+ ... } | var %a = $or($calc(($1 - $len($strip($2-)))/2)) | return $str( ,%a) $+ $2- $+ $str( ,%a)

alias wordwrap {
  ; syntax: $wordwrap(line#,linewidth,text)
  var %wordwrap.lines.count = 1,%wordwrap.in = $remove($3-,) | :loop | var %wordwrap.out.test = %wordwrap.out $gettok(%wordwrap.in,1,32)
  if ($len(%wordwrap.out.test) > $2) { if (!%wordwrap.out) { var %wordwrap.out = $left(%wordwrap.in,$2) | if ($len($gettok(%wordwrap.in,1,32)) <= $2) { var %wordwrap.in = $remtok(%wordwrap.in,$gettok(%wordwrap.in,1,32),32) } | else { var %wordwrap.in = $right(%wordwrap.in,$calc( $len(%wordwrap.in) - $2 )) } } | goto finish } | var %wordwrap.out = %wordwrap.out $gettok(%wordwrap.in,1,32),%wordwrap.in = $remtok(%wordwrap.in,$gettok(%wordwrap.in,1,32),32)
  if ($gettok(%wordwrap.in,1,32)) { goto loop } | :finish
  if ($1 != %wordwrap.lines.count) { inc %wordwrap.lines.count | unset %wordwrap.out %wordwrap.out.test | goto loop } | return %wordwrap.out
}
alias default.wa { return $align($1,�) $align($2,$3-)  }


alias default.whoisinit { 
  %:echo $default.wa(5,65,$+(�,$str(�,5),$default.po(%::c1,%::c2,%::nick),,%::c1,$str(�,7),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�))
  %:echo $default.wa(5,65,$+(��,,%::c3,Name:������,,%::c4,%::realname))
  %:echo $default.wa(5,65,$+(��,,%::c3,Address:���,,%::c4,%::address))

}
alias default.whoischan { 
  var %a = 1 
  while $wordwrap(%a,50,%::chan) { %:echo $default.wa(5,65,�,$iif(%a == 1,$+(,%::c3,Chans:����,),$+($str(�,9),�)),$+(,%::c4),$wordwrap(%a,50,$+(%::chan))) | inc %a }

}
alias default.whoisserv {  %:echo $default.wa(5,65,$+(��,,%::c3,Server:����,,%::c4,%::wserver)) }
alias default.whoisaway { %:echo $default.wa(5,65,$+(��,,%::c3,Away:������,,%::c4,%::text) ) }
alias default.whoisidle { 
  %:echo $default.wa(5,65,$+(��,,%::c3,Idle:������,$+(,%::c4), $duration(%::idletime) ))
  %:echo $default.wa(5,65,$+(��,,%::c3,SignOn:����,,%::c4,%::signontime))
}
alias default.whoisend {
  %:echo $default.wa(5,65,� $+ $+($str(�,5),$default.po(%::c1,%::c2,whois: $+(,%::c3,end)),,%::c1,$str(�,7),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�))
  linesep
  haltdef
}
alias default.whowasinit { 
  %:echo $default.wa(5,60,� $+ $+($str(�,5),$default.po(%::c1,%::c2,$1),,%::c1,$str(�,7),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�)) 
  %:echo $default.wa(5,60,$+(��,,%::c3,Name:������,,%::c4,$3))
  %:echo $default.wa(5,60,$+(��,,%::c3,Address:���,,%::c4,$2))
  %:echo $default.wa(5,60,,� $+ $+($str(�,10),�,,%::c1,$str(�,11),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�) )
}
alias default.who1 {
  if (!%:::who) {
    %:echo $default.wa(5,75,� $+ $+($str(�,5),$default.po(%::c1,%::c2,who),,%::c1,$str(�,11),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�))  
  }
  inc %:::who
  %:echo $default.wa(5,75,$+(��,,%::c3,%::nick,$chr(32),$default.po(%::c1,%::c2,%::address)))
}
alias default.who2 { %:echo $default.wa(5,65,� $+ $+($str(�,5),$default.po(%::c1,%::c2,who: $+(,%::c3,%::value)),,%::c1,$str(�,11),,%::c2,$str(�,11),�,,%::c2,����,�,,%::c2,��,�,,%::c2,��,�,,%::c2,�))  | unset %:::who | %:echo - }
