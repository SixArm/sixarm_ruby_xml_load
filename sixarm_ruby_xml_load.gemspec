# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name           = "sixarm_ruby_xml_load"
  s.summary        = "SixArm.com → Ruby → XML#load methods"
  s.description    = "XML#load methods to easily load and parse XML"
  s.version        = "2.1.2"

  s.author         = "SixArm"
  s.email          = "sixarm@sixarm.com"
  s.homepage       = "http://sixarm.com/"
  s.licenses       = ["Apache-2.0", "Artistic-2.0", "BSD-3-Clause", "GPL-2.0", "GPL-3.0", "MIT", "MPL-2.0"]

  s.signing_key    = "/opt/key/sixarm/sixarm-ruby-gem-signing-20230504-private.pem"
  s.cert_chain     = ["/opt/key/sixarm/sixarm-ruby-gem-signing-20230504-public.pem"]

  s.platform       = Gem::Platform::RUBY
  s.require_path   = "lib"


  s.files = [
    "Rakefile",
    "lib/sixarm_ruby_xml_load.rb",
  ]

  s.test_files = [
    "test/sixarm_ruby_xml_load_test.rb",
    "test/sixarm_ruby_xml_load_test/test_1.xml",
    "test/sixarm_ruby_xml_load_test/test_2.xml",
  ]

  s.add_dependency('sixarm_ruby_rexml', '>= 2.1.0', '< 3')

  s.add_development_dependency("sixarm_ruby_minitest_extensions", ">= 1.0.8", "< 2")
  s.add_development_dependency("minitest", ">= 5.12", "< 6")
  s.add_development_dependency("rake", ">= 12.3.3", "< 13")
  s.add_development_dependency("simplecov", ">= 0.18.0", "< 2")

  s.required_ruby_version = ">= 2.2"

end
