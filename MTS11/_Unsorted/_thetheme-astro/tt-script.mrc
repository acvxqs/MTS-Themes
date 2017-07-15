
alias thetheme.mode.mode {
  %:echo 03 $+ %::nick $+ 01 changes modes to: 03 $+ %::modes
}
alias thetheme.mode.me {
  %:echo 03 $+ %::me $+ 01 changes modes to: 03 $+ %::modes
}

alias thetheme.textquery {
  %:echo 03 $+ %::lt $+ 09 $+ %::cmode $+ 01 $+ %::nick $+ :01 %::text
}
alias thetheme.textqueryself {
  %:echo 03 $+ %::lt $+ 09 $+ %::cmode $+ 01 $+ %::me $+ --[ 01 %::text 
}

alias thetheme.textchanself {
  %:echo 03 %::lt 09 %::cmode 01 %::me >01 %::text
}
alias thetheme.whois { 
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� start of whois: %::nick 09< $+ %::address $+ 09> ��                 
  %:echo 03���������03����09�����������������09������������������������������Ŀ����
  %:echo 03� 01name09: %::realname                                    
  %:echo 03� 01the nick %::nick $+ :  $+ %::isregd $+  registered                
  if (%::chan) { 
  %:echo 03� 01channels09: $replace(%::chan,@#,4@#,+#,4+#)                
  }
  %:echo 03� 01 $+ %::nick $+ 09: %::isoper $+ 09 an ircop    
  %:echo 03� 01server09: %::wserver                                        
  if (%::away) {
  %:echo 03� 01away09: %::away                                            
  }
  if (%::idletime) {
  %:echo 03� 01idle09: %::idletime                                       
  %:echo 03� 01signed on09: %::signontime                                   
  }
  %:echo 03���������03����09�����������������09������������������������������������           
  %:echo 03� �� end of whois: %::nick 09< $+ %::address $+ 09> ��                              
  %:echo 03�������������������������������������������������������09����������������ͼ
}
alias thetheme.topic.set {
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� THE TOPIC OF %::chan IS NOW ��              
  %:echo 03���������������������09�����������������������������������������������������
  %:echo 03
  %:echo 03 01 %::text                           
  %:echo 03
  %:echo 03���������������������09��������������������������������������������������ķ����           
  %:echo 03� �� THE TOPIC OF %::chan IS NOW SET ��                             
  %:echo 03�������������������������������������������������������09����������������ͼ
}
alias thetheme.topic.current {
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� Settings of %::chan is ��                
  %:echo 03���������������������09�����������������������������������������������������
  %:echo 03
  %:echo 03 01 %::text                           
  %:echo 03
}
alias thetheme.raw329 {
  %:echo 01channel created03: 01 $asctime( %::text ,dddd mmm dd yyyy HH:nn:ss) 
}
alias thetheme.chan.modes {
  %:echo 03 01 Channel Modes: %::modes
  %:echo 03���������������������09��������������������������������������������������ķ����           
  %:echo 03� �� END OF SETTINGS of %::chan ��                             
  %:echo 03�������������������������������������������������������09����������������ͼ
}
alias thetheme.topicset {
  %:echo 03 01 Topic Set on03 $+ %::value $+ 01 by03 %::nick  
}
alias thetheme.nick.not {
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� START OF ERROR ������������������������������������������������������                
  %:echo 03���������������������09�����������������������������������������������������
  %:echo 03
  %:echo 03 01 The Nick:  %::nick  01does not exist                           
  %:echo 03
  %:echo 03���������������������09��������������������������������������������������ķ����           
  %:echo 03� �� END OF ERROR ���������������������������������������������������������                                
  %:echo 03�������������������������������������������������������09����������������ͼ
}
alias thetheme.nick.inuse {
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� START OF ERROR �������������������������������������������������������                
  %:echo 03���������������������09�����������������������������������������������������
  %:echo 03
  %:echo 03 01 The nick: 03 %::nick 01 is already in use                         
  %:echo 03
  %:echo 03���������������������09��������������������������������������������������ķ����           
  %:echo 03� �� END OF ERROR ���������������������������������������������������������                             
  %:echo 03�������������������������������������������������������09����������������ͼ
}
alias thetheme.nick.invalid {
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� START OF ERROR �������������������������������������������������������                
  %:echo 03���������������������09�����������������������������������������������������
  %:echo 03
  %:echo 03 01 The Nick: 03 %::nick 01 is not valid!                           
  %:echo 03
  %:echo 03���������������������09��������������������������������������������������ķ����           
  %:echo 03� �� END OF ERROR ���������������������������������������������������������                             
  %:echo 03�������������������������������������������������������09����������������ͼ
}

alias thetheme.chan.not {
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� START OF ERROR �� 00 -----------------------------------------------�                   
  %:echo 03���������������������09�����������������������������������������������������
  %:echo 03
  %:echo 03 01 The Channel:  %::chan  01doesn't exist                           
  %:echo 03
  %:echo 03���������������������09��������������������������������������������������ķ����           
  %:echo 03� �� END OF ERROR �� 00 -------------------------------------------------�                             
  %:echo 03�������������������������������������������������������09����������������ͼ
}
alias thetheme.chan.mod {
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� START OF ERROR �� 00 -----------------------------------------------�                
  %:echo 03���������������������09�����������������������������������������������������
  %:echo 03
  %:echo 03 01 Could not send text to  %::chan  01 because it is +m (moderated)                           
  %:echo 03
  %:echo 03���������������������09��������������������������������������������������ķ����           
  %:echo 03� �� END OF ERROR �� 00 -------------------------------------------------�                             
  %:echo 03�������������������������������������������������������09����������������ͼ
}
alias thetheme.chan.full {
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� START OF ERROR �� 00 -----------------------------------------------�                
  %:echo 03���������������������09�����������������������������������������������������
  %:echo 03
  %:echo 03 01 The Channel: 03 %::chan 01 is full. Please try again later                          
  %:echo 03
  %:echo 03���������������������09��������������������������������������������������ķ����           
  %:echo 03� �� END OF ERROR �� 00 -------------------------------------------------�                             
  %:echo 03�������������������������������������������������������09����������������ͼ
}
alias thetheme.chan.inv {
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� START OF ERROR �� 00 -----------------------------------------------�                
  %:echo 03���������������������09�����������������������������������������������������
  %:echo 03
  %:echo 03 01 You could not access the channel: 03 %::chan 01 because it is invite only!                         
  %:echo 03
  %:echo 03���������������������09��������������������������������������������������ķ����           
  %:echo 03� �� END OF ERROR �� 00 -------------------------------------------------�                             
  %:echo 03�������������������������������������������������������09����������������ͼ
}
alias thetheme.error {
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� START OF ERROR �� 00 -----------------------------------------------�                
  %:echo 03���������������������09�����������������������������������������������������
  %:echo 03
  if ( $+ %::text $+ ) {
  %:echo 03 01 %::text
  }
  else {
  %:echo 03 01 An unknown error has occured
  }                 
  %:echo 03
  %:echo 03���������������������09��������������������������������������������������ķ����           
  %:echo 03� �� END OF ERROR �� 00 -------------------------------------------------�                             
  %:echo 03�������������������������������������������������������09����������������ͼ
}
alias thetheme.chan.banned {
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� START OF ERROR �� 00 -----------------------------------------------�                
  %:echo 03���������������������09�����������������������������������������������������
  %:echo 03
  %:echo 03 01 You could not access the channel: 03 %::chan 01 because you are banned from it.                   
  %:echo 03
  %:echo 03���������������������09��������������������������������������������������ķ����           
  %:echo 03� �� END OF ERROR �� 00 -------------------------------------------------�                             
  %:echo 03�������������������������������������������������������09����������������ͼ
}
alias thetheme.chan.key {
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� START OF ERROR �� 00 -----------------------------------------------�                
  %:echo 03���������������������09�����������������������������������������������������
  %:echo 03
  %:echo 03 01 You could not access the channel: 03 %::chan 01 because you need a key.
  %:echo 03 To do this type in 01 /join %::chan KEY 
  %:echo 03
  %:echo 03���������������������09��������������������������������������������������ķ����           
  %:echo 03� �� END OF ERROR �� 00 -------------------------------------------------�                             
  %:echo 03�������������������������������������������������������09����������������ͼ
}
alias thetheme.chan.op {
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� START OF ERROR �� 00 -----------------------------------------------�                
  %:echo 03���������������������09�����������������������������������������������������
  %:echo 03
  %:echo 03 01 You could not access the channel: 03 %::chan 01 because you are not an op (@)              
  %:echo 03
  %:echo 03���������������������09��������������������������������������������������ķ����           
  %:echo 03� �� END OF ERROR �� 00 -------------------------------------------------�                             
  %:echo 03�������������������������������������������������������09����������������ͼ
}

alias thetheme.cmd.invalid {
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� START OF ERROR �� 00 -----------------------------------------------�                
  %:echo 03���������������������09�����������������������������������������������������
  %:echo 03
  %:echo 03 01 Here is the error of your text: 03 %::value 01            
  %:echo 03                                         %::text
  %:echo 03���������������������09��������������������������������������������������ķ����           
  %:echo 03� �� END OF ERROR �� 00 -------------------------------------------------�                             
  %:echo 03�������������������������������������������������������09����������������ͼ
}
alias thetheme.dns.error {
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� START OF ERROR �� 00 -----------------------------------------------�                
  %:echo 03���������������������09�����������������������������������������������������
  %:echo 03
  %:echo 03 01 Can't look up 03 %::address         
  %:echo 03
  %:echo 03���������������������09��������������������������������������������������ķ����           
  %:echo 03� �� END OF ERROR �� 00 -------------------------------------------------�                             
  %:echo 03�������������������������������������������������������09����������������ͼ
}

alias thetheme.notice.chan {
  if ( $+ %::nick == %::target $+ ) {
    %:echo 01  $+ %::me $+  notifies  $+ %::target $+ : 03 %::text 
  }
  else { 
    %:echo 01  $+ %::nick $+  notifies  $+ %::target $+ : 03 %::text 
  }
}
alias thetheme.notice.notice {
  %:echo 01 %::me notifies %::target -> 03 %::text
}
alias thetheme.notice.self {
  %:echo 03 notice self : -> 01 $+ %::target $+ 03 -> %::text
}
alias thetheme.notice.chanself {
  %:echo 03 notice chanself: -> 01 $+ %::target $+ 03 -> %::text
}

alias thetheme.msg.quit {
  %:echo 03 quited: 01 %::nick ( %::address )
  if ( $+ %::parentext == %::null $+ ) { 
  %:echo 03 reason: 01 No Reason 
  }
  else { 
  %:echo 03 reason: 01 %::parentext 
  }
}
alias thetheme.msg.invite {
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� INVATATION �� ������������������������������������������������������                
  %:echo 03���������������������09�����������������������������������������������������
  %:echo 03
  %:echo 03 01 $+ %::nick $+ 03 has invited you to: 01 $+ %::chan            
  %:echo 03
  %:echo 03���������������������09��������������������������������������������������ķ����           
  %:echo 03� �� END OF INVATATION ��������������������������������������������������                             
  %:echo 03�������������������������������������������������������09����������������ͼ
}
alias thetheme.msg.youinvite {
  %:echo 03 invitation: 01 You invited %::nick < $+ %::address $+ > to %::chan 
  }
alias thetheme.msg.join {
  %:echo 03 joined: 01 %::nick ( %::address ) }
alias thetheme.msg.kick {
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� KICKED �� 00 ---------------------------------------------------03 �                
  %:echo 03���������������������09�����������������������������������������������������
  %:echo 03 01 You were kicked from %::chan by %::nick
  %:echo 03 01 %::parentext ������ %::address
  %:echo 03���������������������09��������������������������������������������������ķ����           
  %:echo 03� �� END OF KICKED �� 00 --------------------------------------------03 �                             
  %:echo 03�������������������������������������������������������09����������������ͼ
}

alias thetheme.msg.dns {
  %:echo 03 domain name server: 01 loocking up ( %::address ) �
}
alias thetheme.msg.kicked {
  %:echo 03 kicked notice: 01 %::knick was kicked from %chan by %::nick < $+ %::address $+ > �
  if ( $+ %::parentext == %::null $+ ) { 
  %:echo 03 reason: 01 No Reason 
  }
  else { 
  %:echo 03 reason: 01 %::parentext
  }
}
alias thetheme.msg.dns.re {
  %:echo 03 domain name server: 01 resolved ( %::address / %::raddress ) �
}
alias thetheme.notice.server {
  %:echo 03 notice server (snotice): 01 %::nick ��[ %::text ]�� �
}
alias thetheme.wallop {
  %:echo 03 nwallop: 01  %::text �
}
alias thetheme.unnotify {
  %:echo 03 unnotify notice: 03 %::nick || %::text  �
}
alias thetheme.notify {
  %:echo 03 notify notice: 03 %::nick || %::text  � 
}
alias thetheme.ctcp.reply {
  %:echo 03 ctcp reply: 01- %::nick -03 %::ctcp || %::text �
}
alias thetheme.ctcp.reply.self {
  %:echo 03 ctcp reply: 01- %::nick -03 %::ctcp  �
}
alias thetheme.ctcp.chan.self {
  %:echo 03 ctcp request: 01- %::chan -03 %::ctcp || %::text �
}
alias thetheme.ctcp.self {
  %:echo 03 ctcp request: 01- %::nick -03 %::ctcp || %::text �
}
alias thetheme.ctcp.chan {
  %:echo 03 ctcp request: 01- %::chan -03 %::ctcp from %::nick �
}
alias thetheme.ctcp.ctcp {
  %:echo 03 ctcp -> 01- %::ctcp -03 %::nick �
}
alias thetheme.msgse {
  %:echo 03 msg: 01- %::target -03 %::text � from: %::me
}
alias thetheme.msg {
  %:echo 03 msg: 01- %::target -03 %::text � from: %::nick
}

alias thetheme.msg.rejoin {
  %:echo 03 rejoining: 01- %::chan -03 �
}
alias thetheme.msg.chgnick {
  %:echo 03 changing nick: 01- %::me -03 to01 - %::newnick  �
}
alias thetheme.msg.nickchg {
  %:echo 03 changing nick: 01- %::nick -03 to01 - %::newnick  �
}

alias thetheme.msg.joinme {
  %:echo 03 you've joined: 01 %::chan 
}
alias thetheme.msg.part {
  %:echo 03 parted: 01 %::nick < $+ %::address $+ > �
  if ( $+ %::parentext == %::null $+ ) { 
  %:echo 03 reason: 01 No Reason 
  }
  else { 
  %:echo 03 reason: 01 %::parentext
  }
}  

alias thetheme.serv.startup {
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� START OF SEVER MESSAGES �� �������������������������������������������                
  %:echo 03���������������������09�����������������������������������������������������
  %:echo 03������������������������������������������������������������������������������������� � � ��� � � �����
  %:echo 03�01 you're on:  %::server 01 running  %::value               
}
alias thetheme.serv.created {
  %:echo 03� %::server 01 created on03 %::value
}
alias thetheme.serv.proto {
  %:echo 03� 01 Protocols supported %::server 03 
  %:echo 03� %::text
}
alias thetheme.serv.modes {
  %:echo 03� 01 Current modes on %::server for03 %::nick 01 %::modes
}
alias thetheme.serv.con {
  %:echo 03� 01 Total Connections 03 %::nick 
}
alias thetheme.serv.modes {
  %:echo 03� 01 Current modes on %::server for03 %::nick 01 %::modes
}
alias thetheme.serv.users {
  %:echo 03� 01 Users on %::server 03 � � ��� � �  %::users
  %:echo 03� 01 00 --------------------------- 03 %:: text 01 are invisible 
  %:echo 03� 01 Servers 03 � � ��� � �� � ��� � �  %::value
}
alias thetheme.serv.ops {
  %:echo 03� 01 Ops on %::server :03 %::value
}
alias thetheme.serv.unc {
  %:echo 03� 01 Unknown Connections to %::server 03 � � ��� � �  %::value
}
alias thetheme.serv.chanform {
  %:echo 03� 01 Channels on %::server 03 � � ��� � �  %::value
}
alias thetheme.serv.local {
  %:echo 03� 01 Local Clients on %::server 03 � � ��� � �  %::users
}
alias thetheme.serv.localusers {
  %:echo 03� 01 Local Users on %::server 03 � � ��� � �  %::users 01 max 03 %::value
}
alias thetheme.serv.global {
  %:echo 03� 01 Global Users on %::server 03 � � ��� � �   %::users 01 max 03 %::value
}
alias thetheme.serv.userhost {
  %:echo 03� 01 Global Uses on %::server 03 � � ��� � �  %::nick ( %::address )
}
alias thetheme.serv.userhost {
  %:echo 03� 01 Global Uses on %::server 03 � � ��� � �  %::nick ( %::address )
}
alias thetheme.serv.userhost {
  %:echo 03� 01 Global Uses on %::server 03 � � ��� � �  %::nick ( %::address )
  %:echo 03������������������������������������������������������������������������������������ � � ��� � � ����        
  %:echo 03�������������������������������������������������������09����������������ͻ
  %:echo 03� �� END   OF SEVER MESSAGES �� �������������������������������������������                
  %:echo 03���������������������09�����������������������������������������������������
}
alias thetheme.misc.host {
  %:echo 03 %::nick %::nick
}
alias thetheme.loaded {
  %:echo 03��������������������������������������������������������09����������������ͻ
  %:echo 03��������������������������Ŀ��� THE THEME ������������������������������Ķ
  %:echo 03��ASTRO�������������������������������������������������������������������
  %:echo 03����72����� ������v1.0.2���������������Ŀ�����������l.o.a.d.e.d�����������
  %:echo 03�������������������������������������������������Ŀ�������������������������������ͻ
  %:echo 03�����������������������������������������By: Zach ��������������������������������Ķ
  %:echo 03����������������������������������������������������������������������������������Ķ
  %:echo 03������������������������zach@zpws.net������������������tt.zpws.net����������������ͼ
  %:echo 03���������������������09������������������������������������������������������
  %:echo 03 Some Cosmetic errors need to be fixed. but i'm working on other things. just wanted to get this one to the public
}
alias thetheme.unloaded {
    %:echo 03 ����������������������������� THEME NOTICE �����������������������Ŀ
    %:echo 03 ��������������������������������������������������������������������
    %:echo 03 ����The current theme: The Theme������������������������������������
    %:echo 03 ����Has been unloaded.����������������������������������������������
    %:echo 03 ����I don't know why you did this�����������������������������������
    %:echo 03 ��� But enjoy your time on mirc�������������������������������������
    %:echo 03 ��������������������������������������������������������������������
    %:echo 03 ��������������������������������������������������������������������
    %:echo 03 ��������������������������������������������������������������������
    %:echo 03 �����������������������������������THE END��������� ����������������
    %:echo 03 ��������������������������������������������������������������������
    %:echo 03 ��������������������������������������������������������������������
    %:echo 03 ��������������������������������������������������������������������
    %:echo 03 ����������Susccessfully unloaded: The Theme - Astro 72��������������
}

