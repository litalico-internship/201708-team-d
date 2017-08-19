class CreateNoticeSigns < ActiveRecord::Migration[5.0]
  def change
    create_table :notice_signs do |t|
      t.references :notice
      t.references :sign
      t.timestamps
    end
    add_index :notice_signs, [:notice, :sign], unique: true
  end
end
