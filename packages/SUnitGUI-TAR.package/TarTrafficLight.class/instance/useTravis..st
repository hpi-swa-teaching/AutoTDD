accessing
useTravis: aBoolean
	
	useTravis := aBoolean.
	aBoolean
		ifTrue: [
			self data: (TravisCIRepository newForRepository: self travisSource) ]
		ifFalse: [
			self data: nil ]