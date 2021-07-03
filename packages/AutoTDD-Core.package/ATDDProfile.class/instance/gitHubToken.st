accessing
gitHubToken

	^ gitHubToken ifNil: [ gitHubToken := String empty ]