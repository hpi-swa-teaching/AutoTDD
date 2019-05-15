utility
passedString

	| count |
	count := self data results first passedCount.
	^ count asString, ' Pass', ((count > 1) ifTrue: [ 'es' ] ifFalse: [ String empty ])