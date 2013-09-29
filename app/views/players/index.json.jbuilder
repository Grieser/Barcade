json.array!(@players) do |player|
  json.extract! player, :nickname
  json.url player_url(player, format: :json)
end
