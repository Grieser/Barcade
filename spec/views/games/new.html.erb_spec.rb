require 'spec_helper'

describe "games/new" do
  before(:each) do
    assign(:game, stub_model(Game,
      :name => "MyString",
      :year => 1,
      :version => "MyString",
      :publisher => "MyString",
      :cabinet_type => "MyString",
      :genre => "MyString",
      :num_of_players => 1
    ).as_new_record)
  end

  it "renders new game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", games_path, "post" do
      assert_select "input#game_name[name=?]", "game[name]"
      assert_select "input#game_year[name=?]", "game[year]"
      assert_select "input#game_version[name=?]", "game[version]"
      assert_select "input#game_publisher[name=?]", "game[publisher]"
      assert_select "input#game_cabinet_type[name=?]", "game[cabinet_type]"
      assert_select "input#game_genre[name=?]", "game[genre]"
      assert_select "input#game_num_of_players[name=?]", "game[num_of_players]"
    end
  end
end
