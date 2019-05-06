constants
stateColorDictionary

	^ IdentityDictionary newFrom: {
		#errored 	-> [ ATDDTrafficLight red ].
		#failed 		-> [ ATDDTrafficLight yellow ].
		#passed 	-> [ ATDDTrafficLight green ].
		#unknown 	-> [ ATDDTrafficLight fontColor ] }