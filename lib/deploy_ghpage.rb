files = Dir.glob "public/*"

files.each do |file|
  file = File.basename file
  cmd = "ln -s public/#{file} #{file}"
  puts cmd
  `#{cmd}`
end