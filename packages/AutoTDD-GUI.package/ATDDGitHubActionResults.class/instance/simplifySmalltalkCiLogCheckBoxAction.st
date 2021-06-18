building
simplifySmalltalkCiLogCheckBoxAction
	
	self shouldSimplifySmalltalkCiLog: self shouldSimplifySmalltalkCiLog not.
	self updateJobLogForId: ( (self jobs at: selectedJob) id )