action
save
	super save.
	"(repoUrl matchesRegex: self class validSlug"
	repositoryUrl changed: #acceptChanges.
	token changed: #acceptChanges.
	self travisStatus 
		repositoryURL: self repositoryUrl asString;
		token: self token;
		usePro: self usePro;
		name: self targetName.
	self closeWindow.
	self travisStatus resume.
	^self travisStatus