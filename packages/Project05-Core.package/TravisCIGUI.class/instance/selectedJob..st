accessing
selectedJob: aNumber

	selectedJob := aNumber.
	self
		changed: #selectedJob;
		changed: #log