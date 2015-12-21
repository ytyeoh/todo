require_relative '../config/application'

require 'faker'

9.times do
      Task.create :name => Faker::Lorem.sentence

    end