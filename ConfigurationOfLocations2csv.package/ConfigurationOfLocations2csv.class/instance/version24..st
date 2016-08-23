versions
version24: spec
	<version: '2.4' imports: #('0.6-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.4'.
		spec author: 'vitormcruz'.
		spec timestamp: '8/22/2016 23:05'.
		spec 
			project: 'Mocketry' with: '3.4.1';
			project: 'NeoCSV' with: '12';
			project: 'NeoJSON' with: '12';
			project: 'ZincHTTPComponents' with: '2.7.1'.
		spec package: 'Locations2csv' with: 'Locations2csv-vitor.12'. ].
