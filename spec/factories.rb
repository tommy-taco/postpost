FactoryGirl.define do
	factory :user do
		name     "Michael Hartl"
		email    "michael@example.com"
		password "foobar"
		password_confirmation "foobar"
		organization 1
	end
end