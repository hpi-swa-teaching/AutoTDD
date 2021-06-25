as yet unclassified
routes

	^ Dictionary newFrom: {
		'/repos/hpi-swa-teaching/AutoTDD/actions/jobs/1/logs' -> 'logs'.
		'/repos/hpi-swa-teaching/AutoTDD/actions/runs' -> 'runs'.
		'/repos/hpi-swa-teaching/AutoTDD/actions/runs/1' -> 'run 1'.
		'/repos/hpi-swa-teaching/AutoTDD/actions/runs?per_page=1' -> 'latest workflow'.
		'/repos/hpi-swa-teaching/AutoTDD/actions/runs/1/jobs' -> 'jobs'
	}