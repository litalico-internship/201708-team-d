class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :school
      t.references :user
      t.references :status
      t.timestamps
    end
  end
end
