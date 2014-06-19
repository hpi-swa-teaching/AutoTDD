data-processing
requireLog: aNumber or: anotherNumber

	aNumber negative
		ifTrue: [ ^ JsonObject new ]
		ifFalse: [ | log |
			log := self client getTextForLog: aNumber.
			^ (self isNotAvailableYet: log)
				ifTrue: [ self client getJsonForLog: anotherNumber ]
				ifFalse: [ self wrapAsJson: log ] ]