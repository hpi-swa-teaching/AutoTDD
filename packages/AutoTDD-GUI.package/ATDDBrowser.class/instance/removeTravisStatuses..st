action
removeTravisStatuses: aTravisStatusList
	self flag: #todo.
	aTravisStatusList notEmpty
		ifTrue: [ aTravisStatusList do: [:travisStatus | travisStatus pause].
				self travisStatuses removeAll: aTravisStatusList ].
	self selectedTravisStatuses: (self findSelectedItemsForCollection: self travisStatuses withSelected: self selectedTravisStatuses).
	self class changed: #travisStatuses