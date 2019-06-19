initialization
initializeRepository
	repository := ValueHolder new contents: ''.
	repository addDependent: self