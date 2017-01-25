baseline
baseline: spec
	<baseline>

	spec for: #common do: [
		 
		spec 
			package: 'Excel-Core';
			package: 'Excel-Tests-Core' with: [ spec requires: #('Excel-Core') ].
		spec 
			group: 'default' with: #('Excel-Core' 'Excel-Tests-Core'). ].		
