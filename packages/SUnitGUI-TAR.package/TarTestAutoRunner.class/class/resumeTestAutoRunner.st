as yet unclassified
resumeTestAutoRunner

	self instances
		do: [ :instance | instance listenForNotificationsAbout: instance categories withTestsIn: instance testCategories ]