event handling
onTravisButtonClicked
	self useTravis  
		ifFalse: [self travisButton 
					 color: (Color r: 0.0 g: 1.0 b: 0.0);
					 label: 'Deactivate Travis'.
				self openTravisDialog.
				self useTravis: true.]
		ifTrue: [self travisButton 
					 color: (Color r: 1.0 g: 0.0 b: 0.0);
					 label: 'Activate Travis'.
				self useTravis: false.].