15.times do
  Pet.create!(
    name: Faker::FunnyName.three_word_name,
    address: Faker::Address.street_address,
    species: Pet::SPECIES.sample,
    found_on: Date.today - rand(1..10)
  )
end
