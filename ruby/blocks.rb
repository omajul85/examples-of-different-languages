# Initialize objects with default values
class Car
  attr_accessor :color, :doors

  def initialize
    yield(self)
  end
  
  def to_s
    "My car's color is #{color} and it's got #{doors} doors."
  end
end

car = Car.new do |c|
  c.color = "Red"
  c.doors = 4
end

p car.instance_variables
puts car

def try(&block)
  if block_given?  
    puts a = yield
  else  
    puts "no block"  
  end  
end

try
try{ 5 }

def to_link(url, target="_blank")
    "<a href=\"#{url}\" target=\"#{target}\">#{yield}</a>"
end

p to_link("http://www.marca.com/"){ "Marca"}