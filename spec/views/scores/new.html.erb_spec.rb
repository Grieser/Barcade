require 'spec_helper'

describe "scores/new" do
  before(:each) do
    assign(:score, stub_model(Score,
      :game_id => 1,
      :player_id => 1,
      :score => 1,
      :is_verified => false
    ).as_new_record)
  end

  it "renders new score form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", scores_path, "post" do
      assert_select "input#score_game_id[name=?]", "score[game_id]"
      assert_select "input#score_player_id[name=?]", "score[player_id]"
      assert_select "input#score_score[name=?]", "score[score]"
      assert_select "input#score_is_verified[name=?]", "score[is_verified]"
    end
  end
end
