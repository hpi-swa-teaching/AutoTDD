converting
asStringOrText
	
	^ (self name , ' (' , self watchingStatus , ', ' , self localStatusMessage , ')') asText addAttribute: (TextColor color: self statusColor)