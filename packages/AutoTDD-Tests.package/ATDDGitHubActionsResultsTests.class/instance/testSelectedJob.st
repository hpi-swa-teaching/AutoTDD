tests
testSelectedJob
	
	| temp originalJobs |
	
	temp := ATDDGitHubActionWorkflowJob 
		newForId: 1 
		name: 'idk dude' 
		conclusion: 'success'.
	resultsWindow selectedHistory: 1.
	originalJobs := resultsWindow jobs.
	"jobs needs to be configured manually so that it sends a correct request to the mockAPI"
	resultsWindow jobs: { temp }.
	resultsWindow selectedJob: 1.
	"Simulates clicking on a specific job and then that this loads a log".
	self assert: resultsWindow log isEmpty = false.
	self assert: (resultsWindow log asString includesSubstring: '69 tests passed') = true.
	resultsWindow simplifyLogCheckBoxAction.
	self assert: resultsWindow shouldSimplifyLog = false.
	"Some text that's in the log when it's not simplified".
	self assert: (resultsWindow log asString includesSubstring: 'Starting: Request a runner to run this job') = true.
	resultsWindow shouldSimplifyLog: true.
	resultsWindow jobs: originalJobs