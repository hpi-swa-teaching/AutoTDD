accessing
run: aResult
	
	| testCounter |
	
	testCounter := 0.
	self valueHolder contents: 0.0.
	self tests
		do: [ :each |
			self changed: each.
			each run: aResult.
			testCounter := testCounter + 1.
			self valueHolder contents: testCounter / self tests size ]