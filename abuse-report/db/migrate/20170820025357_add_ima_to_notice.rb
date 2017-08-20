class AddImaToNotice < ActiveRecord::Migration[5.0]
  def change
    add_column :signs, :img, :string
  end
end
