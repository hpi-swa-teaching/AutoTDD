utility
loadSimpleRepositoryInClient

	"load sample data to simulate travis status response"	
	mockTravisClient sampleJsonForBuildsOfRepository: self sampleSimpleRepositoryBuilds.
	
	resultsWindow := ATDDTravisStatusResults openForTarget: travisStatus.
	windowsToDelete add: resultsWindow.