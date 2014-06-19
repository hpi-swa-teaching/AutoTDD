data-processing
validate: aString

	(aString matchesRegex: self class validSlug) ifFalse: 
			[ NoValidSlugError signal: 'No valid slug provided' ]