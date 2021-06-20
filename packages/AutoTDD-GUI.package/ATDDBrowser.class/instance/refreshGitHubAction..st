action
refreshGitHubAction: aGitHubAction
	
	[ aGitHubAction refresh ] 
		on: ATDDAccessDeniedError
		do: [
			UIManager default inform: ATDDAccessDeniedError rateLimitMessage.
			self pauseTestingEntity: aGitHubAction
		 ]