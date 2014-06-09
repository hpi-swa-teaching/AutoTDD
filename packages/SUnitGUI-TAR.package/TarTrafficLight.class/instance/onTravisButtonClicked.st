event handling
onTravisButtonClicked
	
	self useTravis: self useTravis not.
	self useTravis
		ifTrue: [
			self travisOnOffButton state: #on.
			self data: (TravisCIRepository newForRepository: self travisSource asString) ]
		ifFalse: [
			self travisOnOffButton state: #off.
			self data: nil ]