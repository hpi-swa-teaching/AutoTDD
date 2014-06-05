event handling
testResultFailureMorphClicked: evt forMorph: aTestMorph
	| testCaseName testCase |
	testCaseName := self testResultMorphs keyAtValue: aTestMorph.
	testCase := self testResultFailureCases at: testCaseName.
	testCase debug