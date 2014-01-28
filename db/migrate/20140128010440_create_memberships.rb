class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :member_id
      t.integer :organization_id

      t.timestamps
    end
    add_index :memberships, :member_id
    add_index :memberships, :organization_id
    add_index :memberships, [:member_id, :organization_id], unique: true
  end
end
