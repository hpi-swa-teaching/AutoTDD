accessing
resume
	self process 
		ifNil: [self process: self startNewRefreshProcess.]
		ifNotNil: [self process resume].
	self paused: false.