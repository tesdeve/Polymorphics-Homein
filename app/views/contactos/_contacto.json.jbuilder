json.extract! contacto, :id, :contactable_id, :contactable_type, :telefono, :email, :created_at, :updated_at
json.url contacto_url(contacto, format: :json)
