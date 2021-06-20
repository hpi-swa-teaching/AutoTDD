action
simplifyLogCheckBoxAction
	
	self shouldSimplifyLog: self shouldSimplifyLog not.
	self updateJobLogForId: (self jobs at: selectedJob) id