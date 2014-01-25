class RemoveColumns < ActiveRecord::Migration
  def change
  	remove_column :organizations, :user_id, :interger
  end
end
