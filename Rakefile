
class Dir
  def self.nonhidden_entries dirname
    self.entries(dirname).grep(/^[^.]/)
  end
end

def sudo # http://dpk.org.uk/h
 if ENV["USER"] != "root"
    exec("sudo #{ENV['_']} #{ARGV.join(' ')}")
  end
end

task :install do
  sudo
    
  Dir.mkdir '/usr/local/bin/' if not File.exist? '/usr/local/bin/'
  system 'install -b '+Dir.nonhidden_entries('./bin/').map {|x| './bin/'+x}.join(' ')+' /usr/local/bin/'
end

task :uninstall do
  sudo
  
  Dir.nonhidden_entries('./bin/').each do |x|
    f = '/usr/local/bin/'+x
    puts "Removing #{f} ..."
    File.delete f
  end
end



