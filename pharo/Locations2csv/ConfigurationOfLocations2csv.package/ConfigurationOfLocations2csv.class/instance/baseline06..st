baselines
baseline06: spec
	<version: '0.6-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/vitormcruz/Katas-and-Challenges/main/'.
		spec 
			project: 'Mocketry' with: [
				spec
					className: #ConfigurationOfMocketry;
					versionString: '3.4.1';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo60/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '12';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '12';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ];
			project: 'ZincHTTPComponents' with: [
				spec
					className: #ConfigurationOfZincHTTPComponents;
					versionString: '2.7.1';
					repository: 'http://mc.stfx.eu/ZincHTTPComponents';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ].
		spec package: 'Locations2csv' with: [
				spec requires: #('ZincHTTPComponents' 'Mocketry' 'NeoCSV' 'Mocketry' 'NeoJSON' ). ]. ].
