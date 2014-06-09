morphcreation
createTestResultTextOn: aTestResultMorph withText: aCaseName consider: aBoolean
	| testResultText |
	testResultText := TextMorph new.
	testResultText position: aTestResultMorph position + (5@0).
	aBoolean 
		ifTrue: [ testResultText contents: '* ', aCaseName ]
		ifFalse: [ testResultText contents: aCaseName ].
	aTestResultMorph addMorph: testResultText;
		extent: (testResultText width + 10) @ self height