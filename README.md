# Ruby » <br> XML#load methods to load documents, elements, attributes

* Doc: <http://sixarm.com/sixarm_ruby_xml_load/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_xml_load>
* Repo: <http://github.com/sixarm/sixarm_ruby_xml_load>
<!--HEADER-SHUT-->


## Introduction

XML load methods:

  * XML.load_dir: load XML documents from one or more directory paths and file paths.
  * XML.load_elements: load XML elements from a file and with an xpath selector.
  * XML.load_attributes: load XML attributes from a file and with an xpath selector.
  * XML.load_attributes_array: load XML attributes into an array
  * XML.load_attributes_hash: load XML attributes into a hash of name value pairs.

For docs go to <http://sixarm.com/sixarm_ruby_xml_load/doc>

Want to help? We're happy to get pull requests.


<!--INSTALL-OPEN-->

## Install

To install using a Gemfile, add this:

    gem "sixarm_ruby_xml_load", ">= 2.1.1", "< 3"

To install using the command line, run this:

    gem install sixarm_ruby_xml_load -v ">= 2.1.1, < 3"

To install using the command line with high security, run this:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem && gem sources --add http://sixarm.com
    gem install sixarm_ruby_xml_load -v ">= 2.1.1, < 3" --trust-policy HighSecurity

To require the gem in your code:

    require "sixarm_ruby_xml_load"

<!--INSTALL-SHUT-->
