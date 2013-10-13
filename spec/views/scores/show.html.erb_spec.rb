require 'spec_helper'

describe "scores/show" do
  before(:each) do
    @score = assign(:score, stub_model(Score,
      :game_id => 1,
      :player_id => 2,
      :score => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
