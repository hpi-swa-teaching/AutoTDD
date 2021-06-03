calculation
testingEntityCollectionDictionary
	
	"EXACT COPY FROM ATDDBROWSER (where to put this (possibly along with watchers, gitHubActions, ...))"
	
	^ Dictionary
		newFrom: {
			#watchers -> self watchers.
			#travisStatuses -> self travisStatuses.
			#gitHubActions -> self gitHubActions
		}