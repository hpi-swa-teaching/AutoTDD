constants
globalFunctionalityDictionary
	
	^ OrderedDictionary
		newFrom: {
			(self pauseImage scaledToHeight: self largeImageHeight) -> #pauseAll.
			(self resumeImage scaledToHeight: self largeImageHeight) -> #resumeAll.
			(self playImage scaledToHeight: self largeImageHeight) -> #runAll.
			(self overviewImage scaledToHeight: self largeImageHeight) -> #openOverview.
			#soundsButtonImage -> #toggleSounds
		}