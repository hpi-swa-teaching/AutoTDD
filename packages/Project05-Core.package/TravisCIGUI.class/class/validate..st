as yet unclassified
validate: aString

	(aString matchesRegex: self validSlug) ifFalse: [ self error: 'No valid slug provided' ]