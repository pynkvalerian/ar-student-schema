require_relative '../../db/config'
require 'date'

class Student < ActiveRecord::Base
# implement your Student model here

  has_many :teacher_students
  has_many :teachers, through: :teacher_students

validates :age, :numericality => { :greater_than_or_equal_to => 5}
validates :email, :format => { :with => /\w[@]{1,}\w{1,}[.]\w{2,}/ }, uniqueness: true
validates :phone, :format => { :with => /1?\W*([2-9][0-8][0-9])\W*([2-9][0-9]{2})\W*([0-9]{4})(\se?x?t?(\d*))?/}

  def name
    @name = @first_name.concat(" " + @last_name)
  end

  def age
    now = Date.today.year
    birthday = self.birthday.year
    age = now - birthday - 1
  end

end

p Student.all