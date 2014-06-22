data-processing
validate: aString

	(aString matchesRegex: self class validSlug) ifFalse: 
			[ TravisCINoValidSlugError signal ]