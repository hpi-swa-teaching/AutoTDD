converting
asStringOrText
	^ (self name , ' (' , self watchingStatus, ', ', self localStatusBlock, ')')
			asText addAttribute: (TextColor color: (self statusColor))