action
openInfoForSelectedTravisStatuses
	| collection |
	collection := OrderedCollection new.
	self selectedTravisStatuses do: [:travisStatus | collection add: (self openInfoForTravisStatus: travisStatus)].
	^ collection