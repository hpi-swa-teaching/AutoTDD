accessing
startHeadlessImage

	^ OSProcess command: Smalltalk vm vmFileName , ' -headless ' , Smalltalk imagePath 