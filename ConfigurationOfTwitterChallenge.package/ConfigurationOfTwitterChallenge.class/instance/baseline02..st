baselines
baseline02: spec
	<version: '0.2-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'filetree://E:\Projetos\Katas-and-Challenges-ST'.
		spec project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: #'stable';
					repository: 'http://mc.stfx.eu/Neo' ].
		spec 
			package: #TwitterChallenge;
			package: #'TwitterChallenge-ExternalAdapter';
			package: #'TwitterChallenge-ExternalConfig';
			package: #'TwitterChallenge-Tests'.
		spec 
			group: 'default' with: #(#'TwitterChallenge-Tests' #'TwitterChallenge-ExternalConfig' #'TwitterChallenge-ExternalAdapter' #TwitterChallenge );
			group: 'tests' with: #(#'TwitterChallenge-Tests' ). ].
