 class Organization < ActiveRecord::Base
 validates :name, presence: true, length: { maximum: 50 }
 has_many :users
end
