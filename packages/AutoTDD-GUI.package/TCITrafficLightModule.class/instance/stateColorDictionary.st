constants
stateColorDictionary

	^ IdentityDictionary newFrom: {
		#canceled 	-> [ ATDDTrafficLight fontColor ].
		#created 	-> [ ATDDTrafficLight yellow ].
		#errored 	-> [ ATDDTrafficLight fontColor ].
		#failed 		-> [ ATDDTrafficLight red ].
		#passed 	-> [ ATDDTrafficLight green ].
		#queued 	-> [ ATDDTrafficLight yellow ].
		#started 	-> [ ATDDTrafficLight yellow ].
		#unknown 	-> [ ATDDTrafficLight fontColor ] }