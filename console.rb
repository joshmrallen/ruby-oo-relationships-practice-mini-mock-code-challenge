require 'pry'
require_relative './book'
require_relative './author'


tolkien = Author.new("J.R.R. Tolkien")
josh = Author.new("Josh Allen")
herbert = Author.new("Frank Herbert")

tolkien.write_book("Lord of the Rings", 60000)
tolkien.write_book("The Hobbit", 30000)

josh.write_book("what", 200000)

herbert.write_book("Dune", 100000)
herbert.write_book("Chapterhouse: Dune", 20000)
herbert.write_book("Dune Messiah", 30000)



binding.pry



