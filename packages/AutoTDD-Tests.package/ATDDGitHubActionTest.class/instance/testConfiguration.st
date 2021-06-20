tests
testConfiguration
	
	self assert: gitHubAction paused.
	self assert: (gitHubAction name isKindOf: String).
	self assert: (gitHubAction repository isKindOf: ATDDNullDataSource).
	gitHubAction name: 'Hello World'.
	gitHubAction repositoryURL: self repoURL.
	"how to test for valid token?, how to test for invalid token?"
	gitHubAction token: '9'.
	self assert: gitHubAction token = '9'.
	self assert: gitHubAction name = 'Hello World'.
	self assert: gitHubAction repository class = ATDDGitHubActionsRepository.
	self assert: gitHubAction repositoryURL = self repoURL.
	