json.array!(@sailboats) do |sailboat|
  json.extract! sailboat, :manufacturer, :model, :description, :equipment, :year, :length, :beam, :draft, :material, :hull, :displacement, :boat_type, :rigging, :births, :cabins, :heads, :showers, :engines, :engine_type, :fuel_type, :hours, :horsepower, :boat_location_general, :boat_location_city, :boat_location_state, :boat_location_zip, :condition, :price, :create_date, :update_date
  json.url sailboat_url(sailboat, format: :json)
end
