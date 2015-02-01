json.array!(@articles) do |article|
  json.extract! article, :id, :title, :date, :body
  json.url article_url(article, format: :json)
end
