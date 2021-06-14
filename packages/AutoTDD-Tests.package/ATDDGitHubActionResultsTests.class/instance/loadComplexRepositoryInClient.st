utility
loadComplexRepositoryInClient

	"load sample data to simulate travis status response"	
	mockGitHubActionsClient sampleJsonForBuildsOfRepository: self sampleComplexRepositoryBuilds.
	self sampleComplexRepositoryBuildsDictionary keysAndValuesDo: [:build :json | mockGitHubActionsClient addJsonForBuild: build put: json ].
	resultsWindow := ATDDGitHubActionResults openForTarget: gitHubAction.
	windowsToDelete add: resultsWindow.