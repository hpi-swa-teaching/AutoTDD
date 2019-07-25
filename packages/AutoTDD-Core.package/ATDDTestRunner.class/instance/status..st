accessing
status: aSymbol
	
	aSymbol isSymbol
		ifFalse: [ Error signal: 'Invalid Status (must be a symbol)' ].
	status := aSymbol