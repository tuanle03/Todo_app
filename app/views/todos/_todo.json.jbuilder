json.extract! todo, :id, :title, :notes, :status, :created_at, :updated_at
json.url todo_url(todo, format: :json)
