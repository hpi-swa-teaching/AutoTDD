accessing
jobNames
	
	^ self jobs collect: [ :job |
			Text new append: '#', job name;
			addAttribute: ( TextColor color: (self colorForInternalStatus: job conclusion)) ]