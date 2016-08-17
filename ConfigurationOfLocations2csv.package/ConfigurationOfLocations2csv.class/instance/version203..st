versions
version203: spec
	<version: '2.0.3' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.0.3'.
		spec author: 'vitor'.
		spec timestamp: '8/17/2016 20:12'.
		spec 
			project: 'Mocketry' with: '3.4.1';
			project: 'NeoCSV' with: '13';
			project: 'ZincHTTPComponents' with: '2.7.1'.
		spec package: 'Locations2csv' with: 'Locations2csv-vitor.12'. ].
