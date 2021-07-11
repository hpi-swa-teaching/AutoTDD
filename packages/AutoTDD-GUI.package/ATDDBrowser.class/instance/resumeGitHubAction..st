action
resumeGitHubAction: aGitHubAction
	
	[ aGitHubAction resume ] 
		on: ATDDAccessDeniedError
		do: [
			UIManager default inform: ATDDRateLimitError defaultMessage.
			self pauseTestingEntity: aGitHubAction
		 ]