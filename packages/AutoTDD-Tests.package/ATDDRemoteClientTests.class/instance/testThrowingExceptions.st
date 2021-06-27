testing
testThrowingExceptions

	self should: [ remoteClient throwExceptionForResponseCode: 401 ] raise: ATDDConnectionError.
	self should: [ remoteClient throwExceptionForResponseCode: 403 ] raise: ATDDAccessDeniedError.
	self should: [ remoteClient throwExceptionForResponseCode: 404 ] raise: ATDDNotFoundError
