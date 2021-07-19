tests
testConfiguration

	job := ATDDGitHubActionWorkflowJob new.
	self
		assert: job id isNil;
		assert: job name isNil;
		assert: job conclusion isNil.
	
	job
		id: 42;
		name: '42';
		conclusion: 'unknown'.
	
	self
		assert: job id = 42;
		assert: job name = '42';
		assert: job conclusion = 'unknown'.
		
	job := ATDDGitHubActionWorkflowJob newForId: 4242 name: '4242' conclusion: 'unknown'.
	
	self
		assert: job id = 4242;
		assert: job name = '4242';
		assert: job conclusion = 'unknown'.