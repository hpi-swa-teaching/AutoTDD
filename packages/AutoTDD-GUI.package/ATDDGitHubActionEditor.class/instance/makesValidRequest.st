testing
makesValidRequest

	| client |

	client := ATDDGitHubActionsClient new.
	client token: self token.
	(client requestOn: 'repos/' , self repositoryUrl)
		ifNil: [ ^ false ].

	^ true