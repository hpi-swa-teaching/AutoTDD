tests
testObserverNotifying
	| observer |
	observer := ATDDDataSourceOld new.
	datasource attach: observer.
	self
		should: [datasource notify]
		raise: SubclassResponsibility