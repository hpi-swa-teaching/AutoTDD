tests
testValidateSlug
	
	self
		shouldnt: [ repository repository: 'a/b' ] raise: ATDDInvalidSlugError;
		shouldnt: [ repository repository: 'a0/-b' ] raise: ATDDInvalidSlugError;
		should: [ repository repository: 'a/' ] raise: ATDDInvalidSlugError;
		should: [ repository repository: '/b' ] raise: ATDDInvalidSlugError;
		should: [ repository repository: '/' ] raise: ATDDInvalidSlugError;
		should: [ repository repository: 'a /b' ] raise: ATDDInvalidSlugError;
		should: [ repository repository: 'a/ b' ] raise: ATDDInvalidSlugError;
		should: [ repository repository: ' a/b' ] raise: ATDDInvalidSlugError;
		should: [ repository repository: 'a/b ' ] raise: ATDDInvalidSlugError;
		should: [ repository repository: 'a/b/c' ] raise: ATDDInvalidSlugError;
		should: [ repository repository: 'ab' ] raise: ATDDInvalidSlugError