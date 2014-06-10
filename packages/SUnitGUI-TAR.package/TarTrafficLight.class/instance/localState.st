as yet unclassified
localState

	| result |
	self localData ifNil: [ ^ #unknown ].
	result := self localData results at: 1 ifAbsent: [ ^ #unknown ].
	result ifNil: [ ^#unknown ].
	^ result hasErrors
			ifTrue: [ #errored ]
			ifFalse: [ result hasFailures
				ifTrue: [ #failed ]
				ifFalse: [ result hasPassed
					ifTrue: [ #passed ]
					ifFalse: [ #unknown ] ] ]