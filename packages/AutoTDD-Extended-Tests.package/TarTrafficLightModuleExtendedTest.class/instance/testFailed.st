as yet unclassified
testFailed
	
	sut local testCategories: #('AutoTDD-Dummy-Failure-Tests').
	sut updateData.
	sut local data testRunningSemaphore wait.
	self assert: sut local state equals: #failed