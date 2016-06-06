class CreateStudents < ActiveRecord::Migration
  def change  #called when migration is run
    create_table :students do |t|
      t.string :stdName
      t.weight :weight

      t.timestamps null: false
    end
  end
end
