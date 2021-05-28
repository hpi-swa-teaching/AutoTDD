accessing
selectedJob: aNumber
	
	selectedJob := aNumber.
	self changed: #selectedJob.
	aNumber >  0 ifTrue: [ self updateJobLogForId: ( (self jobs at: selectedJob) id ) ] 