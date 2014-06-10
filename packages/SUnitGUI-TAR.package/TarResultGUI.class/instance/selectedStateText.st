as yet unclassified
selectedStateText

	|text|
	text := (self data results at: self selectedResult ifAbsent: [ ^ String empty ]).
	text ifNil: [^ 'Build canceled.'].
	^ text printString