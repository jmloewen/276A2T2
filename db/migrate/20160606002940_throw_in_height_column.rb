class ThrowInHeightColumn < ActiveRecord::Migration
  def change
    add_column :students, :height, :integer
  end
end
