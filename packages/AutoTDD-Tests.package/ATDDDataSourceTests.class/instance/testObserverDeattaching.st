tests
testObserverDeattaching
	| observer |
	observer := ATDDDataSource new.
	datasource attach: observer.
	self
		should: [datasource deattach: observer]
		raise: SubclassResponsibility