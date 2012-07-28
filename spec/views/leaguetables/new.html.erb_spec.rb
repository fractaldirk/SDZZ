require 'spec_helper'

describe "leaguetables/new" do
  before(:each) do
    assign(:leaguetable, stub_model(Leaguetable,
      :club_name => "MyString",
      :club_id => 1,
      :matches_played => 1,
      :points => 1,
      :wins => 1,
      :draws => 1,
      :losses => 1,
      :goals_for => 1,
      :goals_against => 1,
      :penalty_points => 1
    ).as_new_record)
  end

  it "renders new leaguetable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => leaguetables_path, :method => "post" do
      assert_select "input#leaguetable_club_name", :name => "leaguetable[club_name]"
      assert_select "input#leaguetable_club_id", :name => "leaguetable[club_id]"
      assert_select "input#leaguetable_matches_played", :name => "leaguetable[matches_played]"
      assert_select "input#leaguetable_points", :name => "leaguetable[points]"
      assert_select "input#leaguetable_wins", :name => "leaguetable[wins]"
      assert_select "input#leaguetable_draws", :name => "leaguetable[draws]"
      assert_select "input#leaguetable_losses", :name => "leaguetable[losses]"
      assert_select "input#leaguetable_goals_for", :name => "leaguetable[goals_for]"
      assert_select "input#leaguetable_goals_against", :name => "leaguetable[goals_against]"
      assert_select "input#leaguetable_penalty_points", :name => "leaguetable[penalty_points]"
    end
  end
end
