action
validate: aString
	
	(aString matchesRegex: self class validSlug) ifFalse: [ ATDDInvalidSlugError signal ]