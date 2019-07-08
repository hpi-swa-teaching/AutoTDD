accessing
history
	^ self testResults collect: [ :result |
		Text new
			append: (self formatTimestampAsString: result timeStamp);
			addAttribute: (TextColor color: (self colorForTestCase: result));
			yourself ]