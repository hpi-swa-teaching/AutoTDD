action
openQuickWindowForWatcher: aWatcher
	
	aWatcher notNil ifTrue: [ ^ ATDDQuickOverview openForTarget: aWatcher ]