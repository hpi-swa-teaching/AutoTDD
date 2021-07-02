tests
testSingleton
	
	| dataSource |
	
	dataSource := ATDDNullDataSource instance.
	self assert: dataSource equals: dataSource.
	self assert: ATDDNullDataSource allInstances size <= 1
	
	"Todo in singleton tests: check if new/initialize throw errors"