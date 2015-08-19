require_relative '../app/models/student'
require 'byebug'

module StudentsImporter
  def self.import(filename=File.dirname(__FILE__) + "/../db/data/students.csv")
    field_names = nil
    # num = [1,2,3,4,5,6,7,8,9,10,11]
    Student.transaction do
      File.open(filename).each do |line|
        # array = line.strip.insert(-1,", #{num.sample.to_s}")
        data = line.chomp.split(',')
        if field_names.nil?
          field_names = data
        else
          attribute_hash = Hash[field_names.zip(data)]
          student = Student.create!(attribute_hash)
        end
      end
    end
  end
end
