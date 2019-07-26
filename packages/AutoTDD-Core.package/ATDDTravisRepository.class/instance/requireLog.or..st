data-processing
requireLog: aNumber or: anotherNumber
	
	^ aNumber negative
		ifTrue: [ JsonObject new ]
		ifFalse: [
			| log |
			
			log := self client getTextForLog: aNumber.
			log ifEmpty: [ self client getJsonForLog: anotherNumber ] ifNotEmpty: [ self wrapAsJson: log ] ]