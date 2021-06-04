running
setUp
	
	super setUp.
	watchers := { ATDDWatcher new categoriesToTest: #( 'AutoTDD-Dummy-Category' ) } asOrderedCollection.
	travisStatuses := { ATDDTravisStatus new } asOrderedCollection.
	gitHubActions := { ATDDGitHubAction new } asOrderedCollection.
	overview := ATDDOverview openForWatchers: watchers forStatuses: travisStatuses forActions: gitHubActions.
	windowsToDelete := OrderedCollection new.
	windowsToDelete add: overview