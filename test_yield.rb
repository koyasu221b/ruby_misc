def hug
    puts "{"
    yield
    puts "}"
end

hug {puts "me"}

def hug2(&block)
    p block
    puts "{"
    block.call
    puts "}"
end

hug2 {puts "me"}
