constants
horizontalLines

	| textLineHeight textOffset listLineHeight listOffset
		upperLine middleLine listLines textLines |
	textLines := 2.
	listLines := 3.
	textLineHeight := 16.
	listLineHeight := 14.
	textOffset := 9.
	listOffset := 7.
	upperLine := textLines * textLineHeight + textOffset.
	middleLine := listLines * listLineHeight + listOffset + upperLine.
	^ {{upperLine}. {upperLine. middleLine. -30}}