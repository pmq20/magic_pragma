# Easily add "#pragma once" to multiple ".h" and ".hpp" header files

module AddMagicComment
  
  # Options :
  # 1 : Encoding
  # 2 : Path
  # TODO : check that the pragma specified is a valid pragma 
  def self.process(options)
    
    # defaults
    pragma  = options[0] || "once"
    directory = options[1] || Dir.pwd
    
    prefix = "#pragma #{pragma}\n"
    
    # TODO : add options for recursivity (and application of the script to a single file)
    rbfiles = File.join(directory ,"**", "*.{h,hpp}")
    Dir.glob(rbfiles).each do |filename|
      file = File.new(filename, "r+")
      
      lines = file.readlines
      
      # remove current pragma once(s)
      while lines[0] && (
                lines[0].starts_with?("#pragma #{pragma}") ||
		lines[0].strip == ""
		)
        lines.shift
      end

      # set new pragma once
      lines.insert(0,prefix)
      
      file.pos = 0
      file.puts(lines.join) 
      file.close
    end
    print "\"#pragma once\" set for #{Dir.glob(rbfiles).count} header files\n"
  end
  
end

class String

  def starts_with?(s)
    self[0..s.length-1] == s
  end

end




