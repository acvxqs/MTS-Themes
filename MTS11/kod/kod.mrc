alias KOD.WHOISSTART {
  %:echo %::pre Starting whois...
  %:echo 14��������������ķ
  %:echo 14�Nick15����������14�15�  $+ %::nick
  %:echo 14�Address15�������14�15�  $+ %::address
  %:echo 14�Realname15������14�15�  $+ %::realname
}

alias KOD.WHOISEND {
  %:echo 14��������������Ľ
  %:echo %::pre End of whois.
}

alias dns.lookup {
  %:echo 14������������������������ķ
  %:echo 14�DNS Request: Looking up:14�
  %:echo 14������������������������Ľ
  %:echo 14� %::address
}

alias dns.error {
  %:echo 14������������������������ķ
  %:echo 14� Could not resolv..2.....14�
  %:echo 14������������������������Ľ
}

alias dns.resolv {
  %:echo 14�
  %:echo 14� Resolved %::naddress ( $+ %::iaddress $+ ) to %::raddress
  %:echo 14�������������������������o
}

$iif($1,$style(2) � $$1 �) { }
-
information
.whois { whois $$1 }
.-
.DNS ( $+ $$1 $+ ) { dns $$1 }