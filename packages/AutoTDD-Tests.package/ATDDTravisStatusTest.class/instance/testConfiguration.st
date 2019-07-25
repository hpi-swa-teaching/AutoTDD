tests
testConfiguration	
	self assert: (travisStatus paused = true).
	self assert: (travisStatus usePro = false).
	self assert: (travisStatus name isKindOf: String).
	self assert: (travisStatus repository isKindOf: ATDDNullDataSource).
	
	travisStatus name: 'Hello World'.
	travisStatus repositoryURL: self class repoURL.
	travisStatus token: '9'.
	travisStatus usePro: true.
	
	self assert: (travisStatus name = 'Hello World').
	self assert: (travisStatus repository class = ATDDTravisRepository).
	self assert: (travisStatus repositoryURL = self class repoURL).
	self assert: (travisStatus token = '9').
	self assert: (travisStatus usePro = true)