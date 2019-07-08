converting
asStringOrText
	^ (self name , ' (' , self pausedStatus contents , ', ' , self status contents , ')')
			asText addAttribute: (TextColor color: (self statusColor))