class CreateLeaguetables < ActiveRecord::Migration
  def change
    create_table :leaguetables do |t|
      t.string :club_name
      t.integer :club_id
      t.integer :matches_played
      t.integer :points
      t.integer :wins
      t.integer :draws
      t.integer :losses
      t.integer :goals_for
      t.integer :goals_against
      t.integer :penalty_points

      t.timestamps
    end
  end
end
