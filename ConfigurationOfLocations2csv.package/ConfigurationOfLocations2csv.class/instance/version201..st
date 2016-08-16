versions
version201: spec
	<version: '2.0.1' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Adding Mocketry'.
		spec author: 'vitor'.
		spec timestamp: '8/15/2016 22:38'.
		spec 
			project: 'Mocketry' with: '3.4.1';
			project: 'ZincHTTPComponents' with: '2.7.1'.
		spec package: 'Locations2csv' with: 'Locations2csv-vitor.12'. ].
