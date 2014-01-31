class RemoveStateFromUsers < ActiveRecord::Migration
  def change
  	remove_column :memberships, :state, :string
  end
end