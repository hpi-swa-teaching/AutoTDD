tests
testEditPauseResultsForSelectedTravisStatuses

	| travisSatus amount window |
	
	travisSatus := ATDDTravisStatus new.
	travisSatus repositoryURL: 'hpi-swa-teaching/AutoTDD';
	refreshInterval: 300. 
	travisSatus resume.
	browser travisStatuses addLast: travisSatus.
	ATDDBrowser update.
	self assert: (browser travisStatusAt: 1) equals: false.
	browser travisStatusAt: 1 put: true.
	self assert: (browser travisStatusAt: 1) equals: true.
	self assert: (browser selectedTravisStatuses includes: travisSatus).
	amount := ATDDTravisStatusEditor allInstances size.
	"Opens an editor for the selected travisSatus"
	window := browser editTravisStatuses.
	self assert: ATDDTravisStatusEditor allInstances size = (amount + 1).
	windowsToDelete add: window.
	amount := ATDDTravisStatusResults allInstances size.
	"Opens results for the selected travisSatus"
	window := browser resultsTravisStatuses.
	windowsToDelete add: window.
	self assert: ATDDTravisStatusResults allInstances size = (amount + 1).
	self assert: (browser selectedTravisStatuses allSatisfy:  [ :each | each paused not ]).
	browser pauseTravisStatuses.
	self assert: (browser selectedTravisStatuses allSatisfy: [ :each | each paused ]).
	browser resumeSelectedTravisStatuses.
	self assert: (browser selectedTravisStatuses allSatisfy: [ :each | each paused not ]).
	browser removeSelectedTravisStatuses.
	self assert: browser selectedTravisStatuses isEmpty