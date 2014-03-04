json.array!(@guitars) do |guitar|
  json.extract! guitar, :id, :brand, :year, :title
  json.url guitar_url(guitar, format: :json)
end
