json.extract! detallespersona, :id, :personable_id, :personable_type, :nombre, :apellido, :edad, :cedula, :huella_digital, :created_at, :updated_at
json.url detallespersona_url(detallespersona, format: :json)
