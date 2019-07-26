tests
testValidateSlug
	
	self
		shouldnt: [ repository repository: 'a/b' ] raise: TCINoValidSlugError;
		shouldnt: [ repository repository: 'a0/-b' ] raise: TCINoValidSlugError;
		should: [ repository repository: 'a/' ] raise: TCINoValidSlugError;
		should: [ repository repository: '/b' ] raise: TCINoValidSlugError;
		should: [ repository repository: '/' ] raise: TCINoValidSlugError;
		should: [ repository repository: 'a /b' ] raise: TCINoValidSlugError;
		should: [ repository repository: 'a/ b' ] raise: TCINoValidSlugError;
		should: [ repository repository: ' a/b' ] raise: TCINoValidSlugError;
		should: [ repository repository: 'a/b ' ] raise: TCINoValidSlugError;
		should: [ repository repository: 'a/b/c' ] raise: TCINoValidSlugError;
		should: [ repository repository: 'ab' ] raise: TCINoValidSlugError