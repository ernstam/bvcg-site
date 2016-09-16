json.extract! reservation, :id, :entrytime, :endtime, :fieldnumber, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)