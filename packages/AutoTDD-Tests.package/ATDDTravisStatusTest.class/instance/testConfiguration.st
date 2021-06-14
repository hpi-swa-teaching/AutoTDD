tests
testConfiguration
	
	self assert: travisStatus paused.
	self deny: travisStatus usePro.
	self assert: (travisStatus name isKindOf: String).
	self assert: (travisStatus repository isKindOf: ATDDNullDataSource).
	travisStatus name: 'Hello World'.
	travisStatus repositoryURL: self repoURL.
	travisStatus token: '9'.
	travisStatus usePro: true.
	self assert: travisStatus name = 'Hello World'.
	self assert: travisStatus repository class = ATDDTravisRepository.
	self assert: travisStatus repositoryURL = self repoURL.
	self assert: travisStatus token = '9'.
	self assert: travisStatus usePro