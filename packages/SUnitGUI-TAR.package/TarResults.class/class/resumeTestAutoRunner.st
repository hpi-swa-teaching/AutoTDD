as yet unclassified
resumeTestAutoRunner

	self instances
		do: [ :instance | instance listenForNotificationsAbout: instance category withTestsIn: instance testCategory ]