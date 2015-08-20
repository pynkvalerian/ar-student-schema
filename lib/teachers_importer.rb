require_relative '../app/models/teacher'
require 'faker'

module TeachersImporter
  def self.import
    9.times do |i|
    i = Teacher.create(first_name: Faker::Name.name, last_name: Faker::Name.name, email: Faker::Internet.email, phone: Faker::PhoneNumber.phone_number)
  end
  end
end


