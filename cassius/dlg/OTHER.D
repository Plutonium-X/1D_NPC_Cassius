I_C_T SAMIA 12 CassSamia
== G#CASSJ IF ~IsValidForPartyDialog("G#CASSIUS")~ THEN @3001
END

I_C_T RENAL 13 CassRenal1
== G#CASSJ IF ~IsValidForPartyDialog("G#CASSIUS")~ THEN
@3002
== RENAL IF ~IsValidForPartyDialog("G#CASSIUS")~ THEN
@3003
== G#CASSJ IF ~IsValidForPartyDialog("G#CASSIUS")~ THEN
@3004
== RENAL IF ~IsValidForPartyDialog("G#CASSIUS")~ THEN
@3005
END

I_C_T RENAL 23 CassRenal2
== G#CASSJ IF ~IsValidForPartyDialog("G#CASSIUS")~ THEN @3006
END

I_C_T BODHI 6 CassBodhiDeal
== G#CASSJ IF ~IsValidForPartyDialog("G#CASSIUS")~ THEN @3007
END

I_C_T BODHI 12 CassBodhi
== G#CASSJ IF ~IsValidForPartyDialog("G#CASSIUS")~ THEN @3008
END

I_C_T IMOEN2 22 CassImoenObjects
== G#CASSJ IF ~IsValidForPartyDialog("G#CASSIUS")~ THEN @3009
END


I_C_T HELLJON 7 CassIrenicus
== G#CASSJ IF ~IsValidForPartyDialog("G#CASSIUS")~ THEN @3010
END

I_C_T HELLJON 8 CassIrenicus
== G#CASSJ IF ~IsValidForPartyDialog("G#CASSIUS")~ THEN @3010
END

I_C_T HELLJON 9 CassIrenicus
== G#CASSJ IF ~IsValidForPartyDialog("G#CASSIUS")~ THEN @3010
END

I_C_T HELLJON 10 CassIrenicus
== G#CASSJ IF ~IsValidForPartyDialog("G#CASSIUS")~ THEN @3010
END

APPEND PLAYER1
IF ~~ P133Cass
SAY @3011
++ @3012 EXTERN G#CASSJ carryonlove
++ @3013 EXTERN G#CASSJ backoff
END
END

APPEND G#CASSJ
IF ~~ carryonlove
SAY @3014
COPY_TRANS PLAYER1 33
END

IF ~~ backoff
SAY @3015
COPY_TRANS PLAYER1 33
END
END

