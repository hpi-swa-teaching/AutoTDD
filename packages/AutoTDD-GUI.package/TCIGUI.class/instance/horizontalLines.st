constants
horizontalLines

	| textLineHeight textOffset listLineHeight listOffset
		upperLine middleLine listLines textLines stateLine |
	textLines := 2.
	listLines := 3.
	textLineHeight := 16.
	listLineHeight := 14.
	textOffset := 9.
	listOffset := 7.
	upperLine := textLines * textLineHeight + textOffset.
	middleLine := listLines * listLineHeight + listOffset + upperLine.
	stateLine := listLines * listLineHeight + listOffset  + middleLine.
	^ {{upperLine}. {upperLine. middleLine. stateLine. -30}}