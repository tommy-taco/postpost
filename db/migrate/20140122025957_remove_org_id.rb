class RemoveOrgId < ActiveRecord::Migration
  def change
  	remove_column :users, :organization_id, :interger
  end
end
