; _________________________________________
;| Ken by Phantom.of.the.Server & Jmorphman|
; �����������������������������������������
;==============================================================================================
;=======================================<INITIALIZE>============================================
;==============================================================================================
[StateDef 5900]
type = S

[State 5900, Int VarReset]
type = VarRangeSet
trigger1 = !RoundsExisted
value = 0

[State 5900, Mode Detection]
type = VarSet
trigger1 = 1
var(40) = 2
ignoreHitPause = 1

[State 5900, Float VarReset]
type = VarRangeSet
trigger1 = !RoundsExisted
fvalue = 0

[State 5900, End]
type = ChangeState
trigger1 = 1
value = 5901