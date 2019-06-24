accessing
status: anSymbol
	anSymbol isSymbol ifFalse: [Error signal: 'Invalid Status (must be a symbol)'].
	status := anSymbol.