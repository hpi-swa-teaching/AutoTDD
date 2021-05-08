action
openQuickOverviewForWatcher: aWatcher
	
	aWatcher notNil ifTrue: [ ^ ATDDQuickOverview openForTarget: aWatcher ]