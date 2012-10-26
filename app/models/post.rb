class Post < ActiveRecord::Base
  attr_accessible :content, :comments_count, :title
end
