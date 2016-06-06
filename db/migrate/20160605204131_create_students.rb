class CreateStudents < ActiveRecord::Migration
  def change  #called when migration is run
    create_table :students do |t|
      t.string :stdName
      t.integer :weight
      t.integer :height
      t.float :gpa
      t.text :color

      t.timestamps null: false
    end
  end
end
