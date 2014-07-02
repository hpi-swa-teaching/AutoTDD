constants
stateTextDictionary

	| stateText |
	stateText := self parser parseStateTextFromLog: (self logForCurrentBuildsFirstJob).
	^ IdentityDictionary newFrom: {
		#canceled 	-> [ 'Canceled' ].
		#created 	-> [ 'Created' ].
		#errored 	-> [ (stateText = '') ifFalse: stateText ifTrue: 'Errored' ].
		#failed 		-> [ (stateText = '') ifFalse: stateText ifTrue: 'Failed' ].
		#passed 	-> [ (stateText = '') ifFalse: stateText ifTrue: 'Passed' ].
		#queued 	-> [ 'Queued' ].
		#started 	-> [ 'Started' ].
		#unknown 	-> [ 'Unknown' ] }