alias wh.hoisl {
 %:echo  5浜様様様様様融様�1様様様様様様�12様様様様様�
 %:echo  � 11Whois:          13 $1 
 %:echo  5藩様様様様様融様�1様様様様様様�12様様様様様�
 %:echo  5浜様様様様様夕様�1様様様様様様�12様様様様様射様6様様様様様様様様様様
 %:echo  � 11Info:    ��    13 $2 $3 1 
} 

alias idleh.tl {
%:echo  � 11Idle:    ��    13 Been idle for $1 $+ s
%:echo  5藩様様様様様�1様様様様様様様様�12様様様様様様�6様様様様様様様様様様�
}

alias topic.s {
  %:echo 1Topic 1�10�6 $1- 10�1�
  %:echo 陳陳�1陳陳陳陳陳陳陳陳12陳陳陳陳陳陳陳陳陳陳6陳陳陳陳陳陳陳陳�
}

alias topic.t {
  %:echo 陳陳陳陳陳�1陳陳陳陳陳陳陳陳12陳陳陳陳陳陳陳陳陳陳6陳陳陳陳陳陳陳陳�
  %:echo 14�2Topic14�  1(12 $+ $1 $+ 1) sets new topic:10 $+ $2-
  %:echo 陳陳陳陳陳�1陳陳陳陳陳陳陳陳12陳陳陳陳陳陳陳陳陳陳6陳陳陳陳陳陳陳陳�
}

alias chan.s {
  %:echo 14� 2Channel14 � 1 Joining10 $1
  %:echo 5青陳�1陳陳陳陳陳陳陳陳12陳陳陳陳� 陳陳陳 陳陳�6韶� 韶韶 韶� 韶
}

alias w.tis {
  %:echo 5敖陳1陳陳陳陳陳陳陳陳陳陳陳陳陳陳12陳陳陳 陳� 陳�6韶� 韶� 韶 韶 � �
  %:echo 12� Whois:14 $1 ::
  %:echo 5団陳1陳陳陳陳陳陳陳陳陳陳12陳陳陳 陳� 陳�6韶� 韶� 韶 韶 � �
  %:echo 12� Info:14 $2 $3-
}

alias idle.dt {
  %:echo 12� Idle: 14Been idle for $1 $+ s 1�14� 1End of Whois 14�1�
  %:echo 5青陳1陳陳陳陳陳陳陳陳陳陳陳陳陳陳12陳陳陳陳� 陳�6韶� 韶� 韶韶 � �
}


alias w.hois {
  %:echo 5��������1���������12������-�-���6���
  %:echo 12Whois:14 $1 ::
  %:echo 12Info:14 $2 $3-
} 

alias idle.t {
  %:echo 12Idle: 14Been idle for $1 $+ s 1�14� 1End of Whois 14�1�
  %:echo 5���������1���������12������-�-���6���
}

alias w.thois {
  %:echo 14��������14��������12������-�-���0���
  %:echo 12Whois:12 $1 ::
  %:echo 12Info:12 $2 $3-
} 

alias idle.ti {
  %:echo 14Idle: 14Been idle for $1 $+ s 14�14� 14End of Whois 14�14�
  %:echo 14��������14��������12������-�-���0���
}


alias w.ahois {
  %:echo 1���������1���������14������-�-���0���
  %:echo 1Whois:1 $1 ::
  %:echo 1Info:1 $2 $3-
} 

alias idle.a {
  %:echo 1Idle: 1Been idle for $1 $ s 1�14� 1End of Whois 14�1�
  %:echo 1��������1���������14������-�-���0���
} 

alias w.hoist {
  %:echo 5浜様1様様様様様様様様様様12様様様様様様様様様様6様様様様様様様様様様
  %:echo 12� Whois:14 $1 ::
  %:echo 5麺様1様様様様様様様様様様12様様様様様様様様様様6様様様様様様様様様様
  %:echo 12� Info:14 $2 $3-
} 


alias idle.tt {
  %:echo 12� Idle: 14Been idle for $1 $+ s 1�14� 1End of Whois 14�1�
  %:echo 5藩様1様様様様様様様様様様12様様様様様様様様様様6様様様様様様様様様様
}

alias text {
  %:echo 14[ 12 $+ $2 $+ 5 $+ 14]6  $+ $str( ,2) $+ 10�6 $+ $str( ,2)  $2-
}

alias names_ {
  set %txt_p $2- | var %txt_n 1 | var %max_n
  while ( $numtok(%txt_p,32) >= %txt_n ) {
    $iif($len($gettok(%txt_p,%txt_n,32)) > %max_n, set %max_n $ifmatch)
    inc %txt_n
  }
  var %txt_n 1 | var %char_m
  while ( $numtok(%txt_p,32) >= %txt_n ) {
    set %char_m  %char_m $gettok(%txt_p,%txt_n,32) $+ $iif( %max_n > $len($gettok(%txt_p,%txt_n,32)), $str($chr(2) $+ $chr(32) $+ $chr(2),$calc(%max_n - $len($gettok(%txt_p,%txt_n,32) ) ) ) ) $iif($len($calc(%txt_n / 10)) != 1, $crlf)
    inc %txt_n 
  }
  echo -a %char_m 
}



alias timestamp {
  return 10 $1 6 |1 �10� 
}


alias w.hoisl {
 %:echo 5����[ Whois: $1 ]�������1���������12������-�-���6���������
; %:echo 
 %:echo      11Info:    13 $2 $3 
} 

alias idle.tl {
%:echo      11Idle:       13Been idle for $1 $+ s
; %:echo 
%:echo 5��������1���������12������ [end of /whois] -�-���6���������
}

