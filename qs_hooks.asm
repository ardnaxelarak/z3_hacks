;================================================================================
; Quick Swap
;--------------------------------------------------------------------------------
org $0288F9 ; <- 107FB - Bank02.asm:1526 (LDA $F6 : AND.b #$40 : BEQ .dontActivateMap)
autoclean JSL.l QuickSwap

org $02A55A ; <- 12451 - Bank02.asm:6283 (LDA $F6 : AND.b #$40 : BEQ .xButtonNotDown)
autoclean JSL.l QuickSwap
;================================================================================