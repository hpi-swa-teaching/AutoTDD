building
openOverview
	
	self selectedWatchers size + self selectedTravisStatuses size + self selectedGitHubActions size
		> 0
		ifTrue: [ ^ ATDDOverview openForWatchers: self selectedWatchers asOrderedCollection forStatuses: self selectedTravisStatuses asOrderedCollection forActions: self selectedGitHubActions asOrderedCollection]
		ifFalse: [ UIManager default inform: 'Please select any Watchers, Travis Statuses or GitHub Actions' ]