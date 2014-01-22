module UsersHelper
	def joined_org?
		!current_user.organization.nil?
	end
end