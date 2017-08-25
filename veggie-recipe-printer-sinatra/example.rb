require "erb"

name = "Brian"
message = "Hello, <%= name %>."
erb = ERB.new(message)

puts erb.result  # => "Hello, Dan."
