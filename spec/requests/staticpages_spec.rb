require 'spec_helper'

describe "Staticpages" do
  describe "Home page" do
    it "should have the content 'Sample app'" do
		visit '/staticpages/home'
		page.should have_selector ('title', :text => "Ruby On Rails | Home")
    end
  end
describe "Help Page" do

	it "Should have the content 'help'" do
		visit '/staticpages/help'
		page.should have_selector( 'h1' , :text =>'Help')
	end
	
	it "should have the title 'help'" do
	page.should have_selector( 'title' , :text => "Ruby On Rails | Help")
	end
end


describe "About page" do
	it "SHould have the content 'About Us'" do
		visit '/staticpages/about'
		page.should have_selector( 'h1' , :text =>'about us')
		end
		it "Should have the title 'About us" do
		page.should have_selector( 'title' , :text =>"Ruby On Rails | about us")
		end
	end
end
