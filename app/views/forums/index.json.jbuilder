json.array!(@forums) do |forum|
  json.extract! forum, :title
  json.url forum_url(forum, format: :json)
end