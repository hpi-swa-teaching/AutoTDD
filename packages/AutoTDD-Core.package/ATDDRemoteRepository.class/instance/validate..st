action
validate: aString
	
	(aString matchesRegex: self class validSlug) ifFalse: [ ATDDNoValidSlugError signal ]