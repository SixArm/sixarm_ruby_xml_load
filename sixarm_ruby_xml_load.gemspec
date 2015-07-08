# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name              = "sixarm_ruby_xml_load"
  s.summary           = "SixArm.com » Ruby » XML#load methods"
  s.description       = "XML#load methods to easily load and parse XML"
  s.version           = "2.1.1"

  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com/"
  s.licenses          = ["BSD", "GPL", "MIT", "PAL", "Various"]

  s.signing_key       = "/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-private.pem"
  s.cert_chain        = ["/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-public.pem"]

  s.platform          = Gem::Platform::RUBY
  s.require_path      = "lib"
  s.has_rdoc          = true

  s.files = [
    ".gemtest",
    "Rakefile",
    "README.md",
    "VERSION",
    "lib/sixarm_ruby_xml_load.rb",
  ]

  s.test_files = [
    "test/sixarm_ruby_xml_load_test.rb",
    "test/sixarm_ruby_xml_load_test/test_1.xml",
    "test/sixarm_ruby_xml_load_test/test_2.xml",
  ]

  s.add_dependency('sixarm_ruby_rexml', '>= 2.1.0', '< 3')

end
