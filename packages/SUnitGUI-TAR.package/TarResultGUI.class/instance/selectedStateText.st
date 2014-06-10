as yet unclassified
selectedStateText

	^ (self data results at: self selectedResult ifAbsent: [ ^ String empty ]) printString