class AddPlacesFields < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :room_number, :string
    add_column :places, :address, :string
    add_column :places, :city, :string
    add_column :places, :state, :string
    add_column :places, :country, :string
    add_column :places, :zip_code, :string
  end
end
