class Organization < ActiveRecord::Base
	has_many :memberships, dependent: :destroy
	validates :name, presence: true, length: { maximum: 50 } 
	has_many :members, through: :memberships, source: :member
end