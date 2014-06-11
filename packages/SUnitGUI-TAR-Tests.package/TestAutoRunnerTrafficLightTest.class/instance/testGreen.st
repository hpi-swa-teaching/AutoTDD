tests
testGreen
	sut testCategories: #('SUnitGUI-TAR-Dummy-Success-Tests').
	sut updateData.
	sut localData testRunningSemaphore wait.
	self assert: sut localState equals: #passed