# class Animal
#   @name = "no name"

#   def walk
#     puts "#{@name} is walking."
#   end

#   def eat
#     puts "#{@name} is eating."
#   end

#   def initialize(arg = nil)
#     if not arg.nil?()
#       @name = arg
#     end
#     puts "Hi, #{@name}!"
#   end
# end

# class Dog < Animal
#   # def initialize()
#   # end
# end

# class Cat < Animal
#   # def initialize()
#   # end
# end

# kitty = Cat.new("kk")
# kitty.walk
# kitty.eat

# shiba = Dog.new
# shiba.eat

# --------------------------------------
# class Book
#   @book_array = []
#   @author_array = []

#   attr_accessor :book_name
#   attr_accessor :author
#   attr_accessor :index

#   # attr_reader :book_name
#   # 等同於
#   # def book_name 
#   #   @book_name
#   # end
#   # attr_writer :book_name
#   # 等同於
#   # def book_name=(xxx) 
#   #   @book_name = xxx
#   # end
#   # attr_accessor 等於 attr_reader + attr_writer

#   def self.all
#     # 印出所有書籍
#     p @book_array
#   end
    
#   def self.find(number)
#     # 找到指定編號的書籍
#     if @book_array.count  >= number && number > 0
#       book_name = @book_array[number - 1]
#       author = @author_array[number - 1]

#       puts "Book name: #{book_name}, Author: #{author}, No.#{number}"
#     else
#       puts "目前尚無任何書籍"
#     end
#   end

#   def self.add(book_name, author)
#     @book_array.push(book_name)
#     @author_array.push(author)
#   end

#   def initialize(book_name, author)
#     @book_name = book_name
#     @author = author

#     Book.add(@book_name, @author)
#   end
  
#   def print_info
#     puts "#{@book_name} by #{@author}."
#   end
# end

# book1 = Book.new("Book name1", "Author1")
# book2 = Book.new("Book name2", "Author2")
# Book.all # 此為類別方法
# Book.find(2) # 此為類別方法

# book1.print_info # 此為實體方法
# book2.print_info # 此為實體方法

# --------------------------------------
module Flyable
  def fly
    puts "I'm flying!"
  end
end

class Cat
  include Flyable
end

kitty = Cat.new
kitty.fly