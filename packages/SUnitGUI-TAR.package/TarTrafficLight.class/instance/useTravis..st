accessing
useTravis: aBoolean
	
	useTravis := aBoolean.
	aBoolean
		ifTrue: [
			self travisData: (TravisCIRepository newForRepository: self travisSource) ]
		ifFalse: [
			self travisData: nil ]