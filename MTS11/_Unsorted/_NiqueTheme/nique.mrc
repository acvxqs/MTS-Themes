alias nique.winfo {
  %:echo 2 ������Ŀ 0(2 $+ %::nick $+ 0)  
  %:echo 2�������2/whois2��2�� 3� 3�� 2��3� 2�2�3 �
  %:echo 2 $+ �� 0Info 2�0 %::nick ( $+ %::address $+ )
  %:echo 2 $+ �� 0Name 2�0 %::realname
}
alias nique.help { %:echo 2 $+ �� 0Help2 �0 %::nick is available for help.  }
alias nique.wtime { %:echo 2 $+ �� 0Idle2 �0 $duration(%::idletime) | %:echo 2 $+ �� 0s/on2 �0 %::signontime }
alias nique.wadmin { %:echo 2 $+ � 0Admn 2��00 $1 0is a network admin. }
alias nique.wreg { %:echo 2�� 0regd 2�0 %::nick 2is a registered nick. }
alias nique.wchan { %:echo 2 $+ �� 0Chan 2�0 %::chan }
alias nique.wserver { %:echo 2 $+ �� 0Serv 2�0 %::wserver 2(2 $+ %::serverinfo $+ 2) }
alias nique.waway { %:echo 2 $+ �� 0Away 2�0 %::text }
alias nique.wtrue { %:echo 2 $+ �� 0True 2�0 %::nick 0 $+ %::text }
alias nique.whost { %:echo 2 $+ �� 0Host 2�0 %::text }
alias nique.wop { %:echo 2 $+ �� 0Oper 2�2 %::nick 0is an irc operator. }
alias nique.wend { %:echo 2 $+ ��2��������� %::pre $+ %::pre %::pre | %:echo 2 $+ $chr(32) $+ �����2/whois2��2�� 3� 3�� 2��3� 2�2�3 �  }
alias nique.namestart {
  %:echo 2�������3/names %::chan $+ ��2�� 3� 3�� 2��3� 2�2�3 �   
  %:echo 2 %::chan 3:3 %::text
}
alias nique.namesend { %:echo 2���2�3����������������2�����������������2���������������3���������� ���� ��� 3 � }
alias nique.topic { %:echo 2�������2Channel Info 2���� %::pre | %:echo %::pre Topic 3:0 %::text }
alias nique.modes { %:echo %::pre Modes 3:0 %::modes | %:echo 2������� %::pre }
alias nique.other { %:echo 2 $+ � 2Notes 3:2 %::text }
alias nique.load { 
  %:echo 3 $+ ����� 2(3Info2)  
  %:echo 3�������2Veronique��2�� 3� 3�� 2��3� 2�2�3 �
  %:echo 3 $+ �� 3Veronique has been successfully loaded.
  %:echo 3 $+ �� 3Please e-mail me or add me to msn for 
  %:echo 3 $+ �� 3more information, questions, comments
  %:echo 3 $+ �� 3or suggections. aim : wcrackwheadw or 
  %:echo 3 $+ �� 3MSN : marijaneblessedme024@hotmail.com.
  %:echo 3 $+ ��2���������2��2�� 3� 3�� 2��3� 2�2�3 � %::pre $+ %::pre %::pre 
  %:echo 3 $+ $chr(32) $+ �����2����2��2�� 3� 3�� 2��3� 2�2�3 � 
  beep
}
alias nique.lusers { 
  %:echo 2�������3/lusers2��2�� 0� 3�� 2��3� 2�2�3 �
  %:echo 2 $+ � 0Users 3:0 %::users
  %:echo 2 $+ � 0Invis 3:0 %::value
  %:echo 2 $+ � 0Serve 3:0 %::server

}
alias nique.lusers2 { %:echo 2� 0Opers 3:0 %::value }
alias nique.lusers5 { %:echo 2� 0Chann 3:00 %::value }
alias nique.lusers3 {
  %:echo 2� 0Globa 3:0 %::users
  %:echo 2� 0 $chr(32) $+ Max. 3:0 %::value
  %:echo 2�������3/lusers2 $+ ��2�� 3� 3�� 2��3� 2�2�3 �
}
alias nique.lusers4 {
  %:echo 2� 0 $chr(32) Loca 3:0 %::users
  %:echo 2� 0 $chr(32) $+ Max. 3:0 %::value
}
