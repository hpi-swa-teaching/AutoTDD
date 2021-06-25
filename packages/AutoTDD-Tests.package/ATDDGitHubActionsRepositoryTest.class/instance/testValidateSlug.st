tests
testValidateSlug
	
	self
		shouldnt: [ repository repository: 'a/b' ] raise: ATDDNoValidSlugError;
		shouldnt: [ repository repository: 'a0/-b' ] raise: ATDDNoValidSlugError;
		should: [ repository repository: 'a/' ] raise: ATDDNoValidSlugError;
		should: [ repository repository: '/b' ] raise: ATDDNoValidSlugError;
		should: [ repository repository: '/' ] raise: ATDDNoValidSlugError;
		should: [ repository repository: 'a /b' ] raise: ATDDNoValidSlugError;
		should: [ repository repository: 'a/ b' ] raise: ATDDNoValidSlugError;
		should: [ repository repository: ' a/b' ] raise: ATDDNoValidSlugError;
		should: [ repository repository: 'a/b ' ] raise: ATDDNoValidSlugError;
		should: [ repository repository: 'a/b/c' ] raise: ATDDNoValidSlugError;
		should: [ repository repository: 'ab' ] raise: ATDDNoValidSlugError