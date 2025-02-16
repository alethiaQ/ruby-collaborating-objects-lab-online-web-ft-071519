class Song
  attr_accessor :name, :artist
  @@all  = []

  def initialize(name)
    @name  = name
    @@all  << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)

    artist_file, song_file = filename.split(" - ")
    song = self.new(song_file)
    song.artist_name = artist_file
    
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end


end
