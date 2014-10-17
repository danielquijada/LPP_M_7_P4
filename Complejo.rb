class Complejo
	attr_reader :real, :imaginaria
	attr_writer :real, :imaginaria
	def initialize(real, imaginaria)
		@real,@imaginaria = real,imaginaria
	end

	

	def +(other)
		Complejo.new(@real + other.real, @imaginaria + other.imaginaria)
	end

	def -(other)
		Complejo.new(@real - other.real, @imaginaria - other.imaginaria)
	end

	
	def div (other)
		dividendo = ((@real**2) + (other.imaginaria**2))
		Complejo.new((((@real * other.real) + (@imaginaria * other.imaginaria))/dividendo).round(2), (((@imaginaria * other.real) + (@real * other.imaginaria))/dividendo).round(2))
	end
	
	
	def Pe

end
