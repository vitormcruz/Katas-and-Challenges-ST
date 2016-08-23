versions
version21: spec
	<version: '2.1' imports: #('0.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Adjustments to the repository.'.
		spec author: 'vitor'.
		spec timestamp: '8/22/2016 20:35'.
		spec 
			project: 'Mocketry' with: '3.4.1';
			project: 'NeoCSV' with: '13';
			project: 'ZincHTTPComponents' with: '2.7.1'.
		spec package: 'Locations2csv' with: 'Locations2csv-vitor.12'. ].
