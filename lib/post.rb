class Post
attr_accessor :author, :title

  def initialize(author_name)
    @title = title
  end
  def author_name #called directly by spec, was using title
    if self.author
      self.author.name
    else
      nil
    end
  end






end
