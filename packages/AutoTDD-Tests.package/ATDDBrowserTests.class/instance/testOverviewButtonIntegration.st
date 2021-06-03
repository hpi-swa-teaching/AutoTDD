tests
testOverviewButtonIntegration
	
	| overviewWindow watcher travisStatus travisStatusesSelection watcherSelection newBrowser |
	
	watcher := ATDDWatcher new.
	ATDDBrowser Watchers addLast: watcher.
	watcherSelection := OrderedCollection new.
	watcherSelection add: watcher.
	browser selectedWatchers: watcherSelection.
	travisStatus := ATDDTravisStatus new.
	ATDDBrowser TravisStatuses addLast: travisStatus.
	travisStatusesSelection := OrderedCollection new.
	travisStatusesSelection add: travisStatus.
	browser selectedTravisStatuses: travisStatusesSelection.
	overviewWindow := browser openOverview.
	self assert: overviewWindow watchers size = 1.
	self assert: overviewWindow watchers asOrderedCollection first == watcher.
	self assert: overviewWindow travisStatuses size = 1.
	self assert: overviewWindow travisStatuses asOrderedCollection first == travisStatus.
	"newBrowser := overviewWindow expand.
	windowsToDelete add: newBrowser.
	self assert: newBrowser selectedWatchers size = 1.
	self assert: newBrowser selectedWatchers asOrderedCollection first == watcher.
	self assert: newBrowser selectedTravisStatuses size = 1.
	self assert: newBrowser selectedTravisStatuses asOrderedCollection first == travisStatus"