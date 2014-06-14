accessing
useTravisPro: aBoolean
	
	useTravisPro := aBoolean.
	self travisData ifNotNil: [ self travisData useTravisPro: self useTravisPro ]