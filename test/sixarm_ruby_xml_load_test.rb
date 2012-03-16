# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'minitest/autorun'
require 'simplecov'
SimpleCov.start
require 'sixarm_ruby_xml_load'
require 'pathname'

describe XML do

  before do
    TESTPATH ||= Pathname.new("test/sixarm_ruby_xml_load_test")
  end

  describe ".load_dir_files" do

    it "load directory files" do
      dirpath=TESTPATH + 'test_*.xml'
      expect=[(TESTPATH + 'test_1.xml').to_s, (TESTPATH + 'test_2.xml').to_s]
      actual=Dir[dirpath].sort
      assert_equal(expect,actual,"Dir[#{dirpath}] expects test data files")
    end

  end

  describe ".load_dir" do

    it "" do
      dirpath=TESTPATH + 'test_*.xml'
      expect="abcdef"
      actual=''
      XML.load_dir(dirpath){|doc| doc.elements.each('foo/bar'){|e| actual+=e.attributes['x']}}
      assert_equal(expect,actual,'XML.load_dir')
    end

  end

  describe ".load_elements" do

    it "" do
      dirpath=TESTPATH + 'test_*.xml'
      expect="<bar x='a'/><bar x='b'/><bar x='c'/><bar x='d'/><bar x='e'/><bar x='f'/>"
      actual=''
      XML.load_elements(dirpath,'foo/bar'){|elem| actual+=elem.to_s }
      assert_equal(expect,actual,'XML.load_elements')
    end

  end

  describe ".load_attributes" do

    it "" do
      dirpath=TESTPATH + 'test_*.xml'
      expect=[["x", "a"], ["x", "b"], ["x", "c"], ["x", "d"], ["x", "e"], ["x", "f"]]
      actual=[]
      XML.load_attributes(dirpath,'foo/bar'){|attributes|
        attributes.each{|attribute|
          actual << [attribute[0], attribute[1]]
        }
      }  
      assert_equal(expect,actual,'XML.load_attributes')
    end

  end

  describe ".load_attributes_hash" do

    it "" do
      dirpath=TESTPATH + 'test_*.xml'
      expect=[{"x"=>"a"}, {"x"=>"b"}, {"x"=>"c"}, {"x"=>"d"}, {"x"=>"e"}, {"x"=>"f"}]
      actual=[]
      XML.load_attributes_hash(dirpath,'foo/bar'){|attributes_hash|
        actual << attributes_hash
      }
      assert_equal(expect,actual,'XML.load_attributes_hash')
    end

  end

end
