as yet unclassified
testErrored
	
	"builderCI tests all TestCases from our Baseline, even our dummies. To let Travis-CI pass,
	the dummies are disabled"
	"sut local testCategories: #('AutoTDD-Dummy-Failure-Tests').
	sut updateData.
	sut local data testRunningSemaphore wait.
	self assert: sut local state equals: #errored"