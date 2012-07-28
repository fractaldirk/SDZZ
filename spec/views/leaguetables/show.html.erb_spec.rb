require 'spec_helper'

describe "leaguetables/show" do
  before(:each) do
    @leaguetable = assign(:leaguetable, stub_model(Leaguetable,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Club Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/8/)
    rendered.should match(/9/)
  end
end
