action
openResultsForSelectedTravisStatuses
	| collection |
	collection := OrderedCollection new.
	self selectedTravisStatuses do: [:travisStatus | collection add: (self openResultsForTravisStatus: travisStatus)].
	^ collection