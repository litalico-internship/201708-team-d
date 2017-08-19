class CreateReportSigns < ActiveRecord::Migration[5.0]
  def change
    create_table :report_signs do |t|
      t.references :report
      t.references :signs
      t.timestamps
    end
  end
end
