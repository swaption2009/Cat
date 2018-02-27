json.tags @tags do |tag|
  json.id tag.id
  json.trait tag.trait
  json.breed_count tag.taggings.count
  json.breed_ids tag.taggings.map(&:breed_id)
end
