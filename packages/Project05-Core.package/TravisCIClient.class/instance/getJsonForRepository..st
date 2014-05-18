as yet unclassified
getJsonForRepository: repo
	"Sample Repository: SWTI2014/SWTI2014-Project-05"

	|response body|
	response := WebClient new httpGet: 'https://api.travis-ci.org/repos/',repo,'/builds' do:[:req|
    			req headerAt: 'User-Agent' put: 'Squeak'.
    			req addHeader: 'Accept' value: 'application/vnd.travis-ci.2+json'.
 	 ].

	body := response content.
	^ body