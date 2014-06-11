utility
setNameText
	"| hintText |
	hintText := 'Category: ', self category, String crlf, 'Test Category: ', self testCategory.
	self balloonText: hintText"