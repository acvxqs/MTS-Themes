alias w.init {
  echo -at ������������������������������������Ŀ
  echo -at �04whois �������������������������������       
  echo -at � 00user �12 $1 (11 $+ $2 $+ 12) 
  echo -at � 00name �12 $3-
}

alias w.chan {
  echo -at � 00chan �12 $1-
}

alias w.server {
  echo -at � 00serv �12 $1
}

alias w.idle {
  echo -at � 00idle �12 $duration($1)
}

alias w.away {
  echo -at � 00away �12 $1-
}

alias w.end {
  echo -at ��������
  echo -at �(00End of whois)
}
