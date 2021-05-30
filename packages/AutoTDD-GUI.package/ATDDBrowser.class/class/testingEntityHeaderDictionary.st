constants
testingEntityHeaderDictionary
	
	^ Dictionary
		newFrom: {
			#watcher -> (ValueHolder new contents: 'Watchers').
			#travisStatus -> (ValueHolder new contents: 'Travis Statuses').
			#gitHubAction -> (ValueHolder new contents: 'GitHub Actions')
		}