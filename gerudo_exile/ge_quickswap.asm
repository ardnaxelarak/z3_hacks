; Thanks to Kazuto for developing the original QS code that inspired this one

QuickSwap:
	; We perform all other checks only if we are pushing L or R in order to have minimal
	; perf impact, since this runs every frame

	LDA.b $F6 : AND #$30 : BEQ .done

	XBA ; stash away the value for after the checks.

	LDA.w $0202 : BEQ .done ; Skip everything if we don't have any items

	PHX
	XBA ; restore the stashed value
	BIT #$10 : BEQ + ; Pressed R
		JSR.w RCode
		BRA .store
	+
	; Pressed L
	JSR.w LCode
	BRA .store

	.store
	LDA.b #$20 : STA.w $012F
	STX $0202

	JSL HUD_RefreshIconLong
	PLX

	.done
	LDA.b $F6 : AND.b #$40 ;what we wrote over
RTL
RCode:
	LDX.w $0202
	-
		+ CPX.b #$18 : BNE + : LDX.b #$00 ;will wrap around to 1
		+ INX
		CPX.b #$15 : BCS .bottle
			LDA $7EF33F, X : BEQ -
			BRA .done
		.bottle
			LDA $7EF347, X : BEQ -
.done
RTS

LCode:
	LDX.w $0202
	-
		+ CPX.b #$01 : BNE + : LDX.b #$19 ; will wrap around to $18
		+ DEX
		CPX.b #$15 : BCS .bottle
			LDA $7EF33F, X : BEQ -
			BRA .done
		.bottle
			LDA $7EF347, X : BEQ -
.done
RTS
