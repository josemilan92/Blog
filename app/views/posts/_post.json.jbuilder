json.extract! post, :id, :title, :context, :status, :url, :created_at, :updated_at
json.url post_url(post, format: :json)
