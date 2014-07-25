*AutoTDD-Extensions-tests
testErrored
	
	sut local testCategories: #('AutoTDD-Dummy-Error-Tests').
	sut updateData.
	sut local data testRunningSemaphore wait.
	self assert: sut local state equals: #errored