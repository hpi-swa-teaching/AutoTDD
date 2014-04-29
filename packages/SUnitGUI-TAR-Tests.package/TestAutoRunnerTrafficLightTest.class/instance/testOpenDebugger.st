tests
testOpenDebugger
	| firstResult testResultMorph exceptionCaught |
	exceptionCaught := false.
	sut testCategory: 'SUnitGUI-TAR-Dummy-Failure-Tests'.
	sut categoryChanged.
	sut testRunningSemaphore wait.
	firstResult := sut trafficLightResults first.
	firstResult mouseDown: 0.
	testResultMorph := firstResult testResultMorphs at: 'TestRunnerDummy1Test>>#testDummy'.
	self assert: testResultMorph isNil not.
	[ firstResult testResultFailureMorphClicked: 0 forMorph: testResultMorph ]
		on: TestFailure
		do: [ :ex | exceptionCaught := true and: ex receiver selector = #testDummy and: ex receiver class == TestRunnerDummy1Test ].
	self assert: exceptionCaught