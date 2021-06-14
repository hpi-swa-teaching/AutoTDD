utility
loadSimpleRepositoryInClient

	"load sample data to simulate travis status response"	
	mockGitHubActionsClient sampleJsonForBuildsOfRepository: self sampleSimpleRepositoryBuilds.
	
	resultsWindow := ATDDGitHubActionResults openForTarget: gitHubAction.
	windowsToDelete add: resultsWindow.