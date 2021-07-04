constants
globalFunctionalityDictionary
	
	^ OrderedDictionary
		newFrom: {
			(self playImage scaledToHeight: self largeImageHeight) -> #runAll.
			(self pauseImage scaledToHeight: self largeImageHeight) -> #pauseAll.
			(self resumeImage scaledToHeight: self largeImageHeight) -> #resumeAll.
			(self overviewImage scaledToHeight: self largeImageHeight) -> #openOverview.
			#soundsButtonImage -> #toggleSounds.
			(self profileImage scaledToHeight: self largeImageHeight) -> #openProfileEditor
		}