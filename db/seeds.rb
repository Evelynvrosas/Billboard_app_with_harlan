10.times do
  billboard = Billboard.create(
    name: Faker::Food.fruits
  )
  5.times do
    Song.create(
      title: Faker::Food.fruits,
      billboard_id: billboard.id
    )
  end

end

puts "seeded"