class ChangeWeightToNumeric < ActiveRecord::Migration
  def change
    change_column :students, :weight, :integer
  end
end
