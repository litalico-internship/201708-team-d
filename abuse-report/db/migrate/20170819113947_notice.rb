class Notice < ActiveRecord::Migration[5.0]
  def change
    remove_column :notices, :school
  end
end
