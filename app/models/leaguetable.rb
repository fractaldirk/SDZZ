class Leaguetable < ActiveRecord::Base
  attr_accessible :club_id, :club_name, :draws, :goals_against, :goals_for, :losses, :matches_played, :penalty_points, :points, :wins, :goal_difference

    def goal_difference
      goal_difference = goals_for.to_i - goals_against.to_i
    end
    def pointz
      pointz = points.to_i - penalty_points.to_i
    end
end
