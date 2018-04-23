json.extract! criminal, :id, :first_name, :second_name, :identification_mark, :location_of_crime, :address, :height, :weight, :description, :gender, :age, :created_at, :updated_at, :latitude , :longitude
json.url criminal_url(criminal, format: :json)
