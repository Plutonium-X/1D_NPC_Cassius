BEGIN ~G#CAS25~

IF ~Global("CassiusSummoned","GLOBAL",1)~ THEN summon1
SAY @1002 
++ @1003 DO ~SetGlobal("CassiusSummoned","GLOBAL",2)~ + helpme
++ @1004 DO ~SetGlobal("CassiusSummoned","GLOBAL",2)~ + bard
END

IF ~~ bard
SAY @1005
IF ~~ GOTO helpme
END

IF ~~ helpme
SAY @1006
++ @1007 + join
END

IF ~~ join
SAY @1008
++ @1009 DO ~JoinParty()~ EXIT
++ @1010 DO ~MoveToPointNoInterrupt([2112.1400])~ EXIT
END

IF ~Global("CassiusSummoned","GLOBAL",2)~ summon2
SAY @1011
++ @1012 DO ~JoinParty()~ EXIT
++ @1013 EXIT
END


BEGIN ~G#CAS25J~

BEGIN ~G#CAS25P~

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN 0 
  SAY @1014
  IF ~~ THEN REPLY @1015 DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
  IF ~AreaCheck("AR4500")~ THEN REPLY @1016 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveToPointNoInterrupt([2112.1400])
Face(0)~ GOTO 1
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @1017 DO ~SetGlobal("KickedOut","LOCALS",1)
CreateVisualEffectObject("SPDIMNDR",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2112.1400],0)
~ EXIT
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @1018 DO ~SetGlobal("KickedOut","LOCALS",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1 
  SAY @1019
  IF ~~ THEN EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN 2 
  SAY @1020 
  IF ~~ THEN REPLY @1021 DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @1022 GOTO 3
END

IF ~~ THEN BEGIN 3 
  SAY @1023 
  IF ~~ THEN EXIT
END
