class DropStroreConfiguration < ActiveRecord::Migration
  def change
  	drop_table :store_configurations
  end
end
