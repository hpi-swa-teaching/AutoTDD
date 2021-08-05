testing
makesValidRequest

	self client token: self token.
	(self client requestOn: 'repos/', self repositoryUrl)
		ifNil: [ ^ false ].

	^ true