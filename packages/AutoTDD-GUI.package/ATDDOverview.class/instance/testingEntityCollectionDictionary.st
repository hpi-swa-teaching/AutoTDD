constants
testingEntityCollectionDictionary
	
	"EXACT COPY FROM ATDDBROWSER (where to put this (possibly along with watchers, gitHubActions, ...))"
	
	^ Dictionary
		newFrom: {
			#watcher -> self watchers.
			#travisStatus -> self travisStatuses.
			#gitHubAction -> self gitHubActions
		}