tests
testPauseResumeRun
	
	| gitHubAction time |
	
	gitHubAction := ATDDGitHubAction new.
	gitHubAction repositoryURL: self repoURL.
	gitHubAction updateStatus.
	self assert: gitHubAction paused.
	"how to test the cache?"
	"self assert: gitHubAction repository cache keys size > 1."
	"the cache should not be empty because we just requested the status (by calling asString)"
	time := TimeStamp now asTime asSeconds.
	gitHubAction refreshInterval: (Time hour: 0 minute: 0 second: 1) asSeconds.
	gitHubAction resume.
	(Delay forSeconds: 2) wait.
	self assert: gitHubAction paused not.
	self assert: (gitHubAction repository cache at: #lastRefresh) > time.
	gitHubAction pause.
	self assert: gitHubAction paused