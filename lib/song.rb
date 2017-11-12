
class Song
@@songs = 0
attr_accessor :name, :artist, :genre
  def initialize(name)
    @name = name
    @@songs += 1


  end


  def artist_name
    @artist
    
  end
  
  def artist_name2
      if self.artist
        self.artist.name
      else
        nil
      end
    end







end
