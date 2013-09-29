require 'spec_helper'

describe "scores/edit" do
  before(:each) do
    @score = assign(:score, stub_model(Score,
      :game_id => 1,
      :player_id => 1,
      :score => 1,
      :is_verified => false
    ))
  end

  it "renders the edit score form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", score_path(@score), "post" do
      assert_select "select#score_game_id[name=?]", "score[game_id]"
      assert_select "input#score_player_id[name=?]", "score[player_id]"
      assert_select "input#score_score[name=?]", "score[score]"
      assert_select "input#score_is_verified[name=?]", "score[is_verified]"
    end
  end
end
