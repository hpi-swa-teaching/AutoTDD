constants
travisStatusFunctionalityDictionary
	
	^ OrderedDictionary
		newFrom: {
			(self addImage scaledToHeight: self defaultImageHeight) -> #createTravisStatus.
			(self pauseImage scaledToHeight: self defaultImageHeight) -> #pauseTravisStatuses.
			(self resumeImage scaledToHeight: self defaultImageHeight) -> #resumeSelectedTravisStatuses.
      		(self editImage scaledToHeight: self defaultImageHeight) -> #editTravisStatuses.
			(self resultsImage scaledToHeight: self defaultImageHeight) -> #resultsTravisStatuses.
			(self removeImage scaledToHeight: self defaultImageHeight) -> #removeSelectedTravisStatuses
		}