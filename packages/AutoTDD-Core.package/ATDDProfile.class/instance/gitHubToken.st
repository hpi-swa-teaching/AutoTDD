accessing
gitHubToken

	^ gitHubToken ifNil: [ gitHubToken := '' ]