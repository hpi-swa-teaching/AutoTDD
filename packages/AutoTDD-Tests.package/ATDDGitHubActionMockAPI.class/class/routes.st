as yet unclassified
routes

	^ Dictionary newFrom: {
		'/repos/hpi-swa-teaching/AutoTDD/actions/jobs/1/logs' -> self defaultLog.
		'/repos/hpi-swa-teaching/AutoTDD/actions/runs' -> self defaultRuns.
		'/repos/hpi-swa-teaching/AutoTDD/actions/runs/1' -> self defaultRun.
		'/repos/hpi-swa-teaching/AutoTDD/actions/runs?per_page=1' -> self defaultLatestRun.
		'/repos/hpi-swa-teaching/AutoTDD/actions/runs/1/jobs' -> self defaultJobs
	}