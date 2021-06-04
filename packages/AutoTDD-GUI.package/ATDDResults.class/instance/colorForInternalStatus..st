accessing
colorForInternalStatus: aString
	
	^ self colorForStatus: (self target class statusDictionary at: aString)