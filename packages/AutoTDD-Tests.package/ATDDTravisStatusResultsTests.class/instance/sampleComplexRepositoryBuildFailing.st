utility
sampleComplexRepositoryBuildFailing
	
	^ Json
		readFrom: 
			'{"build":{"repository_id":2184014,"duration":348,"config":{"smalltalk":["Squeak-trunk","Squeak-5.2","Squeak32-trunk"],"os":"linux","dist":"xenial","sudo":false,"language":"smalltalk","group":"stable",".result":"configured"},"commit_id":170413766,"pull_request_title":null,"finished_at":"2019-07-25T12:31:01Z","pull_request":false,"event_type":"push","id":563522881,"pull_request_number":null,"number":"412","state":"failed","started_at":"2019-07-25T12:29:58Z","job_ids":[563522882,563522883,563522884]},"commit":{"committer_email":"code@bengelhaupt.com","committed_at":"2019-07-25T11:56:15Z","author_email":"code@bengelhaupt.com","message":"formatted all methods","branch":"dev","branch_is_default":true,"tag":null,"committer_name":"bengelhaupt","compare_url":"https://github.com/hpi-swa-teaching/AutoTDD/compare/f16291204299...990b31bc24c6","id":170413766,"sha":"990b31bc24c63362235bce8a18d443646929ca9f","author_name":"bengelhaupt"},"jobs":[{"repository_id":2184014,"build_id":563522881,"finished_at":"2019-07-25T12:12:33Z","commit_id":170413766,"config":{"smalltalk":"Squeak-trunk","os":"linux","dist":"xenial","sudo":false,"language":"smalltalk","group":"stable",".result":"configured"},"queue":"builds.gce","tags":null,"id":563522882,"started_at":"2019-07-25T12:09:57Z","number":"412.1","state":"failed","allow_failure":false},{"repository_id":2184014,"build_id":563522881,"finished_at":"2019-07-25T12:31:01Z","commit_id":170413766,"config":{"smalltalk":"Squeak-5.2","os":"linux","dist":"xenial","sudo":false,"language":"smalltalk","group":"stable",".result":"configured"},"queue":"builds.gce","tags":null,"id":563522883,"started_at":"2019-07-25T12:29:58Z","number":"412.2","state":"failed","allow_failure":false},{"repository_id":2184014,"build_id":563522881,"finished_at":"2019-07-25T12:13:05Z","commit_id":170413766,"config":{"smalltalk":"Squeak32-trunk","os":"linux","dist":"xenial","sudo":false,"language":"smalltalk","group":"stable",".result":"configured"},"queue":"builds.gce","tags":null,"id":563522884,"started_at":"2019-07-25T12:10:56Z","number":"412.3","state":"failed","allow_failure":false}]}' readStream