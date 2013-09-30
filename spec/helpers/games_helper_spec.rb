require 'spec_helper'

describe GamesHelper do
  let(:game) do
  	stub_model Game, :id => 1, :name => "game name"
  end

  it 'get_game_name returns name of the game when provided an id' do
  	Game.stub(:find_by_id) {game}

  	helper.get_game_name(1).should eq("game name")
  end

  it 'get_game_name returns empty string if game does not exist at provided id' do
  	Game.stub(:find_by_id) {}

  	helper.get_game_name(2).should eq("")
  end

end
