accessing
useLocal: aBoolean
	
	useLocal := aBoolean.
	aBoolean
		ifTrue: [
			self localData: (TarResults initializeForCategories: self categories withTestsIn: self testCategories) ]
		ifFalse: [
			self localData: nil ]