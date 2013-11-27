# coding: utf-8
# Create a test for model_result
require_relative '../lib/model'
require 'pp'

pathway = ARGV[0].strip
tests_folder = File.join(File.dirname(__FILE__),"expected_results")

puts "Creating a copy of the output for pathway #{pathway} and puting it in #{tests_folder}"
puts "To compare future versions of the model with this test result, run test_model_result.rb"

model = ModelResult.new
File.open(File.join(tests_folder,"#{pathway}.json"),'w') do |f|
  result = model.calculate_pathway(pathway).pretty_inspect
  f.puts pathway
  f.puts result
end
