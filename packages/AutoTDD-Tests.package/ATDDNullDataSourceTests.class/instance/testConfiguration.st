tests
testConfiguration

	self
		assert: dataSource buildStatus = 'unknown';
		assert: dataSource clearCache = dataSource;
		assert: dataSource repository = '';
		assert: dataSource repositoryJson = JsonObject new;
		assert: dataSource token = '';
		assert: dataSource usePro = false.
		
	dataSource
		repository: 'an actual repo';
		token: '1234';
		usePro: true;
		update.
		
	self
		assert: dataSource buildStatus = 'unknown';
		assert: dataSource clearCache = dataSource;
		assert: dataSource repository = '';
		assert: dataSource repositoryJson = JsonObject new;
		assert: dataSource token = '';
		assert: dataSource usePro = false.