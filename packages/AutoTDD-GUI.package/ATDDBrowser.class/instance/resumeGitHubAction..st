action
resumeGitHubAction: aGitHubAction
	
	[ aGitHubAction resume ] 
		on: ATDDAccessDeniedError
		do: [
			UIManager default inform: ATDDAccessDeniedError rateLimitMessage.
			self pauseTestingEntity: aGitHubAction
		 ]