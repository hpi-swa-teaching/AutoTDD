tests
testExpandTestResults
	self deny: sut extendResultButton visible.
	sut categoryChanged.
	sut testRunningSemaphore wait.
	self deny: sut extendResultButton visible.
	sut categoryChanged.
	sut testRunningSemaphore wait.
	self deny: sut extendResultButton visible.
	sut categoryChanged.
	sut testRunningSemaphore wait.
	self assert: sut extendResultButton visible.
	sut extendResultButtonClicked.
	self assert: sut resultsExpanded.
	sut extendResultButtonClicked.
	self deny: sut resultsExpanded.