action
openLocalResults
	| windows |
	windows := OrderedCollection new.
	self watchers
		do: [:each | windows add: (ATDDWatcherResults openForTarget: each)].
	^ windows