tests
testValidateSlug

	| repo |
	repo := TravisCIRepository new.
	self
		shouldnt: [repo validate: 'a/b'] raise: Error;
		shouldnt: [repo validate: 'a0/-b'] raise: Error;
		should: [repo validate: 'a/'] raise: Error;
		should: [repo validate: '/b'] raise: Error;
		should: [repo validate: '/'] raise: Error;
		should: [repo validate: 'a /b'] raise: Error;
		should: [repo validate: 'a/ b'] raise: Error;
		should: [repo validate: ' a/b'] raise: Error;
		should: [repo validate: 'a/b '] raise: Error;
		should: [repo validate: 'a/b/c'] raise: Error;
		should: [repo validate: 'ab'] raise: Error.
	repo delete