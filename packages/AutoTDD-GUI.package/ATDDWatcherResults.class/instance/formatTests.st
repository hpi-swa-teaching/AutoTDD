action
formatTests
	[:each |
		Text new append: each asString;
			addAttribute: (self colorForTestCase: each);
			yourself]