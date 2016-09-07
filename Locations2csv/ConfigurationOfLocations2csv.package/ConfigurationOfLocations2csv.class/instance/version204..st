versions
version204: spec
	<version: '2.0.4' imports: #('0.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Ading smalltalk hub repository'.
		spec author: 'vitor'.
		spec timestamp: '8/22/2016 17:06'.
		spec 
			project: 'Mocketry' with: '3.4.1';
			project: 'NeoCSV' with: '13';
			project: 'ZincHTTPComponents' with: '2.7.1'.
		spec package: 'Locations2csv' with: 'Locations2csv-vitor.12'. ].
