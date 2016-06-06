class Putinsomemorecolumns < ActiveRecord::Migration
  def change
    add_column :students, :height, :integer
    add_column :students, :gpa, :float
    add_column :students, :color, :text
  end
end
