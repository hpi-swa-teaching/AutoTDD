building
buildGitHubActionsStatusIndicatorWith: aBuilder
	"TODO when the functionality is implemented those travis methods need to be changed with those for GitHub Actions" 
	
	^ aBuilder pluggableButtonSpec new
		model: gitHubActionIndicator;
		action: [ self openGitHubActionsResults ];
		label: #contents;
		enabled: true;
		yourself