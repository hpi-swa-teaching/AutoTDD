testing
hasValidUrl

	| client |

	client := ATDDGitHubActionsClient new.
	client token: self token.
	[ client requestOn: 'repos/' , self repositoryUrl ]
		on: ATDDAccessDeniedError
		do: [ UIManager default inform: ATDDAccessDeniedError rateLimitMessage. ]
		on: ATDDNotFoundError
		do: [ ^ false ].

	^ true
	
