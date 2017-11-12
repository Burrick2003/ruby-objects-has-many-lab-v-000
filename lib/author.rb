class Author
attr_accessor :name
@@post_count = 0 #hardcoded in the rspec, can't shange name

  def initialize(input)
    self.name = input
    @posts = []
  end

  def posts
    @posts
  end

  def self.post_count #forgot class method
    @@post_count
  end

  def add_post(post_instance) #rspec sends in an EXISTING post instance, going to link it with Author properties
    @posts << post_instance
    post_instance.author = self #the magic line, that post over there is now here
    @@post_count += 1
  end

  def add_post_by_title(post_to_be)#like above but generates the post instance, not respectively
    post = Post.new(post_to_be) #that post over there
    @posts << post
    post.author = self #is here
    @@post_count+=1
  end

end
