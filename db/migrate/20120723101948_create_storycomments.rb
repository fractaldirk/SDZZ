class CreateStorycomments < ActiveRecord::Migration
  def change
    create_table :storycomments do |t|
      t.string :commenter
      t.text :body
      t.references :story

      t.timestamps
    end
    add_index :storycomments, :story_id
  end
end
