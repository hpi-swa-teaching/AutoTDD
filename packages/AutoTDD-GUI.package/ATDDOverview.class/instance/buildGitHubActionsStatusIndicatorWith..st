building
buildGitHubActionsStatusIndicatorWith: aBuilder
	"TODO when the functionality is implemented those travis methods need to be changed with those for GitHub Actions" 
	
	^ aBuilder pluggableButtonSpec new
		model: travisStatusIndicator;
		action: [ self openTravisStatusResults ];
		label: #contents;
		enabled: true;
		yourself