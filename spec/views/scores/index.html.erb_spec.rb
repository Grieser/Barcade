require 'spec_helper'

describe "scores/index" do
  before(:each) do
    assign(:scores, [
      stub_model(Score,
        :game_id => 1,
        :player_id => 2,
        :score => 3,
        :is_verified => false
      ),
      stub_model(Score,
        :game_id => 1,
        :player_id => 2,
        :score => 3,
        :is_verified => false
      )
    ])
  end

  it "renders a list of scores" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
