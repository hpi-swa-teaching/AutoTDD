event handling
travisOnOffButtonClicked
	
	self useTravis: self useTravis not.
	self useTravis
		ifTrue: [
			self travisOnOffButton state: #on.
			self data: (TravisCIRepository newForRepository: self travisSource) ]
		ifFalse: [
			self travisOnOffButton state: #off.
			self data: nil ]