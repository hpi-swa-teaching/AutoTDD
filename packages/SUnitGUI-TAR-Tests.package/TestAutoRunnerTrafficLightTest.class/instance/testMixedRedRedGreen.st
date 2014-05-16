tests
testMixedRedRedGreen
	"| trafficLightResult |
	self testMixedRedRed.
	sut testCategory: 'SUnitGUI-TAR-Dummy-Success-Tests'.
	sut categoryChanged.
	sut testRunningSemaphore wait.
	trafficLightResult := sut trafficLightResults first.
	self assert: sut testStatus = #green.
	self assert: trafficLightResult color = Color green.
	self
		assert: (trafficLightResult testResultFailures isEmpty and: trafficLightResult testResultErrors isEmpty).
	trafficLightResult mouseDown: nil.
	trafficLightResult testResultMorphs
		do: [ :aTestResultMorph | self assert: aTestResultMorph isEmpty ]"