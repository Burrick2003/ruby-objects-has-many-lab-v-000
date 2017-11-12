class Author
attr_accessor :name
@@post_count = 0
  def initialize(name_input)
    self.name = name_input
    @posts = []
  end
  def posts
    @posts
  end


end
