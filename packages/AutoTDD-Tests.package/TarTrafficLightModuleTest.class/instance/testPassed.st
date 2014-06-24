as yet unclassified
testPassed
	
	sut local testCategories: #('AutoTDD-Dummy-Success-Tests').
	sut updateData.
	sut local data testRunningSemaphore wait.
	self assert: sut local state equals: #passed