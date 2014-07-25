data-processing
validate: aString

	(aString matchesRegex: self class validSlug)
		ifFalse: [ TCINoValidSlugError signal ]