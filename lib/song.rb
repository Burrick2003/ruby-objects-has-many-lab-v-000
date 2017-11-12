
class Song
@@songs = 0
attr_accessor :name, :artist, :genre
  def initialize(name)
    @name = name
    @@songs += 1


  end


  def artist_name
    #@artist #why doesn't this work?  (artist in artist class not song)
    #if self.artist.name != nil #not does it have an artist name, but is it an artist
    output = ""
    if self.artist
      output << self.artist.name

    else
      output = nil
    end
  output
  end

  def artist_name2
      if self.artist
        self.artist.name
      else
        nil
      end
    end







end
