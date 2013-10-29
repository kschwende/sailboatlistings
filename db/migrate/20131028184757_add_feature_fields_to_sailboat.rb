class AddFeatureFieldsToSailboat < ActiveRecord::Migration
  def change
    add_column :sailboats, :featured, :boolean
    add_column :sailboats, :featured_end_date, :date
  end
end
