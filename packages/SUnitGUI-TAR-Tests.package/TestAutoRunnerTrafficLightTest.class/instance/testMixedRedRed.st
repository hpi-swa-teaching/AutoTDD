tests
testMixedRedRed
	^self
	"| trafficLightResult |
	sut testCategory: 'SUnitGUI-TAR-Dummy-Error-Tests'.
	sut categoryChanged.
	sut testRunningSemaphore wait.
	sut categoryChanged.
	sut testRunningSemaphore wait.
	trafficLightResult := sut trafficLightResults last.
	self assert: sut testStatus = #red.
	self assert: trafficLightResult color = Color red.
	self assert: trafficLightResult testResultErrors size = 3.
	trafficLightResult mouseDown: nil.
	self assert: trafficLightResult testResultMorphs size = 3.
	trafficLightResult testResultMorphs
		do: [ :aTestResultMorph | self assert: aTestResultMorph color = Color red ].
	trafficLightResult := sut trafficLightResults first.
	self assert: trafficLightResult color = Color red.
	self assert: trafficLightResult testResultErrors size = 3.
	trafficLightResult mouseDown: nil.
	self assert: trafficLightResult testResultMorphs size = 3.
	trafficLightResult testResultMorphs
		do: [ :aTestResultMorph | self assert: aTestResultMorph color = Color red ].
	trafficLightResult := sut trafficLightResults last.
	self assert: trafficLightResult testResultMorphs isEmpty"