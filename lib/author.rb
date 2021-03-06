class Author

  attr_accessor :name, :posts
  attr_reader

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    new_post = Post.new(title).tap do |post|
      self.add_post(post)
    end
  end

  def self.post_count
    @@post_count
  end
end
