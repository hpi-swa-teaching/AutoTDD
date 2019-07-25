updating
updateSelectedTravisStatuses
	
	self
		selectedTravisStatuses: (self
				findSelectedItemsForCollection: self travisStatuses
				withSelected: self selectedTravisStatuses);
		changed: #selectedTravisStatuses