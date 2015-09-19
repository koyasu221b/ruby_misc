my_proc = proc {puts "yeah"}


puts "Will it run?"
my_proc.call

my_proc2 = proc do
    puts "yeah2"
end
my_proc2.call

def my_block
    yield
end

my_block{
  puts "yeah3"
}

my_block {
  puts 'hi'
}

BEGIN {
  puts "begin"
}

END {
    puts "end"
}
