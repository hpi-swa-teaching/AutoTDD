as yet unclassified
parseNumberOfFailuresFromDetailedState: aString

	| match |
	
	match := self parseFailuresFromDetailedState: aString.
	^ (match copyWithRegex: '\s+failures' matchesReplacedWith: '') asInteger ifNil: [ ^ 0 ]