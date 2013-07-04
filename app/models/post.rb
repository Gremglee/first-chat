class Post < ActiveRecord::Base
  attr_accessible :text, :user_id
  belongs_to :user

  before_save :delete_more_than_10

  def delete_more_than_10
    if Post.count >= 10
      Post.order('created_at asc').first.destroy
    end
  end
end
