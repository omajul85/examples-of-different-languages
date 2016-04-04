# Single responsability example 
# =============================
# Both classes have a single responsability. The code is not perfect, 
# but in some ways it achieves a higher standard: it is good enough

class Gear
    attr_reader :chainring, :cog, :wheel
    
    def initialize(chainring, cog, wheel = nil)
        @chainring = chainring
        @cog = cog
        @wheel = wheel
    end
    
    def ratio
        chainring / cog.to_f
    end
    
    def gear_inches
        #tire goes around rim twice for diameter
        ratio * wheel.diameter
    end
end

class Wheel
    attr_reader :rim, :tire
    
    def initialize(rim, tire)
        @rim = rim
        @tire = tire
    end
    
    def diameter
        rim + (tire * 2)
    end
    
    def circumference
        diameter * Math::PI
    end
end

w1 = Wheel.new(26, 1.5)
puts w1.circumference

puts Gear.new(52, 11, w1).gear_inches
puts Gear.new(52, 11).ratio