loading
primitiveLoadResource: aString
	
	^ SampledSound fromWaveFileNamed: (FileDirectory uri: aString) fullName