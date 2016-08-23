baselines
baseline04: spec
	<version: '0.4-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/vitormcruz/Katas-and-Challenges/main/'.
		spec repository: 'filetree://E:\Projetos\Katas-and-Challenges-ST'.
		spec 
			project: 'LanguageExtension' with: [
				spec
					className: #ConfigurationOfLanguageExtension;
					versionString: '1.0';
					repository: 'filetree://E:\Projetos\Katas-and-Challenges-ST' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '12';
					repository: 'http://mc.stfx.eu/Neo' ].
		spec 
			package: #TwitterChallenge;
			package: #'TwitterChallenge-ExternalAdapter';
			package: #'TwitterChallenge-ExternalConfig';
			package: #'TwitterChallenge-Tests'.
		spec 
			group: 'default' with: #(#'TwitterChallenge-Tests' #'TwitterChallenge-ExternalConfig' #'TwitterChallenge-ExternalAdapter' #TwitterChallenge );
			group: 'tests' with: #(#'TwitterChallenge-Tests' ). ].
