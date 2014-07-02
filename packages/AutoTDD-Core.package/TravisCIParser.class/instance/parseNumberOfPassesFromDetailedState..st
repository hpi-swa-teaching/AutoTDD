as yet unclassified
parseNumberOfPassesFromDetailedState: aString

	| match |
	match := self parsePassesFromDetailedState: aString.
	^ (aString copyWithRegex: '\s+passes' matchesReplacedWith: '') asInteger ifNil: [^0]