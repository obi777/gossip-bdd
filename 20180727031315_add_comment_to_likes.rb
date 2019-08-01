class AddCommentToLikes < ActiveRecord::Migration[5.2]
  def change
    add_reference :likes, :comment,  foreign_key: true
    add_reference :comments_to_comments, :comment, foreign_key: true
  end
end
