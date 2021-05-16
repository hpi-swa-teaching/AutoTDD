updating
updateSelectedWatchers
	
	self
		selectedWatchers: (self findSelectedItemsForCollection: self watchers withSelected: self selectedWatchers);
		changed: #selectedWatchers