
fire = Potion.find_or_create_by!(name: "Fire Potion") do |p|
  p.effect = "Fire"
  p.price = 100
  p.duration = 30
end

ice = Potion.find_or_create_by!(name: "Ice Potion") do |p|
  p.effect = "Freeze"
  p.price = 150
  p.duration = 20
end

Bomb.find_or_create_by!(name: "Fire Bomb") do |b|
  b.damage = 100
  b.price = 250
  b.stock = 10
  b.potion = fire
end

Bomb.find_or_create_by!(name: "Ice Bomb") do |b|
  b.damage = 75
  b.price = 300
  b.stock = 5
  b.potion = ice
end
