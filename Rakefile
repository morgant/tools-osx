
class Dir
  def self.nonhidden_entries dirname
    self.entries(dirname).grep(/^[^.]/)
  end
end

task :default do
  mkdir './bin' unless Dir.exist? './bin'
  unless File.exist? './bin/dict'
	mrc = `which macrubyc`.strip # mrc == macruby compiler
	if mrc.empty?
	  STDERR.puts <<-EOF.lines.map {|l| l.strip}
	              Warning: MacRuby is not installed; therefore, `dict`,
	              a tools-osx script that depends on it, will not be 
	              installed either. This does not affect any other script.
	              
	              If you would like to use `dict`, install MacRuby from
	              http://macruby.org/ then re-install tools-osx.
	              EOF
	else
	  mkdir './.tmp/'
	  cp './src/dict', './.tmp/dict.rb'
	  sh "#{mrc} -o ./bin/dict ./.tmp/dict.rb"
	  rm_rf './.tmp/'
	end
  end
  
  scrs = Dir.nonhidden_entries('./src/'); scrs.delete 'dict'
  scrs.each {|f| cp "./src/#{f}", "./bin/#{f}" unless File.exist? "./bin/#{f}"}
end

task :install => [:default] do
  bins = Dir.nonhidden_entries('./bin/')
  sh "install -b #{bins.map {|x| "./bin/#{x}"}.join ' '} /usr/local/bin/"
end

task :uninstall do
  Dir.nonhidden_entries('./src/').each do |x| # should probably figure out a better way to do this
    rm "/usr/local/bin/#{x}"
  end
end
