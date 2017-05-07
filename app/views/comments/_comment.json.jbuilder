json.extract! comment, :id, :commentable_id, :commentable_type, :user_id, :title, :comment, :created_at, :updated_at
json.url comment_url(comment, format: :json)