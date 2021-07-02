tests
testThrowExceptionForResponseCode

	self should: [client throwExceptionForResponseCode: 401] raise: ATDDConnectionError.
	self should: [client throwExceptionForResponseCode: 403] raise: ATDDAccessDeniedError. 
	self should: [client throwExceptionForResponseCode: 404] raise: ATDDNotFoundError
	