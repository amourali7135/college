class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :employer, :boolean, null: false, default: false
    add_column :users, :admin, :boolean, null: false, default: false
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :organization_name, :string
    add_column :users, :location, :string
    add_column :users, :bio, :text
    add_column :users, :age, :integer
    add_column :users, :goal, :text
  end
end