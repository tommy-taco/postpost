FactoryGirl.define do
	factory :user do
		name     "Michael Hartl"
		email    "michael@example.com"
		password "foobar"
		password_confirmation "foobar"
		organization_id 1
	end
	
	factory :organization do
    	name "MyString"
    	user_id 1
  	end
end