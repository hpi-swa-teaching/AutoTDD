as yet unclassified
saveTravisStatus
	"(repoUrl matchesRegex: self class validSlug"
	repositoryUrl changed: #acceptChanges.
	travisStatusName changed: #acceptChanges.
	token changed: #acceptChanges.
	self travisStatus 
		repositoryURL: self repositoryUrl asString;
		token: self token;
		usePro: self usePro;
		name: self travisStatusName.
	self closeWindow.
	self travisStatus resume.
	^self travisStatus