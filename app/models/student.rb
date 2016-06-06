class Student < ActiveRecord::Base
   validates :stdName, presence: true,
                    length: { minimum: 5 }
                    
   validates_numericality_of :weight, on: :create, presence: true, :greater_than => 0, :less_than => 500, :only_integer => true
   
   #validates_numericality_of :height, on: :create, presence: true, :greater_than => 0, :less_than => 500, :only_integer => true
   #for some reason, this identical code works for weight, but NOT for height, or for GPA.
   
   #validates :gpa, presence: true
   
   
   
   
end
