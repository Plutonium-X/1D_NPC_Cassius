BEGIN ~G#CASS~

IF ~NumTimesTalkedTo(0)~ meet
SAY @2001
++ @2002 + wait
END

IF ~~ wait
SAY @2003
++ @2004 + modest
END

IF ~~ modest
SAY @2005
++ @2006 + join
++ @2007 + denied
END

IF ~~ join
SAY @2008
++ @2009 DO ~SetGlobal("G#CassJoin","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ denied
SAY @2010 IF ~~ THEN 
EXIT
END

IF ~NumTimesTalkedToGT(0)~ chatagain
SAY @2011
++ @2012 DO ~SetGlobal("G#CassJoin","LOCALS",1) JoinParty()~ EXIT
++ @2013 EXIT
END

BEGIN ~G#CASSJ~

BEGIN ~BG#CASS~

IF WEIGHT #0 
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("CassPC1","LOCALS",0)
~ THEN BEGIN PcChat1
  SAY @2014
++ @2015 DO ~SetGlobal("CassPC1","LOCALS",1)~ + BuzzOff
++ @2016 DO ~SetGlobal("CassPC1","LOCALS",1)~ + TellMore
END

IF ~~ BuzzOff
SAY @2017
IF ~~ EXIT
END

IF ~~ TellMore
SAY @2018
= @2019
++ @2020 + lol
++ @2021 + lmao
END

IF ~~ lol
SAY @2022
IF ~~ EXIT
END

IF ~~ lmao
SAY @2023
IF ~~ EXIT
END

IF WEIGHT #1 
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("CassPC2","LOCALS",0)
~ THEN BEGIN PcChat1
  SAY @2024
++ @2025 DO ~SetGlobal("CassPC2","LOCALS",1)~ + F_Off
++ @2026 DO ~SetGlobal("CassPC2","LOCALS",1)~ + HarpC
++ @2027 DO ~SetGlobal("CassPC2","LOCALS",1)~ + HarpS
END

IF ~~ F_Off
SAY @2028
IF ~~ EXIT
END

IF ~~ HarpS
SAY @2029 IF ~~ THEN DO ~SetGlobal("HateHarpersG","LOCALS",1)~ EXIT
END

IF ~~ HarpC
 SAY @2030
++ @2031 + funnyG
++ @2032 + icuG
END

IF ~~ funnyG
SAY @2033 IF ~~ THEN DO ~SetGlobal("LikeHarpersG","LOCALS",1)~ EXIT
END

IF ~~ icuG
SAY @2034
IF ~~ THEN DO ~SetGlobal("LikeHarpersG","LOCALS",1)~ EXIT
END

CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("CassJahHarpers","LOCALS",0)~ THEN BG#CASS harpers
@2035
DO ~SetGlobal("CassJahHarpers","LOCALS",1)~
== BJAHEIR @2036
== BG#CASS @2037
== BJAHEIR @2038
== BG#CASS @2039
== BJAHEIR @2040
== BG#CASS @2041
== BJAHEIR @2042
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("CassYoshi","LOCALS",0)~ THEN BG#CASS yoshiscookie
@2043 DO ~SetGlobal("CassYoshi","LOCALS",1)~
== BYOSHIM @2044
== BG#CASS @2045
== BYOSHIM @2046
== BG#CASS @2047
== BYOSHIM @2048
== BG#CASS @2049
== BYOSHIM @2050
EXIT

CHAIN
IF ~
InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("AnomenIsKnight","GLOBAL",1)
Global("CassAnom","LOCALS",0)~ THEN BG#CASS youlout
@2051
DO ~SetGlobal("CassAnom","LOCALS",1)~
== BANOMEN @2052
== BG#CASS @2053
== BANOMEN @2054
== BG#CASS @2055
== BANOMEN @2056
== BG#CASS @2057
EXIT

CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("CassNaliaChat","LOCALS",0)~ THEN BG#CASS naliachat
@2058 DO ~SetGlobal("CassNaliaChat","LOCALS",1)~
== BNALIA @2059
== BG#CASS @2060
== BNALIA @2061
== BG#CASS @2062
== BNALIA @2063
== BG#CASS @2064
= @2065
== BNALIA @2066
== BG#CASS @2067
EXIT

CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("HarperFight","GLOBAL",1)
Dead("Galvarey")
Global("CassJahHarpers","LOCALS",1)
Global("CassJahHarpers2","LOCALS",0)~ THEN BG#CASS harpers2
@2068
DO ~SetGlobal("CassJahHarpers2","LOCALS",1)~
== BJAHEIR @2069
== BG#CASS @2070
== BJAHEIR @2071
== BG#CASS @2072
== BJAHEIR @2073
== BG#CASS @2074
== BJAHEIR @2075
== BG#CASS @2076
== BJAHEIR @2077
== BG#CASS @2078
= @2079
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("CassImoen","LOCALS",0)
~ THEN BG#CASS imoenchats
@2080 DO ~SetGlobal("CassImoen","LOCALS",1)~
== IMOEN2J @2081
== BG#CASS @2082
== IMOEN2J @2083
== BG#CASS @2084
== IMOEN2J @2085
== BG#CASS @2086
== IMOEN2J @2087
== BG#CASS @2088
EXIT

BEGIN ~G#CASSP~

IF ~~ THEN BEGIN rejoin 
  SAY @2089
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF WEIGHT #1 
~Global("KickedOut","LOCALS",1)
~ THEN BEGIN greet 
  SAY @2090
  IF ~~ THEN GOTO greet1
END

IF ~~ THEN BEGIN greet1
  SAY @2091
  IF ~~ THEN REPLY @2092 GOTO reject
  IF ~~ THEN REPLY @2093 GOTO join
END

IF ~~ THEN BEGIN reject 
  SAY @2094
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN join 
  SAY @2095
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()
~ EXIT
END

IF WEIGHT #2 
~HappinessLT(Myself,-290)
~ THEN BEGIN mad 
  SAY @2096
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN leave 
  SAY @2097
  IF ~!AreaCheck("AR0601")
!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")
~ THEN REPLY @2098 DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("AR0704",540,682,0)
~ EXIT
  IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0601")
!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!InWatchersKeep()
~ THEN REPLY @2099 DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
  IF ~OR(3)
AreaCheck("AR0601")
AreaCheck("AR0602")
AreaCheck("AR0603")~ THEN REPLY @2100 DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("AR0704",540,682,0)
~ EXIT
END

IF WEIGHT #3 
~True()
~ THEN BEGIN 8 
  SAY @2101
  IF ~~ THEN REPLY @2102 GOTO rejoin
  IF ~~ THEN REPLY @2103 GOTO leave
END