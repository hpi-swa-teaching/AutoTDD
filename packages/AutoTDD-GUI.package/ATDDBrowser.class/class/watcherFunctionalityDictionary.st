constants
watcherFunctionalityDictionary
	
	^ OrderedDictionary
		newFrom: {
			(self addImage scaledToHeight: self defaultImageHeight) -> #createWatcher.
			(self pauseImage scaledToHeight: self defaultImageHeight) -> #pauseWatchers.
			(self resumeImage scaledToHeight: self defaultImageHeight) -> #resumeSelectedWatchers.
			'Run' -> #runSelectedWatchers.
      		(self editImage scaledToHeight: self defaultImageHeight) -> #editWatchers.
			'Info' -> #infoWatchers.
			(self resultsImage scaledToHeight: self defaultImageHeight) -> #resultsWatchers.
			(self removeImage scaledToHeight: self defaultImageHeight) -> #removeSelectedWatchers
		}