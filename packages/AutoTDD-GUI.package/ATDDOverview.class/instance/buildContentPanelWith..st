building
buildContentPanelWith: aBuilder 
	| children |
	
	children := OrderedCollection new.
	self watchers size > 0
		ifTrue: [children add: (self buildLocalPanelWith: aBuilder)].
	self travisStatuses size > 0
		ifTrue: [children add: (self buildTravisStatusPanelWith: aBuilder)].
			
	^ aBuilder pluggablePanelSpec new model: self;
		 layout: #horizontal;
		 children: (OrderedCollection new addAll: children;
			 yourself);
		 yourself