updating
updateLocalStatusTo: aString
	
	self internalStatus: aString.
	(#( 'passed' 'failed' 'errored' ) includes: aString) ifTrue: [ self finishedTesting ].
	ATDDBrowser changedWatchers