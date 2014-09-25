class AddUserIdAndIPtosevernodes < ActiveRecord::Migration
  def change
    add_column :servernodes, :user_id, :integer
    add_column :servernodes, :ip_address, :string
  end
end
