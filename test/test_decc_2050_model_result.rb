# coding: utf-8
# Test for decc_2050_model_result
require 'rubygems'
gem 'minitest'
require 'test/unit'
require_relative '../lib/decc_2050_model'
require 'pp'

class TestDecc2050ModelResult < Test::Unit::TestCase

  def test_results
    @model = Decc2050ModelResult.new
    tests_folder = File.join(File.dirname(__FILE__),"expected_results")
    Dir[File.join(tests_folder, "*.json")].each do |test|
      expected = IO.readlines(test)
      pathway = expected.shift
      expected = expected.join
      @model.reset
      result = @model.calculate_pathway(pathway).pretty_inspect
      if result != expected
        File.open(test+".actual",'w') do |f|
          f.puts pathway
          f.puts result
        end
      end
      assert_equal expected, result
    end
  end
end

    
