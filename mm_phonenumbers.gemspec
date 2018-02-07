Gem::Specification.new do |spec|
  spec.name        = 'mm_phonenumbers'
  spec.version     = '0.0.1'
  spec.executables << 'mm_phonenumbers'
  spec.date        = '2018-02-02'
  spec.summary     = 'Validating Myanmar Mobile Numbers!'
  spec.description = 'To check valid myanmar mobile numbers,get mobile operator name, 
                   sanitize mobile numbers and get mobile network types.'
  spec.authors     = ["Stella Swe"]
  spec.email       = 'swesweucsy@gmail.com'
  spec.files       = Dir['lib/*.rb'] + Dir['lib/telecoms/*.rb'] + Dir['bin/mm_phonenumbers']
  spec.test_files  = Dir['test/*.rb']
  spec.homepage    = 'http://rubygems.org/gems/mm_phonenumbers'
  spec.license     = 'MIT'
end