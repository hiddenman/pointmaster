;
;
#define subj Done %request% request !
#define Origin All clear ?
;#define TearLine %version%
;
                               Hello, %fromfname% !

Your request was successfuly processed:
旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
                             It's simple:

 You can send me your pointlist segment by attaching to message or you can
 send me netmail to %masteraddress% on name %mastername%

 In message body you may write one or more of this (Subj is used for password,
 if you wish to define it, write to %sysopname%):

 %%HELP              - To get this help text
 %%SEGMENT           - To get you pointlist segment
 %%STATISTIC         - To get simple statistic of your messages which was
                      successfuly processed by %mastername%
 Boss,<zone>:<net>/<node>
                    - Not so needed string, it's only define Boss which will
                      be processed (by default, Boss address is taken from me-
                      ssage header). You can't change data of another Boss.
                      If there is no such Boss in pointlist it will be auto-
                      matically added, but if it will not has at least one
                      point it will be automatically deleted.

 %addcommentchars%<new comment>
                    - Your comments in pointlist. If there are no such one they
                      will be added automatically, otherwise they (all) will be
                      deleted from pointlist and new added. There is no limit to
                      amount of strings and they may be in any place of message

 Point,<number>,<station_name>,<location>,<sysop_name>,<phone>,<flags>
                    - If there is no such point in pointlist it'll be automa-
                      tically added, otherwise his data string will be changed
                      to this in condition that it has at least one difference
                      from another one in pointlist. If length of pointstring
                      is more then screen width you may split it by adding to
                      end of string "%splitchar%" (without ") (look at example)
                      Pointstring must not contains bad characters, spaces, du-
                      plicate commas, it must not ends with comma, pointnumber
                      must be in 1..32767.
                                             ! ATTENTION !

                                             ! 괝닃�H늼 !
                      뤲�´涉β碎 貰�手β飡˘� 氏젫�� 飡젺쩆設젹, 쭬쩆��臾 뫅�-
                      렞��. 롟��˛瑜 ��젪Œ�: �� ㄾウ�� 〓筍 ��™�涉迹ⓨ碎 氏�-
                      ．�, ㏇� 氏젫�, む�Д UTxy, ㄾウ�� 〓筍 � ´齧��� 誓（�-
                      循�, �� ㄾ�信첓荻碎 �㎙②��� 氏젫�, 拾� ��ㅰ젳僧ⅱ좐蟯α�
                      ㅰ膝º� 氏젫젹� (췅�黍Д� ZYX � V42B, V32B � V32 etc.)

 %deletepointchars%<number>
                    - 뱾젷ⓥ� ��Þ�� <number> (あ젮�졻�瑜 稅�―� �� �㎛좂좐�,
                      譽� ㎛젶 Ж�信� М┘� 〓筍 ��申��, 將� �昔飡� 歲��젶歲�
                      �젶�� :). 끷エ �� 若殊收 蝨젷ⓥ� ‘レ蜈 �ㄽ�． ��Þ��,
                      獸 �拾�� 丞젳졻� ⓨ ��Д�� ㅰ膝 쭬 ㅰ膝�� 曄誓� 쭬�汀莘.
                      끷エ �� 若殊收 蝨젷ⓥ� ㏇ε ��Þ獸�, 丞젲ⓥ� 歲Б�� *
                      (將� М┃� ⓤ��レ㎜쥯筍 ㄻ� 蝨젷��⑨ ‘遜� �� ��Þ漱ⓤ��,
                       �.�. ‘遜� ‥� ��Þ獸� 젪獸쵟殊曄稅� �紐Ħ猶좐恂�)


                               Examples:
 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
 � From: Vasya Pupkin,    777:1998/9999
 � To:   %mastername%,     %masteraddress%
 � Subj: PASSWORD
 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
    Boss,777:1998/9999
    %addcommentchars%New Boss Comment
    Point,123,Vanya,Russia,Ivan_Ivanov,-Unpublished-,9600,MO,V32B,V42B
    %addcommentchars%New Boss Comment
    Point,128,Vanya2,Russia,Ivan_Sidorov,-Unpublished-,9600,MO,V32,V42,V34,%splitchar%
    U,TXX
    %deletepointchars%129,130

 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
 쿑rom: Vasya Pupkin,     777:1998/9999
 쿟o:   %mastername%,      %masteraddress%
 쿞ubj:
 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
    %deletepointchars%128
    %deletepointchars%*
    %%SEGMENT

 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
 쿑rom: Vasya Pupkin,     777:1998/9999
 쿟o:   %mastername%,      %masteraddress%
 쿞ubj:
 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
    %addcommentchars%New Boss Comment
    %addcommentchars%New Boss Comment
    %%STATISTIC

닱Д���⑨ � ��Þ漱ⓤ收 �昔�㎖�ㅿ恂� 蓀젳�, ��將�с М┃�, 췅�黍Д�,�昔´黍筍,
譽� ��ャ葉ギ刷 � ��Þ漱ⓤ收 ��笹� 쥯鼇� 飡昔� � �ⓤ弛�, 丞젳젪 � ぎ�璵 �ⓤ弛�
ぎ쵟�ㅳ %%SEGMENT (將� 첓�젰恂� ㏇ⅲ�, む�Д ぎК���졷�ⅱ, ��� �㎚��禎恂� ��笹�
�□젩�洙� ㏇ⅲ� �ⓤ弛� )

읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸

With best regards, %mastername%

Processed at [%curtime%] [%curdate%]
