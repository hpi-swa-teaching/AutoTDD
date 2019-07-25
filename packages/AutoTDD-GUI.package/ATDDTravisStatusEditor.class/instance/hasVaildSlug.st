action
hasVaildSlug
	^self repositoryUrl asString matchesRegex: self class validSlug