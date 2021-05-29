accessing
terminateProcess
	
	self process
		ifNotNil: [
			self process terminate.
			self process: nil ]