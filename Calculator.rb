class Calculator
	attr_reader :total
	def initialize
		@total = 0
	end
	def add(*args)
		args.each{|i| @total += i}
		self
	end
	def subtract(*args)
		args.each{|i| @total-=i}
		self
	end
	def multiply(*args)
		args.each{|i| @total*=i}
		self
	end
end