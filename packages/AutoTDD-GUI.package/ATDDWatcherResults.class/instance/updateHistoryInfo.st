updating
updateHistoryInfo
	self historyInfo:
		(Text new
			append: self historyInfoForSelectedHistory;
			addAttribute: (TextColor color: self colorForSelectedHistory))