tests
testValidateSlug

	| gui |
	gui := TravisCIGUI new.
	self
		shouldnt: [gui validate: 'a/b'] raise: Error;
		shouldnt: [gui validate: 'a0/-b'] raise: Error;
		should: [gui validate: 'a/'] raise: Error;
		should: [gui validate: '/b'] raise: Error;
		should: [gui validate: '/'] raise: Error;
		should: [gui validate: 'a /b'] raise: Error;
		should: [gui validate: 'a/ b'] raise: Error;
		should: [gui validate: ' a/b'] raise: Error;
		should: [gui validate: 'a/b '] raise: Error;
		should: [gui validate: 'a/b/c'] raise: Error;
		should: [gui validate: 'ab'] raise: Error