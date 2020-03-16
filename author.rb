

class Author
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        Author.all << self
    end

    def self.all
        @@all
    end

    def books
        Book.all.select do |book|
            book.author == self.name
        end
    end

    def write_book(title, word_count)
        Book.new(self.name, title, word_count)
    end

    def total_words
        total_words = 0

        books.map do |book|
            total_words += book.word_count
        end

        total_words

    end

    def self.most_words
        most_words = 0
        most_verbose = nil
        
        Author.all.each do |author|
            if author.total_words > most_words
                most_verbose = author
                most_words = author.total_words
            end
        end
        return most_verbose
    end




end