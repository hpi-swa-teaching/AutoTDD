as yet unclassified
setUp

	super setUp.
	(sut
		data: (TarTestAutoRunner
			initializeForCategories: #('AutoTDD-Dummy-Category')
			withTestsIn: #('AutoTDD-Dummy-Success-Tests' 'AutoTDD-Dummy-Failure-Tests'
				'AutoTDD-Dummy-Error-Tests'));
		yourself) open.
	sut updateData.
	sut data testRunningSemaphore wait