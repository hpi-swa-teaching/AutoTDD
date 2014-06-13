accessing
useLocal: aBoolean
	
	useLocal := aBoolean.
	aBoolean
		ifTrue: [
			self localData: (TarTestAutoRunner initializeForCategories: self categories withTestsIn: self testCategories) ]
		ifFalse: [
			self localData: nil ]