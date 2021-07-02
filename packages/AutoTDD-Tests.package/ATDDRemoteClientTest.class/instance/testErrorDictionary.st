tests
testErrorDictionary 

	| errorDictionary |

	errorDictionary := client errorDictionary.
	self assert: (errorDictionary at: 401) = ATDDConnectionError.
	self assert: (errorDictionary at: 403) = ATDDAccessDeniedError.
	self assert: (errorDictionary at: 404) = ATDDNotFoundError