require_relative '../../db/config'
require 'date'

class Student < ActiveRecord::Base
# implement your Student model here
attr_accessor :name,:first_name,:last_name,:gender,:birthday,:email,:phone,:address
  def initialize(details = {})
    @first_name = details[:first_name]
    @last_name = details[:last_name]
    @gender = details[:gender]
    @birthday = details[:birthday]
    @email = details[:email]
    @phone = details[:phone]
    @address = details[:address]
  end

  def name
    @name = @first_name.concat(" " + @last_name)
  end

  def age
    now = Date.today.year
    birthday = @birthday.year
    age = now - birthday - 1
    age
  end

end

# chester = Student.new(name:, gender:, birthday:, email:, :phone, :address)
# chester.name #= 'Chester'

# Student.new(first_name: "Chester", last_name: "John", gender: "Male", birthday: "1990-6-16", email: "chstrjhn@gmail.com", phone: 56565575, address: "Cyberjaya")

