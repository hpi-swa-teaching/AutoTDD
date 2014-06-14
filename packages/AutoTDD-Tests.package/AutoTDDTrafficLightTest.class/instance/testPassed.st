tests
testPassed
	
	sut testCategories: #('AutoTDD-Dummy-Success-Tests').
	sut updateData.
	sut localData testRunningSemaphore wait.
	self assert: sut localState equals: #passed