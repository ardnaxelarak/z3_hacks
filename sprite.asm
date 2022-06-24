!sprite ?= "none"

if stringsequal("!sprite", "none")
elseif getfilestatus("!sprite") != 0
	error "!sprite does not exist or cannot be read."
elseif getfilestatus("!sprite") == 0 && readfile4("!sprite", 0) != $5250535A
	error "!sprite is not ZSPR format."
else
	!gfx_offset #= readfile4("!sprite", 9)
	!palette_offset #= readfile4("!sprite", 15)

	org $108000
	incbin "!sprite":(!gfx_offset)-(!gfx_offset+$7000)

	org $1BD308
	incbin "!sprite":(!palette_offset)-(!palette_offset+120)

	org $1BEDF5
	incbin "!sprite":(!palette_offset+120)-(!palette_offset+120+4)
endif
