constants
testingEntities
	
	"The order of these statuses is not arbitrary!"
	"This is still somewhat inelegant because the 
	reason for this has nothing to do with this class"
	
	^ OrderedCollection
		newFrom: {
			#watcher.
			#travisStatus.
			#gitHubAction
		}