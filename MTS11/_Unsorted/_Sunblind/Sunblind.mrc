alias sun.blind.whois1 { 
  %:echo  $+ %::c3 $+ �����������������ͼ $+ 
  %:echo %::pre Whois����  $+ %::c3 $+ � $+  $+ %::c1 %::nick
  %:echo %::pre Name�����  $+ %::c3 $+ � $+  $+ %::c1 %::realname ( $+ %::address $+ )
}
alias sun.blind.whois7 {
  %:echo %::pre Whois end  $+ %::c3 $+ � $+  $+ %::c1 %::nick
  %:echo  $+ %::c3 $+ �����������������ͻ $+ 
}
alias sun.blind.whois2 {
  %:echo %::pre Idle�����  $+ %::c3 $+ � $+  $+ %::c1 $duration(%::idletime)
  %:echo %::pre Signon���  $+ %::c3 $+ � $+  $+ %::c1 %::signontime
}
alias sun.blind.whois3 {
  %:echo %::pre Server���  $+ %::c3 $+ � $+  $+ %::c1 %::wserver ( $+ %::serverinfo $+ )
}
alias sun.blind.whois8 {
  %:echo %::pre registered $+ %::c3 $+ � $+  $+ %::c1 Yes
}
alias sun.blind.whois4 {
  %:echo %::pre Channels�  $+ %::c3 $+ � $+  $+ %::c1 %::chan
}
alias sun.blind.whois5 {
  %:echo %::pre Away�����  $+ %::c3 $+ � $+  $+ %::c1 %::text
}
alias sun.blind.whois6 {
  %:echo %::pre IRCOp����  $+ %::c3 $+ � $+  $+ %::c1 %::operline
}
alias sun.blind.onjoin1 {
  %:echo %::pre Created on $asctime(%::text,ddd) $+ , $asctime(%::text,mm/dd) $+ $asctime(%::text,/yyyy) @ $asctime(%::text,h:nntt)
  %:echo  $+ %::c3 $+ �����������������ͻ $+ 
}
alias sun.blind.onjoin2 {
  %:echo %::pre Modes %::modes
}
alias sun.blind.onjoin3 {
  %:echo  $+ %::c3 $+ �����������������ͼ $+ 
  %:echo %::pre Topic %::text
}
alias sun.blind.onjoin4 {
  %:echo %::pre Topic set by %::nick
}
alias sun.blind {
  %:echo  $+ %::c3 $+ �����������������ͼ $+ 
  %:echo %::pre $1-
  %:echo  $+ %::c3 $+ �����������������ͻ $+ 
}

alias align { return $+($str($2-,$calc($1 - $len($2-)))) }
