accessing-ui
buttons
	^ #(( 'Run Selected' #runAll #hasRunnable )
		( 'Run Profiled' #runProfiled #hasRunnable )
		( 'Run Coverage' #runCoverage #hasRunnable )
		( 'Run Failures' #runFailures #hasFailures )
		( 'Run Errors' #runErrors #hasErrors ))