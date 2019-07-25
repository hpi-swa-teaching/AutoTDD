behaviour
resume
	
	self process ifNil: [ self process: self newRefreshProcess ].
	super resume.
	self updateStatus