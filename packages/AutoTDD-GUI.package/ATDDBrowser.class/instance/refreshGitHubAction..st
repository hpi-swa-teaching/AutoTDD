action
refreshGitHubAction: aGitHubAction
	
	[ aGitHubAction refresh ] 
		on: ATDDAccessDeniedError
		do: [
			UIManager default inform: ATDDRateLimitError defaultMessage.
			self pauseTestingEntity: aGitHubAction
		 ]