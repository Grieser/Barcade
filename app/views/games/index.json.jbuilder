json.array!(@games) do |game|
  json.extract! game, :name, :year, :version, :publisher, :cabinet_type, :genre, :num_of_players
  json.url game_url(game, format: :json)
end
