class Comment < ActiveRecord::Base
  belongs_to :post
  validates_presence_of :comment
  validates_presence_of :post_id
end
