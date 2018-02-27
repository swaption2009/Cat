json.breed do
  json.breed @breed, :id, :name
  json.tags @breed.tags, :id, :trait
end