parsing
parseNumberOfErrorsFromDetailedState: aString

	| match |

	match := self parseErrorsFromDetailedState: aString.
	^ (match copyWithRegex: '\s+errors' matchesReplacedWith: '') asInteger ifNil: [ ^ 0 ]