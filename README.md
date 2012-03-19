# SixArm.com » Ruby » <br> XML#load methods to load documents, elements, attributes

* Docs: <http://sixarm.com/sixarm_ruby_week/doc>
* Repo: <http://github.com/sixarm/sixarm_ruby_week>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

XML load methods:

  * XML.load_dir: load XML documents from one or more directory paths and file paths.
  * XML.load_elements: load XML elements from a file and with an xpath selector.
  * XML.load_attributes: load XML attributes from a file and with an xpath selector.
  * XML.load_attributes_array: load XML attributes into an array
  * XML.load_attributes_hash: load XML attributes into a hash of name value pairs.

For docs go to <http://sixarm.com/sixarm_ruby_week/doc>

Want to help? We're happy to get pull requests.


## Quickstart

Install:

    gem install sixarm_xml_load

Bundler:

    gem "sixarm_ruby_xml_load", "=2.1.0"

Require:

    require "sixarm_ruby_xml_load"


## Install with high security (optional)

To enable high security	for all	our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_alpha_bravo --test --trust-policy HighSecurity


## Changes

* 2012-03-16 2.1.0 Upgrade for Ruby 1.9.3, minitest/spec, and improved docs.
* 2012-03-13 2.0.0 Lift the XML#load methods from the sixarm_ruby_ramp gem


## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind, 
express or implied, including but not limited to the warranties of 
merchantability, fitness for a particular purpose and noninfringement. 

In no event shall the authors or copyright holders be liable for any 
claim, damages or other liability, whether in an action of contract, 
tort or otherwise, arising from, out of or in connection with the 
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights, 
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2005-2012 Joel Parker Henderson
