constants
globalFunctionalityDictionary
	
	^ OrderedDictionary
		newFrom: {
			(self pauseImage scaledToHeight: self defaultImageHeight) -> #pauseAll.
			(self resumeImage scaledToHeight: self defaultImageHeight) -> #resumeAll.
			'Run' -> #runAll.
			(self overviewImage scaledToHeight: self defaultImageHeight) -> #openOverview.
			#soundsButtonLabel -> #toggleSounds
		}