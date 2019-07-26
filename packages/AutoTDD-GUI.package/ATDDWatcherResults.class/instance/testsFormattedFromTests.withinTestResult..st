accessing
testsFormattedFromTests: aTests withinTestResult: aTestResult
	
	^ aTests
		collect: [ :each |
			Text new
				append: each asString;
				addAttribute: (TextColor color: (self colorForTestCase: each within: aTestResult));
				yourself ]