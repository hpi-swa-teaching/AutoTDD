tests
testSave

	| amount |
	
	amount := browser gitHubActions size.
	editor repositoryUrl: 'hpi-swa-teaching/AutoTDD'.
	editor token: ''.
	editor client apiUrl: 'http://localhost:9999/'.
	editor save.
	self assert: browser gitHubActions size equals: amount + 1