versions
version221: spec
	<version: '2.2.1' imports: #('0.6-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Fixing neoJson and CSV version.'.
		spec author: 'vitormcruz'.
		spec timestamp: '8/22/2016 22:56'.
		spec 
			project: 'Mocketry' with: '3.4.1';
			project: 'NeoCSV' with: '13';
			project: 'NeoJSON' with: '13';
			project: 'ZincHTTPComponents' with: '2.7.1'.
		spec package: 'Locations2csv' with: 'Locations2csv-vitor.12'. ].
