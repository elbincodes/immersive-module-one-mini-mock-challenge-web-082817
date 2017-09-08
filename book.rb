class Book

attr_accessor :author, :title, :word_count
#above methods can be read and written
  @@all_books = []
#this is the array that all the book instances get pushed to after being made/intitalized
  def initialize(author, title, word_count)
    @author = author
    @title = title
    @word_count = word_count
    @@all_books.push(self)

    # where when a book is made with Book.new, we pass it a name, title, and word count, all of which it can later access, the instanace is then pushed into an array that the class holds
  end

def self.all
  @@all_books
  #this method is created so that we can access the array that the class has, array is an all the instances of the class
end


end
