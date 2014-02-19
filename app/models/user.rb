class User < ActiveRecord::Base
	has_many :memberships, foreign_key: "member_id", dependent: :destroy
	has_many :organizations, through: :memberships, source: :organization
	#state shiz
	#has_many :pending_organizations, through: :pending_members, source :member
	before_save { self.email = email.downcase }
	before_create :create_remember_token
  	before_save { self.email = email.downcase }
  	validates :name, presence: true, length: { maximum: 50 }
  	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  	has_secure_password
  	validates :password, length: { minimum: 6 }
  	default_scope -> { order('created_at DESC') }
  	
  	def User.new_remember_token
    SecureRandom.urlsafe_base64
  	end

	def User.encrypt(token)
	    Digest::SHA1.hexdigest(token.to_s)
	end
	
	def member?(org)
		self.memberships.find_by(organization_id: org.id)
	end	

	def join!(org)
		self.memberships.create!(organization_id: org.id)
	end

	def leave!(org)
		memberships.find_by(organization_id: org.id).destroy
	end



  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end

