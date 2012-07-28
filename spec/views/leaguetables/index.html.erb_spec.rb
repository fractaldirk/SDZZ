require 'spec_helper'

describe "leaguetables/index" do
  before(:each) do
    assign(:leaguetables, [
      stub_model(Leaguetable,
        :club_name => "Club Name",
        :club_id => 1,
        :matches_played => 2,
        :points => 3,
        :wins => 4,
        :draws => 5,
        :losses => 6,
        :goals_for => 7,
        :goals_against => 8,
        :penalty_points => 9
      ),
      stub_model(Leaguetable,
        :club_name => "Club Name",
        :club_id => 1,
        :matches_played => 2,
        :points => 3,
        :wins => 4,
        :draws => 5,
        :losses => 6,
        :goals_for => 7,
        :goals_against => 8,
        :penalty_points => 9
      )
    ])
  end

  it "renders a list of leaguetables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Club Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
  end
end
