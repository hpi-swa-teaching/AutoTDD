tests
testYellow
	"| trafficLightResult |
	sut testCategory: 'SUnitGUI-TAR-Dummy-Failure-Tests'.
	sut categoryChanged.
	sut testRunningSemaphore wait.
	trafficLightResult := sut trafficLightResults first.
	self assert: sut testStatus = #yellow.
	self assert: trafficLightResult color = Color yellow.
	self assert: trafficLightResult testResultFailures size = 3.
	self
		assert: ('F(+3)*' match: trafficLightResult timeStampMorph contents asString).
	trafficLightResult mouseDown: nil.
	self assert: trafficLightResult testResultMorphs size = 3.
	trafficLightResult testResultMorphs
		do: [ :aTestResultMorph | self assert: aTestResultMorph color = Color yellow ]"