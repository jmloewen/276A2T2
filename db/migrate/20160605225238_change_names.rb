class ChangeNames < ActiveRecord::Migration
  def change
    rename_column :students, :text, :weight
  end
end
