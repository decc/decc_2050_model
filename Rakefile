task :default => :generate_new_mode_from_excel

task :generate_new_mode_from_excel => ['ext/decc_2050_model.c',:put_generated_files_in_right_place]

desc "Generates c version of 2050 pathways model"
file 'ext/decc_2050_model.c' do
  require 'excel_to_code'
  command = ExcelToC.new

  command.excel_file = "spreadsheet/2050Model.xlsx"
  command.output_directory = 'ext'
  command.output_name = 'decc_2050_model'

  command.cells_that_can_be_set_at_runtime = { "Control" => (5.upto(56).to_a.map { |r| "e#{r}" }) }

  command.cells_to_keep = {
    "Control" => (5.upto(56).to_a.map { |r| ["d#{r}","f#{r}","h#{r}","i#{r}","j#{r}","k#{r}","bp#{r}","bq#{r}","br#{r}","bs#{r}"] }).flatten, # The 10 worders and long descriptions
    "Intermediate output" => :all, 
    "CostPerCapita" => :all, 
    "Land Use" => :all, 
    "Flows" => :all, 
    "AQ Outputs" => :all, 
    'IX.a' => (0.upto(12).to_a.map { |i| "f#{595+i}" }),
    'IX.c' => (0.upto(12).to_a.map { |i| "n#{317+i}" })
  }

  p command.cells_to_keep

  command.actually_compile_code = true
  command.actually_run_tests = true

  command.run_in_memory = true

  command.go!
end

# Put things in their place
task :put_generated_files_in_right_place => ['ext/decc_2050_model.rb']
  mv 'ext/decc_2050_model.rb' 'lib/decc_2050_model/decc_2050_model.rb'
  mv 'ext/test_decc_2050_model.rb' 'test/test_decc_2050_model.rb'
  rm 'ext/Makefile'
end
