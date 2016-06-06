class Student < ActiveRecord::Base
   
   validate do |student|
      student.errors.add_to_base("Name can't be blank!") if student.blank?
   end
   
   validates :stdName, presence: true;
   
   validates :height, presence:true;
   
   validates :weight, presence:true;
                    
   #validates_numericality_of :weight, on: :create, presence: true, :greater_than => 0, :less_than => 500, :only_integer => true
   
   validates :gpa, presence:true
   #validates_numericality_of :height, on: :create, presence: true, :greater_than => 0, :less_than => 500, :only_integer => true
   #for some reason, this identical code works for weight, but NOT for height, or for GPA.
   #validates :gpa, presence: true
   
   #as a result of the above issues, I moved validation to the front end using HTML5 tags.
   
   
   
end
