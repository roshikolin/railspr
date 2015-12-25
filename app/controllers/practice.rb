# puts "Hello, World!!"

# var1 = 'stop'
# var2 = 'foobar'
# var3 = 'aAbBcC'

# puts var1.reverse
# puts var2.length
# puts var3.upcase
# puts var3.downcase

# 5.times do
	# puts "go!"
# end

# var1 = 2
# var2 = '5'
# puts var1.to_s + var2
# puts var1 + var2.to_i
# puts 9.to_f/2

# a = [ 1, "cat", 3.14 ]
# puts a[0]
# puts a.inspect

# colors = ["red","blue"]
# colors.push("black")
# colors << "white"
# puts colors.inspect
# puts colors.last

# colors.each do |color|
	# puts 'I love ' + color + ' !'
# end

# config = {
	# :foo => 123,
	# :bar => 456
# }

# config.each do |key,value|
	# puts "#{key} is #{value}"
# end

# phone = "123-456-7890"
# if phone =~ /(\d{3})-(\d{3})-(\d{4})/
	# ext  = $1
	# city = $2
	# num  = $3
	
	# puts num
# end


# def say_hello(name)
	# result = "hi," + name
	# return result
# end

# puts say_hello('mary')

# class Person
	# def initialize(name)
		# @name = name
	# end

	# def say(word)
		# puts "#{word}, #{@name}"
	# end	
# end

# p1 = Person.new('peter')
# p2 = Person.new('mary')
# p1.say("hello")
# p2.say("hello")


# class Pet
	# attr_accessor :name, :age
	
	# def say(word)
		# puts "Says: #{word}"
	# end
# end

# class Cat < Pet 
	# def say(word)
		# puts "Meow~~"
		# super
	# end
# end	

# class Dog < Pet
	# def say(word, person)
		# puts "Bark at #{person}!"
		# super(word)
	# end
# end

# Cat.new.say("Hi")
# Dog.new.say("Hi", "ihower")


3.times do
	puts 'happy!'
end

1.upto(9) do |x|
	puts x
end	
