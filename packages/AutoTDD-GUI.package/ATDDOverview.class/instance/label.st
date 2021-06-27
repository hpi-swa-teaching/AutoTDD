building
label
	
	| items |
	
	items := OrderedCollection new
		addAll: self watchers;
		addAll: self travisStatuses;
		addAll: self gitHubActions;
		yourself.
	
	^ ATDDBrowser baseTitle , ': Overview for ', (items collect: [ :each | each name ]) asCommaString