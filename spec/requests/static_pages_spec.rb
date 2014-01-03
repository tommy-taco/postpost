require 'spec_helper'

describe "Static pages" do
	subject { page }

  	describe "Home page" do
  		before { visit root_path }

	    it { should have_content('PostPost') }
	    it { should_not have_title('| Home') }
  	
  	end
  
   describe "About" do

    it "should have about info" do
      visit about_path
      expect(page).to have_content('about')
    end
  end
  
  describe "Contact" do

    it "should have contact info" do
      visit contact_path
      expect(page).to have_content('contact')
    end
  end
end