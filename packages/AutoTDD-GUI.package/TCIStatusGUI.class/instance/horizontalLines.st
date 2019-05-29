constants
horizontalLines

	| textLineHeight textOffset listLineHeight listOffset
		upperLine middleLine listLines textLines stateLine logLines |
	textLines := 2.
	listLines := 3.
	logLines := 5.
	textLineHeight := 16.
	listLineHeight := 14.
	textOffset := 9.
	listOffset := 7.
	upperLine := textLines * textLineHeight + textOffset.
	middleLine := listLines * listLineHeight + listOffset + upperLine.
	stateLine := logLines * listLineHeight + listOffset  + middleLine.
	^ {{upperLine}. {upperLine. middleLine. stateLine. -30}}