constants
gitHubActionFunctionalityDictionary
	
	^ OrderedDictionary
		newFrom: {
			(self addImage scaledToHeight: self defaultImageHeight)  -> #createGitHubAction.
			(self pauseImage scaledToHeight: self defaultImageHeight)  -> #pauseGitHubActions.
			(self resumeImage scaledToHeight: self defaultImageHeight)  -> #resumeSelectedGitHubActions.
      		(self editImage scaledToHeight: self defaultImageHeight)  -> #editGitHubActions.
			(self resultsImage scaledToHeight: self defaultImageHeight)  -> #resultsGitHubActions.
			(self removeImage scaledToHeight: self defaultImageHeight)  -> #removeSelectedGitHubActions
		}