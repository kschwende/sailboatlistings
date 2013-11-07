class AddUserIdToSailboats < ActiveRecord::Migration
  def change
    add_column :sailboats, :user_id, :integer
    end
end
