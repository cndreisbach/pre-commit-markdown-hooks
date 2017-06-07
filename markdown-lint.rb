require 'English'

status = 0
ARGV.each do |file|
  output = `mdl "#{file}"`
  next if $CHILD_STATUS.exitstatus == 0
  puts "#{file}: failed Markdown validation"
  puts output
  status = 1
end

exit status
