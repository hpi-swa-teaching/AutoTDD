tests
testValidateSlug

	self
		shouldnt: [repository repository: 'a/b'] raise: TravisCINoValidSlugError;
		shouldnt: [repository repository: 'a0/-b'] raise: TravisCINoValidSlugError;
		should: [repository repository: 'a/'] raise: TravisCINoValidSlugError;
		should: [repository repository: '/b'] raise: TravisCINoValidSlugError;
		should: [repository repository: '/'] raise: TravisCINoValidSlugError;
		should: [repository repository: 'a /b'] raise: TravisCINoValidSlugError;
		should: [repository repository: 'a/ b'] raise: TravisCINoValidSlugError;
		should: [repository repository: ' a/b'] raise: TravisCINoValidSlugError;
		should: [repository repository: 'a/b '] raise: TravisCINoValidSlugError;
		should: [repository repository: 'a/b/c'] raise: TravisCINoValidSlugError;
		should: [repository repository: 'ab'] raise: TravisCINoValidSlugError