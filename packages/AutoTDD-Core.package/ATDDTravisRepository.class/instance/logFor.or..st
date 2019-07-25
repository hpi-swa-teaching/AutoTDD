data-processing
logFor: aNumber or: anotherNumber
	^ self logsDictionary at: aNumber ifAbsentPut: 
		[ self requireLog: aNumber or: anotherNumber ]