tests
testEditPauseResultsForSelectedGitHubActions

	| gha amount window |
	
	gha := ATDDGitHubAction new.
	gha repositoryURL: 'hpi-swa-teaching/AutoTDD';
	refreshInterval: 300.
	"Making it use the Mock API"
	gha repository client apiUrl: 'http://localhost:9999/'. 
	gha resume.
	browser gitHubActions addLast: gha.
	ATDDBrowser update.
	self assert: (browser gitHubActionAt: 1) equals: false.
	browser gitHubActionAt: 1 put: true.
	self assert: (browser gitHubActionAt: 1) equals: true.
	self assert: (browser selectedGitHubActions includes: gha).
	amount := ATDDGitHubActionEditor allInstances size.
	"Opens an editor for the selected gitHubAction"
	window := browser editGitHubActions.
	self assert: ATDDGitHubActionEditor allInstances size = (amount + 1).
	windowsToDelete add: window.
	amount := ATDDGitHubActionResults allInstances size.
	"Opens results for the selected gitHubAction"
	window := browser resultsGitHubActions.
	windowsToDelete add: window.
	self assert: ATDDGitHubActionResults allInstances size = (amount + 1).
	self assert: (browser selectedGitHubActions allSatisfy:  [ :each | each paused not ]).
	browser pauseGitHubActions.
	self assert: (browser selectedGitHubActions allSatisfy: [ :each | each paused ]).
	browser resumeSelectedGitHubActions.
	self assert: (browser selectedGitHubActions allSatisfy: [ :each | each paused not ]).
	browser removeSelectedGitHubActions.
	self assert: browser selectedGitHubActions isEmpty