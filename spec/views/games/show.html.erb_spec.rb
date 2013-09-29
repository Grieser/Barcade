require 'spec_helper'

describe "games/show" do
  before(:each) do
    @game = assign(:game, stub_model(Game,
      :name => "Name",
      :year => 1,
      :version => "Version",
      :publisher => "Publisher",
      :cabinet_type => "Cabinet Type",
      :genre => "Genre",
      :num_of_players => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Version/)
    rendered.should match(/Publisher/)
    rendered.should match(/Cabinet Type/)
    rendered.should match(/Genre/)
    rendered.should match(/2/)
  end
end
