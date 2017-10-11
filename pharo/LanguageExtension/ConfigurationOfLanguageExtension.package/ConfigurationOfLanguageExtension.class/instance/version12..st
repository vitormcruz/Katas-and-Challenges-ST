versions
version12: spec
	<version: '1.2' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.2'.
		spec author: 'vitormcruz'.
		spec timestamp: '9/6/2016 22:01'.
		spec package: #LanguageExtension with: 'LanguageExtension-vitor.2'. ].
