tests
testObserverAttaching
	
	| observer |
	
	observer := ATDDDataSourceOld new.
	datasource attach: observer.
	self assert: datasource observers size == 1