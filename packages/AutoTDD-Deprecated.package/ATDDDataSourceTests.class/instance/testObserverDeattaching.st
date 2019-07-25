tests
testObserverDeattaching
	
	| observer |
	
	observer := ATDDDataSourceOld new.
	datasource attach: observer.
	self
		should: [ datasource deattach: observer ]
		raise: SubclassResponsibility