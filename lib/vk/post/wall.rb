require 'vk/post'

require 'delegate'

module Vk
  class Post
    class Wall
      extend ActiveSupport::Memoizable

      attr_accessor :uid, :count, :posts

      def initialize(uid, count, posts)
        self.uid, self.count, self.posts = uid, count, posts
      end

      def user
        Vk::User.find(uid)
      end
      memoize :user

      def [](index)
        raise "Post #{index} is not exist" if index > count
        if index >= posts.size
          existing = posts.size
          count, *loaded_posts = Vk::Base.loader.get_wall(uid, offset: existing, count: index - existing + 1)
          self.posts += loaded_posts
        end
        post = posts[index]
        Vk::Post.find(Vk::Post.id_for(post), data: post)
      end

      def first; [0]; end

      def method_missing(method, *args)
        if posts.respond_to?(method)
          posts.send(method, *args)
        else
          super
        end
      end
    end
  end
end
