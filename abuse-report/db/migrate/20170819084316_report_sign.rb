class ReportSign < ActiveRecord::Migration[5.0]
  def change
    add_index :report_signs, [:report_id, :sign_id], :unique => true
  end
end
