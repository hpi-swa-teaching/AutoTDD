event handling
onTravisButtonClicked
	
	self useTravis: self useTravis not.
	self useTravis
		ifTrue: [
			self travisOnOffButton state: #on.
			self data: (TravisCIRepository newForRepository: self travisSource asString).
			self data attach: self.
			self changed]
		ifFalse: [
			self travisOnOffButton state: #off.
			self data deattach: self.
			self changed ]