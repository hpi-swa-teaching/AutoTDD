action
openTravisStatusResults
	| windows |
	windows := OrderedCollection new.
	self travisStatuses
		do: [:each | windows add: (ATDDTravisStatusResults openForTarget: each)].
	^ windows