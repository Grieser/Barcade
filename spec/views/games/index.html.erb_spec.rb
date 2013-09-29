require 'spec_helper'

describe "games/index" do
  before(:each) do
    assign(:games, [
      stub_model(Game,
        :name => "Name",
        :year => 1,
        :version => "Version",
        :publisher => "Publisher",
        :cabinet_type => "Cabinet Type",
        :genre => "Genre",
        :num_of_players => 2
      ),
      stub_model(Game,
        :name => "Name",
        :year => 1,
        :version => "Version",
        :publisher => "Publisher",
        :cabinet_type => "Cabinet Type",
        :genre => "Genre",
        :num_of_players => 2
      )
    ])
  end

  it "renders a list of games" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Version".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher".to_s, :count => 2
    assert_select "tr>td", :text => "Cabinet Type".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
