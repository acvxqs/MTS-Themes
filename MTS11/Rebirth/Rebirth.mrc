alias rebirth.whois {
  %:echo 5��9[WHOIS9]5��������������������������������������������������
  %:echo 5����������������� $+ %::nick $+ 9( $+ %::address $+ 9)
  %:echo 5����������������������������������������������������������
  %:echo 5���9real�name:��5�  %::realname
  %:echo 5������9server:��5�  %::server
  %:echo 5����9channels:��5�  $replace(%::chan,@#,9@#,+#,9+#)
  if (%::away) %:echo 5��������9away:��5�  %::away
  if (%::idletime) {
    %:echo 5��������9idle:��5�  %::idletime
    %:echo 5���9signed�on:��5�  %::signontime
  }
  %:echo 5��������������
}

alias rebirth.load {
  %:echo 5���������������������������������������������������
  %:echo 5� Rebirth Theme Loaded, Enjoy!
  %:echo 5� Created by Nick of AmeriChat #ircscriptaz
  %:echo 5���������������������������������������������������
}
