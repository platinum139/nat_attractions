namespace :db do
  desc 'Population of Database'

  task :populate_heroku => :environment do

    require 'faker'
    ActiveRecord::Base.connection.truncate(:attractions)
    ActiveRecord::Base.connection.truncate(:capitals)
    ActiveRecord::Base.connection.truncate(:countries)

    10.times do
      country = Country.create ({
        :name => Faker::Address.country,
        :location => Faker::Address.country_code,
        :language => Faker::Nation.language,
        :currency => Faker::Currency.name })
      country.save!
    end

    10.times do
      capital = Capital.create! ({
        :name => Faker::Address.city,
        :population => Faker::Number.between(from: 100000, to: 10000000),
        :country_id => Faker::Number.between(from: 1, to: 10) })
      capital.save!
    end

    10.times do
      attraction = Attraction.create! ({
        :name => Faker::Restaurant.name,
        :description => Faker::Restaurant.description,
        :country_id => Faker::Number.between(from: 1, to: 10) })
      attraction.save!
    end
  end
end
