tests
testApiConnect

	"| client response |
	client := WebClient new.
	client userAgent: 'Squeak/4.5.0'.
	response := client httpGet: 'https://api.travis-ci.org' do: [:request |
		request headerAt: 'Accept' put: 'application/vnd.travis-ci.2+json'.
	].
	response content; close.
	self assert: response code = 200.
	self assert: response content 
		equals: 	'{""hello"":""world""}'"