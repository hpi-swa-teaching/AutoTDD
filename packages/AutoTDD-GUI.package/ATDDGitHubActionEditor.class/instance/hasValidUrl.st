action
hasValidUrl

	| client |

	client := ATDDGitHubActionsClient new.
	client token: self token.
	[ client requestOn: 'repos/' , self repositoryUrl ]
		on: ATDDNotFoundError
		do: [ ^ false ].

	^ true