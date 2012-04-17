Gem::Specification.new do |s|
  s.name = "decc_2050_model"
  s.required_ruby_version = "~>1.9.1"
  s.version = '0.0.1'
  s.author = "Thomas Counsell, Department of Energy and Climate Change, Her Majesty's Government, UK"
  s.email = "tom.counsell@decc.gsi.gov.uk"
  s.homepage = "http://github.com/decc/decc_2050_model"
  s.platform = Gem::Platform::RUBY
  s.summary = "A C version of DECC's 2050 Pathway Excel Spreadsheet"
  s.description = File.read(File.join(File.dirname(__FILE__), 'README'))
  s.files = ["LICENSE", "README", "{src,bin}/**/*"].map{|p| Dir[p]}.flatten
  s.executables = ["excel_to_c","excel_to_ruby"]
  s.require_path = "src"
  s.has_rdoc = false
end
