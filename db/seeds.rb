cat1 = Breed.create!(name: "Norwegian Forest Cat")
cat2 = Breed.create!(name: "American Bobtail")
cat3 = Breed.create!(name: "Cymric")
p "created 3 cats"

trait1 = Tag.create!(trait: "knows kung fu")
trait2 = Tag.create!(trait: "climbs trees")
trait3 = Tag.create!(trait: "affectionate")
trait4 = Tag.create!(trait: "low shedding")
trait5 = Tag.create!(trait: "playful")
trait6 = Tag.create!(trait: "intelligent")
trait7 = Tag.create!(trait: "has no tail")
trait8 = Tag.create!(trait: "friendly")
p "created 8 traits"

cat1.tags << trait3 << trait4 << trait5 << trait6
cat2.tags << trait3 << trait7 << trait8
cat3.tags << trait1 << trait2 << trait4 << trait8
p "assigned cats with their traits"
