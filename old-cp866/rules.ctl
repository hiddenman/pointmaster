;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;������������������������[Errors correction section]���������������������������
;        �뢥� � �⤥��� 䠩�, �⮡� ����॥ ����� �뫮 �������� :)
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;             ��� ��砫� � ��᪠�, ����� ����� ��������.
;     ��᪨ ��।������� � ������� ᫥����� ᯥ樠���� ᨬ�����:
;----------------------------------------------------------------------------
; ������                      ���ᠭ��
;----------------------------------------------------------------------------
;   #                �� ��� �� 0 �� 9
;   ^                �� ��� �� 1 �� 9
;   ?                �� �㪢� (a..z, A..Z, ���᪨� �����)
;   @                �� ᨬ���
;   $                �� ᨬ���, �஬� " (����窨) (ᤥ���� ��� ����७����
;                    �ᯮ�짮�����, �� ����� � �����, �᫨ ���� :)
;   %                �� ᨬ���, �஬� "(" � ")" (⠪�� ᤥ���� ��� �����-
;                    ����� �ᯮ�짮����� :)
;   |                �� ᨬ��� �� #33 �� #255 , �஬� "," (�ᯮ�짮�����
;                    ࠭�� ��� �஢�ન �������ப�, ᥩ�� �஢�ઠ ᤥ����
;                    ��-��㣮��)
;   \                �� ᨬ��� �� #33 �� #126 , �஬� "," (⮫쪮 �� ����-
;                    ��� ��� ࠧ����ࠧ�� :)
;   /                �� �㪢� �� a �� z ��� �� A �� Z ��� �� ��� �� 0
;                    �� 9 ��� ᨬ��� "," (⮦� ⮫쪮 �� ������� :)
;   *                ����७�� ᫥���饣� ᨬ���� �ந����쭮� �᫮ ࠧ
;   ;                ������騩 ᨬ��� - �� �ࠢ���騩
;   []               �����祭��� � ᪮��� ��᫥����⥫쭮��� ����� ������⢮-
;                    ����
;   ,                ���������� ��ਠ�⮢
;   {}               �������� ��㯯�
;
; �� ��㣮� ᨬ��� �।�⠢��� ᠬ ᥡ�, �.�. �� ���� �ࠢ���騬.
; ������ ";", ���騩 ��। ᯥ樠��� ᨬ�����, �⬥��� ��� ���祭��, �⮡�
; ��⠢��� ᨬ��� ";" � ����, ���� 㤢���� ���.
;                             �ਬ���:
; ####   - ����姭�筮� �᫮ (��� �����)
; *#     - �᫮ � �ந������ ������⢮� ��� (��� �����)
; {-Unpublished-,*#[-]*#[-]*#[-]*#}
;        - ��� -Unpublished- ��� �� ����� ⥫�䮭�, � ���஬ �� ����� ���
;          ���ᮢ (����� ���� 3,2,1 ��� ����� �� ����), ���ਬ��: "1-234-4567"
;          ��� "1234-4567 ��� 12345"
;  *@    - �� ��᫥����⥫쭮��� ���� ᨬ�����
;  ;,    - �⬥��� ᯥ樠�쭮� ���祭�� ����⮩, � ���� � �஢��塞�� ��ப�
;          � �⮬ ���� ������ ���� ������
;  *?    - �ந����쭮� ������⢮ �㪢 �� a �� z ��� �� A �� Z
;  {300,1200,2400}
;        - ���� �� 3-� ���祭��, � ���� � �⮬ ���� � �஢��塞�� ��ப� �����
;          ����� ��� 300 ��� 1200 ��� 2400.
;  � �.�., ���� ������⭮, ���� ���஡��� ����᭨�� :)
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;[UseValidate]
;
UseValidate              Yes
;
; �ᯮ�짮���� �� �p���p�y �������p��� �� ᮮ⢥�⢨� �� ��������� ����
; �⠭��p�y.
; �᫨ Yes, � ᬮ�p� ���� ��ଥ���, �᫨ No, � �஢�ઠ ����� �� ��-
; ����������, ���� �᫨ � ����⫨�� �㤥� ���� ���� Point, � ��, � ��
; ��ப� �㤥� ����祭� � DestPointList, ���⮬� ᮢ���� ���⠢��� Yes (�����,
; ���ਬ��, ���������஢��� ����᫥���騥 ��६����, � ⮣�� �㤥� �஢�������
; ⮫쪮 ������⢨� ����� ᨬ����� � ��ப�, ����稥 ��� ������ 7 �����, �
; ���� Point,<number>,<station>,<location,<sysopname>,<phone>,<speed>, ⠪��
; �㤥� �஢������� ����� �����, �⮡� �� �室�� � 1..32767, �᫨ �� ����᫥-
; ���饥 �� �������஢���, � �㤥� �஢�ઠ ⥫�䮭�, ᪮��� � 䫠���)
; �p���p�� ������� ��� � ���쬠�, ⠪ � �� ��� ListSegment-��, PointList-�� �
; 䠩�-�����. �᫨ ��p��� �� ᮮ⢥���y�� ��������� �⠭��p�y, � ��� �� ��-
; ����砥���, �p� �⮬ ���뫠���� ���쬮 � p���p⮬: �᫨ ����p��� �������p���
; ������� � 䠩�� �� ��᪥ ��� ����, � �� �롮��: ��� �ᮯ�(���) ��� �����
; ��� ����� ��� ����� ������ (ᬮ�� NotifyOnErrors), �᫨ � ���쬥, � ���py
; ���쬠 :)
; �� y���砭�� - Yes
; ����� ��p������� ����� ���� ⮫쪮 ����.
; ���⠪��:
;   UseValidate         <Yes|No>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;[AllowedChars]
;
;AllowedChars 33..126
;AllowedChars $21..$7e
;
; �������(��୥�, ᮪�饭��� ������ ���ᨢ� ᨬ�����),����� ࠧ�襭� � �-
; ��⮢�� ����� ������ப�, � ���� � �������� �⠭樨, ��த�, ����� �ᮯ�,
; 䫠���.
; ��ଠ� ⠪�� - "xx..yy", ��� xx - ������� ��� ��ࢮ�� ࠧ�蠥���� ᨬ��-
; ��, � yy - ��᫥�����, � ����, �᫨ ���ਬ�� ������ 33...126, � ���� �-
; ��襭� �� ᨬ���� �� "!" �� "~". �� ���� 㪠�뢠�� ����� ᨬ����, ��� ���-
; ��� ����� 33 (� ��⭮�� ��⮬�, �� �㤠 �������� �஡��, � � ��� �����-
; ���� ��� ����� ������). �� FTS-0005 (�� �⠭���� ��� �������), ࠧ�襭�
; ᨬ���� �� #33 �� #126. ���� �� ����⫨��� �⠭���� � ���, �����⥫쭮 �-
; �������� ࠧ���� ������ ��� ����� ᨬ�����. �᫨ ���, ����� 㪠����
; ���祭�� � hex, ��� �⮣� ���� ��। ����� �᫮� ���⠢��� ᨬ��� $, ��-
; �ਬ��, ���㪠������ ������ ���������⭠ ᫥���饩 ����� � hex:
; $21..$7e.
; �� 㬮�砭�� - 33..126
; ����� ��६����� ����� ���� ⮫쪮 ����.
; ���⠪��:
;   AllowedChars <number> (��୥�, �� �᫮, � ���ᨢ :)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;[PhoneMask]
;
PhoneMask     {-Unpublished-,7-423-2*#-*#[-]*#}
;PhoneMask     {-Unpublished-,*#[-]*#[-]*#[-]*#}
;PhoneMask      -Unpublished-
;PhoneMask    {-Unpublished-,-unpublished-,*@}
;
; ��᪠(-�) ⥫�䮭�, ����� ࠧ�襭�(-�) ��� ⥫�䮭�� ����⮢.
; ���祭�� ���⢨⥫쭮 � ॣ�����, �.�. unpublished �� ⮦� ᠬ��, �� Unpu-
; blished. � 䨣���� ᪮���� �१ ������� ����� 㪠���� ��� � ����� ����-
; ୠ⨢��� ���祭��, � ���� ��� ��ࢮ� ��� ��஥ (���� � �.�.).
; � ���祭�� ����� �������� ᯥ樠��� ᨬ����, �������� ������ ᬮ��
; ���. �᫨ �� ������, � �஢�ઠ �� �ந��������.
; �� 㬮�砭�� �� ������.
; ����� ��६����� ����� ���� �� 16380 (� ����, �᫨ ⥫�䮭 ����� ���室��
; ��� ��� ���� ����, � �� ��⠥��� �ࠢ����). � �ਭ樯�, ����� ����-
; ᫨�� �� �������� ���祭�� � ����� ��ப� � 䨣���� ᪮���� �१ �������,
; � ������⢮ 16380 ᤥ���� ��� ��, � ���� �� �������� ���祭�� �� ����
; ��������� � ���� ��ப� :)
; ���⠪��:
;   PhoneMask  <mask>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;[SpeedFlags]
;
SpeedFlags    {300,1200,2400,4800,9600}
;
; ��������� ᪮����, ����� ����� ���� ������ � �����. ����� ⠪�� �����
; �ᯮ�짮���� ����, � ⠪ ��� ⠪�� ��६����� ����� ���� ⮫쪮 ����,� ��-
; �� ��易⥫쭮 �� (����) �ᯮ�짮����, 㪠��� �� �������� ���祭�� � 䨣�-
; ��� ᪮����. �᫨ �� ������, � �஢�ઠ ᪮��� �� �ந��������.
; �� 㬮�砭�� �� ������.
; ����� ��६����� ����� ���� ⮫쪮 ����.
; ���⠪��:
;   SpeedFlags <mask|number>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;[SystemFlags]
;
SystemFlags   {CM,MO,LO,MN}
SystemFlags   {V32B,V42B,V32T,V32,V42,V21,V22,V29,V33,V34,VFC,MNP}
SystemFlags   {H96,HST,H14,H16,MAX,PEP,CSP,ZYX,XA,XB,XC,XP,XR,XW,XX}
;
; ���⥬�� 䫠�� (�.�. 䫠��, ����� ���� �� 䫠�� U � �������ப�, ��᫥ ��-
; �ண� ���� 㦥 ���짮��⥫�᪨� 䫠��), ����� ࠧ�襭� � �������ப��.
; �᭮���� �ࠢ��� (�� ����� 㦥, ��祬� ⠪ :) - ���묨 � ���ᨢ� 䫠��� (���-
; ���� ����� �� ��騩 ���ᨢ, � �⤥�쭮 ����� ��ப� � ����஬ 䫠���) ������
; ��� 䫠�� � �������襩 ������, �.�., ���ਬ��, �᫨ � ��� ���� 2 䫠�� V32 �
; V32B, � ���� ���� 㪠���� V32B (�.�. ��� ����� ����� :)
; � ���ᠭ�� 䫠��� ����� �ᯮ�짮���� ��᪨ (ᬮ�� ��� �� ���), ᮡ�⢥���,
; ��� 㦥 �ᯮ�������, ��᪮��� ���ᨢ 䫠��� ��।���� ��� ��㯯� ��ਠ�⮢,
; �.�. �����祭�� � 䨣��� ᪮���.
; ���⢥��⢥���, �᫨ ��⥬�� 䫠� � �������ப� �� ᮢ������ � ���� �� ���-
; ����᫥����, � �� ��⠥��� ������, �� �⮬ ᮮ�頥��� ��� �/��� ����� (
; �. NotifyOnErrors), � �� �������ப� �� ������砥��� � ����筮�� ����⫨���.
; �᫨ ��६����� �� ������, � �஢�ઠ ��⥬��� 䫠��� �� �ந���������.
; �� 㬮�砭�� - �� ������.
; ����� ��६����� ����� ���� �� 16380.
; ���⠪��:
;   SystemFlags            <{flag1,flag2,flag3..flagN}>
; P.S. �� ����� �� �����-���� ��⥬�� 䫠��, ����� ���㠫�� ��� ����⮢
; , ���졠 ������� ��� :)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;[UserFlags]
;
UserFlags     {UV110L,UV110H,UX2C,UX2S,UZ19,UENC,UT??}
UserFlags     {UISDN@,UV120L,UV120H,UX75,UV90C,UV90S}
UserFlags     {UIBN[:*#],UIFC[:*#],UITN[:*#],UIVM[:*#],UIP}
;
; ���짮��⥫�᪨� 䫠�� (�.�. 䫠��, ����� ���� ��᫥ 䫠�� U � �������ப�)
; , ����� ࠧ�襭� � �������ப��. �᭮���� �ࠢ��� (�� ����� 㦥, ��祬�
; ⠪ :) - ���묨 � ���ᨢ� 䫠��� (������� ����� �� ��騩 ���ᨢ, � �⤥�쭮
; ����� ��ப� � ����஬ 䫠���) ������ ��� 䫠�� � �������襩 ������, �.�.,
; ���ਬ��, �᫨ � ��� ���� 2 䫠�� UZ19 � UV110H, � ���� ���� 㪠���� UV110H
; (�.�. ��� ����� ����� :) � ���ᠭ�� 䫠��� ����� �ᯮ�짮���� ��᪨ (ᬮ��
; ��� �� ���), ᮡ�⢥���, ��� 㦥 �ᯮ�������, ��᪮��� ���ᨢ 䫠��� ���-
; ����� ��� ��㯯� ��ਠ�⮢, �.�. �����祭�� � 䨣��� ᪮���.
; �� ���� ����砭��: 䫠�� ������ 㪠�뢠���� � ���䨪ᮬ U, �.�, ���ਬ��,
; �᫨ ���� 䫠� Z19, � ��� ���� 㪠�뢠�� ��� UZ19.
; ���⢥��⢥���, �᫨ ���짮��⥫�᪨� 䫠� � �������ப� �� ᮢ������ � ����
; �� ��襯���᫥����, � �� ��⠥��� ������, �� �⮬ ᮮ�頥��� ��� �/���
; ����� (�. NotifyOnErrors), � �� ������ப� �� ������砥��� � ����筮�� ��-
; ��⫨���.
; �᫨ ��६����� �� ������, � �஢�ઠ ���짮��⥫�᪨� 䫠��� �� �ந���������.
; �� 㬮�砭�� - �� ������.
; ����� ��६����� ����� ���� �� 16380.
; ���⠪��:
;   UserFlags            <{flag1,flag2,flag3..flagN}>
; P.S. �� ����� �� �����-���� ���짮��⥫�᪨� 䫠��, ����� ���㠫�� ���
; ����⮢, ���졠 ������� ��� :)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;[ImpliesFlags]
;
ImpliesFlags XA    XB,XC,XP,XR,XW,XX
ImpliesFlags XB    XA,XC,XP,XR,XW,XX
ImpliesFlags XC    XB,XA,XP,XR,XW,XX
ImpliesFlags XP    XB,XC,XA,XR,XW,XX
ImpliesFlags XR    XB,XC,XP,XA,XW,XX
ImpliesFlags XW    XB,XC,XP,XR,XA,XX
ImpliesFlags XX    XB,XC,XP,XR,XW,XA
ImpliesFlags V42B  V42,MNP
ImpliesFlags V42   MNP
ImpliesFlags V32T  V32B,V32
;ImpliesFlags V34   V32B,V32 ?
ImpliesFlags V32B  V32
ImpliesFlags HST   MNP,V42,V42B
ImpliesFlags H14   HST,MNP,V42,V42B
ImpliesFlags H16   H14,HST,MNP,V42,V42B
ImpliesFlags H19   H14,H16,HST,MNP,V42,V42B
ImpliesFlags H21   H14,H16,H19,HST,MNP,V42,V42B
ImpliesFlags ZYX   V32B,V32,V42B,V42,MNP
ImpliesFlags UZ19  ZYX,V32B,V32,V42B,V42,MNP
ImpliesFlags CM    UT??
;
; ����� ����뢠���� ����譨� (redundant) 䫠��, ����� ���ࠧ㬥������ (implies
; ) ��㣨�� 䫠���� (�᫨ ��� ���� � �������ப�) �, ᮮ⢥��⢥���, �� �㦭� �
; �������ப�. � ���ᠭ�� ��� 䫠��� _�����_ �ᯮ�짮���� ����, �஬� 䫠��
; UTxy, � ���஬ ����� 㪠���� ?? ����� ��ਮ�� �६���. ���⢥��⢥����, �᫨
; � �������ப� �����㦥� ����譨� 䫠�, � ��� ��⠥��� ����୮� � �� ������-
; 砥��� � ������ ����⫨��. ����� ����� 㪠�뢠�� ��� System, ⠪ � User
; flags (���짮��⥫�᪨� 䫠�� ������ ���� � ��䨪ᮬ U). � �ய�ᠫ �����
; ⠪�� 䫠�� �����ন������ ����ᮢ (X?), ��� ���, ����筮, � �� ���ࠧ㬥-
; ���� ��� ��㣠, �� �� ��� ��࠭����, �� � ��ப� �� �㤥� ��᪮�쪨� ��
; ��� :). ����� � ����, ����筮.
; �᫨ ��६����� �� ������, � �஢�ઠ �� ����譨� 䫠�� �� �ந���������.
; �� 㬮�砭�� - �� ������.
; ����� ��६����� ����� ���� �� 16380.
; ���⠪��:
;   ImpliesFlags  <implies flag>  <redundant flag1,redundant flag2,...,flagN>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;[AutoFlagsUpCase]
;
;AutoFlagsUpCase Yes
;
; �᫨ Yes, � ��। �஢�મ� 䫠��� ��� ���� ��⮬�⮬ ��ॢ����� � ���孨�
; ॣ����, �� ������� �������� ���樨, ����� ��த ���� 䫠�� V42,V32 � ��-
; 祥 � �����쪮� �㪢� (�����쭮 ��� �뢠�� :), �� �⮬ �᪨� 䫠� UTxy
; �ண��� �� �㤥�. ����⠥� ⮫쪮 �᫨ ��६����� UseValidate=Yes
; ���� �� ������� ⮫쪮 �� �஢���, � ���� � ������ ����⫨�� ��-
; ��� �����뢠���� �ਣ����쭠� ��ப�.
; �� 㬮�砭�� - No
; ����� ��६����� ����� ���� ⮫쪮 ����.
; ���⠪��:
;  AuotFlagsUpCase      <Yes|No>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;[Event]
;
;Event BadChar       Error
;Event BadPhone      Error
;Event BadSpeed      Error
;Event DupeFlag      Warn
;Event BadSystemFlag Error
;Event BadUserFlag   Error
;Event RedundantFlag Warn
;
; ����� ��������, �� ������ �� �����㦥��� �訡�� � �������ப�(������� ���
; �ᥣ�: ���쬠, ᥣ����� �� ��᪥, ����). ����� ����� ���� �� 3-� ���祭��:
; Error, Warn, Ignore. �� Error �������ப� ��⠥��� ����୮� � �� �������-
; ���� � ������ ����⫨��, ���뫠���� ९����, �㣠���� � ��� (� ��饬, ��
; ��� ���筮, ����⢥���, � ����ᨬ��� �� ��㣨� ����஥�), �� Warn �� ⮦�
; ᠬ��, ⮫쪮 �������ப� ��⠥��� ��ଠ�쭮� � ������砥��� � ������ ���-
; �����, �� Ingore ����� ��祣� ������ �� ᪠��� � �� ������, ��� ��� �⮩
; �訡�� � ���, ��ப�, ����⢥���, �㤥� ������祭� � ����筮�� ����⫨���.
; ���� ������� ⮫쪮 7 ᮡ�⨩, ��� ������ ����� �������� ����⢨�:
; BadChar - �����㦥� ���� ᨬ��� � �������ப� (��� �����㦥�� ��� ����� ���-
; 騥 ������ ��� ��ப� �����稢����� ����⮩)
; BadPhone - ⥫�䮭 ����� �� ���室�� �� ��� ���� ���� ⥫�䮭��
; BadSpeed - ᪮���� ����� �� ��室�� ��� ���� ᪮��⥩
; DupeFlag - � �������ப� �����㦥�� �������騥�� 䫠��
; BadSystemFlag - ����� ��⥬�� 䫠� �� ���室�� �� ��� ���� ���� ��⥬���
;                 䫠���, �.�. ����� �� ��� �������⥭
; BadUserFlag - ����� ���짮��⥫�᪨� 䫠� �� ���室�� �� ��� ���� ���� ���-
;               ���� 䫠���, �.�. ����� �� ��� �������⥭
; RedundantFlag - ����� �����㦥� ����譨� 䫠�, 㦥 ���ࠧ㬥���騩�� ��㣨�
; ������� ��㣨� ᮡ��� (⨯� �������� ������ப� [�.�. ����� ��� ��� ������
; 6 ����� - �����, ���_�⠭樨, ���⮭�宦�����, ���_�ᮯ�, ⥫�䮭, ᪮����]
; ��� ��室 ����� ����� �� �����⨬� �࠭��� (1..32767) �� 㬮�砭�� �����
; ����� Error � �������� �� ����� (� �� ����, ��� ;). �� 㬮�砭�� �� ᮡ�-
; �� ����� ����� Error, ⠪ �� ����� �������� ⮫쪮 �, ����� �⫨�����
; �� Error
; ����� ��६����� ����� ���� �� 16380 ;)
; ���⠪��:
;   Event  <event>    <whattodo>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;[NotifyOnErrors]
;
NotifyOnErrors Both
;
; ���� 㢥������� ���쬮� �� �訡��� � �������ப� (�� ��ࠡ��뢠����� ����/
; ListSegment-�/PointList-�, �訡�� � ��ࠡ��뢠���� ���쬥, ����⢥���, ����
; ��᫠�� ⮫쪮 ����� ���쬠 ;). �᫨ Boss, � ⮫쪮 ���� �⮣� �����, �᫨
; SysOp, � ⮫쪮 �����쭮�� �ᮯ� (�.�. ���), �᫨ Both, � �����, �᫨ ��
; ������ (�.�. ���������஢��� ��ப�), � ����� ������ �� 㢥������.
; �� 㬮�砭�� - �� ������.
; ����� ��६����� ����� ���� ⮫쪮 ����.
; ���⠪��:
;  NotifyOnErrors     <Boss|SysOp|Both>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;[LogPntStringErrors]
;
;LogPntStringErrors No
;
; ����� �� � ��� �� �訡��, �������� � �������ப� ��ࠡ��뢠����� ����/
; ListSegment-�/PointList-�/���쬠. �᫨ ��,� ������ ᮧ����� ��ᥬ � ���ᠭ���
; �訡�� (�᫨ ������), �㤥� ����� �� ��� �訡��� �� � � ���.
; �� 㬮�砭�� - Yes.
; ����� ��६����� ����� ���� ⮫쪮 ����.
; ���⠪��:
;  LogPntStringErrors   <Yes|No>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;