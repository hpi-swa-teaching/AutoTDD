constants
routes

	^ Dictionary newFrom: {
		'/repos/hpi-swa-teaching/AutoTDD/actions/jobs/1/logs' -> (Dictionary newFrom: { 'content' -> self defaultLog. 'contentType' -> 'text/plain; charset=utf-8' }).
		'/repos/hpi-swa-teaching/AutoTDD/actions/runs' -> (Dictionary newFrom: { 'content' -> self defaultRuns. 'contentType' -> 'application/json' }).
		'/repos/hpi-swa-teaching/AutoTDD/actions/runs/1/jobs' ->(Dictionary newFrom: { 'content' -> self defaultJobs. 'contentType' -> 'application/json' }).
		'/repos/hpi-swa-teaching/AutoTDD' -> (Dictionary newFrom: {'content' -> 'hello World'. 'contentType' -> 'text/plain; charset=utf-8' })
	}