constants
stateColorDictionary

	^ IdentityDictionary newFrom: {
		#canceled 	-> [ ATDDTrafficLight darkGray ].
		#created 	-> [ ATDDTrafficLight yellow ].
		#errored 	-> [ ATDDTrafficLight darkGray ].
		#failed 		-> [ ATDDTrafficLight red ].
		#passed 	-> [ ATDDTrafficLight green ].
		#queued 	-> [ ATDDTrafficLight yellow ].
		#started 	-> [ ATDDTrafficLight yellow ].
		#unknown 	-> [ ATDDTrafficLight darkGray ] }