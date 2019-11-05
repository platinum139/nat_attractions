namespace :db do
  desc 'Population of Database'

  task :populate => :environment do

    require 'populator'
    require 'faker'

    Attraction.delete_all
    Capital.delete_all
    Country.delete_all
    
    Country.populate(3) do |country|
      country.name = Faker::Address.country
      country.location = Faker::Address.country_code
      country.language = Faker::Nation.language
      country.currency = Faker::Currency.name

      Capital.populate(1) do |capital|
        capital.name = Faker::Address.city
        capital.population = Faker::Number.between(from: 100000, to: 10000000)
        capital.country_id = country.id
      end

      Attraction.populate(2) do |attraction|
        attraction.name = Faker::Restaurant.name
        attraction.description = Faker::Restaurant.description
        attraction.country_id = country.id
      end
    end
  end
end
