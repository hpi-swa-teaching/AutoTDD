tests
testValidateSlug

	self
		shouldnt: [TravisCIGUI validate: 'a/b'] raise: Error;
		shouldnt: [TravisCIGUI validate: 'a0/-b'] raise: Error;
		should: [TravisCIGUI validate: 'a/'] raise: Error;
		should: [TravisCIGUI validate: '/b'] raise: Error;
		should: [TravisCIGUI validate: '/'] raise: Error;
		should: [TravisCIGUI validate: 'a /b'] raise: Error;
		should: [TravisCIGUI validate: 'a/ b'] raise: Error;
		should: [TravisCIGUI validate: ' a/b'] raise: Error;
		should: [TravisCIGUI validate: 'a/b '] raise: Error;
		should: [TravisCIGUI validate: 'a/b/c'] raise: Error;
		should: [TravisCIGUI validate: 'ab'] raise: Error