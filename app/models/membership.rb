class Membership < ActiveRecord::Base
	belongs_to :member, class_name: "User"
	belongs_to :organization
	validates :organization_id, presence: true
	validates :member_id, presence: true
=begin	
	state_machine :state, initial: :pending do
		event :accept do
			transition any => :accepted
		end
	end
	
	#from setting up state machine vid, check back
	
	def self.request
	end
=end	
end