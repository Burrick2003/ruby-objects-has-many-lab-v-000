class Post
attr_accessor :author, :title

  def initialize(author_name)
    @author = author_name
  end
  def title
    if self.title
      self.author.name
    else
      nil
    end
  end






end
