class AddAddressFields < ActiveRecord::Migration[6.0]
  def change
    add_column :addresses, :room_number, :string
    add_column :addresses, :address, :string
    add_column :addresses, :city, :string
    add_column :addresses, :state, :string
    add_column :addresses, :country, :string
    add_column :addresses, :zip_code, :string
  end
end
