baselines
baseline02: spec
	<version: '0.2-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'filetree://E:\Projetos\Katas-and-Challenges-ST'.
		spec 
			project: 'Mocketry' with: [
				spec
					className: #ConfigurationOfMocketry;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo60/main/' ];
			project: 'ZincHTTPComponents' with: [
				spec
					className: #ConfigurationOfZincHTTPComponents;
					versionString: '2.7.1';
					repository: 'http://mc.stfx.eu/ZincHTTPComponents';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ].
		spec package: 'Locations2csv' with: [
				spec requires: #('ZincHTTPComponents' ). ]. ].
