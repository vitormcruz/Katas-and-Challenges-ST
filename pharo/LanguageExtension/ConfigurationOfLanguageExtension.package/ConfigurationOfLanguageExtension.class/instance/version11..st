versions
version11: spec
	<version: '1.1' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Adjust to the configuration package.'.
		spec author: 'vitor'.
		spec timestamp: '8/22/2016 20:34'.
		spec 
			package: #LanguageExtension with: 'LanguageExtension-vitor.2';
			package: #'LanguageExtension-ExternalConfig' with: 'LanguageExtension-ExternalConfig-vitor.7'. ].
