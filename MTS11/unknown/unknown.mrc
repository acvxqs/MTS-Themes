alias unk.whois { 
  %:echo $+(,%::c1,�,$str(�,9),�,$str(�,5 - $calc($len(%::nick))),$chr(40),,%::c3,%::nick,,%::c1,$chr(41),$str(�,15 - $calc($len(%::nick)))) 
  %:echo $+(,%::c1,�) $+(,%::c2,name����,,%::c1,�) $+(,%::c3,%::realname) 
  %:echo $+(,%::c1,�) $+(,%::c2,address�,,%::c1,�) $+(,%::c3,%::address)
}
alias unk.chan %:echo $+(,%::c1,�) $+(,%::c2,chans���,,%::c1,�) $+(,%::c3,%::chan)
alias unk.serv %:echo $+(,%::c1,�) $+(,%::c2,server��,,%::c1,�) $+(,%::c3,%::wserver)
alias unk.away %:echo $+(,%::c1,�) $+(,%::c2,away����,,%::c1,�) $+(,%::c3,%::text)
alias unk.idle { 
  %:echo $+(,%::c1,�) $+(,%::c2,idle����,,%::c1,�) $+(,%::c3,$duration(%::idletime)) 
  %:echo $+(,%::c1,�) $+(,%::c2,sign on�,,%::c1,�) $+(,%::c3,%::signontime)
}
alias unk.end %:echo $+(,%::c1,�,$str(�,9),�,$str(�,$len(%::nick)),$str(�,$len(%::nick)),$str(�,17 - $calc($len(%::nick))))
alias unk.load {
  %:echo $+(,%::c1,�����������������������Ŀ) 
  %:echo $+(,%::c1,�) $+(,%::c2,����unknown�theme�����,,%::c1,�) 
  %:echo $+(,%::c1,�) $+(,%::c2,�������by�sn0w��������,,%::c1,�)
  %:echo $+(,%::c1,�) $+(,%::c2,somaio,,%::c1,@,,%::c2,lover-boy,,%::c1,.,,%::c2,com��,,%::c1,�)
  %:echo $+(,%::c1,�������������������������)
}
