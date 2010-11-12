#!/usr/local/bin/ruby -w

# tc_interface.rb
#
#  Created by James Edward Gray II on 2005-11-14.
#  Copyright 2005 Gray Productions. All rights reserved.

require "test/unit"

require "faster_csv"

class TestFasterCSVRPCases < Test::Unit::TestCase
  def setup
    @path = File.join(File.dirname(__FILE__), "export.csv")
  end
  
  def teardown
#    File.unlink(@path)
  end
  
  #RPBS-2760
  def test_failed_export
    lines = []
    csv = FasterCSV.open(@path, :raise_exception => true)
    assert_raise(FasterCSV::MalformedCSVError) do
      while line = csv.gets
        lines<<line
      end
    end
    assert_equal(4,lines.size)
  end

  def test_success_export
    lines = []
    csv = FasterCSV.open(@path, :raise_exception => false)
    assert_nothing_raised do
      while line = csv.gets
        lines<<line
      end
    end
    assert_equal(5,lines.size)
  end
  

end
