class Author

attr_accessor :name
  @@all_authors = []
# our Authos class has an array that hold all the intances after it is created below

  def initialize (name)
    @name = name
    @@all_authors.push(self)
  #when an instance is made with its name, we push that intance to the array
  end

  def self.all
    @@all_authors
    #this methos lets us access the array that belongs to the class, this array has all the instances
  end

  def books
      book.all.map do |each_book|
        if each_book.author == self.name
          each_book
        else
        end
      end
      #this method makes use of the books Class (in other file), we go through the array that the class hold and look for a all the books that have the author mathces our instances name
  end

  def write_book (title, word_count)
    Book.new(self.name, title, word_count)
    #here we let this author instance  make his own book by making use of the book class, self.name is this instances name
  end

  def self.most_words
    sorted = book.all.sort_by {|x| x.word_count}
    sorted.last
    
  end


end
