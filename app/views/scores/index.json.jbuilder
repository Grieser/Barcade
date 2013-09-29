json.array!(@scores) do |score|
  json.extract! score, :game_id, :player_id, :score, :date, :is_verified
  json.url score_url(score, format: :json)
end
