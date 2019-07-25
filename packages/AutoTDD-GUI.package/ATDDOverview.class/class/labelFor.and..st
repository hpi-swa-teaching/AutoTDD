instance creation
labelFor: aWatcherCollection and: aStatusCollection 
	| items |
	items := OrderedCollection new
				addAll: aWatcherCollection;
				addAll: aStatusCollection;
				yourself.
	^ ATDDBrowser baseTitle , ': Overview for ', (items collect: [:each | each name]) asCommaString.
