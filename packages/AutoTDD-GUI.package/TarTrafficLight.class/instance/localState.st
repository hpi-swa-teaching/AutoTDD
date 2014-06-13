as yet unclassified
localState

	| result |
	(self localData isNil or: [ self localData results isEmpty ]) ifTrue: [ ^ #unknown ].
	result := self localData results first.
	^ result hasErrors
		ifTrue: [ #errored ]
		ifFalse: [ result hasFailures
			ifTrue: [ #failed ]
			ifFalse: [ result hasPassed
				ifTrue: [ #passed ]
				ifFalse: [ #unknown ] ] ]