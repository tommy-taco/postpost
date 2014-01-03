require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have have the site name" do
      visit '/static_pages/home'
      expect(page).to have_content('PostPost')
    end
  end
  
   describe "About" do

    it "should have about info" do
      visit '/static_pages/about'
      expect(page).to have_content('about')
    end
  end
  
  describe "Contact" do

    it "should have contact info" do
      visit '/static_pages/contact'
      expect(page).to have_content('contact')
    end
  end
end