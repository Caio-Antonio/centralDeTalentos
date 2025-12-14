json.extract! provider, :id, :user_id, :nickname, :phone, :address, :created_at, :updated_at
json.url provider_url(provider, format: :json)
