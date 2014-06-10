accessing
useLocal: aBoolean
	
	useLocal := aBoolean.
	aBoolean
		ifTrue: [
			self localData: (TarResults initializeForCategory: self category withTestsIn: self testCategory) ]
		ifFalse: [
			self localData: nil ]