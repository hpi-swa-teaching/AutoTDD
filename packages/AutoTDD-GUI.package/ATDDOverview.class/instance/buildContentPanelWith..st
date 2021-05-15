building
buildContentPanelWith: aBuilder
	
	| children |
	
	children := OrderedCollection new.
	self watchers ifNotEmpty: [ children add: (self buildLocalPanelWith: aBuilder) ].
	self travisStatuses ifNotEmpty: [ children add: (self buildTravisStatusPanelWith: aBuilder) ].
	self watchers ifNotEmpty: [ children add: (self buildGitHubActionsStatusPanelWith: aBuilder) ].
	"TODO: on the prev line when the functionality is implemented the check should not be for the watchers"
	 
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: (OrderedCollection new
				addAll: children;
				yourself);
		yourself