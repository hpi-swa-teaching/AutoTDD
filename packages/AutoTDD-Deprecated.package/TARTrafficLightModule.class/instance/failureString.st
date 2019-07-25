utility
failureString
	
	| count |
	
	count := self data results first failureCount.
	
	^ count asString , ' Failure' , (count
		> 1 ifTrue: [ 's' ] ifFalse: [ String empty ])