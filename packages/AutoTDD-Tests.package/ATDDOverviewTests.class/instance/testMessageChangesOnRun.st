running
testMessageChangesOnRun
	
	| postMessage preMessage |
	
	preMessage := overview overallTestingEntityMessageOfType: #watcher.
	watchers do: [ :each | each run ].
	(Delay forSeconds: 1) wait.
	postMessage := overview overallTestingEntityMessageOfType: #watcher.
	self assert: preMessage ~= postMessage