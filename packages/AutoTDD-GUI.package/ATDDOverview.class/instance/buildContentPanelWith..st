building
buildContentPanelWith: aBuilder 
	| children |
	
	children := OrderedCollection new.
	self watchers
		ifNotEmpty: [children add: (self buildLocalPanelWith: aBuilder)].
	self travisStatuses
		ifNotEmpty: [children add: (self buildTravisStatusPanelWith: aBuilder)].
			
	^ aBuilder pluggablePanelSpec new model: self;
		 layout: #horizontal;
		 children: (OrderedCollection new addAll: children;
			 yourself);
		 yourself