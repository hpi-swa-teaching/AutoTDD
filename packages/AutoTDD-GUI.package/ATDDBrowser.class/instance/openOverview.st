building
openOverview
	
	self selectedWatchers size + self selectedTravisStatuses size + self selectedGitHubActions size
		> 0
		ifTrue: [ ^ ATDDOverview openForWatchers: self selectedWatchers 
			forStatuses: self selectedTravisStatuses 
			forActions: self selectedGitHubActions ]
		ifFalse: [ UIManager default inform: 'Please select any Watchers, Travis Statuses or GitHub Actions' ].
		