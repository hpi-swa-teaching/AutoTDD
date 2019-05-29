accessing
stateText
	
	^ Text new
		append: 'Current Build:', String crlf, self state;
		addAttribute: (TextAlignment centered)