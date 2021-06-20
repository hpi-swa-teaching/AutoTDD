tests
testPauseResumeRun
	
	| gitHubAction time |
	
	gitHubAction := ATDDGitHubAction new.
	gitHubAction repositoryURL: self repoURL.
	gitHubAction updateStatus.
	self assert: gitHubAction paused.
	time := TimeStamp now asTime asSeconds.
	gitHubAction refreshInterval: (Time hour: 0 minute: 0 second: 1) asSeconds.
	gitHubAction resume.
	(Delay forSeconds: 2) wait.
	self assert: gitHubAction paused not.
	self assert: (gitHubAction repository cache at: #lastRefresh) > time.
	gitHubAction pause.
	self assert: gitHubAction paused