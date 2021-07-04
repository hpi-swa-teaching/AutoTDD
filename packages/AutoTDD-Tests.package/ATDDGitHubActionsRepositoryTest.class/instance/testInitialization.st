tests
testInitialization

	| newClient |

	newClient := ATDDGitHubActionsClient new.
	repository client: newClient.
	self assert: repository client equals: newClient