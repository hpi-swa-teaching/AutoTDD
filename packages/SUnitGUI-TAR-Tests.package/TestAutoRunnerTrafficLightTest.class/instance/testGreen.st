tests
testGreen
	| trafficLightResult |
	sut testCategory: 'SUnitGUI-TAR-Dummy-Success-Tests'.
	sut categoryChanged.
	sut testRunningSemaphore wait.
	trafficLightResult := sut trafficLightResults first.
	self assert: sut testStatus = #green.
	self assert: trafficLightResult color = trafficLightResult green.
	self assert: trafficLightResult testResultFailures isEmpty.
	self assert: trafficLightResult testResultErrors isEmpty.
	trafficLightResult mouseDown: nil.
	self assert: trafficLightResult testResultMorphs isEmpty.