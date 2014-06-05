event handling
testResultErrorMorphClicked: evt forMorph: aTestMorph
	| testCaseName testCase |
	testCaseName := testResultMorphs keyAtValue: aTestMorph.
	testCase := testResultErrorCases at: testCaseName.
	testCase debug