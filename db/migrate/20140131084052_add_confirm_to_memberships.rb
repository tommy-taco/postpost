class AddConfirmToMemberships < ActiveRecord::Migration
  def change
  	add_column :memberships, :confirmed, :boolean, default: false
  end
end