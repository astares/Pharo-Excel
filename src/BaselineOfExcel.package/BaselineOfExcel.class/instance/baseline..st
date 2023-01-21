baselines
baseline: spec
	<baseline>

	spec for: #common do: [
		"Packages"
		spec
			package: 'Excel-Core';
			package: 'Excel-Tests-Core' with: [ spec requires: #('Excel-Core') ].

		"Groups"
		spec
				group: 'Core' with: #('Excel-Core');
				group: 'Tests' with: #('Excel-Tests-Core');
				group: 'CI' with: #('Tests');
				group: 'all' with: #('Core' 'Tests');
				group: 'default' with: #('all') ]