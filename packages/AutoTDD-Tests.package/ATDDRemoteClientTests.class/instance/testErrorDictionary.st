testing
testErrorDictionary
	
	| errorDictionary |
	
	errorDictionary := remoteClient errorDictionary. 
	self assert: errorDictionary isDictionary. 
	
	#(401 403 404) do: [ :each | 
		self assert: (errorDictionary includesKey: each)
	]