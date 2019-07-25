accessing
testRunningSemaphore
	
	^ testRunningSemaphore ifNil: [ testRunningSemaphore := Semaphore new ]