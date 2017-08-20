class CreateNoticeSigns < ActiveRecord::Migration[5.0]
  def change
    create_table :notice_signs do |t|
      t.references :notice
      t.references :sign
      t.timestamps
    end
  end
end
