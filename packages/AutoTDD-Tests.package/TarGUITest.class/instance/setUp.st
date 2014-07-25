running
setUp

	super setUp.
	(sut
		data: (TARTestAutoRunner
			initializeForCategories: #('AutoTDD-Dummy-Category')
			withTestsIn: #('AutoTDD-Dummy-Success-Tests' 'AutoTDD-Dummy-Failure-Tests'
				'AutoTDD-Dummy-Error-Tests'));
		yourself) open.
	sut updateData.
	sut data testRunningSemaphore wait