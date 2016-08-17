baselines
baseline03: spec
	<version: '0.3-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'filetree://E:\Projetos\Katas-and-Challenges-ST'.
		spec 
			project: 'Mocketry' with: [
				spec
					className: #ConfigurationOfMocketry;
					versionString: '3.4.1';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo60/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ];
			project: 'ZincHTTPComponents' with: [
				spec
					className: #ConfigurationOfZincHTTPComponents;
					versionString: '2.7.1';
					repository: 'http://mc.stfx.eu/ZincHTTPComponents';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ].
		spec package: 'Locations2csv' with: [
				spec requires: #('ZincHTTPComponents' 'Mocketry' 'NeoCSV' ). ]. ].
