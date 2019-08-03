class Artist
  attr_accessor :name
<<<<<<< HEAD
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

   def self.all
     @@all
   end

   def add_song(song)
     song.artist = self
   end

   def songs
     Song.all.select {|song| song.artist == self}
   end

   def self.find_or_create_by_name(name)
     self.all.find {|artist| artist.name == name} ? self.all.find {|artist| artist.name == name} : self.new(name)


     
   end


   def print_songs
     Song.all.each do |song|
       puts "#{song.name}" unless song.artist != self
     end
   end

end
=======

  def initialize(name)
    @name = name
  end

end 
>>>>>>> e06b25a982ddbb4b387cf88467527eb3dd317d7a
