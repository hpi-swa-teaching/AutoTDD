action
save
	repositoryUrl changed: #acceptChanges.
	token changed: #acceptChanges.
	refreshInterval changed: #acceptChanges.

	^(refreshInterval contents asString isAllDigits and: [refreshInterval contents asString isEmpty not]) ifTrue: [
		super save.
		"(repoUrl matchesRegex: self class validSlug"
		self travisStatus 
			repositoryURL: self repositoryUrl asString;
			token: self token;
			usePro: self usePro;
			name: self targetName;
			refreshInterval: refreshInterval contents asString asInteger.
		self closeWindow.
		self travisStatus resume.
		self travisStatus
	] ifFalse: [
		UIManager default inform: 'Please enter a valid interval!'.
	]