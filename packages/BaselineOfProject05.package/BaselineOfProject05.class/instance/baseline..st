baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Project05-Core';
				package: 'Project05-Tests' with: [spec requires: #('default')].
			spec
				group: 'default' with: #('Project05-Core');
				group: 'Tests' with: #('Project05-Tests');
				group: 'TravisCI' with: #('Tests')	]