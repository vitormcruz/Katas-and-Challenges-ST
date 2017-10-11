versions
version20: spec
	<version: '2.0' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.0'.
		spec author: 'vitor'.
		spec timestamp: '8/15/2016 22:37'.
		spec 
			project: 'Mocketry' with: '3.4.1';
			project: 'ZincHTTPComponents' with: '2.7.1'.
		spec package: 'Locations2csv' with: 'Locations2csv-vitor.12'. ].
