as yet unclassified
logFor: aNumber or: anotherNumber

	| logs |
	logs := self logsDictionary.
	^ logs at: aNumber ifAbsentPut: [ | log |
		log := self client getTextForLog: aNumber.
		(self isNotAvailableYet: log) ifTrue: [
			log := self parser parseBodyOfLog: (self client getJsonForLog: anotherNumber)].
			log ]