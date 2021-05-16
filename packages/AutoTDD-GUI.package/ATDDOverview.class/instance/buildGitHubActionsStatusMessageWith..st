building
buildGitHubActionsStatusMessageWith: aBuilder
	"TODO: Those methods need to be changed when the functionality for GitHub Actions is implemented"
	 
	^ aBuilder pluggableInputFieldSpec new
		model: travisStatusMessage;
		indicateUnacceptedChanges: false;
		readOnly: true;
		getText: #contents;
		softLineWrap: true;
		yourself