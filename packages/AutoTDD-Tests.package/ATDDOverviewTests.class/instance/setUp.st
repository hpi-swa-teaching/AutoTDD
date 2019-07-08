running
setUp
	super setUp.
	
	watchers := {ATDDWatcher new categoriesToTest: #('AutoTDD-Dummy-Category')}.
	travisStatuses := {ATDDTravisStatus new}.
	
	overview := ATDDOverview openForWatchers: watchers forStatuses: travisStatuses.
	windowsToDelete := OrderedCollection new.
	windowsToDelete add: overview