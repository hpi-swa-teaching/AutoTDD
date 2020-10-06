converting
asStringOrText
	
	^ (self name , ' (' , self pausedString , ', ' , self statusMessage , ')') asText addAttribute: (TextColor color: self statusColor)