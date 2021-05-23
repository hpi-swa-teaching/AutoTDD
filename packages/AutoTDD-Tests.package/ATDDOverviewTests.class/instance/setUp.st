running
setUp
	
	super setUp.
	watchers := { ATDDWatcher new categoriesToTest: #( 'AutoTDD-Dummy-Category' ) }.
	travisStatuses := { ATDDTravisStatus new }.
	gitHubActions := { ATDDGitHubAction new }.
	overview := ATDDOverview openForWatchers: watchers forStatuses: travisStatuses forActions: gitHubActions.
	windowsToDelete := OrderedCollection new.
	windowsToDelete add: overview