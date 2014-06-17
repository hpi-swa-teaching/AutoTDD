data-processing
requireLog: aNumber or: anotherNumber

	aNumber negative
		ifTrue: [ ^ String empty ]
		ifFalse: [ | log |
			log := self client getTextForLog: aNumber.
			(self isNotAvailableYet: log) ifTrue: 
				[ log := self parser parseBodyOfLog:
					(self client getJsonForLog: anotherNumber) ].
			^ log ]