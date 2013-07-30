json.array!(@text_managers) do |text_manager|
  json.extract! text_manager, :name, :description
  json.url text_manager_url(text_manager, format: :json)
end
