objects from disk
primitiveLoadResource: aString

	^ SampledSound fromWaveFileNamed: ((FileDirectory uri: aString) fullName)