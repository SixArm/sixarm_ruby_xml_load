# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

require 'sixarm_ruby_rexml'

module XML


  # Specify one or more directory patterns and pass each XML file in the matching directories to a block.
  #
  # See [Dir#glob](http://www.ruby-doc.org/core/classes/Dir.html#M002347) for pattern details.
  #
  # @example To load xml documents
  #   XML.load_dir('/tmp/*.xml'){|xml_document|
  #     #...whatever you want to do with each xml document
  #   }
  #
  # @example To load xml documents in files beginning in "foo" or "bar"
  #   XML.load_dir('/tmp/foo*.yaml','/tmp/bar*.xml','){|xml_document|
  #     #...whatever you want to do with the xml document
  #   }

  def XML.load_dir(*dirpaths)
    dirpaths=[*dirpaths.flatten]
    dirpaths.each do |dirpath|
      Dir[dirpath].sort.each do |filename|
        File.open(filename) do |file|
          doc = REXML::Document.new file
          yield doc
        end #file
      end #dir
    end #each
  end #def                                                                                                                                                                                                                          


  # Sugar to load elements from a file.
  #
  # @example
  #   XML.load_elements('config.xml','userlist/user'){|element| pp element.attributes['first_name'] }

  def XML.load_elements(dirpath,xpath)
    XML.load_dir(dirpath){|doc|
      doc.elements.each(xpath){|elem|
        yield elem
      }
    }
  end


  # Sugar to load attributes from a file.
  #
  # @example
  #   XML.load_attributes('config.xml','userlist/user'){|attributes| pp attributes['first_name'] }

  def XML.load_attributes(dirpath,xpath)
    XML.load_elements(dirpath,xpath){|elem|
      yield elem.attributes
    }
  end


  # Sugar to load attributes array from a file.
  #
  # @example
  #   XML.load_attributes_array('config.xml','userlist/user'){|attributes| pp attributes['first_name'] }

  def XML.load_attributes_array(dirpath,xpath)
    XML.load_elements(dirpath,xpath){|elem|
      yield elem.attributes.to_a
    }
  end


  # Sugar to load attributes hash from a file.
  #
  # @example
  #   XML.load_attributes_hash('config.xml','userlist/user'){|attributes| pp attributes['first_name'] }

  def XML.load_attributes_hash(dirpath,xpath)
    XML.load_elements(dirpath,xpath){|elem|
      yield elem.attributes.to_a_hash
    }
  end

end
