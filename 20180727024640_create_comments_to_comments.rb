class CreateCommentsToComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments_to_comments do |t|
      t.text :content
      t.timestamps
    end
  end
end
