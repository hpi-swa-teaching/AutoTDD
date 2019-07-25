constants
stateTextDictionary
	
	| stateText |
	
	stateText := self parser
		parseStateTextFromLog: self logForCurrentBuildsFirstJob.
	
	^ IdentityDictionary
		newFrom: { #canceled -> [ 'Canceled' ] . #created -> [ 'Created' ] . 
			#errored -> [ stateText ifEmpty: [ 'Errored' ] ] . 
			#failed -> [ stateText ifEmpty: [ 'Failed' ] ] . 
			#passed -> [ stateText ifEmpty: [ 'Passed' ] ] . 
			#queued -> [ 'Queued' ] . #started -> [ 'Started' ] . 
			#unknown -> [ 'Unknown' ] }