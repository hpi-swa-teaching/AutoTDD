as yet unclassified
requireBuild: aNumber

	aNumber negative
		ifTrue: [ ^ JsonObject new ]
		ifFalse: [ ^ self client getJsonForBuild: aNumber ]