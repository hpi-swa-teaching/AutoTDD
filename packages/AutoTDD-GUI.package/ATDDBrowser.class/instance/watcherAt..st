as yet unclassified
watcherAt: anIndex
	^ self selectedWatchers includes:
		(self watchers at: anIndex ifAbsent: [ ^ false ])