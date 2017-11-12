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
  def add_post(post_instance) #rspec sends in a post instance, going to link it with Author properties
    self.posts << post_instance
    post_instance.author = self
    @@posts += 1
  end
  def post_count
    @posts
  end

end
