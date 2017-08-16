json.extract! inquiry, :id, :subject, :text, :created_at, :updated_at
json.url inquiry_url(inquiry, format: :json)