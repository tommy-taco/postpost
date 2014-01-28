class Membership < ActiveRecord::Base
	belongs_to :member, class_name: "User"
	belongs_to :organization
	validates :organization_id, presence: true
	validates :member_id, presence: true
end