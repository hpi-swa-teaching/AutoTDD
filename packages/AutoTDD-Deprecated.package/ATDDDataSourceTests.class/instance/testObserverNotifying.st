tests
testObserverNotifying
	| observer |
	observer := ATDDDataSource new.
	datasource attach: observer.
	self
		should: [datasource notify]
		raise: SubclassResponsibility