class Complejo
	attr_reader :real, :imaginaria
	attr_writer :real, :imaginaria

	def initialize(real,imaginaria)
		@real,@imaginaria=real,imaginaria
	end

	#Suma:
	def +(other)
		Complejo.new(@real+other.real,@imaginaria+other.imaginaria)
	end

	#Diferencia:
	def -(other)
		Complejo.new(@real-other.real,@imaginaria-other.imaginaria)
	end

	#Multiplicacion:
	def *(other)
		if other.class.to_s == "Complejo" 
			parteReal=((@real*other.real)-(@imaginaria*other.imaginaria))
			parteImaginaria=((@real*other.imaginaria)+(@imaginaria*other.real))
			Complejo.new(parteReal, parteImaginaria)
		else
			Complejo.new(@real*other,@imaginaria*other)
		end
	end
	
	#Division:
	def /(other)
		numeradorReal=((@real*other.real)+(@imaginaria*other.imaginaria))
		numeradorImaginaria=((@imaginaria*other.real)-(@real*other.imaginaria))
		denominador=(other.real**2+other.imaginaria**2)
		
		Complejo.new((numeradorReal/denominador),(numeradorImaginaria/denominador))
	end

	def ==(other)
		(@real == other.real)&&(@imaginaria == other.imaginaria)
	end
	
	def to_s
		"#{@real} + #{@imaginaria}i"
	end
end
