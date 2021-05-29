instance creation
labelFor: aWatcherCollection and: aStatusCollection and: anActionCollection
	
	| items |
	
	items := OrderedCollection new
		addAll: aWatcherCollection;
		addAll: aStatusCollection;
		addAll: anActionCollection;
		yourself.
	
	^ ATDDBrowser baseTitle , ': Overview for ', (items collect: [ :each | each name ]) asCommaString