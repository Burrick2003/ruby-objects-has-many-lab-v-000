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
  def add_post_by_title(post_to_be)#like above but generates the post instance, not respectively
    post = Post.new(post_to_be)
    @posts << post
    post_to_be.author = self
    @@post_count+=1
  end
end
