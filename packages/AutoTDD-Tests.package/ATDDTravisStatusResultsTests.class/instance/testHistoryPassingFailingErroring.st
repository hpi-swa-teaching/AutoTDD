tests
testHistoryPassingFailingErroring
	| resultPassed resultFailed resultErrored |	
		
	self loadSimpleRepositoryInClient.
	
	resultPassed := resultsWindow history at: 19.
	self assert: (resultPassed isKindOf: Text).
	self assert: (resultPassed colorAt: 1) = (ATDDTestingEntity colorDictionary at: #successful).
	
	resultFailed := resultsWindow history at: 1.
	self assert: (resultFailed isKindOf: Text).
	self assert: (resultFailed colorAt: 1) = (ATDDTestingEntity colorDictionary at: #failure).
	
	resultErrored := resultsWindow history at: 23.
	self assert: (resultErrored isKindOf: Text).
	self assert: (resultErrored colorAt: 1) = (ATDDTestingEntity colorDictionary at: #error).