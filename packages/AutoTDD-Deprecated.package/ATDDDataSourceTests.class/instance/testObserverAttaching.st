tests
testObserverAttaching
	| observer |
	observer := ATDDDataSource new.
	datasource attach: observer.
	self assert: datasource observers size == 1