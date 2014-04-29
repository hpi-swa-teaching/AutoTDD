tests
testRed
	| trafficLightResult |
	sut testCategory: 'SUnitGUI-TAR-Dummy-Error-Tests'.
	sut categoryChanged.
	sut testRunningSemaphore wait.
	trafficLightResult := sut trafficLightResults first.
	self assert: sut testStatus = #red.
	self assert: trafficLightResult color = Color red.
	self assert: trafficLightResult testResultErrors size = 3.
	self
		assert: ('E(+3)*' match: trafficLightResult timeStampMorph contents asString).
	trafficLightResult mouseDown: nil.
	self assert: trafficLightResult testResultMorphs size = 3.
	trafficLightResult testResultMorphs
		do: [ :aTestResultMorph | self assert: aTestResultMorph color = Color red ]