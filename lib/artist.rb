class Artist
attr_accessor :name
@@song_count = 0

  def initialize(name)
    @name = name
    @songs = []

  end

def songs
  @songs
end

  def add_song(title)
    @songs << title
    title.artist = self #doesn't create a new object, but gives existing object properties of 2 classes.  lesson kind of glossed over this
    @@song_count += 1
  end

  def add_song_by_name(title)
    linked_song = Song.new(title)
    self.songs << linked_song
    linked_song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end


end
