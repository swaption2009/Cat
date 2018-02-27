json.breeds @breeds do |breed|
  json.id breed.id
  json.name breed.name
  json.tag_count breed.taggings.count
  json.tag_ids breed.taggings.map(&:tag_id)
end
