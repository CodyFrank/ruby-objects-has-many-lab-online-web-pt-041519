class Author
  attr_accessor :name
  def initialize(name)
    @name = name
    @posts = []
  end

  def self.post_count
    post.all.length
  end

  def posts
    @posts
  end

  def add_post(post)
    self.posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end
end
