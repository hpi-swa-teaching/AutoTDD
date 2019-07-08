data-processing
buildJsonFor: aNumber
	^ self buildsDictionary at: aNumber ifAbsentPut: [ self requireBuild: aNumber ]