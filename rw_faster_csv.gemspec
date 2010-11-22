Gem::Specification.new do |s|
  s.name = 'rw_fastercsv'
  s.version = '1.5.7'
  s.authors = ["James Edward Gray II", "Alex Mishyn"]
  s.date = Time.now.strftime("%F")
  s.summary = "FasterCSV"
  s.email = "mishyn@gmail.com"
  s.homepage = "http://github.com/railsware/faster_csv"

  s.files = ['README', 'AUTHORS', 'CHANGELOG', 
    'COPYING', "INSTALL", "LICENSE", 'Rakefile', 'setup.rb', 'TODO'] + 
    Dir['lib/**/*'] + Dir['test/**/*'] + Dir['examples/**/*']
  s.require_path = 'lib'
end