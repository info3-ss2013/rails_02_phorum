json.array!(@posts) do |post|
  json.extract! post, :title, :text, :forum_id
  json.url post_url(post, format: :json)
end