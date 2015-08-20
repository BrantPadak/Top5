json.array!(@songs) do |song|
  json.extract! song, :id, :name, :rating, :artist_id, :album
  json.url song_url(song, format: :json)
end
