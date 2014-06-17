data-processing
validate: aString

	(aString matchesRegex: self class validSlug) ifFalse: 
			[ self error: 'No valid slug provided' ]