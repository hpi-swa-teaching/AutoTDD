as yet unclassified
errorString

	| count |
	count := self data results first errorCount.
	^ count asString, ' Error', ((count > 1) ifTrue: [ 's' ] ifFalse: [ String empty ])