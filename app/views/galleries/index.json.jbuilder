json.array!(@galleries) do |gallery|
  json.extract! gallery, :location, :image_url
  json.url gallery_url(gallery, format: :json)
end
