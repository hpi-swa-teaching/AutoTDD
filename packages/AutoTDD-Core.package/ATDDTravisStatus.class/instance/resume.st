behaviour
resume
	self process
		ifNil: [self process: self startNewRefreshProcess].
	super resume.
	self updateStatus.