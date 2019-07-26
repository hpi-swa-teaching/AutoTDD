utility
loadComplexRepositoryInClient

	"load sample data to simulate travis status response"	
	mockTravisClient sampleJsonForBuildsOfRepository: self sampleComplexRepositoryBuilds.
	self sampleComplexRepositoryBuildsDictionary keysAndValuesDo: [:build :json | mockTravisClient addJsonForBuild: build put: json ].
	resultsWindow := ATDDTravisStatusResults openForTarget: travisStatus.
	windowsToDelete add: resultsWindow.