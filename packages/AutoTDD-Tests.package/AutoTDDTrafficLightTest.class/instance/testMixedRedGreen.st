tests
testMixedRedGreen
	^self
	"| trafficLightResult |
	self testRed.
	sut testCategory: 'SUnitGUI-TAR-Dummy-Success-Tests'.
	sut categoryChanged.
	sut testRunningSemaphore wait.
	trafficLightResult := sut trafficLightResults first.
	self assert: sut testStatus = #green.
	self assert: trafficLightResult color = Color green.
	self
		assert: (trafficLightResult testResultErrorCases isEmpty and: trafficLightResult testResultFailureCases isEmpty).
	trafficLightResult mouseDown: nil.
	self assert: trafficLightResult testResultMorphs isEmpty.
	trafficLightResult := sut trafficLightResults first.
	self assert: trafficLightResult testResultMorphs isEmpty"