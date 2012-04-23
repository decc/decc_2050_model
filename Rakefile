task :default => 'ext/decc_2050_model.c'

desc "Generates c version of 2050 pathways model"
file 'ext/decc_2050_model.c' do
  require 'excel_to_code'
  command = ExcelToC.new

  command.excel_file = "spreadsheet/2050Model.xlsx"
  command.output_directory = 'ext'
  command.output_name = 'decc_2050_model'

  command.cells_that_can_be_set_at_runtime = { "Control" => :all }

  command.cells_to_keep = {
    "Control" => (5.upto(56).to_a.map { |r| ["d#{r}","f#{r}","h#{r}","i#{r}","j#{r}","k#{r}","bp#{r}","bq#{r}","br#{r}","bs#{r}"] }).flatten, # The 10 worders and long descriptions
    "Intermediate output" => :all, 
    "CostPerCapita" => :all, 
    "Land Use" => :all, 
    "Flows" => :all, 
    "AQ Outputs" => :all, 
    'IX.a' => (0.upto(12).to_a.map { |i| "f#{596+i}" }),
    'IX.c' => (0.upto(12).to_a.map { |i| "n#{317+i}" })
  }

  command.actually_compile_code = true
  command.actually_run_tests = true

  command.run_in_memory = true

  command.go!
end
