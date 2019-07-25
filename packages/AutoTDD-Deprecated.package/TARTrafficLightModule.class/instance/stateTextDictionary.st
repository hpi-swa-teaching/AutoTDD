constants
stateTextDictionary
	
	^ IdentityDictionary
		newFrom: { #errored
				-> [
				| count |
				
				count := self data results first errorCount.
				count asString , ' Error' , (count
					> 1 ifTrue: [ 's' ] ifFalse: [ String empty ]) ] . 
			#failed
				-> [
				| count |
				
				count := self data results first failureCount.
				count asString , ' Failure' , (count
					> 1 ifTrue: [ 's' ] ifFalse: [ String empty ]) ] . 
			#passed
				-> [
				| count |
				
				count := self data results first passedCount.
				count asString , ' Pass' , (count
					> 1 ifTrue: [ 'es' ] ifFalse: [ String empty ]) ] . 
			#unknown -> [ 'Unknown' ] }