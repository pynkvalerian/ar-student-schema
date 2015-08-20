require_relative '../../db/config'
require 'date'

class Teacher < ActiveRecord::Base
  has_many :teacher_students
  has_many :students, through: :teacher_students

  validates :email, :format => { :with => /\w[@]{1,}\w{1,}[.]\w{2,}/ }, uniqueness: true

end

# p Teacher.all