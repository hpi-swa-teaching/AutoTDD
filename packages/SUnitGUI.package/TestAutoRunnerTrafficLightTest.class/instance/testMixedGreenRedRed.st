tests
testMixedGreenRedRed
	"| trafficLightResult |
	self testMixedGreenRed.
	sut categoryChanged.
	sut testRunningSemaphore wait.
	trafficLightResult := sut trafficLightResults first.
	self assert: trafficLightResult color = Color red.
	self assert: trafficLightResult testResultErrorCases size = 3.
	trafficLightResult mouseDown: nil.
	self
		assert: ('E(0)*' match: trafficLightResult timeStampMorph contents asString).
	self assert: trafficLightResult testResultMorphs size = 3.
	trafficLightResult testResultMorphs
		do: [ :aTestResultMorph | self assert: aTestResultMorph color = Color red ].
	trafficLightResult := sut trafficLightResults last.
	self assert: trafficLightResult testResultMorphs isEmpty"