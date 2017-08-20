class AddSchoolToNotice < ActiveRecord::Migration[5.0]
  def change
    add_column :notices, :school_id, :integer
    add_index :notices, :school_id
  end
end
