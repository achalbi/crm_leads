json.extract! enquiry, :id, :enquiry_date, :floor_count, :lift_type, :floor_destination, :machine_mounting_room, :stops_count, :cabin_type, :openings_count, :shaft_width, :shaft_depth, :lifts_count, :capacity, :capacity_units, :created_at, :updated_at
json.url enquiry_url(enquiry, format: :json)
