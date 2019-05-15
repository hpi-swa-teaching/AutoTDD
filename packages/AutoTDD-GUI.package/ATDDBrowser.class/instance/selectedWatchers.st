accessing
selectedWatchers
	^ selectedWatchers ifNil: [ selectedWatchers := OrderedCollection new ]