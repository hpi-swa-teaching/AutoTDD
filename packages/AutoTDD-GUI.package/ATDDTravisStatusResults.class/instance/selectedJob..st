accessing
selectedJob: anObject
	selectedJob := anObject.
	self
		changed: #selectedJob;
		updateJobLog