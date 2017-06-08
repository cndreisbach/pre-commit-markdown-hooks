require 'English'

status = 0
options = []
ARGV.each do |arg|
  if arg =~ /^-/
    options.append arg
    next
  end
  output = `mdl #{options.join(' ')} "#{arg}"`
  next if $CHILD_STATUS.exitstatus == 0
  puts "#{file}: failed Markdown validation"
  puts output
  status = 1
end

exit status
