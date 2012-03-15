Gem::Specification.new do |s|

  TESTERS             = ['test_1.xml','test_2.xml']

  s.name              = "sixarm_ruby_xml_load"
  s.summary           = "SixArm.com » Ruby » XML#load methods"
  s.version           = "2.0.0"
  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com/"
  s.signing_key       = '/home/sixarm/keys/certs/sixarm-rsa1024-x509-private.pem'
  s.cert_chain        = ['/home/sixarm/keys/certs/sixarm-rsa1024-x509-public.pem']

  s.platform          = Gem::Platform::RUBY
  s.require_path      = 'lib'
  s.has_rdoc          = true

  top_files           = [".gemtest", "CHANGELOG.txt", "INSTALL.txt", "LICENSE.txt", "Rakefile", "README.md", "VERSION"]
  lib_files           = ["lib/#{s.name}.rb"]
  test_files          = ["test/#{s.name}_test.rb"] + TESTERS.map{|x| "test/#{s.name}_test/#{x}"}

  s.files             = top_files + lib_files + test_files
  s.test_files        = test_files

  s.add_dependency('sixarm_ruby_rexml', '>= 2.0.6')

end
