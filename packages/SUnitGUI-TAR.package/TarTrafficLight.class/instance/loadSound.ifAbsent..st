as yet unclassified
loadSound: aString ifAbsent: aBlock

	| sound |
	sound := aString.
	(FileDirectory default fileExists: sound)
		ifTrue: [ ^ (SampledSound fromWaveFileNamed: ((FileDirectory uri: sound) fullName)) ]
		ifFalse: [ ^ aBlock value ]