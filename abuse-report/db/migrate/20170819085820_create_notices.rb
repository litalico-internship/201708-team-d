class CreateNotices < ActiveRecord::Migration[5.0]
  def change
    create_table :notices do |t|
      t.string :school
      t.references :user
      t.references :status
      t.timestamps
    end
  end
end
