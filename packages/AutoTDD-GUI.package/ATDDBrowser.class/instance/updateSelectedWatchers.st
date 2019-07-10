updating
updateSelectedWatchers
	self
		selectedWatchers: (self findSelectedItemsForCollection: self travisStatuses withSelected: self selectedTravisStatuses);
		changed: #selectedWatchers