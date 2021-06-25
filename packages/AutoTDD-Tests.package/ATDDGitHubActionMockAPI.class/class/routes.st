constants
routes

	^ Dictionary newFrom: {
		'/repos/hpi-swa-teaching/AutoTDD/actions/jobs/1/logs' -> (Dictionary newFrom: { 'content' -> self defaultLog. 'contentType' -> 'text/plain' }).
		'/repos/hpi-swa-teaching/AutoTDD/actions/runs' -> (Dictionary newFrom: { 'content' -> self defaultRuns. 'contentType' -> 'application/json' }).
		'/repos/hpi-swa-teaching/AutoTDD/actions/runs/1' -> (Dictionary newFrom: { 'content' -> self defaultRun. 'contentType' -> 'application/json' }).
		'/repos/hpi-swa-teaching/AutoTDD/actions/runs?per_page=1' -> (Dictionary newFrom: { 'content' -> self defaultLatestRun. 'contentType' -> 'application/json' }).
		'/repos/hpi-swa-teaching/AutoTDD/actions/runs/1/jobs' ->(Dictionary newFrom: { 'content' -> self defaultJobs. 'contentType' -> 'application/json' })
	}