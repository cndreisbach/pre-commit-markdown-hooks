require 'English'

status = 0
options = []
ARGV.each do |file|
  if arg =~ /^-/
    options.append arg
    next
  end
  output = `mdl #{options.join(' ')} "#{file}"`
  next if $CHILD_STATUS.exitstatus == 0
  puts "#{file}: failed Markdown validation"
  puts output
  status = 1
end

exit status
