from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

in_file = open(from_file)
in_data = in_file.read

puts "The input file is #{in_data.length} characters long."
puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready? Hit Enter to continue, or Ctrl-C to abort."
$stdin.gets

out_file = open(to_file, 'w')
out_file.write(in_data)

puts "Alright, done."

out_file.close
in_file.close