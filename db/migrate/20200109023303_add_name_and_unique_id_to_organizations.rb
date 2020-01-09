class AddNameAndUniqueIdToOrganizations < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :name, :string
    add_column :organizations, :unique_name, :string
  end
end
