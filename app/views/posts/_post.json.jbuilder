json.extract! post, :id, :dificulty, :read_time, :title, :content, :likes, :admin_id, :created_at, :updated_at
json.url post_url(post, format: :json)
