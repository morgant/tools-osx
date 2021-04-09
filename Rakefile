require 'optparse'

include FileUtils::Verbose

class Dir
  def self.nonhidden_entries dirname
    self.entries(dirname).grep(/^[^.]/)
  end
end

task :default do
  mkdir './bin' unless File.directory? './bin'
  unless File.exist? './bin/dict'
    mrc = `which macrubyc`.strip # mrc == macruby compiler
    if mrc.empty?
      STDERR.puts <<-EOF.split("\n").map {|l| l.strip}
                  
                  WARNING: MacRuby is not installed; therefore, `dict`, one
                  of the tools that depends on it, will not be installed. 
                  The rest of the tools will be installed.
                  
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

task :install => [:default] do |t, args|
  unless File.exist? '/usr/local/bin'		# create /usr/local/bin if it doesn't exist
  	mkdir '/usr/local/bin', :mode => 0755
  	chown 'root', 'wheel', '/usr/local/bin'
  end
  bins = Dir.nonhidden_entries('./bin/')
  bins = bins.select {|x| args.extras.include? x} unless args.extras.count == 0
  sh "install -b #{bins.map {|x| "./bin/#{x}"}.join ' '} /usr/local/bin/" unless bins.count == 0
end

task :uninstall do
  Dir.nonhidden_entries('./src/').each do |x| # should probably figure out a better way to do this
    rm "/usr/local/bin/#{x}", :force => true
  end
end

task :clean do
  rm_rf './bin'
end
