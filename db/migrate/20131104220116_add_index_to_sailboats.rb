class AddIndexToSailboats < ActiveRecord::Migration
  def change
  end
  add_index :sailboats, [:user_id, :created_at]
end
