building
openOverview
	
	self selectedWatchers size + self selectedTravisStatuses size
		> 0
		ifTrue: [ ^ ATDDOverview openForWatchers: self selectedWatchers forStatuses: self selectedTravisStatuses ]
		ifFalse: [ UIManager default inform: 'Please select any Watchers or Travis Statuses' ]