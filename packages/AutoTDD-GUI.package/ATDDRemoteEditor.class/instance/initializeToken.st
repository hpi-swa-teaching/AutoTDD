initialization
initializeToken
	
	token := ValueHolder new contents: self target token.
	token addDependent: self